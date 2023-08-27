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
    module CloudsearchV1
      
      # 
      class Action
        include Google::Apis::Core::Hashable
      
        # [Required] Title of the action.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # [Optional] Url of the action.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Represents the settings for Cloud audit logging
      class AuditLoggingSettings
        include Google::Apis::Core::Hashable
      
        # Indicates whether audit logging is on/off for admin activity read APIs i.e.
        # Get/List DataSources, Get/List SearchApplications etc.
        # Corresponds to the JSON property `logAdminReadActions`
        # @return [Boolean]
        attr_accessor :log_admin_read_actions
        alias_method :log_admin_read_actions?, :log_admin_read_actions
      
        # Indicates whether audit logging is on/off for data access read APIs i.e.
        # ListItems, GetItem etc.
        # Corresponds to the JSON property `logDataReadActions`
        # @return [Boolean]
        attr_accessor :log_data_read_actions
        alias_method :log_data_read_actions?, :log_data_read_actions
      
        # Indicates whether audit logging is on/off for data access write APIs i.e.
        # IndexItem etc.
        # Corresponds to the JSON property `logDataWriteActions`
        # @return [Boolean]
        attr_accessor :log_data_write_actions
        alias_method :log_data_write_actions?, :log_data_write_actions
      
        # The resource name of the GCP Project to store audit logs. Cloud audit logging
        # will be enabled after project_name has been updated through CustomerService.
        # Format: projects/`project_id`
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_admin_read_actions = args[:log_admin_read_actions] if args.key?(:log_admin_read_actions)
          @log_data_read_actions = args[:log_data_read_actions] if args.key?(:log_data_read_actions)
          @log_data_write_actions = args[:log_data_write_actions] if args.key?(:log_data_write_actions)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # 
      class BackgroundColoredText
        include Google::Apis::Core::Hashable
      
        # [Optional] Color of the background. The text color can change depending on the
        # selected background color, and the client does not have control over this. If
        # missing, the background will be WHITE.
        # Corresponds to the JSON property `backgroundColor`
        # @return [String]
        attr_accessor :background_color
      
        # [Required] The text to display.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Used to provide a search operator for boolean properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class BooleanOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the
        # boolean property. For example, if operatorName is *closed* and the property's
        # name is *isClosed*, then queries like *closed:<value>* show results only where
        # the value of the property named *isClosed* matches *<value>*. By contrast, a
        # search that uses the same *<value>* without an operator returns all items
        # where *<value>* matches the value of any String properties or text within the
        # content field for the item. The operator name can only contain lowercase
        # letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for boolean properties.
      class BooleanPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for boolean properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::BooleanOperatorOptions]
        attr_accessor :operator_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
        end
      end
      
      # 
      class CheckAccessResponse
        include Google::Apis::Core::Hashable
      
        # Returns true if principal has access. Returns false otherwise.
        # Corresponds to the JSON property `hasAccess`
        # @return [Boolean]
        attr_accessor :has_access
        alias_method :has_access?, :has_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_access = args[:has_access] if args.key?(:has_access)
        end
      end
      
      # 
      class CompositeFilter
        include Google::Apis::Core::Hashable
      
        # The logic operator of the sub filter.
        # Corresponds to the JSON property `logicOperator`
        # @return [String]
        attr_accessor :logic_operator
      
        # Sub filters.
        # Corresponds to the JSON property `subFilters`
        # @return [Array<Google::Apis::CloudsearchV1::Filter>]
        attr_accessor :sub_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logic_operator = args[:logic_operator] if args.key?(:logic_operator)
          @sub_filters = args[:sub_filters] if args.key?(:sub_filters)
        end
      end
      
      # 
      class Content
        include Google::Apis::Core::Hashable
      
        # [Optional] Actions for this card.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::CloudsearchV1::Action>]
        attr_accessor :actions
      
        # IMPORTANT: It is unsafe to accept this message from an untrusted source, since
        # it's trivial for an attacker to forge serialized messages that don't fulfill
        # the type's safety contract -- for example, it could contain attacker
        # controlled script. A system which receives a SafeHtmlProto implicitly trusts
        # the producer of the SafeHtmlProto. So, it's generally safe to return this
        # message in RPC responses, but generally unsafe to accept it in RPC requests.
        # Corresponds to the JSON property `description`
        # @return [Google::Apis::CloudsearchV1::SafeHtmlProto]
        attr_accessor :description
      
        # [Optional] Subtitle of the card.
        # Corresponds to the JSON property `subtitle`
        # @return [Google::Apis::CloudsearchV1::BackgroundColoredText]
        attr_accessor :subtitle
      
        # [Optional] Title of the card.
        # Corresponds to the JSON property `title`
        # @return [Google::Apis::CloudsearchV1::BackgroundColoredText]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @description = args[:description] if args.key?(:description)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class Context
        include Google::Apis::Core::Hashable
      
        # [Optional] App where the card should be shown. If missing, the card will be
        # shown in TOPAZ.
        # Corresponds to the JSON property `app`
        # @return [Array<String>]
        attr_accessor :app
      
        # [Optional] Day of week when the card should be shown, where 0 is Monday.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [Array<Fixnum>]
        attr_accessor :day_of_week
      
        # [Optional] Date (in seconds since epoch) when the card should stop being shown.
        # If missing, end_date_sec will be set to Jan 1st, 2100.
        # Corresponds to the JSON property `endDateSec`
        # @return [Fixnum]
        attr_accessor :end_date_sec
      
        # [Optional] End time in seconds, within a day, when the card should stop being
        # shown if it's within [start_date_sec, end_date_sec]. If missing, this is set
        # to 86400 (24 hours x 3600 sec/hour), i.e., midnight next day.
        # Corresponds to the JSON property `endDayOffsetSec`
        # @return [Fixnum]
        attr_accessor :end_day_offset_sec
      
        # [Optional] The locales for which the card should be triggered (e.g., en_US and
        # en_CA). If missing, the card is going to show to clients regardless of their
        # locale.
        # Corresponds to the JSON property `locale`
        # @return [Array<String>]
        attr_accessor :locale
      
        # [Optional] Text-free locations where the card should be shown. This is
        # expected to match the user's location in focus. If no location is specified,
        # the card will be shown for any location.
        # Corresponds to the JSON property `location`
        # @return [Array<String>]
        attr_accessor :location
      
        # [Required only for Answer and RHS cards - will be ignored for Homepage] cards.
        # It's the exact case-insensitive queries that will trigger the Answer or RHS
        # card.
        # Corresponds to the JSON property `query`
        # @return [Array<String>]
        attr_accessor :query
      
        # [Optional] Date (in seconds since epoch) when the card should start being
        # shown. If missing, start_date_sec will be Jan 1st, 1970 UTC.
        # Corresponds to the JSON property `startDateSec`
        # @return [Fixnum]
        attr_accessor :start_date_sec
      
        # [Optional] Start time in seconds, within a day, when the card should be shown
        # if it's within [start_date_sec, end_date_sec]. If 0, the card will be shown
        # from 12:00am on.
        # Corresponds to the JSON property `startDayOffsetSec`
        # @return [Fixnum]
        attr_accessor :start_day_offset_sec
      
        # [Optional] Surface where the card should be shown in. If missing, the card
        # will be shown in any surface.
        # Corresponds to the JSON property `surface`
        # @return [Array<String>]
        attr_accessor :surface
      
        # [Required] Type of the card (homepage, Answer or RHS).
        # Corresponds to the JSON property `type`
        # @return [Array<String>]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app = args[:app] if args.key?(:app)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @end_date_sec = args[:end_date_sec] if args.key?(:end_date_sec)
          @end_day_offset_sec = args[:end_day_offset_sec] if args.key?(:end_day_offset_sec)
          @locale = args[:locale] if args.key?(:locale)
          @location = args[:location] if args.key?(:location)
          @query = args[:query] if args.key?(:query)
          @start_date_sec = args[:start_date_sec] if args.key?(:start_date_sec)
          @start_day_offset_sec = args[:start_day_offset_sec] if args.key?(:start_day_offset_sec)
          @surface = args[:surface] if args.key?(:surface)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A named attribute associated with an item which can be used for influencing
      # the ranking of the item based on the context in the request.
      class ContextAttribute
        include Google::Apis::Core::Hashable
      
        # The name of the attribute. It should not be empty. The maximum length is 32
        # characters. The name must start with a letter and can only contain letters (A-
        # Z, a-z) or numbers (0-9). The name will be normalized (lower-cased) before
        # being matched.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Text values of the attribute. The maximum number of elements is 10. The
        # maximum length of an element in the array is 32 characters. The value will be
        # normalized (lower-cased) before being matched.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Aggregation of items by status code as of the specified date.
      class CustomerIndexStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # Number of items aggregrated by status code.
        # Corresponds to the JSON property `itemCountByStatus`
        # @return [Array<Google::Apis::CloudsearchV1::ItemCountByStatus>]
        attr_accessor :item_count_by_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @item_count_by_status = args[:item_count_by_status] if args.key?(:item_count_by_status)
        end
      end
      
      # 
      class CustomerQueryStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # 
        # Corresponds to the JSON property `queryCountByStatus`
        # @return [Array<Google::Apis::CloudsearchV1::QueryCountByStatus>]
        attr_accessor :query_count_by_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @query_count_by_status = args[:query_count_by_status] if args.key?(:query_count_by_status)
        end
      end
      
      # Search application stats for a customer for the given date.
      class CustomerSearchApplicationStats
        include Google::Apis::Core::Hashable
      
        # The count of search applications for the date.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # 
      class CustomerSessionStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # The count of search sessions on the day
        # Corresponds to the JSON property `searchSessionsCount`
        # @return [Fixnum]
        attr_accessor :search_sessions_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @search_sessions_count = args[:search_sessions_count] if args.key?(:search_sessions_count)
        end
      end
      
      # Represents settings at a customer level.
      class CustomerSettings
        include Google::Apis::Core::Hashable
      
        # Represents the settings for Cloud audit logging
        # Corresponds to the JSON property `auditLoggingSettings`
        # @return [Google::Apis::CloudsearchV1::AuditLoggingSettings]
        attr_accessor :audit_logging_settings
      
        # VPC SC settings for the customer. If update_mask is empty then this field will
        # be updated based on UpdateCustomerSettings request.
        # Corresponds to the JSON property `vpcSettings`
        # @return [Google::Apis::CloudsearchV1::VpcSettings]
        attr_accessor :vpc_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_logging_settings = args[:audit_logging_settings] if args.key?(:audit_logging_settings)
          @vpc_settings = args[:vpc_settings] if args.key?(:vpc_settings)
        end
      end
      
      # 
      class CustomerUserStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # The count of unique active users in the past one day
        # Corresponds to the JSON property `oneDayActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :one_day_active_users_count
      
        # The count of unique active users in the past seven days
        # Corresponds to the JSON property `sevenDaysActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :seven_days_active_users_count
      
        # The count of unique active users in the past thirty days
        # Corresponds to the JSON property `thirtyDaysActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :thirty_days_active_users_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @one_day_active_users_count = args[:one_day_active_users_count] if args.key?(:one_day_active_users_count)
          @seven_days_active_users_count = args[:seven_days_active_users_count] if args.key?(:seven_days_active_users_count)
          @thirty_days_active_users_count = args[:thirty_days_active_users_count] if args.key?(:thirty_days_active_users_count)
        end
      end
      
      # Datasource is a logical namespace for items to be indexed. All items must
      # belong to a datasource. This is the prerequisite before items can be indexed
      # into Cloud Search.
      class DataSource
        include Google::Apis::Core::Hashable
      
        # If true, sets the datasource to read-only mode. In read-only mode, the
        # Indexing API rejects any requests to index or delete items in this source.
        # Enabling read-only mode does not stop the processing of previously accepted
        # data.
        # Corresponds to the JSON property `disableModifications`
        # @return [Boolean]
        attr_accessor :disable_modifications
        alias_method :disable_modifications?, :disable_modifications
      
        # Disable serving any search or assist results.
        # Corresponds to the JSON property `disableServing`
        # @return [Boolean]
        attr_accessor :disable_serving
        alias_method :disable_serving?, :disable_serving
      
        # Required. Display name of the datasource The maximum length is 300 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # List of service accounts that have indexing access.
        # Corresponds to the JSON property `indexingServiceAccounts`
        # @return [Array<String>]
        attr_accessor :indexing_service_accounts
      
        # This field restricts visibility to items at the datasource level. Items within
        # the datasource are restricted to the union of users and groups included in
        # this field. Note that, this does not ensure access to a specific item, as
        # users need to have ACL permissions on the contained items. This ensures a high
        # level access on the entire datasource, and that the individual items are not
        # shared outside this visibility.
        # Corresponds to the JSON property `itemsVisibility`
        # @return [Array<Google::Apis::CloudsearchV1::GSuitePrincipal>]
        attr_accessor :items_visibility
      
        # The name of the datasource resource. Format: datasources/`source_id`. The name
        # is ignored when creating a datasource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # IDs of the Long Running Operations (LROs) currently running for this schema.
        # Corresponds to the JSON property `operationIds`
        # @return [Array<String>]
        attr_accessor :operation_ids
      
        # Can a user request to get thumbnail URI for Items indexed in this data source.
        # Corresponds to the JSON property `returnThumbnailUrls`
        # @return [Boolean]
        attr_accessor :return_thumbnail_urls
        alias_method :return_thumbnail_urls?, :return_thumbnail_urls
      
        # A short name or alias for the source. This value will be used to match the '
        # source' operator. For example, if the short name is *<value>* then queries
        # like *source:<value>* will only return results for this source. The value must
        # be unique across all datasources. The value must only contain alphanumeric
        # characters (a-zA-Z0-9). The value cannot start with 'google' and cannot be one
        # of the following: mail, gmail, docs, drive, groups, sites, calendar, hangouts,
        # gplus, keep, people, teams. Its maximum length is 32 characters.
        # Corresponds to the JSON property `shortName`
        # @return [String]
        attr_accessor :short_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_modifications = args[:disable_modifications] if args.key?(:disable_modifications)
          @disable_serving = args[:disable_serving] if args.key?(:disable_serving)
          @display_name = args[:display_name] if args.key?(:display_name)
          @indexing_service_accounts = args[:indexing_service_accounts] if args.key?(:indexing_service_accounts)
          @items_visibility = args[:items_visibility] if args.key?(:items_visibility)
          @name = args[:name] if args.key?(:name)
          @operation_ids = args[:operation_ids] if args.key?(:operation_ids)
          @return_thumbnail_urls = args[:return_thumbnail_urls] if args.key?(:return_thumbnail_urls)
          @short_name = args[:short_name] if args.key?(:short_name)
        end
      end
      
      # Aggregation of items by status code as of the specified date.
      class DataSourceIndexStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # Number of items aggregrated by status code.
        # Corresponds to the JSON property `itemCountByStatus`
        # @return [Array<Google::Apis::CloudsearchV1::ItemCountByStatus>]
        attr_accessor :item_count_by_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @item_count_by_status = args[:item_count_by_status] if args.key?(:item_count_by_status)
        end
      end
      
      # Restriction on Datasource.
      class DataSourceRestriction
        include Google::Apis::Core::Hashable
      
        # Filter options restricting the results. If multiple filters are present, they
        # are grouped by object type before joining. Filters with the same object type
        # are joined conjunctively, then the resulting expressions are joined
        # disjunctively. The maximum number of elements is 20. NOTE: Suggest API
        # supports only few filters at the moment: "objecttype", "type" and "mimetype".
        # For now, schema specific filters cannot be used to filter suggestions.
        # Corresponds to the JSON property `filterOptions`
        # @return [Array<Google::Apis::CloudsearchV1::FilterOptions>]
        attr_accessor :filter_options
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_options = args[:filter_options] if args.key?(:filter_options)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Represents a whole calendar date, for example a date of birth. The time of day
      # and time zone are either specified elsewhere or are not significant. The date
      # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
      # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
      # between the year 1 and 9999.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of date. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Optional. Provides a search operator for date properties. Search operators let
      # users restrict the query to specific fields relevant to the type of item being
      # searched.
      class DateOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the date
        # property using the greater-than operator. For example, if
        # greaterThanOperatorName is *closedafter* and the property's name is *closeDate*
        # , then queries like *closedafter:<value>* show results only where the value of
        # the property named *closeDate* is later than *<value>*. The operator name can
        # only contain lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `greaterThanOperatorName`
        # @return [String]
        attr_accessor :greater_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the date
        # property using the less-than operator. For example, if lessThanOperatorName is
        # *closedbefore* and the property's name is *closeDate*, then queries like *
        # closedbefore:<value>* show results only where the value of the property named *
        # closeDate* is earlier than *<value>*. The operator name can only contain
        # lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `lessThanOperatorName`
        # @return [String]
        attr_accessor :less_than_operator_name
      
        # Indicates the actual string required in the query in order to isolate the date
        # property. For example, suppose an issue tracking schema object has a property
        # named *closeDate* that specifies an operator with an operatorName of *closedon*
        # . For searches on that data, queries like *closedon:<value>* show results only
        # where the value of the *closeDate* property matches *<value>*. By contrast, a
        # search that uses the same *<value>* without an operator returns all items
        # where *<value>* matches the value of any String properties or text within the
        # content field for the indexed datasource. The operator name can only contain
        # lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @greater_than_operator_name = args[:greater_than_operator_name] if args.key?(:greater_than_operator_name)
          @less_than_operator_name = args[:less_than_operator_name] if args.key?(:less_than_operator_name)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for date properties.
      class DatePropertyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Provides a search operator for date properties. Search operators let
        # users restrict the query to specific fields relevant to the type of item being
        # searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::DateOperatorOptions]
        attr_accessor :operator_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
        end
      end
      
      # List of date values.
      class DateValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::CloudsearchV1::Date>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Shared request debug options for all cloudsearch RPC methods.
      class DebugOptions
        include Google::Apis::Core::Hashable
      
        # If you are asked by Google to help with debugging, set this field. Otherwise,
        # ignore this field.
        # Corresponds to the JSON property `enableDebugging`
        # @return [Boolean]
        attr_accessor :enable_debugging
        alias_method :enable_debugging?, :enable_debugging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_debugging = args[:enable_debugging] if args.key?(:enable_debugging)
        end
      end
      
      # 
      class DeleteQueueItemsRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The name of a queue to delete items from.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @queue = args[:queue] if args.key?(:queue)
        end
      end
      
      # A reference to a top-level property within the object that should be displayed
      # in search results. The values of the chosen properties is displayed in the
      # search results along with the display label for that property if one is
      # specified. If a display label is not specified, only the values is shown.
      class DisplayedProperty
        include Google::Apis::Core::Hashable
      
        # The name of the top-level property as defined in a property definition for the
        # object. If the name is not a defined property in the schema, an error is given
        # when attempting to update the schema.
        # Corresponds to the JSON property `propertyName`
        # @return [String]
        attr_accessor :property_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property_name = args[:property_name] if args.key?(:property_name)
        end
      end
      
      # Used to provide a search operator for double properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class DoubleOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to use the double
        # property in sorting or as a facet. The operator name can only contain
        # lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for double properties.
      class DoublePropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for double properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::DoubleOperatorOptions]
        attr_accessor :operator_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
        end
      end
      
      # List of double values.
      class DoubleValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Float>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Drive follow-up search restricts (e.g. "followup:suggestions").
      class DriveFollowUpRestrict
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Drive location search restricts (e.g. "is:starred").
      class DriveLocationRestrict
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Drive mime-type search restricts (e.g. "type:pdf").
      class DriveMimeTypeRestrict
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The time span search restrict (e.g. "after:2017-09-11 before:2017-09-12").
      class DriveTimeSpanRestrict
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A person's email address.
      class EmailAddress
        include Google::Apis::Core::Hashable
      
        # If the value of type is custom, this property contains the custom type string.
        # Corresponds to the JSON property `customType`
        # @return [String]
        attr_accessor :custom_type
      
        # The email address.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # The URL to send email.
        # Corresponds to the JSON property `emailUrl`
        # @return [String]
        attr_accessor :email_url
      
        # Indicates if this is the user's primary email. Only one entry can be marked as
        # primary.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # The type of the email account. Acceptable values are: "custom", "home", "other"
        # , "work".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_type = args[:custom_type] if args.key?(:custom_type)
          @email_address = args[:email_address] if args.key?(:email_address)
          @email_url = args[:email_url] if args.key?(:email_url)
          @primary = args[:primary] if args.key?(:primary)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class EnterpriseTopazFrontendTeamsLink
        include Google::Apis::Core::Hashable
      
        # The identifying link type
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `url`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class EnterpriseTopazFrontendTeamsPersonCorePhoneNumber
        include Google::Apis::Core::Hashable
      
        # Phone number in no particular format (as comes from the Focus profile).
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `phoneUrl`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :phone_url
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @phone_url = args[:phone_url] if args.key?(:phone_url)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An AgendaEntry, e.g., a Calendar Event.
      class EnterpriseTopazSidekickAgendaEntry
        include Google::Apis::Core::Hashable
      
        # URL of the agenda item.
        # Corresponds to the JSON property `agendaItemUrl`
        # @return [String]
        attr_accessor :agenda_item_url
      
        # The chronology from the present.
        # Corresponds to the JSON property `chronology`
        # @return [String]
        attr_accessor :chronology
      
        # Person.
        # Corresponds to the JSON property `creator`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson]
        attr_accessor :creator
      
        # Attendance status for the current user making the request. This is a
        # convenience data member in order to avoid figuring out the same by iterating
        # the invitee list above on the caller side.
        # Corresponds to the JSON property `currentUserAttendingStatus`
        # @return [String]
        attr_accessor :current_user_attending_status
      
        # Description of the agenda item (i.e., typically, summary in calendar event).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Items related to the current AgendaEntry. E.g., related drive/mail/groups
        # documents.
        # Corresponds to the JSON property `document`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument>]
        attr_accessor :document
      
        # End date "Friday, August 26" in the user's timezone.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # End time (HH:mm) in the user's timezone.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # End time in milliseconds
        # Corresponds to the JSON property `endTimeMs`
        # @return [Fixnum]
        attr_accessor :end_time_ms
      
        # Event id provided by Calendar API.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # Whether the guests can invite other guests.
        # Corresponds to the JSON property `guestsCanInviteOthers`
        # @return [Boolean]
        attr_accessor :guests_can_invite_others
        alias_method :guests_can_invite_others?, :guests_can_invite_others
      
        # Whether the guests can modify the event.
        # Corresponds to the JSON property `guestsCanModify`
        # @return [Boolean]
        attr_accessor :guests_can_modify
        alias_method :guests_can_modify?, :guests_can_modify
      
        # Whether the guests of the event can be seen. If false, the user is going to be
        # reported as the only attendee to the meeting, even though there may be more
        # attendees.
        # Corresponds to the JSON property `guestsCanSeeGuests`
        # @return [Boolean]
        attr_accessor :guests_can_see_guests
        alias_method :guests_can_see_guests?, :guests_can_see_guests
      
        # Hangout meeting identifier.
        # Corresponds to the JSON property `hangoutId`
        # @return [String]
        attr_accessor :hangout_id
      
        # Absolute URL for the Hangout meeting.
        # Corresponds to the JSON property `hangoutUrl`
        # @return [String]
        attr_accessor :hangout_url
      
        # People attending the meeting.
        # Corresponds to the JSON property `invitee`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson>]
        attr_accessor :invitee
      
        # Whether the entry lasts all day.
        # Corresponds to the JSON property `isAllDay`
        # @return [Boolean]
        attr_accessor :is_all_day
        alias_method :is_all_day?, :is_all_day
      
        # Last time the event was modified.
        # Corresponds to the JSON property `lastModificationTimeMs`
        # @return [Fixnum]
        attr_accessor :last_modification_time_ms
      
        # Agenda item location.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Whether this should be notified to the user.
        # Corresponds to the JSON property `notifyToUser`
        # @return [Boolean]
        attr_accessor :notify_to_user
        alias_method :notify_to_user?, :notify_to_user
      
        # Whether guest list is not returned because number of attendees is too large.
        # Corresponds to the JSON property `otherAttendeesExcluded`
        # @return [Boolean]
        attr_accessor :other_attendees_excluded
        alias_method :other_attendees_excluded?, :other_attendees_excluded
      
        # Whether the requester is the owner of the agenda entry.
        # Corresponds to the JSON property `requesterIsOwner`
        # @return [Boolean]
        attr_accessor :requester_is_owner
        alias_method :requester_is_owner?, :requester_is_owner
      
        # Whether the details of this entry should be displayed to the user.
        # Corresponds to the JSON property `showFullEventDetailsToUse`
        # @return [Boolean]
        attr_accessor :show_full_event_details_to_use
        alias_method :show_full_event_details_to_use?, :show_full_event_details_to_use
      
        # Start date "Friday, August 26" in the user's timezone.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # Start time (HH:mm) in the user's timezone.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Start time in milliseconds.
        # Corresponds to the JSON property `startTimeMs`
        # @return [Fixnum]
        attr_accessor :start_time_ms
      
        # User's calendar timezone;
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Title of the agenda item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agenda_item_url = args[:agenda_item_url] if args.key?(:agenda_item_url)
          @chronology = args[:chronology] if args.key?(:chronology)
          @creator = args[:creator] if args.key?(:creator)
          @current_user_attending_status = args[:current_user_attending_status] if args.key?(:current_user_attending_status)
          @description = args[:description] if args.key?(:description)
          @document = args[:document] if args.key?(:document)
          @end_date = args[:end_date] if args.key?(:end_date)
          @end_time = args[:end_time] if args.key?(:end_time)
          @end_time_ms = args[:end_time_ms] if args.key?(:end_time_ms)
          @event_id = args[:event_id] if args.key?(:event_id)
          @guests_can_invite_others = args[:guests_can_invite_others] if args.key?(:guests_can_invite_others)
          @guests_can_modify = args[:guests_can_modify] if args.key?(:guests_can_modify)
          @guests_can_see_guests = args[:guests_can_see_guests] if args.key?(:guests_can_see_guests)
          @hangout_id = args[:hangout_id] if args.key?(:hangout_id)
          @hangout_url = args[:hangout_url] if args.key?(:hangout_url)
          @invitee = args[:invitee] if args.key?(:invitee)
          @is_all_day = args[:is_all_day] if args.key?(:is_all_day)
          @last_modification_time_ms = args[:last_modification_time_ms] if args.key?(:last_modification_time_ms)
          @location = args[:location] if args.key?(:location)
          @notify_to_user = args[:notify_to_user] if args.key?(:notify_to_user)
          @other_attendees_excluded = args[:other_attendees_excluded] if args.key?(:other_attendees_excluded)
          @requester_is_owner = args[:requester_is_owner] if args.key?(:requester_is_owner)
          @show_full_event_details_to_use = args[:show_full_event_details_to_use] if args.key?(:show_full_event_details_to_use)
          @start_date = args[:start_date] if args.key?(:start_date)
          @start_time = args[:start_time] if args.key?(:start_time)
          @start_time_ms = args[:start_time_ms] if args.key?(:start_time_ms)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class EnterpriseTopazSidekickAgendaGroupCardProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `agendaItem`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaItem>]
        attr_accessor :agenda_item
      
        # The context that resulted in the generation of the card.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaGroupCardProtoContext]
        attr_accessor :context
      
        # 
        # Corresponds to the JSON property `currentAgendaItem`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaItem]
        attr_accessor :current_agenda_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agenda_item = args[:agenda_item] if args.key?(:agenda_item)
          @context = args[:context] if args.key?(:context)
          @current_agenda_item = args[:current_agenda_item] if args.key?(:current_agenda_item)
        end
      end
      
      # The context that resulted in the generation of the card.
      class EnterpriseTopazSidekickAgendaGroupCardProtoContext
        include Google::Apis::Core::Hashable
      
        # User friendly free text that describes the context of the card (e.g. "Next
        # meeting with Bob"). This is largely only applicable when the card is generated
        # from a query.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        # Localized free text that describes the dates represented by the card.
        # Currently, the card will only represent a single day.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        # Represents restrictions applied to the events requested in the user's query.
        # Corresponds to the JSON property `eventsRestrict`
        # @return [String]
        attr_accessor :events_restrict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @date = args[:date] if args.key?(:date)
          @events_restrict = args[:events_restrict] if args.key?(:events_restrict)
        end
      end
      
      # 
      class EnterpriseTopazSidekickAgendaItem
        include Google::Apis::Core::Hashable
      
        # Conflicting meetings card proto.
        # Corresponds to the JSON property `conflictedGroup`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickConflictingEventsCardProto]
        attr_accessor :conflicted_group
      
        # 
        # Corresponds to the JSON property `gapBefore`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGap]
        attr_accessor :gap_before
      
        # An AgendaEntry, e.g., a Calendar Event.
        # Corresponds to the JSON property `meeting`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry]
        attr_accessor :meeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicted_group = args[:conflicted_group] if args.key?(:conflicted_group)
          @gap_before = args[:gap_before] if args.key?(:gap_before)
          @meeting = args[:meeting] if args.key?(:meeting)
        end
      end
      
      # A list of answers represented as free text.
      class EnterpriseTopazSidekickAnswerAnswerList
        include Google::Apis::Core::Hashable
      
        # Answers that have a corresponding label.
        # Corresponds to the JSON property `labeledAnswer`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer>]
        attr_accessor :labeled_answer
      
        # Answer type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labeled_answer = args[:labeled_answer] if args.key?(:labeled_answer)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An answer with a corresponding label.
      class EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer
        include Google::Apis::Core::Hashable
      
        # The free text answer.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # A localized label for the answer (e.g. "Cell phone" vs "Desk phone").
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # Contains a list of suggested queries. Allows the user to determine what
      # natural language queries they can ask Cloud Search (e.g. "what can I search
      # for?").
      class EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard
        include Google::Apis::Core::Hashable
      
        # A list of queries to suggest.
        # Corresponds to the JSON property `suggestedQueryCategory`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerSuggestedQueryCategory>]
        attr_accessor :suggested_query_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggested_query_category = args[:suggested_query_category] if args.key?(:suggested_query_category)
        end
      end
      
      # Contains a list of suggested queries for a single category.
      class EnterpriseTopazSidekickAnswerSuggestedQueryCategory
        include Google::Apis::Core::Hashable
      
        # The query list category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Whether this category is enabled.
        # Corresponds to the JSON property `isEnabled`
        # @return [Boolean]
        attr_accessor :is_enabled
        alias_method :is_enabled?, :is_enabled
      
        # List of suggested queries to show the user.
        # Corresponds to the JSON property `query`
        # @return [Array<String>]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @is_enabled = args[:is_enabled] if args.key?(:is_enabled)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Wrapper proto for the Assist cards.
      class EnterpriseTopazSidekickAssistCardProto
        include Google::Apis::Core::Hashable
      
        # Agenda group card.
        # Corresponds to the JSON property `agendaGroupCardProto`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaGroupCardProto]
        attr_accessor :agenda_group_card_proto
      
        # Card metadata.
        # Corresponds to the JSON property `cardMetadata`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCardMetadata]
        attr_accessor :card_metadata
      
        # Card type.
        # Corresponds to the JSON property `cardType`
        # @return [String]
        attr_accessor :card_type
      
        # Conflicting meetings card proto.
        # Corresponds to the JSON property `conflictingMeetingsCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickConflictingEventsCardProto]
        attr_accessor :conflicting_meetings_card
      
        # Answer card for documents that are applicable to the current query.
        # Corresponds to the JSON property `documentListCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList]
        attr_accessor :document_list_card
      
        # Documents with mentions.
        # Corresponds to the JSON property `documentsWithMentions`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList]
        attr_accessor :documents_with_mentions
      
        # Response to find meeting time among a set of people.
        # Corresponds to the JSON property `findMeetingTimeCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickFindMeetingTimeCardProto]
        attr_accessor :find_meeting_time_card
      
        # Generic answer card.
        # Corresponds to the JSON property `genericAnswerCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGenericAnswerCard]
        attr_accessor :generic_answer_card
      
        # Get and keep ahead card
        # Corresponds to the JSON property `getAndKeepAheadCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGetAndKeepAheadCardProto]
        attr_accessor :get_and_keep_ahead_card
      
        # An AgendaEntry, e.g., a Calendar Event.
        # Corresponds to the JSON property `meeting`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry]
        attr_accessor :meeting
      
        # Information about the meeting notes created.
        # Corresponds to the JSON property `meetingNotesCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickMeetingNotesCardProto]
        attr_accessor :meeting_notes_card
      
        # Meeting notes card request.
        # Corresponds to the JSON property `meetingNotesCardRequest`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickMeetingNotesCardRequest]
        attr_accessor :meeting_notes_card_request
      
        # The people disambiguation card.
        # Corresponds to the JSON property `peopleDisambiguationCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleDisambiguationCard]
        attr_accessor :people_disambiguation_card
      
        # People Search promotion card.
        # Corresponds to the JSON property `peoplePromotionCard`
        # @return [Google::Apis::CloudsearchV1::PeoplePromotionCard]
        attr_accessor :people_promotion_card
      
        # An answer card for a single person.
        # Corresponds to the JSON property `personAnswerCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard]
        attr_accessor :person_answer_card
      
        # Full profile card.
        # Corresponds to the JSON property `personProfileCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPersonProfileCard]
        attr_accessor :person_profile_card
      
        # Personalized docs card proto.
        # Corresponds to the JSON property `personalizedDocsCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPersonalizedDocsCardProto]
        attr_accessor :personalized_docs_card
      
        # An answer card for a list of people that are related to the subject of the
        # query.
        # Corresponds to the JSON property `relatedPeopleAnswerCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard]
        attr_accessor :related_people_answer_card
      
        # Share meeting docs card proto.
        # Corresponds to the JSON property `shareMeetingDocsCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickShareMeetingDocsCardProto]
        attr_accessor :share_meeting_docs_card
      
        # Shared documents.
        # Corresponds to the JSON property `sharedDocuments`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList]
        attr_accessor :shared_documents
      
        # Contains a list of suggested queries. Allows the user to determine what
        # natural language queries they can ask Cloud Search (e.g. "what can I search
        # for?").
        # Corresponds to the JSON property `suggestedQueryAnswerCard`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard]
        attr_accessor :suggested_query_answer_card
      
        # Third party answer cards.
        # Corresponds to the JSON property `thirdPartyAnswerCard`
        # @return [Google::Apis::CloudsearchV1::ThirdPartyGenericCard]
        attr_accessor :third_party_answer_card
      
        # Work In Progress card.
        # Corresponds to the JSON property `workInProgressCardProto`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickRecentDocumentsCardProto]
        attr_accessor :work_in_progress_card_proto
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agenda_group_card_proto = args[:agenda_group_card_proto] if args.key?(:agenda_group_card_proto)
          @card_metadata = args[:card_metadata] if args.key?(:card_metadata)
          @card_type = args[:card_type] if args.key?(:card_type)
          @conflicting_meetings_card = args[:conflicting_meetings_card] if args.key?(:conflicting_meetings_card)
          @document_list_card = args[:document_list_card] if args.key?(:document_list_card)
          @documents_with_mentions = args[:documents_with_mentions] if args.key?(:documents_with_mentions)
          @find_meeting_time_card = args[:find_meeting_time_card] if args.key?(:find_meeting_time_card)
          @generic_answer_card = args[:generic_answer_card] if args.key?(:generic_answer_card)
          @get_and_keep_ahead_card = args[:get_and_keep_ahead_card] if args.key?(:get_and_keep_ahead_card)
          @meeting = args[:meeting] if args.key?(:meeting)
          @meeting_notes_card = args[:meeting_notes_card] if args.key?(:meeting_notes_card)
          @meeting_notes_card_request = args[:meeting_notes_card_request] if args.key?(:meeting_notes_card_request)
          @people_disambiguation_card = args[:people_disambiguation_card] if args.key?(:people_disambiguation_card)
          @people_promotion_card = args[:people_promotion_card] if args.key?(:people_promotion_card)
          @person_answer_card = args[:person_answer_card] if args.key?(:person_answer_card)
          @person_profile_card = args[:person_profile_card] if args.key?(:person_profile_card)
          @personalized_docs_card = args[:personalized_docs_card] if args.key?(:personalized_docs_card)
          @related_people_answer_card = args[:related_people_answer_card] if args.key?(:related_people_answer_card)
          @share_meeting_docs_card = args[:share_meeting_docs_card] if args.key?(:share_meeting_docs_card)
          @shared_documents = args[:shared_documents] if args.key?(:shared_documents)
          @suggested_query_answer_card = args[:suggested_query_answer_card] if args.key?(:suggested_query_answer_card)
          @third_party_answer_card = args[:third_party_answer_card] if args.key?(:third_party_answer_card)
          @work_in_progress_card_proto = args[:work_in_progress_card_proto] if args.key?(:work_in_progress_card_proto)
        end
      end
      
      # Card metadata.
      class EnterpriseTopazSidekickCardMetadata
        include Google::Apis::Core::Hashable
      
        # Declares a preference for how this card should be packed in MSCR. All cards in
        # a response must correspond to a single category. As a result, cards may be
        # dropped from the response if this field is set. Any card that does not match
        # the category of the card with the highest priority in the response will be
        # dropped.
        # Corresponds to the JSON property `cardCategory`
        # @return [String]
        attr_accessor :card_category
      
        # An ID to identify the card and match actions to it. Be thoughtful of new card
        # IDs since actions will be associated to that ID. E.g., if two card IDs collide,
        # the system will think that the actions have been applied to the same card.
        # Similarly, if EAS can return multiple cards of the same type (e.g., Meetings),
        # ensure that the card_id identifies a given instance of the card so that, e.g.,
        # dismissals only affect the dismissed card as opposed to affecting all meeting
        # cards.
        # Corresponds to the JSON property `cardId`
        # @return [String]
        attr_accessor :card_id
      
        # Chronology.
        # Corresponds to the JSON property `chronology`
        # @return [String]
        attr_accessor :chronology
      
        # Debug info (only reported if request's debug_level > 0).
        # Corresponds to the JSON property `debugInfo`
        # @return [String]
        attr_accessor :debug_info
      
        # Metadata about the NLP interpretation of the query.
        # Corresponds to the JSON property `nlpMetadata`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickNlpMetadata]
        attr_accessor :nlp_metadata
      
        # Ranking params.
        # Corresponds to the JSON property `rankingParams`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickRankingParams]
        attr_accessor :ranking_params
      
        # Render mode.
        # Corresponds to the JSON property `renderMode`
        # @return [String]
        attr_accessor :render_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_category = args[:card_category] if args.key?(:card_category)
          @card_id = args[:card_id] if args.key?(:card_id)
          @chronology = args[:chronology] if args.key?(:chronology)
          @debug_info = args[:debug_info] if args.key?(:debug_info)
          @nlp_metadata = args[:nlp_metadata] if args.key?(:nlp_metadata)
          @ranking_params = args[:ranking_params] if args.key?(:ranking_params)
          @render_mode = args[:render_mode] if args.key?(:render_mode)
        end
      end
      
      # Container of debugging information in all object levels. Extend as needed.
      class EnterpriseTopazSidekickCommonDebugInfo
        include Google::Apis::Core::Hashable
      
        # Debug message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Representation of a document. NEXT_TAG: 15
      class EnterpriseTopazSidekickCommonDocument
        include Google::Apis::Core::Hashable
      
        # Access type, i.e., whether the user has access to the document or not.
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Container of debugging information in all object levels. Extend as needed.
        # Corresponds to the JSON property `debugInfo`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDebugInfo]
        attr_accessor :debug_info
      
        # Document id.
        # Corresponds to the JSON property `documentId`
        # @return [String]
        attr_accessor :document_id
      
        # Meta data for drive documents.
        # Corresponds to the JSON property `driveDocumentMetadata`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata]
        attr_accessor :drive_document_metadata
      
        # Generic Drive-based url in the format of drive.google.com/open to be used for
        # deeplink
        # Corresponds to the JSON property `genericUrl`
        # @return [String]
        attr_accessor :generic_url
      
        # Justification of why we are reporting the document.
        # Corresponds to the JSON property `justification`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocumentJustification]
        attr_accessor :justification
      
        # MIME type
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Document provenance.
        # Corresponds to the JSON property `provenance`
        # @return [String]
        attr_accessor :provenance
      
        # Justification of why this document is being returned.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # A sampling of the text from the document.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # Thumbnail URL.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        # Title of the document.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Type of the document.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Absolute URL of the document.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] if args.key?(:access_type)
          @debug_info = args[:debug_info] if args.key?(:debug_info)
          @document_id = args[:document_id] if args.key?(:document_id)
          @drive_document_metadata = args[:drive_document_metadata] if args.key?(:drive_document_metadata)
          @generic_url = args[:generic_url] if args.key?(:generic_url)
          @justification = args[:justification] if args.key?(:justification)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @provenance = args[:provenance] if args.key?(:provenance)
          @reason = args[:reason] if args.key?(:reason)
          @snippet = args[:snippet] if args.key?(:snippet)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Meta data for drive documents.
      class EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata
        include Google::Apis::Core::Hashable
      
        # The drive document cosmo id. Client could use the id to build a URL to open a
        # document. Please use Document.document_id.
        # Corresponds to the JSON property `documentId`
        # @return [String]
        attr_accessor :document_id
      
        # Additional field to identify whether a document is private since scope set to
        # LIMITED can mean both that the doc is private or that it's shared with others.
        # is_private indicates whether the doc is not shared with anyone except for the
        # owner.
        # Corresponds to the JSON property `isPrivate`
        # @return [Boolean]
        attr_accessor :is_private
        alias_method :is_private?, :is_private
      
        # Timestamp of the most recent comment added to the document in milliseconds
        # since epoch.
        # Corresponds to the JSON property `lastCommentTimeMs`
        # @return [Fixnum]
        attr_accessor :last_comment_time_ms
      
        # Timestamp of the most recent edit from the current user in milliseconds since
        # epoch.
        # Corresponds to the JSON property `lastEditTimeMs`
        # @return [Fixnum]
        attr_accessor :last_edit_time_ms
      
        # Last modification time of the document (independent of the user that modified
        # it).
        # Corresponds to the JSON property `lastModificationTimeMillis`
        # @return [Fixnum]
        attr_accessor :last_modification_time_millis
      
        # Timestamp of the last updated time of the document in milliseconds since epoch.
        # Corresponds to the JSON property `lastUpdatedTimeMs`
        # @return [Fixnum]
        attr_accessor :last_updated_time_ms
      
        # Timestamp of the most recent view from the current user in milliseconds since
        # epoch.
        # Corresponds to the JSON property `lastViewTimeMs`
        # @return [Fixnum]
        attr_accessor :last_view_time_ms
      
        # Common representation of a person.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson]
        attr_accessor :owner
      
        # ACL scope of the document which identifies the sharing status of the doc (e.g.,
        # limited, shared with link, team drive, ...).
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @is_private = args[:is_private] if args.key?(:is_private)
          @last_comment_time_ms = args[:last_comment_time_ms] if args.key?(:last_comment_time_ms)
          @last_edit_time_ms = args[:last_edit_time_ms] if args.key?(:last_edit_time_ms)
          @last_modification_time_millis = args[:last_modification_time_millis] if args.key?(:last_modification_time_millis)
          @last_updated_time_ms = args[:last_updated_time_ms] if args.key?(:last_updated_time_ms)
          @last_view_time_ms = args[:last_view_time_ms] if args.key?(:last_view_time_ms)
          @owner = args[:owner] if args.key?(:owner)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Justification of why we are reporting the document.
      class EnterpriseTopazSidekickCommonDocumentJustification
        include Google::Apis::Core::Hashable
      
        # A locale aware message that explains why this document was selected.
        # Corresponds to the JSON property `justification`
        # @return [String]
        attr_accessor :justification
      
        # Reason on why the document is selected. Populate for trending documents.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @justification = args[:justification] if args.key?(:justification)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Common representation of a person.
      class EnterpriseTopazSidekickCommonPerson
        include Google::Apis::Core::Hashable
      
        # The birthday.
        # Corresponds to the JSON property `birthday`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPersonBirthday]
        attr_accessor :birthday
      
        # Cell phone number.
        # Corresponds to the JSON property `cellPhone`
        # @return [String]
        attr_accessor :cell_phone
      
        # The department the person works in (e.g. Engineering).
        # Corresponds to the JSON property `department`
        # @return [String]
        attr_accessor :department
      
        # Desk location (e.g. US-MTV-PR55-5-5B1I).
        # Corresponds to the JSON property `deskLocation`
        # @return [String]
        attr_accessor :desk_location
      
        # Work desk phone number.
        # Corresponds to the JSON property `deskPhone`
        # @return [String]
        attr_accessor :desk_phone
      
        # The full name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The last name.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # The fully formatted address (e.g. 1255 Pear Avenue, Mountain View 94043,
        # United States).
        # Corresponds to the JSON property `fullAddress`
        # @return [String]
        attr_accessor :full_address
      
        # This field is deprecated. The obfuscated_id should be used instead.
        # Corresponds to the JSON property `gaiaId`
        # @return [Fixnum]
        attr_accessor :gaia_id
      
        # The first name.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # The person's job title (e.g. Software Engineer).
        # Corresponds to the JSON property `jobTitle`
        # @return [String]
        attr_accessor :job_title
      
        # Common representation of a person.
        # Corresponds to the JSON property `manager`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson]
        attr_accessor :manager
      
        # The obfuscated GAIA ID.
        # Corresponds to the JSON property `obfuscatedId`
        # @return [String]
        attr_accessor :obfuscated_id
      
        # The URL for the Focus profile picture.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # The street address (e.g. 1255 Pear Avenue).
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @birthday = args[:birthday] if args.key?(:birthday)
          @cell_phone = args[:cell_phone] if args.key?(:cell_phone)
          @department = args[:department] if args.key?(:department)
          @desk_location = args[:desk_location] if args.key?(:desk_location)
          @desk_phone = args[:desk_phone] if args.key?(:desk_phone)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email = args[:email] if args.key?(:email)
          @family_name = args[:family_name] if args.key?(:family_name)
          @full_address = args[:full_address] if args.key?(:full_address)
          @gaia_id = args[:gaia_id] if args.key?(:gaia_id)
          @given_name = args[:given_name] if args.key?(:given_name)
          @job_title = args[:job_title] if args.key?(:job_title)
          @manager = args[:manager] if args.key?(:manager)
          @obfuscated_id = args[:obfuscated_id] if args.key?(:obfuscated_id)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # 
      class EnterpriseTopazSidekickCommonPersonBirthday
        include Google::Apis::Core::Hashable
      
        # Unstructured birthday.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Conflicting meetings card proto.
      class EnterpriseTopazSidekickConflictingEventsCardProto
        include Google::Apis::Core::Hashable
      
        # All the events that conflict with main_event.
        # Corresponds to the JSON property `conflictingEvent`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry>]
        attr_accessor :conflicting_event
      
        # An AgendaEntry, e.g., a Calendar Event.
        # Corresponds to the JSON property `mainEvent`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry]
        attr_accessor :main_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conflicting_event = args[:conflicting_event] if args.key?(:conflicting_event)
          @main_event = args[:main_event] if args.key?(:main_event)
        end
      end
      
      # Represents a mapping between a document type and its corresponding documents.
      # Use for Work in Progress card in v1 homepage.
      class EnterpriseTopazSidekickDocumentGroup
        include Google::Apis::Core::Hashable
      
        # Document group type
        # Corresponds to the JSON property `groupType`
        # @return [String]
        attr_accessor :group_type
      
        # The list of corresponding documents.
        # Corresponds to the JSON property `personalizedDocument`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument>]
        attr_accessor :personalized_document
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_type = args[:group_type] if args.key?(:group_type)
          @personalized_document = args[:personalized_document] if args.key?(:personalized_document)
        end
      end
      
      # 
      class EnterpriseTopazSidekickDocumentPerCategoryList
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry>]
        attr_accessor :documents
      
        # Localized message explaining how the documents were derived (e.g. from the
        # last 30 days activity). This field is optional.
        # Corresponds to the JSON property `helpMessage`
        # @return [String]
        attr_accessor :help_message
      
        # 
        # Corresponds to the JSON property `listType`
        # @return [String]
        attr_accessor :list_type
      
        # Description of the types of documents present in the list.
        # Corresponds to the JSON property `listTypeDescription`
        # @return [String]
        attr_accessor :list_type_description
      
        # Response message in case no documents are present in the card.
        # Corresponds to the JSON property `responseMessage`
        # @return [String]
        attr_accessor :response_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @help_message = args[:help_message] if args.key?(:help_message)
          @list_type = args[:list_type] if args.key?(:list_type)
          @list_type_description = args[:list_type_description] if args.key?(:list_type_description)
          @response_message = args[:response_message] if args.key?(:response_message)
        end
      end
      
      # 
      class EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Representation of a document. NEXT_TAG: 15
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument]
        attr_accessor :document
      
        # Reason this document was selected.
        # Corresponds to the JSON property `rationale`
        # @return [String]
        attr_accessor :rationale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @document = args[:document] if args.key?(:document)
          @rationale = args[:rationale] if args.key?(:rationale)
        end
      end
      
      # Response to find meeting time among a set of people.
      class EnterpriseTopazSidekickFindMeetingTimeCardProto
        include Google::Apis::Core::Hashable
      
        # Slots when all attendees have availability.
        # Corresponds to the JSON property `commonAvailableTimeSlots`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickTimeSlot>]
        attr_accessor :common_available_time_slots
      
        # Invitees to the event.
        # Corresponds to the JSON property `invitees`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson>]
        attr_accessor :invitees
      
        # Person.
        # Corresponds to the JSON property `requester`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson]
        attr_accessor :requester
      
        # Details about scheduled meetings.
        # Corresponds to the JSON property `scheduledMeeting`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickScheduledMeeting]
        attr_accessor :scheduled_meeting
      
        # Invitees that have been skipped in the computation, most likely because they
        # are groups.
        # Corresponds to the JSON property `skippedInvitees`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPerson>]
        attr_accessor :skipped_invitees
      
        # Slot of time.
        # Corresponds to the JSON property `timeBoundaries`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickTimeSlot]
        attr_accessor :time_boundaries
      
        # Timezone ID.
        # Corresponds to the JSON property `timezoneId`
        # @return [String]
        attr_accessor :timezone_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_available_time_slots = args[:common_available_time_slots] if args.key?(:common_available_time_slots)
          @invitees = args[:invitees] if args.key?(:invitees)
          @requester = args[:requester] if args.key?(:requester)
          @scheduled_meeting = args[:scheduled_meeting] if args.key?(:scheduled_meeting)
          @skipped_invitees = args[:skipped_invitees] if args.key?(:skipped_invitees)
          @time_boundaries = args[:time_boundaries] if args.key?(:time_boundaries)
          @timezone_id = args[:timezone_id] if args.key?(:timezone_id)
        end
      end
      
      # 
      class EnterpriseTopazSidekickGap
        include Google::Apis::Core::Hashable
      
        # Localized time string in the format: 1 hour 15 minutes
        # Corresponds to the JSON property `displayRemainingTime`
        # @return [String]
        attr_accessor :display_remaining_time
      
        # Localized time string in the format:(Locale CZ) 8:30 odp.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # 
        # Corresponds to the JSON property `endTimeMs`
        # @return [Fixnum]
        attr_accessor :end_time_ms
      
        # 
        # Corresponds to the JSON property `remainingTime`
        # @return [String]
        attr_accessor :remaining_time
      
        # Localized time string in the format:(Locale CZ) 8:30 odp.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `startTimeMs`
        # @return [Fixnum]
        attr_accessor :start_time_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_remaining_time = args[:display_remaining_time] if args.key?(:display_remaining_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @end_time_ms = args[:end_time_ms] if args.key?(:end_time_ms)
          @remaining_time = args[:remaining_time] if args.key?(:remaining_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @start_time_ms = args[:start_time_ms] if args.key?(:start_time_ms)
        end
      end
      
      # 
      class EnterpriseTopazSidekickGenericAnswerCard
        include Google::Apis::Core::Hashable
      
        # The answer.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # Title or header of the card.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Get and keep ahead card
      class EnterpriseTopazSidekickGetAndKeepAheadCardProto
        include Google::Apis::Core::Hashable
      
        # A list of events where all guests declined.
        # Corresponds to the JSON property `declinedEvents`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents]
        attr_accessor :declined_events
      
        # 
        # Corresponds to the JSON property `mentionedDocuments`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList]
        attr_accessor :mentioned_documents
      
        # 
        # Corresponds to the JSON property `sharedDocuments`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentPerCategoryList]
        attr_accessor :shared_documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @declined_events = args[:declined_events] if args.key?(:declined_events)
          @mentioned_documents = args[:mentioned_documents] if args.key?(:mentioned_documents)
          @shared_documents = args[:shared_documents] if args.key?(:shared_documents)
        end
      end
      
      # A list of events where all guests declined.
      class EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry>]
        attr_accessor :events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @events = args[:events] if args.key?(:events)
        end
      end
      
      # Errors in the creation of meeting notes.
      class EnterpriseTopazSidekickMeetingNotesCardError
        include Google::Apis::Core::Hashable
      
        # The description of the reason why create-meeting-notes failed.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An AgendaEntry, e.g., a Calendar Event.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry]
        attr_accessor :event
      
        # The reason why create-meeting-notes failed.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @event = args[:event] if args.key?(:event)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Information about the meeting notes created.
      class EnterpriseTopazSidekickMeetingNotesCardProto
        include Google::Apis::Core::Hashable
      
        # An AgendaEntry, e.g., a Calendar Event.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry]
        attr_accessor :event
      
        # Google Drive ID (a.k.a. resource ID) of the file.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # Title we want to show for meeting notes in the answer card
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # New URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event = args[:event] if args.key?(:event)
          @file_id = args[:file_id] if args.key?(:file_id)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Meeting notes card request.
      class EnterpriseTopazSidekickMeetingNotesCardRequest
        include Google::Apis::Core::Hashable
      
        # Who are the meeting notes created for.
        # Corresponds to the JSON property `canCreateFor`
        # @return [Array<String>]
        attr_accessor :can_create_for
      
        # Errors in the creation of meeting notes.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickMeetingNotesCardError]
        attr_accessor :error
      
        # An AgendaEntry, e.g., a Calendar Event.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry]
        attr_accessor :event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_create_for = args[:can_create_for] if args.key?(:can_create_for)
          @error = args[:error] if args.key?(:error)
          @event = args[:event] if args.key?(:event)
        end
      end
      
      # Metadata about the NLP interpretation of the query.
      class EnterpriseTopazSidekickNlpMetadata
        include Google::Apis::Core::Hashable
      
        # Confidence of the interpretation that generated this card.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
        end
      end
      
      # Metadata for disambiguation.
      class EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo
        include Google::Apis::Core::Hashable
      
        # A list of people that also matched the query. This list is not complete.
        # Corresponds to the JSON property `disambiguation`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson>]
        attr_accessor :disambiguation
      
        # The name that was extracted from the query. This may be in the form of the
        # given name, last name, full name, LDAP, or email address. This name can be
        # considered suitable for displaying to the user and can largely be considered
        # to be normalized (e.g. "Bob's" -> "Bob").
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disambiguation = args[:disambiguation] if args.key?(:disambiguation)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A person that also matches the query, but was not selected due to a lower
      # affinity with the requesting user.
      class EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson
        include Google::Apis::Core::Hashable
      
        # Common representation of a person.
        # Corresponds to the JSON property `person`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson]
        attr_accessor :person
      
        # The query that can be used to produce an answer card with the same attribute,
        # but for this person.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @person = args[:person] if args.key?(:person)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Recommended header to display for the card.
      class EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader
        include Google::Apis::Core::Hashable
      
        # The suggested title to display. This defaults to the user's query.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # An answer card for a single person.
      class EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard
        include Google::Apis::Core::Hashable
      
        # List of answers.
        # Corresponds to the JSON property `answer`
        # @return [Array<Google::Apis::CloudsearchV1::SafeHtmlProto>]
        attr_accessor :answer
      
        # A list of answers represented as free text.
        # Corresponds to the JSON property `answerText`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAnswerAnswerList]
        attr_accessor :answer_text
      
        # Metadata for disambiguation.
        # Corresponds to the JSON property `disambiguationInfo`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo]
        attr_accessor :disambiguation_info
      
        # Recommended header to display for the card.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader]
        attr_accessor :header
      
        # The response status.
        # Corresponds to the JSON property `responseStatus`
        # @return [String]
        attr_accessor :response_status
      
        # Localized user friendly message to display to the user in the case of missing
        # data or an error.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Common representation of a person.
        # Corresponds to the JSON property `subject`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @answer_text = args[:answer_text] if args.key?(:answer_text)
          @disambiguation_info = args[:disambiguation_info] if args.key?(:disambiguation_info)
          @header = args[:header] if args.key?(:header)
          @response_status = args[:response_status] if args.key?(:response_status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # An answer card for a list of people that are related to the subject of the
      # query.
      class EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard
        include Google::Apis::Core::Hashable
      
        # Metadata for disambiguation.
        # Corresponds to the JSON property `disambiguationInfo`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo]
        attr_accessor :disambiguation_info
      
        # Recommended header to display for the card.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader]
        attr_accessor :header
      
        # A list of people that are related to the query subject.
        # Corresponds to the JSON property `relatedPeople`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson>]
        attr_accessor :related_people
      
        # Defines the type of relation the list of people have with the subject of the
        # card.
        # Corresponds to the JSON property `relationType`
        # @return [String]
        attr_accessor :relation_type
      
        # The response status.
        # Corresponds to the JSON property `responseStatus`
        # @return [String]
        attr_accessor :response_status
      
        # Localized user friendly message to display to the user in the case of missing
        # data or an error.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Common representation of a person.
        # Corresponds to the JSON property `subject`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disambiguation_info = args[:disambiguation_info] if args.key?(:disambiguation_info)
          @header = args[:header] if args.key?(:header)
          @related_people = args[:related_people] if args.key?(:related_people)
          @relation_type = args[:relation_type] if args.key?(:relation_type)
          @response_status = args[:response_status] if args.key?(:response_status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # 
      class EnterpriseTopazSidekickPeopleDisambiguationCard
        include Google::Apis::Core::Hashable
      
        # Candidate persons for the query.
        # Corresponds to the JSON property `person`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson>]
        attr_accessor :person
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @person = args[:person] if args.key?(:person)
        end
      end
      
      # Person.
      class EnterpriseTopazSidekickPerson
        include Google::Apis::Core::Hashable
      
        # The level of affinity this person has with the requesting user.
        # Corresponds to the JSON property `affinityLevel`
        # @return [String]
        attr_accessor :affinity_level
      
        # Attendance status of the person when included in a meeting event.
        # Corresponds to the JSON property `attendingStatus`
        # @return [String]
        attr_accessor :attending_status
      
        # Email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Gaia id.
        # Corresponds to the JSON property `gaiaId`
        # @return [Fixnum]
        attr_accessor :gaia_id
      
        # Whether the invitee is a group.
        # Corresponds to the JSON property `isGroup`
        # @return [Boolean]
        attr_accessor :is_group
        alias_method :is_group?, :is_group
      
        # Name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Obfuscated Gaia id.
        # Corresponds to the JSON property `obfuscatedGaiaId`
        # @return [String]
        attr_accessor :obfuscated_gaia_id
      
        # Absolute URL to the profile photo of the person.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affinity_level = args[:affinity_level] if args.key?(:affinity_level)
          @attending_status = args[:attending_status] if args.key?(:attending_status)
          @email = args[:email] if args.key?(:email)
          @gaia_id = args[:gaia_id] if args.key?(:gaia_id)
          @is_group = args[:is_group] if args.key?(:is_group)
          @name = args[:name] if args.key?(:name)
          @obfuscated_gaia_id = args[:obfuscated_gaia_id] if args.key?(:obfuscated_gaia_id)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
        end
      end
      
      # 
      class EnterpriseTopazSidekickPersonProfileCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `relatedPeople`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickPersonProfileCardRelatedPeople>]
        attr_accessor :related_people
      
        # Common representation of a person.
        # Corresponds to the JSON property `subject`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @related_people = args[:related_people] if args.key?(:related_people)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # 
      class EnterpriseTopazSidekickPersonProfileCardRelatedPeople
        include Google::Apis::Core::Hashable
      
        # Related people.
        # Corresponds to the JSON property `relatedPerson`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonPerson>]
        attr_accessor :related_person
      
        # Relation type.
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @related_person = args[:related_person] if args.key?(:related_person)
          @relation = args[:relation] if args.key?(:relation)
        end
      end
      
      # Personalized docs card proto.
      class EnterpriseTopazSidekickPersonalizedDocsCardProto
        include Google::Apis::Core::Hashable
      
        # Document group.
        # Corresponds to the JSON property `documentGroup`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickDocumentGroup>]
        attr_accessor :document_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_group = args[:document_group] if args.key?(:document_group)
        end
      end
      
      # Ranking params.
      class EnterpriseTopazSidekickRankingParams
        include Google::Apis::Core::Hashable
      
        # The end-time that this object will expect to occur. If the type is marked as
        # FIXED, then this end-time will persist after bidding. If the type is marked as
        # FLEXIBLE, this field is NOT expected to be filled and will be filled in after
        # it has won a bid. Expected to be set when type is set to FIXED.
        # Corresponds to the JSON property `endTimeMs`
        # @return [Fixnum]
        attr_accessor :end_time_ms
      
        # The priority to determine between objects that have the same start_time_ms The
        # lower-value of priority == ranked higher. Max-priority = 0. Expected to be set
        # for all types.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # The score of the card to be used to break priority-ties
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # The span that this card will take in the stream Expected to be set when type
        # is set to FLEXIBLE.
        # Corresponds to the JSON property `spanMs`
        # @return [Fixnum]
        attr_accessor :span_ms
      
        # The start-time that this object will bid-for If the type is marked as FIXED,
        # then this start-time will persist after bidding. If the type is marked as
        # FLEXIBLE, then it will occur at the given time or sometime after the requested
        # time. Expected to be set for all types.
        # Corresponds to the JSON property `startTimeMs`
        # @return [Fixnum]
        attr_accessor :start_time_ms
      
        # The packing type of this object.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_ms = args[:end_time_ms] if args.key?(:end_time_ms)
          @priority = args[:priority] if args.key?(:priority)
          @score = args[:score] if args.key?(:score)
          @span_ms = args[:span_ms] if args.key?(:span_ms)
          @start_time_ms = args[:start_time_ms] if args.key?(:start_time_ms)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class EnterpriseTopazSidekickRecentDocumentsCardProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `document`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument>]
        attr_accessor :document
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
        end
      end
      
      # Details about scheduled meetings.
      class EnterpriseTopazSidekickScheduledMeeting
        include Google::Apis::Core::Hashable
      
        # The meeting location.
        # Corresponds to the JSON property `meetingLocation`
        # @return [String]
        attr_accessor :meeting_location
      
        # Slot of time.
        # Corresponds to the JSON property `meetingTime`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickTimeSlot]
        attr_accessor :meeting_time
      
        # The meeting title.
        # Corresponds to the JSON property `meetingTitle`
        # @return [String]
        attr_accessor :meeting_title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @meeting_location = args[:meeting_location] if args.key?(:meeting_location)
          @meeting_time = args[:meeting_time] if args.key?(:meeting_time)
          @meeting_title = args[:meeting_title] if args.key?(:meeting_title)
        end
      end
      
      # Share meeting docs card proto.
      class EnterpriseTopazSidekickShareMeetingDocsCardProto
        include Google::Apis::Core::Hashable
      
        # Documents to share for the given meeting.
        # Corresponds to the JSON property `document`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazSidekickCommonDocument>]
        attr_accessor :document
      
        # An AgendaEntry, e.g., a Calendar Event.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::CloudsearchV1::EnterpriseTopazSidekickAgendaEntry]
        attr_accessor :event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @event = args[:event] if args.key?(:event)
        end
      end
      
      # Slot of time.
      class EnterpriseTopazSidekickTimeSlot
        include Google::Apis::Core::Hashable
      
        # Day end time at the user's timezone.
        # Corresponds to the JSON property `endTimeDay`
        # @return [String]
        attr_accessor :end_time_day
      
        # Hour and minute of the end time at the user's timezone.
        # Corresponds to the JSON property `endTimeHourAndMinute`
        # @return [String]
        attr_accessor :end_time_hour_and_minute
      
        # End time in milliseconds.
        # Corresponds to the JSON property `endTimeInMillis`
        # @return [Fixnum]
        attr_accessor :end_time_in_millis
      
        # Day start time at user's timezone.
        # Corresponds to the JSON property `startTimeDay`
        # @return [String]
        attr_accessor :start_time_day
      
        # Hour and minute of the start time at the user's timezone.
        # Corresponds to the JSON property `startTimeHourAndMinute`
        # @return [String]
        attr_accessor :start_time_hour_and_minute
      
        # Start time in milliseconds.
        # Corresponds to the JSON property `startTimeInMillis`
        # @return [Fixnum]
        attr_accessor :start_time_in_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_day = args[:end_time_day] if args.key?(:end_time_day)
          @end_time_hour_and_minute = args[:end_time_hour_and_minute] if args.key?(:end_time_hour_and_minute)
          @end_time_in_millis = args[:end_time_in_millis] if args.key?(:end_time_in_millis)
          @start_time_day = args[:start_time_day] if args.key?(:start_time_day)
          @start_time_hour_and_minute = args[:start_time_hour_and_minute] if args.key?(:start_time_hour_and_minute)
          @start_time_in_millis = args[:start_time_in_millis] if args.key?(:start_time_in_millis)
        end
      end
      
      # Used to provide a search operator for enum properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched. For example, if you provide no operator for a
      # *priority* enum property with possible values *p0* and *p1*, a query that
      # contains the term *p0* returns items that have *p0* as the value of the *
      # priority* property, as well as any items that contain the string *p0* in other
      # fields. If you provide an operator name for the enum, such as *priority*, then
      # search users can use that operator to refine results to only items that have *
      # p0* as this property's value, with the query *priority:p0*.
      class EnumOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the enum
        # property. For example, if operatorName is *priority* and the property's name
        # is *priorityVal*, then queries like *priority:<value>* show results only where
        # the value of the property named *priorityVal* matches *<value>*. By contrast,
        # a search that uses the same *<value>* without an operator returns all items
        # where *<value>* matches the value of any String properties or text within the
        # content field for the item. The operator name can only contain lowercase
        # letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for enum properties, which allow you to define a restricted set of
      # strings to match user queries, set rankings for those string values, and
      # define an operator name to be paired with those strings so that users can
      # narrow results to only items with a specific value. For example, for items in
      # a request tracking system with priority information, you could define *p0* as
      # an allowable enum value and tie this enum to the operator name *priority* so
      # that search users could add *priority:p0* to their query to restrict the set
      # of results to only those items indexed with the value *p0*.
      class EnumPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for enum properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched. For example, if you provide no operator for a
        # *priority* enum property with possible values *p0* and *p1*, a query that
        # contains the term *p0* returns items that have *p0* as the value of the *
        # priority* property, as well as any items that contain the string *p0* in other
        # fields. If you provide an operator name for the enum, such as *priority*, then
        # search users can use that operator to refine results to only items that have *
        # p0* as this property's value, with the query *priority:p0*.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::EnumOperatorOptions]
        attr_accessor :operator_options
      
        # Used to specify the ordered ranking for the enumeration that determines how
        # the integer values provided in the possible EnumValuePairs are used to rank
        # results. If specified, integer values must be provided for all possible
        # EnumValuePair values given for this property. Can only be used if isRepeatable
        # is false.
        # Corresponds to the JSON property `orderedRanking`
        # @return [String]
        attr_accessor :ordered_ranking
      
        # The list of possible values for the enumeration property. All EnumValuePairs
        # must provide a string value. If you specify an integer value for one
        # EnumValuePair, then all possible EnumValuePairs must provide an integer value.
        # Both the string value and integer value must be unique over all possible
        # values. Once set, possible values cannot be removed or modified. If you supply
        # an ordered ranking and think you might insert additional enum values in the
        # future, leave gaps in the initial integer values to allow adding a value in
        # between previously registered values. The maximum number of elements is 100.
        # Corresponds to the JSON property `possibleValues`
        # @return [Array<Google::Apis::CloudsearchV1::EnumValuePair>]
        attr_accessor :possible_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
          @ordered_ranking = args[:ordered_ranking] if args.key?(:ordered_ranking)
          @possible_values = args[:possible_values] if args.key?(:possible_values)
        end
      end
      
      # The enumeration value pair defines two things: a required string value and an
      # optional integer value. The string value defines the necessary query term
      # required to retrieve that item, such as *p0* for a priority item. The integer
      # value determines the ranking of that string value relative to other enumerated
      # values for the same property. For example, you might associate *p0* with *0*
      # and define another enum pair such as *p1* and *1*. You must use the integer
      # value in combination with ordered ranking to set the ranking of a given value
      # relative to other enumerated values for the same property name. Here, a
      # ranking order of DESCENDING for *priority* properties results in a ranking
      # boost for items indexed with a value of *p0* compared to items indexed with a
      # value of *p1*. Without a specified ranking order, the integer value has no
      # effect on item ranking.
      class EnumValuePair
        include Google::Apis::Core::Hashable
      
        # The integer value of the EnumValuePair which must be non-negative. Optional.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # The string value of the EnumValuePair. The maximum length is 32 characters.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # List of enum values.
      class EnumValues
        include Google::Apis::Core::Hashable
      
        # The maximum allowable length for string values is 32 characters.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Error information about the response.
      class ErrorInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errorMessages`
        # @return [Array<Google::Apis::CloudsearchV1::ErrorMessage>]
        attr_accessor :error_messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_messages = args[:error_messages] if args.key?(:error_messages)
        end
      end
      
      # Error message per source response.
      class ErrorMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # A bucket in a facet is the basic unit of operation. A bucket can comprise
      # either a single value OR a contiguous range of values, depending on the type
      # of the field bucketed. FacetBucket is currently used only for returning the
      # response object.
      class FacetBucket
        include Google::Apis::Core::Hashable
      
        # Number of results that match the bucket value. Counts are only returned for
        # searches when count accuracy is ensured. Cloud Search does not guarantee facet
        # counts for any query and facet counts might be present only intermittently,
        # even for identical queries. Do not build dependencies on facet count existence;
        # instead use facet ount percentages which are always returned.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A generic way of expressing filters in a query, which supports two approaches:
        # **1. Setting a ValueFilter.** The name must match an operator_name defined in
        # the schema for your data source. **2. Setting a CompositeFilter.** The filters
        # are evaluated using the logical operator. The top-level operators can only be
        # either an AND or a NOT. AND can appear only at the top-most level. OR can
        # appear only under a top-level AND.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::CloudsearchV1::Filter]
        attr_accessor :filter
      
        # Percent of results that match the bucket value. The returned value is between (
        # 0-100], and is rounded down to an integer if fractional. If the value is not
        # explicitly returned, it represents a percentage value that rounds to 0.
        # Percentages are returned for all searches, but are an estimate. Because
        # percentages are always returned, you should render percentages instead of
        # counts.
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        # Definition of a single value with generic type.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::CloudsearchV1::Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @filter = args[:filter] if args.key?(:filter)
          @percentage = args[:percentage] if args.key?(:percentage)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Specifies operators to return facet results for. There will be one FacetResult
      # for every source_name/object_type/operator_name combination.
      class FacetOptions
        include Google::Apis::Core::Hashable
      
        # Used to specify integer faceting options.
        # Corresponds to the JSON property `integerFacetingOptions`
        # @return [Google::Apis::CloudsearchV1::IntegerFacetingOptions]
        attr_accessor :integer_faceting_options
      
        # Maximum number of facet buckets that should be returned for this facet.
        # Defaults to 10. Maximum value is 100.
        # Corresponds to the JSON property `numFacetBuckets`
        # @return [Fixnum]
        attr_accessor :num_facet_buckets
      
        # If object_type is set, only those objects of that type will be used to compute
        # facets. If empty, then all objects will be used to compute facets.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The name of the operator chosen for faceting. @see cloudsearch.
        # SchemaPropertyOptions
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # Source name to facet on. Format: datasources/`source_id` If empty, all data
        # sources will be used.
        # Corresponds to the JSON property `sourceName`
        # @return [String]
        attr_accessor :source_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integer_faceting_options = args[:integer_faceting_options] if args.key?(:integer_faceting_options)
          @num_facet_buckets = args[:num_facet_buckets] if args.key?(:num_facet_buckets)
          @object_type = args[:object_type] if args.key?(:object_type)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @source_name = args[:source_name] if args.key?(:source_name)
        end
      end
      
      # Source specific facet response
      class FacetResult
        include Google::Apis::Core::Hashable
      
        # FacetBuckets for values in response containing at least a single result with
        # the corresponding filter.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::CloudsearchV1::FacetBucket>]
        attr_accessor :buckets
      
        # Object type for which facet results are returned. Can be empty.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The name of the operator chosen for faceting. @see cloudsearch.
        # SchemaPropertyOptions
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # Source name for which facet results are returned. Will not be empty.
        # Corresponds to the JSON property `sourceName`
        # @return [String]
        attr_accessor :source_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
          @object_type = args[:object_type] if args.key?(:object_type)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @source_name = args[:source_name] if args.key?(:source_name)
        end
      end
      
      # 
      class FieldViolation
        include Google::Apis::Core::Hashable
      
        # The description of the error.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Path of field with violation.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # A generic way of expressing filters in a query, which supports two approaches:
      # **1. Setting a ValueFilter.** The name must match an operator_name defined in
      # the schema for your data source. **2. Setting a CompositeFilter.** The filters
      # are evaluated using the logical operator. The top-level operators can only be
      # either an AND or a NOT. AND can appear only at the top-most level. OR can
      # appear only under a top-level AND.
      class Filter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `compositeFilter`
        # @return [Google::Apis::CloudsearchV1::CompositeFilter]
        attr_accessor :composite_filter
      
        # 
        # Corresponds to the JSON property `valueFilter`
        # @return [Google::Apis::CloudsearchV1::ValueFilter]
        attr_accessor :value_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composite_filter = args[:composite_filter] if args.key?(:composite_filter)
          @value_filter = args[:value_filter] if args.key?(:value_filter)
        end
      end
      
      # Filter options to be applied on query.
      class FilterOptions
        include Google::Apis::Core::Hashable
      
        # A generic way of expressing filters in a query, which supports two approaches:
        # **1. Setting a ValueFilter.** The name must match an operator_name defined in
        # the schema for your data source. **2. Setting a CompositeFilter.** The filters
        # are evaluated using the logical operator. The top-level operators can only be
        # either an AND or a NOT. AND can appear only at the top-most level. OR can
        # appear only under a top-level AND.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::CloudsearchV1::Filter]
        attr_accessor :filter
      
        # If object_type is set, only objects of that type are returned. This should
        # correspond to the name of the object that was registered within the definition
        # of schema. The maximum length is 256 characters.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @object_type = args[:object_type] if args.key?(:object_type)
        end
      end
      
      # Indicates which freshness property to use when adjusting search ranking for an
      # item. Fresher, more recent dates indicate higher quality. Use the freshness
      # option property that best works with your data. For fileshare documents, last
      # modified time is most relevant. For calendar event data, the time when the
      # event occurs is a more relevant freshness indicator. In this way, calendar
      # events that occur closer to the time of the search query are considered higher
      # quality and ranked accordingly.
      class FreshnessOptions
        include Google::Apis::Core::Hashable
      
        # The duration after which an object should be considered stale. The default
        # value is 180 days (in seconds).
        # Corresponds to the JSON property `freshnessDuration`
        # @return [String]
        attr_accessor :freshness_duration
      
        # This property indicates the freshness level of the object in the index. If set,
        # this property must be a top-level property within the property definitions
        # and it must be a timestamp type or date type. Otherwise, the Indexing API uses
        # updateTime as the freshness indicator. The maximum length is 256 characters.
        # When a property is used to calculate freshness, the value defaults to 2 years
        # from the current time.
        # Corresponds to the JSON property `freshnessProperty`
        # @return [String]
        attr_accessor :freshness_property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @freshness_duration = args[:freshness_duration] if args.key?(:freshness_duration)
          @freshness_property = args[:freshness_property] if args.key?(:freshness_property)
        end
      end
      
      # 
      class GSuitePrincipal
        include Google::Apis::Core::Hashable
      
        # This principal represents all users of the Google Workspace domain of the
        # customer.
        # Corresponds to the JSON property `gsuiteDomain`
        # @return [Boolean]
        attr_accessor :gsuite_domain
        alias_method :gsuite_domain?, :gsuite_domain
      
        # This principal references a Google Workspace group name.
        # Corresponds to the JSON property `gsuiteGroupEmail`
        # @return [String]
        attr_accessor :gsuite_group_email
      
        # This principal references a Google Workspace user account.
        # Corresponds to the JSON property `gsuiteUserEmail`
        # @return [String]
        attr_accessor :gsuite_user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gsuite_domain = args[:gsuite_domain] if args.key?(:gsuite_domain)
          @gsuite_group_email = args[:gsuite_group_email] if args.key?(:gsuite_group_email)
          @gsuite_user_email = args[:gsuite_user_email] if args.key?(:gsuite_user_email)
        end
      end
      
      # 
      class GetCustomerIndexStatsResponse
        include Google::Apis::Core::Hashable
      
        # Average item count for the given date range for which billing is done.
        # Corresponds to the JSON property `averageIndexedItemCount`
        # @return [Fixnum]
        attr_accessor :average_indexed_item_count
      
        # Summary of indexed item counts, one for each day in the requested range.
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerIndexStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_indexed_item_count = args[:average_indexed_item_count] if args.key?(:average_indexed_item_count)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetCustomerQueryStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerQueryStats>]
        attr_accessor :stats
      
        # Total successful query count (status code 200) for the given date range.
        # Corresponds to the JSON property `totalQueryCount`
        # @return [Fixnum]
        attr_accessor :total_query_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
          @total_query_count = args[:total_query_count] if args.key?(:total_query_count)
        end
      end
      
      # Response format for search application stats for a customer.
      class GetCustomerSearchApplicationStatsResponse
        include Google::Apis::Core::Hashable
      
        # Average search application count for the given date range.
        # Corresponds to the JSON property `averageSearchApplicationCount`
        # @return [Fixnum]
        attr_accessor :average_search_application_count
      
        # Search application stats by date.
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerSearchApplicationStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_search_application_count = args[:average_search_application_count] if args.key?(:average_search_application_count)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetCustomerSessionStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerSessionStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetCustomerUserStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::CustomerUserStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetDataSourceIndexStatsResponse
        include Google::Apis::Core::Hashable
      
        # Average item count for the given date range for which billing is done.
        # Corresponds to the JSON property `averageIndexedItemCount`
        # @return [Fixnum]
        attr_accessor :average_indexed_item_count
      
        # Summary of indexed item counts, one for each day in the requested range.
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::DataSourceIndexStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_indexed_item_count = args[:average_indexed_item_count] if args.key?(:average_indexed_item_count)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # Response format for getting query stats for a search application between given
      # dates.
      class GetSearchApplicationQueryStatsResponse
        include Google::Apis::Core::Hashable
      
        # Query stats per date for a search application.
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::SearchApplicationQueryStats>]
        attr_accessor :stats
      
        # Total successful query count (status code 200) for the given date range.
        # Corresponds to the JSON property `totalQueryCount`
        # @return [Fixnum]
        attr_accessor :total_query_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
          @total_query_count = args[:total_query_count] if args.key?(:total_query_count)
        end
      end
      
      # 
      class GetSearchApplicationSessionStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::SearchApplicationSessionStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GetSearchApplicationUserStatsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stats`
        # @return [Array<Google::Apis::CloudsearchV1::SearchApplicationUserStats>]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # Used to provide a search operator for html properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class HtmlOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the html
        # property. For example, if operatorName is *subject* and the property's name is
        # *subjectLine*, then queries like *subject:<value>* show results only where the
        # value of the property named *subjectLine* matches *<value>*. By contrast, a
        # search that uses the same *<value>* without an operator return all items where
        # *<value>* matches the value of any html properties or text within the content
        # field for the item. The operator name can only contain lowercase letters (a-z).
        # The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for html properties.
      class HtmlPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for html properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::HtmlOperatorOptions]
        attr_accessor :operator_options
      
        # Indicates the search quality importance of the tokens within the field when
        # used for retrieval. Can only be set to DEFAULT or NONE.
        # Corresponds to the JSON property `retrievalImportance`
        # @return [Google::Apis::CloudsearchV1::RetrievalImportance]
        attr_accessor :retrieval_importance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
          @retrieval_importance = args[:retrieval_importance] if args.key?(:retrieval_importance)
        end
      end
      
      # List of html values.
      class HtmlValues
        include Google::Apis::Core::Hashable
      
        # The maximum allowable length for html values is 2048 characters.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class IndexItemOptions
        include Google::Apis::Core::Hashable
      
        # Specifies if the index request should allow Google Workspace principals that
        # do not exist or are deleted.
        # Corresponds to the JSON property `allowUnknownGsuitePrincipals`
        # @return [Boolean]
        attr_accessor :allow_unknown_gsuite_principals
        alias_method :allow_unknown_gsuite_principals?, :allow_unknown_gsuite_principals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_unknown_gsuite_principals = args[:allow_unknown_gsuite_principals] if args.key?(:allow_unknown_gsuite_principals)
        end
      end
      
      # 
      class IndexItemRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # 
        # Corresponds to the JSON property `indexItemOptions`
        # @return [Google::Apis::CloudsearchV1::IndexItemOptions]
        attr_accessor :index_item_options
      
        # Represents a single object that is an item in the search index, such as a file,
        # folder, or a database record.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::CloudsearchV1::Item]
        attr_accessor :item
      
        # Required. The RequestMode for this request.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @index_item_options = args[:index_item_options] if args.key?(:index_item_options)
          @item = args[:item] if args.key?(:item)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Request message for `InitializeCustomer` method.
      class InitializeCustomerRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Used to specify integer faceting options.
      class IntegerFacetingOptions
        include Google::Apis::Core::Hashable
      
        # Buckets for given integer values should be in strictly ascending order. For
        # example, if values supplied are (1,5,10,100), the following facet buckets will
        # be formed `<1, [1,5), [5-10), [10-100), >=100`.
        # Corresponds to the JSON property `integerBuckets`
        # @return [Array<Fixnum>]
        attr_accessor :integer_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integer_buckets = args[:integer_buckets] if args.key?(:integer_buckets)
        end
      end
      
      # Used to provide a search operator for integer properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class IntegerOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the
        # integer property using the greater-than operator. For example, if
        # greaterThanOperatorName is *priorityabove* and the property's name is *
        # priorityVal*, then queries like *priorityabove:<value>* show results only
        # where the value of the property named *priorityVal* is greater than *<value>*.
        # The operator name can only contain lowercase letters (a-z). The maximum length
        # is 32 characters.
        # Corresponds to the JSON property `greaterThanOperatorName`
        # @return [String]
        attr_accessor :greater_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the
        # integer property using the less-than operator. For example, if
        # lessThanOperatorName is *prioritybelow* and the property's name is *
        # priorityVal*, then queries like *prioritybelow:<value>* show results only
        # where the value of the property named *priorityVal* is less than *<value>*.
        # The operator name can only contain lowercase letters (a-z). The maximum length
        # is 32 characters.
        # Corresponds to the JSON property `lessThanOperatorName`
        # @return [String]
        attr_accessor :less_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the
        # integer property. For example, if operatorName is *priority* and the property'
        # s name is *priorityVal*, then queries like *priority:<value>* show results
        # only where the value of the property named *priorityVal* matches *<value>*. By
        # contrast, a search that uses the same *<value>* without an operator returns
        # all items where *<value>* matches the value of any String properties or text
        # within the content field for the item. The operator name can only contain
        # lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @greater_than_operator_name = args[:greater_than_operator_name] if args.key?(:greater_than_operator_name)
          @less_than_operator_name = args[:less_than_operator_name] if args.key?(:less_than_operator_name)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for integer properties.
      class IntegerPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to specify integer faceting options.
        # Corresponds to the JSON property `integerFacetingOptions`
        # @return [Google::Apis::CloudsearchV1::IntegerFacetingOptions]
        attr_accessor :integer_faceting_options
      
        # The maximum value of the property. The minimum and maximum values for the
        # property are used to rank results according to the ordered ranking. Indexing
        # requests with values greater than the maximum are accepted and ranked with the
        # same weight as items indexed with the maximum value.
        # Corresponds to the JSON property `maximumValue`
        # @return [Fixnum]
        attr_accessor :maximum_value
      
        # The minimum value of the property. The minimum and maximum values for the
        # property are used to rank results according to the ordered ranking. Indexing
        # requests with values less than the minimum are accepted and ranked with the
        # same weight as items indexed with the minimum value.
        # Corresponds to the JSON property `minimumValue`
        # @return [Fixnum]
        attr_accessor :minimum_value
      
        # Used to provide a search operator for integer properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::IntegerOperatorOptions]
        attr_accessor :operator_options
      
        # Used to specify the ordered ranking for the integer. Can only be used if
        # isRepeatable is false.
        # Corresponds to the JSON property `orderedRanking`
        # @return [String]
        attr_accessor :ordered_ranking
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integer_faceting_options = args[:integer_faceting_options] if args.key?(:integer_faceting_options)
          @maximum_value = args[:maximum_value] if args.key?(:maximum_value)
          @minimum_value = args[:minimum_value] if args.key?(:minimum_value)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
          @ordered_ranking = args[:ordered_ranking] if args.key?(:ordered_ranking)
        end
      end
      
      # List of integer values.
      class IntegerValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Fixnum>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Represents an interaction between a user and an item.
      class Interaction
        include Google::Apis::Core::Hashable
      
        # The time when the user acted on the item. If multiple actions of the same type
        # exist for a single user, only the most recent action is recorded.
        # Corresponds to the JSON property `interactionTime`
        # @return [String]
        attr_accessor :interaction_time
      
        # Reference to a user, group, or domain.
        # Corresponds to the JSON property `principal`
        # @return [Google::Apis::CloudsearchV1::Principal]
        attr_accessor :principal
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interaction_time = args[:interaction_time] if args.key?(:interaction_time)
          @principal = args[:principal] if args.key?(:principal)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a single object that is an item in the search index, such as a file,
      # folder, or a database record.
      class Item
        include Google::Apis::Core::Hashable
      
        # Access control list information for the item. For more information see [Map
        # ACLs](https://developers.google.com/cloud-search/docs/guides/acls).
        # Corresponds to the JSON property `acl`
        # @return [Google::Apis::CloudsearchV1::ItemAcl]
        attr_accessor :acl
      
        # Content of an item to be indexed and surfaced by Cloud Search. Only UTF-8
        # encoded strings are allowed as inlineContent. If the content is uploaded and
        # not binary, it must be UTF-8 encoded.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::CloudsearchV1::ItemContent]
        attr_accessor :content
      
        # The type for this item.
        # Corresponds to the JSON property `itemType`
        # @return [String]
        attr_accessor :item_type
      
        # Available metadata fields for the item.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::CloudsearchV1::ItemMetadata]
        attr_accessor :metadata
      
        # The name of the Item. Format: datasources/`source_id`/items/`item_id` This is
        # a required field. The maximum length is 1536 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional state connector can store for this item. The maximum length is
        # 10000 bytes.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # Queue this item belongs to. The maximum length is 100 characters.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        # This contains item's status and any errors.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::CloudsearchV1::ItemStatus]
        attr_accessor :status
      
        # Available structured data fields for the item.
        # Corresponds to the JSON property `structuredData`
        # @return [Google::Apis::CloudsearchV1::ItemStructuredData]
        attr_accessor :structured_data
      
        # Required. The indexing system stores the version from the datasource as a byte
        # string and compares the Item version in the index to the version of the queued
        # Item using lexical ordering. Cloud Search Indexing won't index or delete any
        # queued item with a version value that is less than or equal to the version of
        # the currently indexed item. The maximum length for this field is 1024 bytes.
        # For information on how item version affects the deletion process, refer to [
        # Handle revisions after manual deletes](https://developers.google.com/cloud-
        # search/docs/guides/operations).
        # Corresponds to the JSON property `version`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acl = args[:acl] if args.key?(:acl)
          @content = args[:content] if args.key?(:content)
          @item_type = args[:item_type] if args.key?(:item_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @payload = args[:payload] if args.key?(:payload)
          @queue = args[:queue] if args.key?(:queue)
          @status = args[:status] if args.key?(:status)
          @structured_data = args[:structured_data] if args.key?(:structured_data)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Access control list information for the item. For more information see [Map
      # ACLs](https://developers.google.com/cloud-search/docs/guides/acls).
      class ItemAcl
        include Google::Apis::Core::Hashable
      
        # Sets the type of access rules to apply when an item inherits its ACL from a
        # parent. This should always be set in tandem with the inheritAclFrom field.
        # Also, when the inheritAclFrom field is set, this field should be set to a
        # valid AclInheritanceType.
        # Corresponds to the JSON property `aclInheritanceType`
        # @return [String]
        attr_accessor :acl_inheritance_type
      
        # List of principals who are explicitly denied access to the item in search
        # results. While principals are denied access by default, use denied readers to
        # handle exceptions and override the list allowed readers. The maximum number of
        # elements is 100.
        # Corresponds to the JSON property `deniedReaders`
        # @return [Array<Google::Apis::CloudsearchV1::Principal>]
        attr_accessor :denied_readers
      
        # The name of the item to inherit the Access Permission List (ACL) from. Note:
        # ACL inheritance *only* provides access permissions to child items and does not
        # define structural relationships, nor does it provide convenient ways to delete
        # large groups of items. Deleting an ACL parent from the index only alters the
        # access permissions of child items that reference the parent in the
        # inheritAclFrom field. The item is still in the index, but may not visible in
        # search results. By contrast, deletion of a container item also deletes all
        # items that reference the container via the containerName field. The maximum
        # length for this field is 1536 characters.
        # Corresponds to the JSON property `inheritAclFrom`
        # @return [String]
        attr_accessor :inherit_acl_from
      
        # Optional. List of owners for the item. This field has no bearing on document
        # access permissions. It does, however, offer a slight ranking boosts items
        # where the querying user is an owner. The maximum number of elements is 5.
        # Corresponds to the JSON property `owners`
        # @return [Array<Google::Apis::CloudsearchV1::Principal>]
        attr_accessor :owners
      
        # List of principals who are allowed to see the item in search results. Optional
        # if inheriting permissions from another item or if the item is not intended to
        # be visible, such as virtual containers. The maximum number of elements is 1000.
        # Corresponds to the JSON property `readers`
        # @return [Array<Google::Apis::CloudsearchV1::Principal>]
        attr_accessor :readers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acl_inheritance_type = args[:acl_inheritance_type] if args.key?(:acl_inheritance_type)
          @denied_readers = args[:denied_readers] if args.key?(:denied_readers)
          @inherit_acl_from = args[:inherit_acl_from] if args.key?(:inherit_acl_from)
          @owners = args[:owners] if args.key?(:owners)
          @readers = args[:readers] if args.key?(:readers)
        end
      end
      
      # Content of an item to be indexed and surfaced by Cloud Search. Only UTF-8
      # encoded strings are allowed as inlineContent. If the content is uploaded and
      # not binary, it must be UTF-8 encoded.
      class ItemContent
        include Google::Apis::Core::Hashable
      
        # Represents an upload session reference. This reference is created via upload
        # method. This reference is valid for 30 days after its creation. Updating of
        # item content may refer to this uploaded content via contentDataRef.
        # Corresponds to the JSON property `contentDataRef`
        # @return [Google::Apis::CloudsearchV1::UploadItemRef]
        attr_accessor :content_data_ref
      
        # 
        # Corresponds to the JSON property `contentFormat`
        # @return [String]
        attr_accessor :content_format
      
        # Hashing info calculated and provided by the API client for content. Can be
        # used with the items.push method to calculate modified state. The maximum
        # length is 2048 characters.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # Content that is supplied inlined within the update method. The maximum length
        # is 102400 bytes (100 KiB).
        # Corresponds to the JSON property `inlineContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_data_ref = args[:content_data_ref] if args.key?(:content_data_ref)
          @content_format = args[:content_format] if args.key?(:content_format)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @inline_content = args[:inline_content] if args.key?(:inline_content)
        end
      end
      
      # 
      class ItemCountByStatus
        include Google::Apis::Core::Hashable
      
        # Number of items matching the status code.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Number of items matching the status code for which billing is done. This
        # excludes virtual container items from the total count. This count would not be
        # applicable for items with ERROR or NEW_ITEM status code.
        # Corresponds to the JSON property `indexedItemsCount`
        # @return [Fixnum]
        attr_accessor :indexed_items_count
      
        # Status of the items.
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @indexed_items_count = args[:indexed_items_count] if args.key?(:indexed_items_count)
          @status_code = args[:status_code] if args.key?(:status_code)
        end
      end
      
      # Available metadata fields for the item.
      class ItemMetadata
        include Google::Apis::Core::Hashable
      
        # The name of the container for this item. Deletion of the container item leads
        # to automatic deletion of this item. Note: ACLs are not inherited from a
        # container item. To provide ACL inheritance for an item, use the inheritAclFrom
        # field. The maximum length is 1536 characters.
        # Corresponds to the JSON property `containerName`
        # @return [String]
        attr_accessor :container_name
      
        # The BCP-47 language code for the item, such as "en-US" or "sr-Latn". For more
        # information, see http://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier. The maximum length is 32 characters.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # A set of named attributes associated with the item. This can be used for
        # influencing the ranking of the item based on the context in the request. The
        # maximum number of elements is 10.
        # Corresponds to the JSON property `contextAttributes`
        # @return [Array<Google::Apis::CloudsearchV1::ContextAttribute>]
        attr_accessor :context_attributes
      
        # The time when the item was created in the source repository.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Hashing value provided by the API caller. This can be used with the items.push
        # method to calculate modified state. The maximum length is 2048 characters.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # A list of interactions for the item. Interactions are used to improve Search
        # quality, but are not exposed to end users. The maximum number of elements is
        # 1000.
        # Corresponds to the JSON property `interactions`
        # @return [Array<Google::Apis::CloudsearchV1::Interaction>]
        attr_accessor :interactions
      
        # Additional keywords or phrases that should match the item. Used internally for
        # user generated content. The maximum number of elements is 100. The maximum
        # length is 8192 characters.
        # Corresponds to the JSON property `keywords`
        # @return [Array<String>]
        attr_accessor :keywords
      
        # The original mime-type of ItemContent.content in the source repository. The
        # maximum length is 256 characters.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The type of the item. This should correspond to the name of an object
        # definition in the schema registered for the data source. For example, if the
        # schema for the data source contains an object definition with name 'document',
        # then item indexing requests for objects of that type should set objectType to '
        # document'. The maximum length is 256 characters.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # Additional search quality metadata of the item.
        # Corresponds to the JSON property `searchQualityMetadata`
        # @return [Google::Apis::CloudsearchV1::SearchQualityMetadata]
        attr_accessor :search_quality_metadata
      
        # Link to the source repository serving the data. Seach results apply this link
        # to the title. Whitespace or special characters may cause Cloud Seach result
        # links to trigger a redirect notice; to avoid this, encode the URL. The maximum
        # length is 2048 characters.
        # Corresponds to the JSON property `sourceRepositoryUrl`
        # @return [String]
        attr_accessor :source_repository_url
      
        # The title of the item. If given, this will be the displayed title of the
        # Search result. The maximum length is 2048 characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The time when the item was last modified in the source repository.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container_name = args[:container_name] if args.key?(:container_name)
          @content_language = args[:content_language] if args.key?(:content_language)
          @context_attributes = args[:context_attributes] if args.key?(:context_attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @interactions = args[:interactions] if args.key?(:interactions)
          @keywords = args[:keywords] if args.key?(:keywords)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @object_type = args[:object_type] if args.key?(:object_type)
          @search_quality_metadata = args[:search_quality_metadata] if args.key?(:search_quality_metadata)
          @source_repository_url = args[:source_repository_url] if args.key?(:source_repository_url)
          @title = args[:title] if args.key?(:title)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # This contains item's status and any errors.
      class ItemStatus
        include Google::Apis::Core::Hashable
      
        # Status code.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Error details in case the item is in ERROR state.
        # Corresponds to the JSON property `processingErrors`
        # @return [Array<Google::Apis::CloudsearchV1::ProcessingError>]
        attr_accessor :processing_errors
      
        # Repository error reported by connector.
        # Corresponds to the JSON property `repositoryErrors`
        # @return [Array<Google::Apis::CloudsearchV1::RepositoryError>]
        attr_accessor :repository_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @processing_errors = args[:processing_errors] if args.key?(:processing_errors)
          @repository_errors = args[:repository_errors] if args.key?(:repository_errors)
        end
      end
      
      # Available structured data fields for the item.
      class ItemStructuredData
        include Google::Apis::Core::Hashable
      
        # Hashing value provided by the API caller. This can be used with the items.push
        # method to calculate modified state. The maximum length is 2048 characters.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # A structured data object consisting of named properties.
        # Corresponds to the JSON property `object`
        # @return [Google::Apis::CloudsearchV1::StructuredDataObject]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # 
      class ListDataSourceResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CloudsearchV1::DataSource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # 
      class ListItemNamesForUnmappedIdentityResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `itemNames`
        # @return [Array<String>]
        attr_accessor :item_names
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_names = args[:item_names] if args.key?(:item_names)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListItemsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::Item>]
        attr_accessor :items
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::CloudsearchV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # List sources response.
      class ListQuerySourcesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::CloudsearchV1::QuerySource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # 
      class ListSearchApplicationsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `searchApplications`
        # @return [Array<Google::Apis::CloudsearchV1::SearchApplication>]
        attr_accessor :search_applications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @search_applications = args[:search_applications] if args.key?(:search_applications)
        end
      end
      
      # 
      class ListUnmappedIdentitiesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `unmappedIdentities`
        # @return [Array<Google::Apis::CloudsearchV1::UnmappedIdentity>]
        attr_accessor :unmapped_identities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unmapped_identities = args[:unmapped_identities] if args.key?(:unmapped_identities)
        end
      end
      
      # Geo information used for rendering a map that shows the user's work location.
      class MapInfo
        include Google::Apis::Core::Hashable
      
        # Latitude in degrees
        # Corresponds to the JSON property `lat`
        # @return [Float]
        attr_accessor :lat
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `locationUrl`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :location_url
      
        # Longitude in degrees
        # Corresponds to the JSON property `long`
        # @return [Float]
        attr_accessor :long
      
        # MapTiles for the area around a user's work location
        # Corresponds to the JSON property `mapTile`
        # @return [Array<Google::Apis::CloudsearchV1::MapTile>]
        attr_accessor :map_tile
      
        # The zoom level of the map. A constant zoom value of 18 is used for now to
        # match the zoom of the map shown on a Moma Teams Profile page
        # Corresponds to the JSON property `zoom`
        # @return [Fixnum]
        attr_accessor :zoom
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lat = args[:lat] if args.key?(:lat)
          @location_url = args[:location_url] if args.key?(:location_url)
          @long = args[:long] if args.key?(:long)
          @map_tile = args[:map_tile] if args.key?(:map_tile)
          @zoom = args[:zoom] if args.key?(:zoom)
        end
      end
      
      # Information used to render a map tile image in the proper location on a map.
      class MapTile
        include Google::Apis::Core::Hashable
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `imageUrl`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :image_url
      
        # Map tile x coordinate
        # Corresponds to the JSON property `tileX`
        # @return [Float]
        attr_accessor :tile_x
      
        # Map tile y coordinate
        # Corresponds to the JSON property `tileY`
        # @return [Float]
        attr_accessor :tile_y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_url = args[:image_url] if args.key?(:image_url)
          @tile_x = args[:tile_x] if args.key?(:tile_x)
          @tile_y = args[:tile_y] if args.key?(:tile_y)
        end
      end
      
      # Matched range of a snippet [start, end).
      class MatchRange
        include Google::Apis::Core::Hashable
      
        # End of the match in the snippet.
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Starting position of the match in the snippet.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Media resource.
      class Media
        include Google::Apis::Core::Hashable
      
        # Name of the media resource.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Metadata of a matched search result.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # The creation time for this document or object in the search result.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Options that specify how to display a structured data search result.
        # Corresponds to the JSON property `displayOptions`
        # @return [Google::Apis::CloudsearchV1::ResultDisplayMetadata]
        attr_accessor :display_options
      
        # Indexed fields in structured data, returned as a generic named property.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::CloudsearchV1::NamedProperty>]
        attr_accessor :fields
      
        # Mime type of the search result.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Object type of the search result.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # Object to represent a person.
        # Corresponds to the JSON property `owner`
        # @return [Google::Apis::CloudsearchV1::Person]
        attr_accessor :owner
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        # The thumbnail URL of the result.
        # Corresponds to the JSON property `thumbnailUrl`
        # @return [String]
        attr_accessor :thumbnail_url
      
        # The last modified date for the object in the search result. If not set in the
        # item, the value returned here is empty. When `updateTime` is used for
        # calculating freshness and is not set, this value defaults to 2 years from the
        # current time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_options = args[:display_options] if args.key?(:display_options)
          @fields = args[:fields] if args.key?(:fields)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @object_type = args[:object_type] if args.key?(:object_type)
          @owner = args[:owner] if args.key?(:owner)
          @source = args[:source] if args.key?(:source)
          @thumbnail_url = args[:thumbnail_url] if args.key?(:thumbnail_url)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A metaline is a list of properties that are displayed along with the search
      # result to provide context.
      class Metaline
        include Google::Apis::Core::Hashable
      
        # The list of displayed properties for the metaline. The maximum number of
        # properties is 5.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::CloudsearchV1::DisplayedProperty>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # A person's name.
      class Name
        include Google::Apis::Core::Hashable
      
        # The read-only display name formatted according to the locale specified by the
        # viewer's account or the `Accept-Language` HTTP header.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A typed name-value pair for structured data. The type of the value should be
      # the same as the registered type for the `name` property in the object
      # definition of `objectType`.
      class NamedProperty
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # List of date values.
        # Corresponds to the JSON property `dateValues`
        # @return [Google::Apis::CloudsearchV1::DateValues]
        attr_accessor :date_values
      
        # List of double values.
        # Corresponds to the JSON property `doubleValues`
        # @return [Google::Apis::CloudsearchV1::DoubleValues]
        attr_accessor :double_values
      
        # List of enum values.
        # Corresponds to the JSON property `enumValues`
        # @return [Google::Apis::CloudsearchV1::EnumValues]
        attr_accessor :enum_values
      
        # List of html values.
        # Corresponds to the JSON property `htmlValues`
        # @return [Google::Apis::CloudsearchV1::HtmlValues]
        attr_accessor :html_values
      
        # List of integer values.
        # Corresponds to the JSON property `integerValues`
        # @return [Google::Apis::CloudsearchV1::IntegerValues]
        attr_accessor :integer_values
      
        # The name of the property. This name should correspond to the name of the
        # property that was registered for object definition in the schema. The maximum
        # allowable length for this property is 256 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of object values.
        # Corresponds to the JSON property `objectValues`
        # @return [Google::Apis::CloudsearchV1::ObjectValues]
        attr_accessor :object_values
      
        # List of text values.
        # Corresponds to the JSON property `textValues`
        # @return [Google::Apis::CloudsearchV1::TextValues]
        attr_accessor :text_values
      
        # List of timestamp values.
        # Corresponds to the JSON property `timestampValues`
        # @return [Google::Apis::CloudsearchV1::TimestampValues]
        attr_accessor :timestamp_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_values = args[:date_values] if args.key?(:date_values)
          @double_values = args[:double_values] if args.key?(:double_values)
          @enum_values = args[:enum_values] if args.key?(:enum_values)
          @html_values = args[:html_values] if args.key?(:html_values)
          @integer_values = args[:integer_values] if args.key?(:integer_values)
          @name = args[:name] if args.key?(:name)
          @object_values = args[:object_values] if args.key?(:object_values)
          @text_values = args[:text_values] if args.key?(:text_values)
          @timestamp_values = args[:timestamp_values] if args.key?(:timestamp_values)
        end
      end
      
      # The definition for an object within a data source.
      class ObjectDefinition
        include Google::Apis::Core::Hashable
      
        # The name for the object, which then defines its type. Item indexing requests
        # should set the objectType field equal to this value. For example, if *name* is
        # *Document*, then indexing requests for items of type Document should set
        # objectType equal to *Document*. Each object definition must be uniquely named
        # within a schema. The name must start with a letter and can only contain
        # letters (A-Z, a-z) or numbers (0-9). The maximum length is 256 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The options for an object.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::CloudsearchV1::ObjectOptions]
        attr_accessor :options
      
        # The property definitions for the object. The maximum number of elements is
        # 1000.
        # Corresponds to the JSON property `propertyDefinitions`
        # @return [Array<Google::Apis::CloudsearchV1::PropertyDefinition>]
        attr_accessor :property_definitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @property_definitions = args[:property_definitions] if args.key?(:property_definitions)
        end
      end
      
      # The display options for an object.
      class ObjectDisplayOptions
        include Google::Apis::Core::Hashable
      
        # Defines the properties that are displayed in the metalines of the search
        # results. The property values are displayed in the order given here. If a
        # property holds multiple values, all of the values are displayed before the
        # next properties. For this reason, it is a good practice to specify singular
        # properties before repeated properties in this list. All of the properties must
        # set is_returnable to true. The maximum number of metalines is 3.
        # Corresponds to the JSON property `metalines`
        # @return [Array<Google::Apis::CloudsearchV1::Metaline>]
        attr_accessor :metalines
      
        # The user friendly label to display in the search result to indicate the type
        # of the item. This is OPTIONAL; if not provided, an object label isn't
        # displayed on the context line of the search results. The maximum length is 64
        # characters.
        # Corresponds to the JSON property `objectDisplayLabel`
        # @return [String]
        attr_accessor :object_display_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metalines = args[:metalines] if args.key?(:metalines)
          @object_display_label = args[:object_display_label] if args.key?(:object_display_label)
        end
      end
      
      # The options for an object.
      class ObjectOptions
        include Google::Apis::Core::Hashable
      
        # The display options for an object.
        # Corresponds to the JSON property `displayOptions`
        # @return [Google::Apis::CloudsearchV1::ObjectDisplayOptions]
        attr_accessor :display_options
      
        # Indicates which freshness property to use when adjusting search ranking for an
        # item. Fresher, more recent dates indicate higher quality. Use the freshness
        # option property that best works with your data. For fileshare documents, last
        # modified time is most relevant. For calendar event data, the time when the
        # event occurs is a more relevant freshness indicator. In this way, calendar
        # events that occur closer to the time of the search query are considered higher
        # quality and ranked accordingly.
        # Corresponds to the JSON property `freshnessOptions`
        # @return [Google::Apis::CloudsearchV1::FreshnessOptions]
        attr_accessor :freshness_options
      
        # Operators that can be used to filter suggestions. For Suggest API, only
        # operators mentioned here will be honored in the FilterOptions. Only TEXT and
        # ENUM operators are supported. NOTE: "objecttype", "type" and "mimetype" are
        # already supported. This property is to configure schema specific operators.
        # Even though this is an array, only one operator can be specified. This is an
        # array for future extensibility. Operators mapping to multiple properties
        # within the same object are not supported. If the operator spans across
        # different object types, this option has to be set once for each object
        # definition.
        # Corresponds to the JSON property `suggestionFilteringOperators`
        # @return [Array<String>]
        attr_accessor :suggestion_filtering_operators
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_options = args[:display_options] if args.key?(:display_options)
          @freshness_options = args[:freshness_options] if args.key?(:freshness_options)
          @suggestion_filtering_operators = args[:suggestion_filtering_operators] if args.key?(:suggestion_filtering_operators)
        end
      end
      
      # The options for object properties.
      class ObjectPropertyOptions
        include Google::Apis::Core::Hashable
      
        # The properties of the sub-object. These properties represent a nested object.
        # For example, if this property represents a postal address, the
        # subobjectProperties might be named *street*, *city*, and *state*. The maximum
        # number of elements is 1000.
        # Corresponds to the JSON property `subobjectProperties`
        # @return [Array<Google::Apis::CloudsearchV1::PropertyDefinition>]
        attr_accessor :subobject_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subobject_properties = args[:subobject_properties] if args.key?(:subobject_properties)
        end
      end
      
      # List of object values.
      class ObjectValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::CloudsearchV1::StructuredDataObject>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudsearchV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # 
      class PeoplePromotionCard
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `people`
        # @return [Array<Google::Apis::CloudsearchV1::PersonCore>]
        attr_accessor :people
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @people = args[:people] if args.key?(:people)
        end
      end
      
      # This field contains information about the person being suggested.
      class PeopleSuggestion
        include Google::Apis::Core::Hashable
      
        # Object to represent a person.
        # Corresponds to the JSON property `person`
        # @return [Google::Apis::CloudsearchV1::Person]
        attr_accessor :person
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @person = args[:person] if args.key?(:person)
        end
      end
      
      # Object to represent a person.
      class Person
        include Google::Apis::Core::Hashable
      
        # The person's email addresses
        # Corresponds to the JSON property `emailAddresses`
        # @return [Array<Google::Apis::CloudsearchV1::EmailAddress>]
        attr_accessor :email_addresses
      
        # The resource name of the person to provide information about. See [`People.get`
        # ](https://developers.google.com/people/api/rest/v1/people/get) from the Google
        # People API.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Obfuscated ID of a person.
        # Corresponds to the JSON property `obfuscatedId`
        # @return [String]
        attr_accessor :obfuscated_id
      
        # The person's name
        # Corresponds to the JSON property `personNames`
        # @return [Array<Google::Apis::CloudsearchV1::Name>]
        attr_accessor :person_names
      
        # The person's phone numbers
        # Corresponds to the JSON property `phoneNumbers`
        # @return [Array<Google::Apis::CloudsearchV1::PhoneNumber>]
        attr_accessor :phone_numbers
      
        # A person's read-only photo. A picture shown next to the person's name to help
        # others recognize the person in search results.
        # Corresponds to the JSON property `photos`
        # @return [Array<Google::Apis::CloudsearchV1::Photo>]
        attr_accessor :photos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_addresses = args[:email_addresses] if args.key?(:email_addresses)
          @name = args[:name] if args.key?(:name)
          @obfuscated_id = args[:obfuscated_id] if args.key?(:obfuscated_id)
          @person_names = args[:person_names] if args.key?(:person_names)
          @phone_numbers = args[:phone_numbers] if args.key?(:phone_numbers)
          @photos = args[:photos] if args.key?(:photos)
        end
      end
      
      # Information for rendering a person. NEXT ID: 37
      class PersonCore
        include Google::Apis::Core::Hashable
      
        # Instructions for how to address this person (e.g. custom pronouns). For google.
        # com this is a set of pronouns from a defined list of options.
        # Corresponds to the JSON property `addressMeAs`
        # @return [String]
        attr_accessor :address_me_as
      
        # People the profile owner is an admin to. Note that not all fields of these
        # PersonCores will be set, in particular, relationships will be empty.
        # Corresponds to the JSON property `adminTo`
        # @return [Array<Google::Apis::CloudsearchV1::PersonCore>]
        attr_accessor :admin_to
      
        # The profile owner's admins in no particular order. Note that not all fields of
        # these PersonCores will be set, in particular, relationships will be empty.
        # Corresponds to the JSON property `admins`
        # @return [Array<Google::Apis::CloudsearchV1::PersonCore>]
        attr_accessor :admins
      
        # 
        # Corresponds to the JSON property `availabilityStatus`
        # @return [String]
        attr_accessor :availability_status
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `birthday`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :birthday
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `calendarUrl`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :calendar_url
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `chatUrl`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :chat_url
      
        # Person's cost center as a string, e.g. "926: Googler Apps".
        # Corresponds to the JSON property `costCenter`
        # @return [String]
        attr_accessor :cost_center
      
        # The person's Organization department, e.g. "People Operations". For google.com
        # this is usually called "area".
        # Corresponds to the JSON property `department`
        # @return [String]
        attr_accessor :department
      
        # A subset of the profile owner's direct reports. The number of entities here
        # may be less than total_direct_reports_count, because typically ProfileResponse
        # does not include all the person's reports, if there are too many to retrieve
        # efficiently. Note that not all fields of these PersonCores will be set, in
        # particular, relationships will be empty.
        # Corresponds to the JSON property `directReports`
        # @return [Array<Google::Apis::CloudsearchV1::PersonCore>]
        attr_accessor :direct_reports
      
        # The profile owner's direct dotted line managers in no particular order. Note
        # that not all fields of these PersonCores will be set, in particular,
        # relationships will be empty.
        # Corresponds to the JSON property `dottedLineManagers`
        # @return [Array<Google::Apis::CloudsearchV1::PersonCore>]
        attr_accessor :dotted_line_managers
      
        # A subset of the profile owner's dotted-line reports. The number of entities
        # here may be less than total_dlr_count. Note that not all fields of these
        # PersonCores will be set, in particular, relationships will be empty.
        # Corresponds to the JSON property `dottedLineReports`
        # @return [Array<Google::Apis::CloudsearchV1::PersonCore>]
        attr_accessor :dotted_line_reports
      
        # E-mail addresses of the person. The primary or preferred email should be first.
        # Corresponds to the JSON property `emails`
        # @return [Array<String>]
        attr_accessor :emails
      
        # Person's employee number (external ID of type "organization") For google.com
        # this is the badge number (e.g. 2 for Larry Page).
        # Corresponds to the JSON property `employeeId`
        # @return [String]
        attr_accessor :employee_id
      
        # A fingerprint used by PAPI to reliably determine if a resource has changed
        # Externally it is used as part of the etag.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Full-time equivalent (in ‰) (e.g. 800 for a person who's working 80%).
        # Corresponds to the JSON property `ftePermille`
        # @return [Fixnum]
        attr_accessor :fte_permille
      
        # Geo information used for rendering a map that shows the user's work location.
        # Corresponds to the JSON property `geoLocation`
        # @return [Google::Apis::CloudsearchV1::MapInfo]
        attr_accessor :geo_location
      
        # 
        # Corresponds to the JSON property `gmailUrl`
        # @return [String]
        attr_accessor :gmail_url
      
        # Profile owner's job title (e.g. "Software Engineer"). For google.com this is
        # the Workday preferred job title.
        # Corresponds to the JSON property `jobTitle`
        # @return [String]
        attr_accessor :job_title
      
        # List of keys to use from the map 'keywords'.
        # Corresponds to the JSON property `keywordTypes`
        # @return [Array<String>]
        attr_accessor :keyword_types
      
        # Custom keywords the domain admin has added.
        # Corresponds to the JSON property `keywords`
        # @return [Hash<String,String>]
        attr_accessor :keywords
      
        # Custom links the profile owner has added.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazFrontendTeamsLink>]
        attr_accessor :links
      
        # Detailed desk location within the company. For google.com this is the desk
        # location code (e.g. "DE-MUC-ARP-6T2-6T2C0C") if the person has a desk.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The profile owner's management chain from top to bottom, where managers[0] is
        # the CEO, manager[N-2] is the person's manager's manager and managers[N-1] is
        # the person's direct manager. Note that not all fields of these PersonCores
        # will be set, in particular, relationships will be empty.
        # Corresponds to the JSON property `managers`
        # @return [Array<Google::Apis::CloudsearchV1::PersonCore>]
        attr_accessor :managers
      
        # Custom mission statement the profile owner has added.
        # Corresponds to the JSON property `mission`
        # @return [String]
        attr_accessor :mission
      
        # Human-readable Unicode display name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Office/building identifier within the company. For google.com this is the
        # office code (e.g. "DE-MUC-ARP").
        # Corresponds to the JSON property `officeLocation`
        # @return [String]
        attr_accessor :office_location
      
        # The person's obfuscated Gaia ID.
        # Corresponds to the JSON property `personId`
        # @return [String]
        attr_accessor :person_id
      
        # 
        # Corresponds to the JSON property `phoneNumbers`
        # @return [Array<Google::Apis::CloudsearchV1::EnterpriseTopazFrontendTeamsPersonCorePhoneNumber>]
        attr_accessor :phone_numbers
      
        # Message containing a string that is safe to use in URL contexts in DOM APIs
        # and HTML documents, where the URL context does not refer to a resource that
        # loads code.
        # Corresponds to the JSON property `photoUrl`
        # @return [Google::Apis::CloudsearchV1::SafeUrlProto]
        attr_accessor :photo_url
      
        # Postal address of office/building.
        # Corresponds to the JSON property `postalAddress`
        # @return [String]
        attr_accessor :postal_address
      
        # Total count of the profile owner's direct reports.
        # Corresponds to the JSON property `totalDirectReportsCount`
        # @return [Fixnum]
        attr_accessor :total_direct_reports_count
      
        # Total count of the profile owner's dotted-line reports.
        # Corresponds to the JSON property `totalDlrCount`
        # @return [Fixnum]
        attr_accessor :total_dlr_count
      
        # The sum of all profile owner's reports and their own full-time-equivalents in ‰
        # (e.g. 1800 if one report is working 80% and profile owner 100%).
        # Corresponds to the JSON property `totalFteCount`
        # @return [Fixnum]
        attr_accessor :total_fte_count
      
        # External ID of type "login_id" for the profile. For google.com this is the
        # username/LDAP.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # 
        # Corresponds to the JSON property `waldoComeBackTime`
        # @return [String]
        attr_accessor :waldo_come_back_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_me_as = args[:address_me_as] if args.key?(:address_me_as)
          @admin_to = args[:admin_to] if args.key?(:admin_to)
          @admins = args[:admins] if args.key?(:admins)
          @availability_status = args[:availability_status] if args.key?(:availability_status)
          @birthday = args[:birthday] if args.key?(:birthday)
          @calendar_url = args[:calendar_url] if args.key?(:calendar_url)
          @chat_url = args[:chat_url] if args.key?(:chat_url)
          @cost_center = args[:cost_center] if args.key?(:cost_center)
          @department = args[:department] if args.key?(:department)
          @direct_reports = args[:direct_reports] if args.key?(:direct_reports)
          @dotted_line_managers = args[:dotted_line_managers] if args.key?(:dotted_line_managers)
          @dotted_line_reports = args[:dotted_line_reports] if args.key?(:dotted_line_reports)
          @emails = args[:emails] if args.key?(:emails)
          @employee_id = args[:employee_id] if args.key?(:employee_id)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @fte_permille = args[:fte_permille] if args.key?(:fte_permille)
          @geo_location = args[:geo_location] if args.key?(:geo_location)
          @gmail_url = args[:gmail_url] if args.key?(:gmail_url)
          @job_title = args[:job_title] if args.key?(:job_title)
          @keyword_types = args[:keyword_types] if args.key?(:keyword_types)
          @keywords = args[:keywords] if args.key?(:keywords)
          @links = args[:links] if args.key?(:links)
          @location = args[:location] if args.key?(:location)
          @managers = args[:managers] if args.key?(:managers)
          @mission = args[:mission] if args.key?(:mission)
          @name = args[:name] if args.key?(:name)
          @office_location = args[:office_location] if args.key?(:office_location)
          @person_id = args[:person_id] if args.key?(:person_id)
          @phone_numbers = args[:phone_numbers] if args.key?(:phone_numbers)
          @photo_url = args[:photo_url] if args.key?(:photo_url)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
          @total_direct_reports_count = args[:total_direct_reports_count] if args.key?(:total_direct_reports_count)
          @total_dlr_count = args[:total_dlr_count] if args.key?(:total_dlr_count)
          @total_fte_count = args[:total_fte_count] if args.key?(:total_fte_count)
          @username = args[:username] if args.key?(:username)
          @waldo_come_back_time = args[:waldo_come_back_time] if args.key?(:waldo_come_back_time)
        end
      end
      
      # A person's Phone Number
      class PhoneNumber
        include Google::Apis::Core::Hashable
      
        # The phone number of the person.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A person's photo.
      class Photo
        include Google::Apis::Core::Hashable
      
        # The URL of the photo.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class PollItemsRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # Maximum number of items to return. The maximum value is 100 and the default
        # value is 20.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # Queue name to fetch items from. If unspecified, PollItems will fetch from '
        # default' queue. The maximum length is 100 characters.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        # Limit the items polled to the ones with these statuses.
        # Corresponds to the JSON property `statusCodes`
        # @return [Array<String>]
        attr_accessor :status_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @limit = args[:limit] if args.key?(:limit)
          @queue = args[:queue] if args.key?(:queue)
          @status_codes = args[:status_codes] if args.key?(:status_codes)
        end
      end
      
      # 
      class PollItemsResponse
        include Google::Apis::Core::Hashable
      
        # Set of items from the queue available for connector to process. These items
        # have the following subset of fields populated: version metadata.hash
        # structured_data.hash content.hash payload status queue
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::Item>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # Reference to a user, group, or domain.
      class Principal
        include Google::Apis::Core::Hashable
      
        # This principal is a group identified using an external identity. The name
        # field must specify the group resource name with this format: identitysources/`
        # source_id`/groups/`ID`
        # Corresponds to the JSON property `groupResourceName`
        # @return [String]
        attr_accessor :group_resource_name
      
        # This principal is a Google Workspace user, group or domain.
        # Corresponds to the JSON property `gsuitePrincipal`
        # @return [Google::Apis::CloudsearchV1::GSuitePrincipal]
        attr_accessor :gsuite_principal
      
        # This principal is a user identified using an external identity. The name field
        # must specify the user resource name with this format: identitysources/`
        # source_id`/users/`ID`
        # Corresponds to the JSON property `userResourceName`
        # @return [String]
        attr_accessor :user_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_resource_name = args[:group_resource_name] if args.key?(:group_resource_name)
          @gsuite_principal = args[:gsuite_principal] if args.key?(:gsuite_principal)
          @user_resource_name = args[:user_resource_name] if args.key?(:user_resource_name)
        end
      end
      
      # 
      class ProcessingError
        include Google::Apis::Core::Hashable
      
        # Error code indicating the nature of the error.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The description of the error.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # In case the item fields are invalid, this field contains the details about the
        # validation errors.
        # Corresponds to the JSON property `fieldViolations`
        # @return [Array<Google::Apis::CloudsearchV1::FieldViolation>]
        attr_accessor :field_violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @error_message = args[:error_message] if args.key?(:error_message)
          @field_violations = args[:field_violations] if args.key?(:field_violations)
        end
      end
      
      # The definition of a property within an object.
      class PropertyDefinition
        include Google::Apis::Core::Hashable
      
        # The options for boolean properties.
        # Corresponds to the JSON property `booleanPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::BooleanPropertyOptions]
        attr_accessor :boolean_property_options
      
        # The options for date properties.
        # Corresponds to the JSON property `datePropertyOptions`
        # @return [Google::Apis::CloudsearchV1::DatePropertyOptions]
        attr_accessor :date_property_options
      
        # The display options for a property.
        # Corresponds to the JSON property `displayOptions`
        # @return [Google::Apis::CloudsearchV1::PropertyDisplayOptions]
        attr_accessor :display_options
      
        # The options for double properties.
        # Corresponds to the JSON property `doublePropertyOptions`
        # @return [Google::Apis::CloudsearchV1::DoublePropertyOptions]
        attr_accessor :double_property_options
      
        # The options for enum properties, which allow you to define a restricted set of
        # strings to match user queries, set rankings for those string values, and
        # define an operator name to be paired with those strings so that users can
        # narrow results to only items with a specific value. For example, for items in
        # a request tracking system with priority information, you could define *p0* as
        # an allowable enum value and tie this enum to the operator name *priority* so
        # that search users could add *priority:p0* to their query to restrict the set
        # of results to only those items indexed with the value *p0*.
        # Corresponds to the JSON property `enumPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::EnumPropertyOptions]
        attr_accessor :enum_property_options
      
        # The options for html properties.
        # Corresponds to the JSON property `htmlPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::HtmlPropertyOptions]
        attr_accessor :html_property_options
      
        # The options for integer properties.
        # Corresponds to the JSON property `integerPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::IntegerPropertyOptions]
        attr_accessor :integer_property_options
      
        # Indicates that the property can be used for generating facets. Cannot be true
        # for properties whose type is object. IsReturnable must be true to set this
        # option. Only supported for boolean, enum, integer, and text properties.
        # Corresponds to the JSON property `isFacetable`
        # @return [Boolean]
        attr_accessor :is_facetable
        alias_method :is_facetable?, :is_facetable
      
        # Indicates that multiple values are allowed for the property. For example, a
        # document only has one description but can have multiple comments. Cannot be
        # true for properties whose type is a boolean. If set to false, properties that
        # contain more than one value cause the indexing request for that item to be
        # rejected.
        # Corresponds to the JSON property `isRepeatable`
        # @return [Boolean]
        attr_accessor :is_repeatable
        alias_method :is_repeatable?, :is_repeatable
      
        # Indicates that the property identifies data that should be returned in search
        # results via the Query API. If set to *true*, indicates that Query API users
        # can use matching property fields in results. However, storing fields requires
        # more space allocation and uses more bandwidth for search queries, which
        # impacts performance over large datasets. Set to *true* here only if the field
        # is needed for search results. Cannot be true for properties whose type is an
        # object.
        # Corresponds to the JSON property `isReturnable`
        # @return [Boolean]
        attr_accessor :is_returnable
        alias_method :is_returnable?, :is_returnable
      
        # Indicates that the property can be used for sorting. Cannot be true for
        # properties that are repeatable. Cannot be true for properties whose type is
        # object. IsReturnable must be true to set this option. Only supported for
        # boolean, date, double, integer, and timestamp properties.
        # Corresponds to the JSON property `isSortable`
        # @return [Boolean]
        attr_accessor :is_sortable
        alias_method :is_sortable?, :is_sortable
      
        # Indicates that the property can be used for generating query suggestions.
        # Corresponds to the JSON property `isSuggestable`
        # @return [Boolean]
        attr_accessor :is_suggestable
        alias_method :is_suggestable?, :is_suggestable
      
        # Indicates that users can perform wildcard search for this property. Only
        # supported for Text properties. IsReturnable must be true to set this option.
        # In a given datasource maximum of 5 properties can be marked as
        # is_wildcard_searchable. For more details, see [Define object properties](https:
        # //developers.google.com/cloud-search/docs/guides/schema-guide#properties)
        # Corresponds to the JSON property `isWildcardSearchable`
        # @return [Boolean]
        attr_accessor :is_wildcard_searchable
        alias_method :is_wildcard_searchable?, :is_wildcard_searchable
      
        # The name of the property. Item indexing requests sent to the Indexing API
        # should set the property name equal to this value. For example, if name is *
        # subject_line*, then indexing requests for document items with subject fields
        # should set the name for that field equal to *subject_line*. Use the name as
        # the identifier for the object property. Once registered as a property for an
        # object, you cannot re-use this name for another property within that object.
        # The name must start with a letter and can only contain letters (A-Z, a-z) or
        # numbers (0-9). The maximum length is 256 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The options for object properties.
        # Corresponds to the JSON property `objectPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::ObjectPropertyOptions]
        attr_accessor :object_property_options
      
        # The options for text properties.
        # Corresponds to the JSON property `textPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::TextPropertyOptions]
        attr_accessor :text_property_options
      
        # The options for timestamp properties.
        # Corresponds to the JSON property `timestampPropertyOptions`
        # @return [Google::Apis::CloudsearchV1::TimestampPropertyOptions]
        attr_accessor :timestamp_property_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_property_options = args[:boolean_property_options] if args.key?(:boolean_property_options)
          @date_property_options = args[:date_property_options] if args.key?(:date_property_options)
          @display_options = args[:display_options] if args.key?(:display_options)
          @double_property_options = args[:double_property_options] if args.key?(:double_property_options)
          @enum_property_options = args[:enum_property_options] if args.key?(:enum_property_options)
          @html_property_options = args[:html_property_options] if args.key?(:html_property_options)
          @integer_property_options = args[:integer_property_options] if args.key?(:integer_property_options)
          @is_facetable = args[:is_facetable] if args.key?(:is_facetable)
          @is_repeatable = args[:is_repeatable] if args.key?(:is_repeatable)
          @is_returnable = args[:is_returnable] if args.key?(:is_returnable)
          @is_sortable = args[:is_sortable] if args.key?(:is_sortable)
          @is_suggestable = args[:is_suggestable] if args.key?(:is_suggestable)
          @is_wildcard_searchable = args[:is_wildcard_searchable] if args.key?(:is_wildcard_searchable)
          @name = args[:name] if args.key?(:name)
          @object_property_options = args[:object_property_options] if args.key?(:object_property_options)
          @text_property_options = args[:text_property_options] if args.key?(:text_property_options)
          @timestamp_property_options = args[:timestamp_property_options] if args.key?(:timestamp_property_options)
        end
      end
      
      # The display options for a property.
      class PropertyDisplayOptions
        include Google::Apis::Core::Hashable
      
        # The user friendly label for the property that is used if the property is
        # specified to be displayed in ObjectDisplayOptions. If provided, the display
        # label is shown in front of the property values when the property is part of
        # the object display options. For example, if the property value is '1', the
        # value by itself may not be useful context for the user. If the display name
        # given was 'priority', then the user sees 'priority : 1' in the search results
        # which provides clear context to search users. This is OPTIONAL; if not given,
        # only the property values are displayed. The maximum length is 64 characters.
        # Corresponds to the JSON property `displayLabel`
        # @return [String]
        attr_accessor :display_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_label = args[:display_label] if args.key?(:display_label)
        end
      end
      
      # Represents an item to be pushed to the indexing queue.
      class PushItem
        include Google::Apis::Core::Hashable
      
        # Content hash of the item according to the repository. If specified, this is
        # used to determine how to modify this item's status. Setting this field and the
        # type field results in argument error. The maximum length is 2048 characters.
        # Corresponds to the JSON property `contentHash`
        # @return [String]
        attr_accessor :content_hash
      
        # The metadata hash of the item according to the repository. If specified, this
        # is used to determine how to modify this item's status. Setting this field and
        # the type field results in argument error. The maximum length is 2048
        # characters.
        # Corresponds to the JSON property `metadataHash`
        # @return [String]
        attr_accessor :metadata_hash
      
        # Provides additional document state information for the connector, such as an
        # alternate repository ID and other metadata. The maximum length is 8192 bytes.
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # Queue to which this item belongs. The `default` queue is chosen if this field
        # is not specified. The maximum length is 512 characters.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        # Errors when the connector is communicating to the source repository.
        # Corresponds to the JSON property `repositoryError`
        # @return [Google::Apis::CloudsearchV1::RepositoryError]
        attr_accessor :repository_error
      
        # Structured data hash of the item according to the repository. If specified,
        # this is used to determine how to modify this item's status. Setting this field
        # and the type field results in argument error. The maximum length is 2048
        # characters.
        # Corresponds to the JSON property `structuredDataHash`
        # @return [String]
        attr_accessor :structured_data_hash
      
        # The type of the push operation that defines the push behavior.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_hash = args[:content_hash] if args.key?(:content_hash)
          @metadata_hash = args[:metadata_hash] if args.key?(:metadata_hash)
          @payload = args[:payload] if args.key?(:payload)
          @queue = args[:queue] if args.key?(:queue)
          @repository_error = args[:repository_error] if args.key?(:repository_error)
          @structured_data_hash = args[:structured_data_hash] if args.key?(:structured_data_hash)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class PushItemRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # Represents an item to be pushed to the indexing queue.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::CloudsearchV1::PushItem]
        attr_accessor :item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @item = args[:item] if args.key?(:item)
        end
      end
      
      # Details about a user's query activity.
      class QueryActivity
        include Google::Apis::Core::Hashable
      
        # User input query to be logged/removed.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # 
      class QueryCountByStatus
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # This represents the http status code.
        # Corresponds to the JSON property `statusCode`
        # @return [Fixnum]
        attr_accessor :status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @status_code = args[:status_code] if args.key?(:status_code)
        end
      end
      
      # 
      class QueryInterpretation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `interpretationType`
        # @return [String]
        attr_accessor :interpretation_type
      
        # The interpretation of the query used in search. For example, queries with
        # natural language intent like "email from john" will be interpreted as "from:
        # john source:mail". This field will not be filled when the reason is
        # NOT_ENOUGH_RESULTS_FOUND_FOR_USER_QUERY.
        # Corresponds to the JSON property `interpretedQuery`
        # @return [String]
        attr_accessor :interpreted_query
      
        # The reason for interpretation of the query. This field will not be UNSPECIFIED
        # if the interpretation type is not NONE.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interpretation_type = args[:interpretation_type] if args.key?(:interpretation_type)
          @interpreted_query = args[:interpreted_query] if args.key?(:interpreted_query)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Default options to interpret user query.
      class QueryInterpretationConfig
        include Google::Apis::Core::Hashable
      
        # Set this flag to disable supplemental results retrieval, setting a flag here
        # will not retrieve supplemental results for queries associated with a given
        # search application. If this flag is set to True, it will take precedence over
        # the option set at Query level. For the default value of False, query level
        # flag will set the correct interpretation for supplemental results.
        # Corresponds to the JSON property `forceDisableSupplementalResults`
        # @return [Boolean]
        attr_accessor :force_disable_supplemental_results
        alias_method :force_disable_supplemental_results?, :force_disable_supplemental_results
      
        # Enable this flag to turn off all internal optimizations like natural language (
        # NL) interpretation of queries, supplemental results retrieval, and usage of
        # synonyms including custom ones. If this flag is set to True, it will take
        # precedence over the option set at Query level. For the default value of False,
        # query level flag will set the correct interpretation for verbatim mode.
        # Corresponds to the JSON property `forceVerbatimMode`
        # @return [Boolean]
        attr_accessor :force_verbatim_mode
        alias_method :force_verbatim_mode?, :force_verbatim_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @force_disable_supplemental_results = args[:force_disable_supplemental_results] if args.key?(:force_disable_supplemental_results)
          @force_verbatim_mode = args[:force_verbatim_mode] if args.key?(:force_verbatim_mode)
        end
      end
      
      # Options to interpret user query.
      class QueryInterpretationOptions
        include Google::Apis::Core::Hashable
      
        # Flag to disable natural language (NL) interpretation of queries. Default is
        # false, Set to true to disable natural language interpretation. NL
        # interpretation only applies to predefined datasources.
        # Corresponds to the JSON property `disableNlInterpretation`
        # @return [Boolean]
        attr_accessor :disable_nl_interpretation
        alias_method :disable_nl_interpretation?, :disable_nl_interpretation
      
        # Use this flag to disable supplemental results for a query. Supplemental
        # results setting chosen at SearchApplication level will take precedence if set
        # to True.
        # Corresponds to the JSON property `disableSupplementalResults`
        # @return [Boolean]
        attr_accessor :disable_supplemental_results
        alias_method :disable_supplemental_results?, :disable_supplemental_results
      
        # Enable this flag to turn off all internal optimizations like natural language (
        # NL) interpretation of queries, supplemental result retrieval, and usage of
        # synonyms including custom ones. Nl interpretation will be disabled if either
        # one of the two flags is true.
        # Corresponds to the JSON property `enableVerbatimMode`
        # @return [Boolean]
        attr_accessor :enable_verbatim_mode
        alias_method :enable_verbatim_mode?, :enable_verbatim_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_nl_interpretation = args[:disable_nl_interpretation] if args.key?(:disable_nl_interpretation)
          @disable_supplemental_results = args[:disable_supplemental_results] if args.key?(:disable_supplemental_results)
          @enable_verbatim_mode = args[:enable_verbatim_mode] if args.key?(:enable_verbatim_mode)
        end
      end
      
      # Information relevant only to a query entry.
      class QueryItem
        include Google::Apis::Core::Hashable
      
        # True if the text was generated by means other than a previous user search.
        # Corresponds to the JSON property `isSynthetic`
        # @return [Boolean]
        attr_accessor :is_synthetic
        alias_method :is_synthetic?, :is_synthetic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_synthetic = args[:is_synthetic] if args.key?(:is_synthetic)
        end
      end
      
      # The definition of a operator that can be used in a Search/Suggest request.
      class QueryOperator
        include Google::Apis::Core::Hashable
      
        # Display name of the operator
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Potential list of values for the opeatror field. This field is only filled
        # when we can safely enumerate all the possible values of this operator.
        # Corresponds to the JSON property `enumValues`
        # @return [Array<String>]
        attr_accessor :enum_values
      
        # Indicates the operator name that can be used to isolate the property using the
        # greater-than operator.
        # Corresponds to the JSON property `greaterThanOperatorName`
        # @return [String]
        attr_accessor :greater_than_operator_name
      
        # Can this operator be used to get facets.
        # Corresponds to the JSON property `isFacetable`
        # @return [Boolean]
        attr_accessor :is_facetable
        alias_method :is_facetable?, :is_facetable
      
        # Indicates if multiple values can be set for this property.
        # Corresponds to the JSON property `isRepeatable`
        # @return [Boolean]
        attr_accessor :is_repeatable
        alias_method :is_repeatable?, :is_repeatable
      
        # Will the property associated with this facet be returned as part of search
        # results.
        # Corresponds to the JSON property `isReturnable`
        # @return [Boolean]
        attr_accessor :is_returnable
        alias_method :is_returnable?, :is_returnable
      
        # Can this operator be used to sort results.
        # Corresponds to the JSON property `isSortable`
        # @return [Boolean]
        attr_accessor :is_sortable
        alias_method :is_sortable?, :is_sortable
      
        # Can get suggestions for this field.
        # Corresponds to the JSON property `isSuggestable`
        # @return [Boolean]
        attr_accessor :is_suggestable
        alias_method :is_suggestable?, :is_suggestable
      
        # Indicates the operator name that can be used to isolate the property using the
        # less-than operator.
        # Corresponds to the JSON property `lessThanOperatorName`
        # @return [String]
        attr_accessor :less_than_operator_name
      
        # The name of the object corresponding to the operator. This field is only
        # filled for schema-specific operators, and is unset for common operators.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The name of the operator.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # The type of the operator.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enum_values = args[:enum_values] if args.key?(:enum_values)
          @greater_than_operator_name = args[:greater_than_operator_name] if args.key?(:greater_than_operator_name)
          @is_facetable = args[:is_facetable] if args.key?(:is_facetable)
          @is_repeatable = args[:is_repeatable] if args.key?(:is_repeatable)
          @is_returnable = args[:is_returnable] if args.key?(:is_returnable)
          @is_sortable = args[:is_sortable] if args.key?(:is_sortable)
          @is_suggestable = args[:is_suggestable] if args.key?(:is_suggestable)
          @less_than_operator_name = args[:less_than_operator_name] if args.key?(:less_than_operator_name)
          @object_type = args[:object_type] if args.key?(:object_type)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # List of sources that the user can search using the query API.
      class QuerySource
        include Google::Apis::Core::Hashable
      
        # Display name of the data source.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # List of all operators applicable for this source.
        # Corresponds to the JSON property `operators`
        # @return [Array<Google::Apis::CloudsearchV1::QueryOperator>]
        attr_accessor :operators
      
        # A short name or alias for the source. This value can be used with the 'source'
        # operator.
        # Corresponds to the JSON property `shortName`
        # @return [String]
        attr_accessor :short_name
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @operators = args[:operators] if args.key?(:operators)
          @short_name = args[:short_name] if args.key?(:short_name)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # This field does not contain anything as of now and is just used as an
      # indicator that the suggest result was a phrase completion.
      class QuerySuggestion
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Remove Logged Activity Request.
      class RemoveActivityRequest
        include Google::Apis::Core::Hashable
      
        # Shared request options for all RPC methods.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::CloudsearchV1::RequestOptions]
        attr_accessor :request_options
      
        # User's single or bulk query activity. This can be a logging query or deletion
        # query.
        # Corresponds to the JSON property `userActivity`
        # @return [Google::Apis::CloudsearchV1::UserActivity]
        attr_accessor :user_activity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_options = args[:request_options] if args.key?(:request_options)
          @user_activity = args[:user_activity] if args.key?(:user_activity)
        end
      end
      
      # Remove Logged Activity Response. will return an empty response for now. Will
      # be revisited in later phases.
      class RemoveActivityResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Errors when the connector is communicating to the source repository.
      class RepositoryError
        include Google::Apis::Core::Hashable
      
        # Message that describes the error. The maximum allowable length of the message
        # is 8192 characters.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Error codes. Matches the definition of HTTP status codes.
        # Corresponds to the JSON property `httpStatusCode`
        # @return [Fixnum]
        attr_accessor :http_status_code
      
        # The type of error.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @http_status_code = args[:http_status_code] if args.key?(:http_status_code)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Shared request options for all RPC methods.
      class RequestOptions
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The BCP-47 language code, such as "en-US" or "sr-Latn". For more information,
        # see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. For
        # translations. Set this field using the language set in browser or for the page.
        # In the event that the user's language preference is known, set this field to
        # the known user language. When specified, the documents in search results are
        # biased towards the specified language. The Suggest API uses this field as a
        # hint to make better third-party autocomplete predictions.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The ID generated when you create a search application using the [admin console]
        # (https://support.google.com/a/answer/9043922).
        # Corresponds to the JSON property `searchApplicationId`
        # @return [String]
        attr_accessor :search_application_id
      
        # Current user's time zone id, such as "America/Los_Angeles" or "Australia/
        # Sydney". These IDs are defined by [Unicode Common Locale Data Repository (CLDR)
        # ](http://cldr.unicode.org/) project, and currently available in the file [
        # timezone.xml](http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml).
        # This field is used to correctly interpret date and time queries. If this field
        # is not specified, the default time zone (UTC) is used.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @language_code = args[:language_code] if args.key?(:language_code)
          @search_application_id = args[:search_application_id] if args.key?(:search_application_id)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # 
      class ResetSearchApplicationRequest
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
        end
      end
      
      # Debugging information about the response.
      class ResponseDebugInfo
        include Google::Apis::Core::Hashable
      
        # General debug info formatted for display.
        # Corresponds to the JSON property `formattedDebugInfo`
        # @return [String]
        attr_accessor :formatted_debug_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_debug_info = args[:formatted_debug_info] if args.key?(:formatted_debug_info)
        end
      end
      
      # Information relevant only to a restrict entry. NextId: 12
      class RestrictItem
        include Google::Apis::Core::Hashable
      
        # Drive follow-up search restricts (e.g. "followup:suggestions").
        # Corresponds to the JSON property `driveFollowUpRestrict`
        # @return [Google::Apis::CloudsearchV1::DriveFollowUpRestrict]
        attr_accessor :drive_follow_up_restrict
      
        # Drive location search restricts (e.g. "is:starred").
        # Corresponds to the JSON property `driveLocationRestrict`
        # @return [Google::Apis::CloudsearchV1::DriveLocationRestrict]
        attr_accessor :drive_location_restrict
      
        # Drive mime-type search restricts (e.g. "type:pdf").
        # Corresponds to the JSON property `driveMimeTypeRestrict`
        # @return [Google::Apis::CloudsearchV1::DriveMimeTypeRestrict]
        attr_accessor :drive_mime_type_restrict
      
        # The time span search restrict (e.g. "after:2017-09-11 before:2017-09-12").
        # Corresponds to the JSON property `driveTimeSpanRestrict`
        # @return [Google::Apis::CloudsearchV1::DriveTimeSpanRestrict]
        attr_accessor :drive_time_span_restrict
      
        # The search restrict (e.g. "after:2017-09-11 before:2017-09-12").
        # Corresponds to the JSON property `searchOperator`
        # @return [String]
        attr_accessor :search_operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_follow_up_restrict = args[:drive_follow_up_restrict] if args.key?(:drive_follow_up_restrict)
          @drive_location_restrict = args[:drive_location_restrict] if args.key?(:drive_location_restrict)
          @drive_mime_type_restrict = args[:drive_mime_type_restrict] if args.key?(:drive_mime_type_restrict)
          @drive_time_span_restrict = args[:drive_time_span_restrict] if args.key?(:drive_time_span_restrict)
          @search_operator = args[:search_operator] if args.key?(:search_operator)
        end
      end
      
      # Result count information
      class ResultCounts
        include Google::Apis::Core::Hashable
      
        # Result count information for each source with results.
        # Corresponds to the JSON property `sourceResultCounts`
        # @return [Array<Google::Apis::CloudsearchV1::SourceResultCount>]
        attr_accessor :source_result_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_result_counts = args[:source_result_counts] if args.key?(:source_result_counts)
        end
      end
      
      # Debugging information about the result.
      class ResultDebugInfo
        include Google::Apis::Core::Hashable
      
        # General debug info formatted for display.
        # Corresponds to the JSON property `formattedDebugInfo`
        # @return [String]
        attr_accessor :formatted_debug_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_debug_info = args[:formatted_debug_info] if args.key?(:formatted_debug_info)
        end
      end
      
      # Display Fields for Search Results
      class ResultDisplayField
        include Google::Apis::Core::Hashable
      
        # The display label for the property.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The operator name of the property.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # A typed name-value pair for structured data. The type of the value should be
        # the same as the registered type for the `name` property in the object
        # definition of `objectType`.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::CloudsearchV1::NamedProperty]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # The collection of fields that make up a displayed line
      class ResultDisplayLine
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::CloudsearchV1::ResultDisplayField>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # 
      class ResultDisplayMetadata
        include Google::Apis::Core::Hashable
      
        # The metalines content to be displayed with the result.
        # Corresponds to the JSON property `metalines`
        # @return [Array<Google::Apis::CloudsearchV1::ResultDisplayLine>]
        attr_accessor :metalines
      
        # The display label for the object.
        # Corresponds to the JSON property `objectTypeLabel`
        # @return [String]
        attr_accessor :object_type_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metalines = args[:metalines] if args.key?(:metalines)
          @object_type_label = args[:object_type_label] if args.key?(:object_type_label)
        end
      end
      
      # 
      class RetrievalImportance
        include Google::Apis::Core::Hashable
      
        # Indicates the ranking importance given to property when it is matched during
        # retrieval. Once set, the token importance of a property cannot be changed.
        # Corresponds to the JSON property `importance`
        # @return [String]
        attr_accessor :importance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @importance = args[:importance] if args.key?(:importance)
        end
      end
      
      # IMPORTANT: It is unsafe to accept this message from an untrusted source, since
      # it's trivial for an attacker to forge serialized messages that don't fulfill
      # the type's safety contract -- for example, it could contain attacker
      # controlled script. A system which receives a SafeHtmlProto implicitly trusts
      # the producer of the SafeHtmlProto. So, it's generally safe to return this
      # message in RPC responses, but generally unsafe to accept it in RPC requests.
      class SafeHtmlProto
        include Google::Apis::Core::Hashable
      
        # IMPORTANT: Never set or read this field, even from tests, it is private. See
        # documentation at the top of .proto file for programming language packages with
        # which to create or read this message.
        # Corresponds to the JSON property `privateDoNotAccessOrElseSafeHtmlWrappedValue`
        # @return [String]
        attr_accessor :private_do_not_access_or_else_safe_html_wrapped_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_do_not_access_or_else_safe_html_wrapped_value = args[:private_do_not_access_or_else_safe_html_wrapped_value] if args.key?(:private_do_not_access_or_else_safe_html_wrapped_value)
        end
      end
      
      # Message containing a string that is safe to use in URL contexts in DOM APIs
      # and HTML documents, where the URL context does not refer to a resource that
      # loads code.
      class SafeUrlProto
        include Google::Apis::Core::Hashable
      
        # IMPORTANT: Never set or read this field, even from tests, it is private. See
        # documentation at the top of .proto file for programming language packages with
        # which to create or read this message.
        # Corresponds to the JSON property `privateDoNotAccessOrElseSafeUrlWrappedValue`
        # @return [String]
        attr_accessor :private_do_not_access_or_else_safe_url_wrapped_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_do_not_access_or_else_safe_url_wrapped_value = args[:private_do_not_access_or_else_safe_url_wrapped_value] if args.key?(:private_do_not_access_or_else_safe_url_wrapped_value)
        end
      end
      
      # The schema definition for a data source.
      class Schema
        include Google::Apis::Core::Hashable
      
        # The list of top-level objects for the data source. The maximum number of
        # elements is 10.
        # Corresponds to the JSON property `objectDefinitions`
        # @return [Array<Google::Apis::CloudsearchV1::ObjectDefinition>]
        attr_accessor :object_definitions
      
        # IDs of the Long Running Operations (LROs) currently running for this schema.
        # After modifying the schema, wait for operations to complete before indexing
        # additional content.
        # Corresponds to the JSON property `operationIds`
        # @return [Array<String>]
        attr_accessor :operation_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_definitions = args[:object_definitions] if args.key?(:object_definitions)
          @operation_ids = args[:operation_ids] if args.key?(:operation_ids)
        end
      end
      
      # Scoring configurations for a source while processing a Search or Suggest
      # request.
      class ScoringConfig
        include Google::Apis::Core::Hashable
      
        # Whether to use freshness as a ranking signal. By default, freshness is used as
        # a ranking signal. Note that this setting is not available in the Admin UI.
        # Corresponds to the JSON property `disableFreshness`
        # @return [Boolean]
        attr_accessor :disable_freshness
        alias_method :disable_freshness?, :disable_freshness
      
        # Whether to personalize the results. By default, personal signals will be used
        # to boost results.
        # Corresponds to the JSON property `disablePersonalization`
        # @return [Boolean]
        attr_accessor :disable_personalization
        alias_method :disable_personalization?, :disable_personalization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_freshness = args[:disable_freshness] if args.key?(:disable_freshness)
          @disable_personalization = args[:disable_personalization] if args.key?(:disable_personalization)
        end
      end
      
      # SearchApplication
      class SearchApplication
        include Google::Apis::Core::Hashable
      
        # Retrictions applied to the configurations. The maximum number of elements is
        # 10.
        # Corresponds to the JSON property `dataSourceRestrictions`
        # @return [Array<Google::Apis::CloudsearchV1::DataSourceRestriction>]
        attr_accessor :data_source_restrictions
      
        # The default fields for returning facet results. The sources specified here
        # also have been included in data_source_restrictions above.
        # Corresponds to the JSON property `defaultFacetOptions`
        # @return [Array<Google::Apis::CloudsearchV1::FacetOptions>]
        attr_accessor :default_facet_options
      
        # The default options for sorting the search results
        # Corresponds to the JSON property `defaultSortOptions`
        # @return [Google::Apis::CloudsearchV1::SortOptions]
        attr_accessor :default_sort_options
      
        # Display name of the Search Application. The maximum length is 300 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates whether audit logging is on/off for requests made for the search
        # application in query APIs.
        # Corresponds to the JSON property `enableAuditLog`
        # @return [Boolean]
        attr_accessor :enable_audit_log
        alias_method :enable_audit_log?, :enable_audit_log
      
        # The name of the Search Application. Format: searchapplications/`application_id`
        # .
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. IDs of the Long Running Operations (LROs) currently running for
        # this schema. Output only field.
        # Corresponds to the JSON property `operationIds`
        # @return [Array<String>]
        attr_accessor :operation_ids
      
        # Default options to interpret user query.
        # Corresponds to the JSON property `queryInterpretationConfig`
        # @return [Google::Apis::CloudsearchV1::QueryInterpretationConfig]
        attr_accessor :query_interpretation_config
      
        # With each result we should return the URI for its thumbnail (when applicable)
        # Corresponds to the JSON property `returnResultThumbnailUrls`
        # @return [Boolean]
        attr_accessor :return_result_thumbnail_urls
        alias_method :return_result_thumbnail_urls?, :return_result_thumbnail_urls
      
        # Scoring configurations for a source while processing a Search or Suggest
        # request.
        # Corresponds to the JSON property `scoringConfig`
        # @return [Google::Apis::CloudsearchV1::ScoringConfig]
        attr_accessor :scoring_config
      
        # Configuration for a sources specified in data_source_restrictions.
        # Corresponds to the JSON property `sourceConfig`
        # @return [Array<Google::Apis::CloudsearchV1::SourceConfig>]
        attr_accessor :source_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_restrictions = args[:data_source_restrictions] if args.key?(:data_source_restrictions)
          @default_facet_options = args[:default_facet_options] if args.key?(:default_facet_options)
          @default_sort_options = args[:default_sort_options] if args.key?(:default_sort_options)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_audit_log = args[:enable_audit_log] if args.key?(:enable_audit_log)
          @name = args[:name] if args.key?(:name)
          @operation_ids = args[:operation_ids] if args.key?(:operation_ids)
          @query_interpretation_config = args[:query_interpretation_config] if args.key?(:query_interpretation_config)
          @return_result_thumbnail_urls = args[:return_result_thumbnail_urls] if args.key?(:return_result_thumbnail_urls)
          @scoring_config = args[:scoring_config] if args.key?(:scoring_config)
          @source_config = args[:source_config] if args.key?(:source_config)
        end
      end
      
      # Search application level query stats per date
      class SearchApplicationQueryStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # 
        # Corresponds to the JSON property `queryCountByStatus`
        # @return [Array<Google::Apis::CloudsearchV1::QueryCountByStatus>]
        attr_accessor :query_count_by_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @query_count_by_status = args[:query_count_by_status] if args.key?(:query_count_by_status)
        end
      end
      
      # 
      class SearchApplicationSessionStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # The count of search sessions on the day
        # Corresponds to the JSON property `searchSessionsCount`
        # @return [Fixnum]
        attr_accessor :search_sessions_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @search_sessions_count = args[:search_sessions_count] if args.key?(:search_sessions_count)
        end
      end
      
      # 
      class SearchApplicationUserStats
        include Google::Apis::Core::Hashable
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date
      
        # The count of unique active users in the past one day
        # Corresponds to the JSON property `oneDayActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :one_day_active_users_count
      
        # The count of unique active users in the past seven days
        # Corresponds to the JSON property `sevenDaysActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :seven_days_active_users_count
      
        # The count of unique active users in the past thirty days
        # Corresponds to the JSON property `thirtyDaysActiveUsersCount`
        # @return [Fixnum]
        attr_accessor :thirty_days_active_users_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @one_day_active_users_count = args[:one_day_active_users_count] if args.key?(:one_day_active_users_count)
          @seven_days_active_users_count = args[:seven_days_active_users_count] if args.key?(:seven_days_active_users_count)
          @thirty_days_active_users_count = args[:thirty_days_active_users_count] if args.key?(:thirty_days_active_users_count)
        end
      end
      
      # 
      class SearchItemsByViewUrlRequest
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The next_page_token value returned from a previous request, if any.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Specify the full view URL to find the corresponding item. The maximum length
        # is 2048 characters.
        # Corresponds to the JSON property `viewUrl`
        # @return [String]
        attr_accessor :view_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @page_token = args[:page_token] if args.key?(:page_token)
          @view_url = args[:view_url] if args.key?(:view_url)
        end
      end
      
      # 
      class SearchItemsByViewUrlResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::CloudsearchV1::Item>]
        attr_accessor :items
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Additional search quality metadata of the item.
      class SearchQualityMetadata
        include Google::Apis::Core::Hashable
      
        # An indication of the quality of the item, used to influence search quality.
        # Value should be between 0.0 (lowest quality) and 1.0 (highest quality). The
        # default value is 0.0.
        # Corresponds to the JSON property `quality`
        # @return [Float]
        attr_accessor :quality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quality = args[:quality] if args.key?(:quality)
        end
      end
      
      # The search API request.
      class SearchRequest
        include Google::Apis::Core::Hashable
      
        # Context attributes for the request which will be used to adjust ranking of
        # search results. The maximum number of elements is 10.
        # Corresponds to the JSON property `contextAttributes`
        # @return [Array<Google::Apis::CloudsearchV1::ContextAttribute>]
        attr_accessor :context_attributes
      
        # The sources to use for querying. If not specified, all data sources from the
        # current search application are used.
        # Corresponds to the JSON property `dataSourceRestrictions`
        # @return [Array<Google::Apis::CloudsearchV1::DataSourceRestriction>]
        attr_accessor :data_source_restrictions
      
        # 
        # Corresponds to the JSON property `facetOptions`
        # @return [Array<Google::Apis::CloudsearchV1::FacetOptions>]
        attr_accessor :facet_options
      
        # Maximum number of search results to return in one page. Valid values are
        # between 1 and 100, inclusive. Default value is 10. Minimum value is 50 when
        # results beyond 2000 are requested.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The raw query string. See supported search operators in the [Narrow your
        # search with operators](https://support.google.com/cloudsearch/answer/6172299)
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Options to interpret user query.
        # Corresponds to the JSON property `queryInterpretationOptions`
        # @return [Google::Apis::CloudsearchV1::QueryInterpretationOptions]
        attr_accessor :query_interpretation_options
      
        # Shared request options for all RPC methods.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::CloudsearchV1::RequestOptions]
        attr_accessor :request_options
      
        # The options for sorting the search results
        # Corresponds to the JSON property `sortOptions`
        # @return [Google::Apis::CloudsearchV1::SortOptions]
        attr_accessor :sort_options
      
        # Starting index of the results.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context_attributes = args[:context_attributes] if args.key?(:context_attributes)
          @data_source_restrictions = args[:data_source_restrictions] if args.key?(:data_source_restrictions)
          @facet_options = args[:facet_options] if args.key?(:facet_options)
          @page_size = args[:page_size] if args.key?(:page_size)
          @query = args[:query] if args.key?(:query)
          @query_interpretation_options = args[:query_interpretation_options] if args.key?(:query_interpretation_options)
          @request_options = args[:request_options] if args.key?(:request_options)
          @sort_options = args[:sort_options] if args.key?(:sort_options)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # The search API response.
      class SearchResponse
        include Google::Apis::Core::Hashable
      
        # Debugging information about the response.
        # Corresponds to the JSON property `debugInfo`
        # @return [Google::Apis::CloudsearchV1::ResponseDebugInfo]
        attr_accessor :debug_info
      
        # Error information about the response.
        # Corresponds to the JSON property `errorInfo`
        # @return [Google::Apis::CloudsearchV1::ErrorInfo]
        attr_accessor :error_info
      
        # Repeated facet results.
        # Corresponds to the JSON property `facetResults`
        # @return [Array<Google::Apis::CloudsearchV1::FacetResult>]
        attr_accessor :facet_results
      
        # Whether there are more search results matching the query.
        # Corresponds to the JSON property `hasMoreResults`
        # @return [Boolean]
        attr_accessor :has_more_results
        alias_method :has_more_results?, :has_more_results
      
        # Query interpretation result for user query. Empty if query interpretation is
        # disabled.
        # Corresponds to the JSON property `queryInterpretation`
        # @return [Google::Apis::CloudsearchV1::QueryInterpretation]
        attr_accessor :query_interpretation
      
        # The estimated result count for this query.
        # Corresponds to the JSON property `resultCountEstimate`
        # @return [Fixnum]
        attr_accessor :result_count_estimate
      
        # The exact result count for this query.
        # Corresponds to the JSON property `resultCountExact`
        # @return [Fixnum]
        attr_accessor :result_count_exact
      
        # Result count information
        # Corresponds to the JSON property `resultCounts`
        # @return [Google::Apis::CloudsearchV1::ResultCounts]
        attr_accessor :result_counts
      
        # Results from a search query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CloudsearchV1::SearchResult>]
        attr_accessor :results
      
        # Suggested spelling for the query.
        # Corresponds to the JSON property `spellResults`
        # @return [Array<Google::Apis::CloudsearchV1::SpellResult>]
        attr_accessor :spell_results
      
        # Structured results for the user query. These results are not counted against
        # the page_size.
        # Corresponds to the JSON property `structuredResults`
        # @return [Array<Google::Apis::CloudsearchV1::StructuredResult>]
        attr_accessor :structured_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_info = args[:debug_info] if args.key?(:debug_info)
          @error_info = args[:error_info] if args.key?(:error_info)
          @facet_results = args[:facet_results] if args.key?(:facet_results)
          @has_more_results = args[:has_more_results] if args.key?(:has_more_results)
          @query_interpretation = args[:query_interpretation] if args.key?(:query_interpretation)
          @result_count_estimate = args[:result_count_estimate] if args.key?(:result_count_estimate)
          @result_count_exact = args[:result_count_exact] if args.key?(:result_count_exact)
          @result_counts = args[:result_counts] if args.key?(:result_counts)
          @results = args[:results] if args.key?(:results)
          @spell_results = args[:spell_results] if args.key?(:spell_results)
          @structured_results = args[:structured_results] if args.key?(:structured_results)
        end
      end
      
      # Results containing indexed information for a document.
      class SearchResult
        include Google::Apis::Core::Hashable
      
        # If source is clustered, provide list of clustered results. There will only be
        # one level of clustered results. If current source is not enabled for
        # clustering, this field will be empty.
        # Corresponds to the JSON property `clusteredResults`
        # @return [Array<Google::Apis::CloudsearchV1::SearchResult>]
        attr_accessor :clustered_results
      
        # Debugging information about the result.
        # Corresponds to the JSON property `debugInfo`
        # @return [Google::Apis::CloudsearchV1::ResultDebugInfo]
        attr_accessor :debug_info
      
        # Metadata of a matched search result.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::CloudsearchV1::Metadata]
        attr_accessor :metadata
      
        # Snippet of the search result, which summarizes the content of the resulting
        # page.
        # Corresponds to the JSON property `snippet`
        # @return [Google::Apis::CloudsearchV1::Snippet]
        attr_accessor :snippet
      
        # Title of the search result.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The URL of the search result. The URL contains a Google redirect to the actual
        # item. This URL is signed and shouldn't be changed.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clustered_results = args[:clustered_results] if args.key?(:clustered_results)
          @debug_info = args[:debug_info] if args.key?(:debug_info)
          @metadata = args[:metadata] if args.key?(:metadata)
          @snippet = args[:snippet] if args.key?(:snippet)
          @title = args[:title] if args.key?(:title)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Snippet of the search result, which summarizes the content of the resulting
      # page.
      class Snippet
        include Google::Apis::Core::Hashable
      
        # The matched ranges in the snippet.
        # Corresponds to the JSON property `matchRanges`
        # @return [Array<Google::Apis::CloudsearchV1::MatchRange>]
        attr_accessor :match_ranges
      
        # The snippet of the document. The snippet of the document. May contain escaped
        # HTML character that should be unescaped prior to rendering.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_ranges = args[:match_ranges] if args.key?(:match_ranges)
          @snippet = args[:snippet] if args.key?(:snippet)
        end
      end
      
      # 
      class SortOptions
        include Google::Apis::Core::Hashable
      
        # The name of the operator corresponding to the field to sort on. The
        # corresponding property must be marked as sortable.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # Ascending is the default sort order
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @sort_order = args[:sort_order] if args.key?(:sort_order)
        end
      end
      
      # Defines sources for the suggest/search APIs.
      class Source
        include Google::Apis::Core::Hashable
      
        # Source name for content indexed by the Indexing API.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Predefined content source for Google Apps.
        # Corresponds to the JSON property `predefinedSource`
        # @return [String]
        attr_accessor :predefined_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @predefined_source = args[:predefined_source] if args.key?(:predefined_source)
        end
      end
      
      # Configurations for a source while processing a Search or Suggest request.
      class SourceConfig
        include Google::Apis::Core::Hashable
      
        # Set search results crowding limits. Crowding is a situation in which multiple
        # results from the same source or host "crowd out" other results, diminishing
        # the quality of search for users. To foster better search quality and source
        # diversity in search results, you can set a condition to reduce repetitive
        # results by source.
        # Corresponds to the JSON property `crowdingConfig`
        # @return [Google::Apis::CloudsearchV1::SourceCrowdingConfig]
        attr_accessor :crowding_config
      
        # Set the scoring configuration. This allows modifying the ranking of results
        # for a source.
        # Corresponds to the JSON property `scoringConfig`
        # @return [Google::Apis::CloudsearchV1::SourceScoringConfig]
        attr_accessor :scoring_config
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crowding_config = args[:crowding_config] if args.key?(:crowding_config)
          @scoring_config = args[:scoring_config] if args.key?(:scoring_config)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Set search results crowding limits. Crowding is a situation in which multiple
      # results from the same source or host "crowd out" other results, diminishing
      # the quality of search for users. To foster better search quality and source
      # diversity in search results, you can set a condition to reduce repetitive
      # results by source.
      class SourceCrowdingConfig
        include Google::Apis::Core::Hashable
      
        # Maximum number of results allowed from a datasource in a result page as long
        # as results from other sources are not exhausted. Value specified must not be
        # negative. A default value is used if this value is equal to 0. To disable
        # crowding, set the value greater than 100.
        # Corresponds to the JSON property `numResults`
        # @return [Fixnum]
        attr_accessor :num_results
      
        # Maximum number of suggestions allowed from a source. No limits will be set on
        # results if this value is less than or equal to 0.
        # Corresponds to the JSON property `numSuggestions`
        # @return [Fixnum]
        attr_accessor :num_suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_results = args[:num_results] if args.key?(:num_results)
          @num_suggestions = args[:num_suggestions] if args.key?(:num_suggestions)
        end
      end
      
      # Per source result count information.
      class SourceResultCount
        include Google::Apis::Core::Hashable
      
        # Whether there are more search results for this source.
        # Corresponds to the JSON property `hasMoreResults`
        # @return [Boolean]
        attr_accessor :has_more_results
        alias_method :has_more_results?, :has_more_results
      
        # The estimated result count for this source.
        # Corresponds to the JSON property `resultCountEstimate`
        # @return [Fixnum]
        attr_accessor :result_count_estimate
      
        # The exact result count for this source.
        # Corresponds to the JSON property `resultCountExact`
        # @return [Fixnum]
        attr_accessor :result_count_exact
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_more_results = args[:has_more_results] if args.key?(:has_more_results)
          @result_count_estimate = args[:result_count_estimate] if args.key?(:result_count_estimate)
          @result_count_exact = args[:result_count_exact] if args.key?(:result_count_exact)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Set the scoring configuration. This allows modifying the ranking of results
      # for a source.
      class SourceScoringConfig
        include Google::Apis::Core::Hashable
      
        # Importance of the source.
        # Corresponds to the JSON property `sourceImportance`
        # @return [String]
        attr_accessor :source_importance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_importance = args[:source_importance] if args.key?(:source_importance)
        end
      end
      
      # 
      class SpellResult
        include Google::Apis::Core::Hashable
      
        # The suggested spelling of the query.
        # Corresponds to the JSON property `suggestedQuery`
        # @return [String]
        attr_accessor :suggested_query
      
        # IMPORTANT: It is unsafe to accept this message from an untrusted source, since
        # it's trivial for an attacker to forge serialized messages that don't fulfill
        # the type's safety contract -- for example, it could contain attacker
        # controlled script. A system which receives a SafeHtmlProto implicitly trusts
        # the producer of the SafeHtmlProto. So, it's generally safe to return this
        # message in RPC responses, but generally unsafe to accept it in RPC requests.
        # Corresponds to the JSON property `suggestedQueryHtml`
        # @return [Google::Apis::CloudsearchV1::SafeHtmlProto]
        attr_accessor :suggested_query_html
      
        # Suggestion triggered for the current query.
        # Corresponds to the JSON property `suggestionType`
        # @return [String]
        attr_accessor :suggestion_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggested_query = args[:suggested_query] if args.key?(:suggested_query)
          @suggested_query_html = args[:suggested_query_html] if args.key?(:suggested_query_html)
          @suggestion_type = args[:suggestion_type] if args.key?(:suggestion_type)
        end
      end
      
      # Start upload file request.
      class StartUploadItemRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A structured data object consisting of named properties.
      class StructuredDataObject
        include Google::Apis::Core::Hashable
      
        # The properties for the object. The maximum number of elements is 1000.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::CloudsearchV1::NamedProperty>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Structured results that are returned as part of search request.
      class StructuredResult
        include Google::Apis::Core::Hashable
      
        # Object to represent a person.
        # Corresponds to the JSON property `person`
        # @return [Google::Apis::CloudsearchV1::Person]
        attr_accessor :person
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @person = args[:person] if args.key?(:person)
        end
      end
      
      # Request of suggest API.
      class SuggestRequest
        include Google::Apis::Core::Hashable
      
        # The sources to use for suggestions. If not specified, the data sources are
        # taken from the current search application. NOTE: Suggestions are only
        # supported for the following sources: * Third-party data sources *
        # PredefinedSource.PERSON * PredefinedSource.GOOGLE_DRIVE
        # Corresponds to the JSON property `dataSourceRestrictions`
        # @return [Array<Google::Apis::CloudsearchV1::DataSourceRestriction>]
        attr_accessor :data_source_restrictions
      
        # Partial query for which autocomplete suggestions will be shown. For example,
        # if the query is "sea", then the server might return "season", "search", "
        # seagull" and so on.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Shared request options for all RPC methods.
        # Corresponds to the JSON property `requestOptions`
        # @return [Google::Apis::CloudsearchV1::RequestOptions]
        attr_accessor :request_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_restrictions = args[:data_source_restrictions] if args.key?(:data_source_restrictions)
          @query = args[:query] if args.key?(:query)
          @request_options = args[:request_options] if args.key?(:request_options)
        end
      end
      
      # Response of the suggest API.
      class SuggestResponse
        include Google::Apis::Core::Hashable
      
        # List of suggestions.
        # Corresponds to the JSON property `suggestResults`
        # @return [Array<Google::Apis::CloudsearchV1::SuggestResult>]
        attr_accessor :suggest_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggest_results = args[:suggest_results] if args.key?(:suggest_results)
        end
      end
      
      # One suggestion result.
      class SuggestResult
        include Google::Apis::Core::Hashable
      
        # This field contains information about the person being suggested.
        # Corresponds to the JSON property `peopleSuggestion`
        # @return [Google::Apis::CloudsearchV1::PeopleSuggestion]
        attr_accessor :people_suggestion
      
        # This field does not contain anything as of now and is just used as an
        # indicator that the suggest result was a phrase completion.
        # Corresponds to the JSON property `querySuggestion`
        # @return [Google::Apis::CloudsearchV1::QuerySuggestion]
        attr_accessor :query_suggestion
      
        # Defines sources for the suggest/search APIs.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::Source]
        attr_accessor :source
      
        # The suggested query that will be used for search, when the user clicks on the
        # suggestion
        # Corresponds to the JSON property `suggestedQuery`
        # @return [String]
        attr_accessor :suggested_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @people_suggestion = args[:people_suggestion] if args.key?(:people_suggestion)
          @query_suggestion = args[:query_suggestion] if args.key?(:query_suggestion)
          @source = args[:source] if args.key?(:source)
          @suggested_query = args[:suggested_query] if args.key?(:suggested_query)
        end
      end
      
      # Used to provide a search operator for text properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class TextOperatorOptions
        include Google::Apis::Core::Hashable
      
        # If true, the text value is tokenized as one atomic value in operator searches
        # and facet matches. For example, if the operator name is "genre" and the value
        # is "science-fiction" the query restrictions "genre:science" and "genre:fiction"
        # doesn't match the item; "genre:science-fiction" does. Text value matching is
        # case-sensitive and does not remove special characters. If false, the text is
        # tokenized. For example, if the value is "science-fiction" the queries "genre:
        # science" and "genre:fiction" matches the item.
        # Corresponds to the JSON property `exactMatchWithOperator`
        # @return [Boolean]
        attr_accessor :exact_match_with_operator
        alias_method :exact_match_with_operator?, :exact_match_with_operator
      
        # Indicates the operator name required in the query in order to isolate the text
        # property. For example, if operatorName is *subject* and the property's name is
        # *subjectLine*, then queries like *subject:<value>* show results only where the
        # value of the property named *subjectLine* matches *<value>*. By contrast, a
        # search that uses the same *<value>* without an operator returns all items
        # where *<value>* matches the value of any text properties or text within the
        # content field for the item. The operator name can only contain lowercase
        # letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact_match_with_operator = args[:exact_match_with_operator] if args.key?(:exact_match_with_operator)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for text properties.
      class TextPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for text properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::TextOperatorOptions]
        attr_accessor :operator_options
      
        # Indicates the search quality importance of the tokens within the field when
        # used for retrieval.
        # Corresponds to the JSON property `retrievalImportance`
        # @return [Google::Apis::CloudsearchV1::RetrievalImportance]
        attr_accessor :retrieval_importance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
          @retrieval_importance = args[:retrieval_importance] if args.key?(:retrieval_importance)
        end
      end
      
      # List of text values.
      class TextValues
        include Google::Apis::Core::Hashable
      
        # The maximum allowable length for text values is 2048 characters.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class ThirdPartyGenericCard
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the card.
        # Corresponds to the JSON property `cardId`
        # @return [String]
        attr_accessor :card_id
      
        # Category that the card belongs to.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # [Required] Card content.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::CloudsearchV1::Content]
        attr_accessor :content
      
        # [Required] Context where the card should be triggered.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::CloudsearchV1::Context]
        attr_accessor :context
      
        # Whether the card can be dismissed.
        # Corresponds to the JSON property `isDismissible`
        # @return [Boolean]
        attr_accessor :is_dismissible
        alias_method :is_dismissible?, :is_dismissible
      
        # Priority of the card, where 0 is the highest priority.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_id = args[:card_id] if args.key?(:card_id)
          @category = args[:category] if args.key?(:category)
          @content = args[:content] if args.key?(:content)
          @context = args[:context] if args.key?(:context)
          @is_dismissible = args[:is_dismissible] if args.key?(:is_dismissible)
          @priority = args[:priority] if args.key?(:priority)
        end
      end
      
      # Used to provide a search operator for timestamp properties. This is optional.
      # Search operators let users restrict the query to specific fields relevant to
      # the type of item being searched.
      class TimestampOperatorOptions
        include Google::Apis::Core::Hashable
      
        # Indicates the operator name required in the query in order to isolate the
        # timestamp property using the greater-than operator. For example, if
        # greaterThanOperatorName is *closedafter* and the property's name is *closeDate*
        # , then queries like *closedafter:<value>* show results only where the value of
        # the property named *closeDate* is later than *<value>*. The operator name can
        # only contain lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `greaterThanOperatorName`
        # @return [String]
        attr_accessor :greater_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the
        # timestamp property using the less-than operator. For example, if
        # lessThanOperatorName is *closedbefore* and the property's name is *closeDate*,
        # then queries like *closedbefore:<value>* show results only where the value of
        # the property named *closeDate* is earlier than *<value>*. The operator name
        # can only contain lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `lessThanOperatorName`
        # @return [String]
        attr_accessor :less_than_operator_name
      
        # Indicates the operator name required in the query in order to isolate the
        # timestamp property. For example, if operatorName is *closedon* and the
        # property's name is *closeDate*, then queries like *closedon:<value>* show
        # results only where the value of the property named *closeDate* matches *<value>
        # *. By contrast, a search that uses the same *<value>* without an operator
        # returns all items where *<value>* matches the value of any String properties
        # or text within the content field for the item. The operator name can only
        # contain lowercase letters (a-z). The maximum length is 32 characters.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @greater_than_operator_name = args[:greater_than_operator_name] if args.key?(:greater_than_operator_name)
          @less_than_operator_name = args[:less_than_operator_name] if args.key?(:less_than_operator_name)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
        end
      end
      
      # The options for timestamp properties.
      class TimestampPropertyOptions
        include Google::Apis::Core::Hashable
      
        # Used to provide a search operator for timestamp properties. This is optional.
        # Search operators let users restrict the query to specific fields relevant to
        # the type of item being searched.
        # Corresponds to the JSON property `operatorOptions`
        # @return [Google::Apis::CloudsearchV1::TimestampOperatorOptions]
        attr_accessor :operator_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_options = args[:operator_options] if args.key?(:operator_options)
        end
      end
      
      # List of timestamp values.
      class TimestampValues
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class UnmappedIdentity
        include Google::Apis::Core::Hashable
      
        # Reference to a user, group, or domain.
        # Corresponds to the JSON property `externalIdentity`
        # @return [Google::Apis::CloudsearchV1::Principal]
        attr_accessor :external_identity
      
        # The resolution status for the external identity.
        # Corresponds to the JSON property `resolutionStatusCode`
        # @return [String]
        attr_accessor :resolution_status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_identity = args[:external_identity] if args.key?(:external_identity)
          @resolution_status_code = args[:resolution_status_code] if args.key?(:resolution_status_code)
        end
      end
      
      # 
      class UnreserveItemsRequest
        include Google::Apis::Core::Hashable
      
        # The name of connector making this call. Format: datasources/`source_id`/
        # connectors/`ID`
        # Corresponds to the JSON property `connectorName`
        # @return [String]
        attr_accessor :connector_name
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The name of a queue to unreserve items from.
        # Corresponds to the JSON property `queue`
        # @return [String]
        attr_accessor :queue
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_name = args[:connector_name] if args.key?(:connector_name)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @queue = args[:queue] if args.key?(:queue)
        end
      end
      
      # 
      class UpdateDataSourceRequest
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # Datasource is a logical namespace for items to be indexed. All items must
        # belong to a datasource. This is the prerequisite before items can be indexed
        # into Cloud Search.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::CloudsearchV1::DataSource]
        attr_accessor :source
      
        # Only applies to [`settings.datasources.patch`](https://developers.google.com/
        # cloud-search/docs/reference/rest/v1/settings.datasources/patch). Update mask
        # to control which fields to update. Example field paths: `name`, `displayName`.
        # * If `update_mask` is non-empty, then only the fields specified in the `
        # update_mask` are updated. * If you specify a field in the `update_mask`, but
        # don't specify its value in the source, that field is cleared. * If the `
        # update_mask` is not present or empty or has the value `*`, then all fields are
        # updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @source = args[:source] if args.key?(:source)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # 
      class UpdateSchemaRequest
        include Google::Apis::Core::Hashable
      
        # Shared request debug options for all cloudsearch RPC methods.
        # Corresponds to the JSON property `debugOptions`
        # @return [Google::Apis::CloudsearchV1::DebugOptions]
        attr_accessor :debug_options
      
        # The schema definition for a data source.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::CloudsearchV1::Schema]
        attr_accessor :schema
      
        # If true, the schema will be checked for validity, but will not be registered
        # with the data source, even if valid.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_options = args[:debug_options] if args.key?(:debug_options)
          @schema = args[:schema] if args.key?(:schema)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Represents an upload session reference. This reference is created via upload
      # method. This reference is valid for 30 days after its creation. Updating of
      # item content may refer to this uploaded content via contentDataRef.
      class UploadItemRef
        include Google::Apis::Core::Hashable
      
        # The name of the content reference. The maximum length is 2048 characters.
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
      
      # User's single or bulk query activity. This can be a logging query or deletion
      # query.
      class UserActivity
        include Google::Apis::Core::Hashable
      
        # Details about a user's query activity.
        # Corresponds to the JSON property `queryActivity`
        # @return [Google::Apis::CloudsearchV1::QueryActivity]
        attr_accessor :query_activity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_activity = args[:query_activity] if args.key?(:query_activity)
        end
      end
      
      # 
      class VpcSettings
        include Google::Apis::Core::Hashable
      
        # The resource name of the GCP Project to be used for VPC SC policy check. VPC
        # security settings on this project will be honored for Cloud Search APIs after
        # project_name has been updated through CustomerService. Format: projects/`
        # project_id`
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # Definition of a single value with generic type.
      class Value
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole calendar date, for example a date of birth. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/
        # wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date
        # between the year 1 and 9999.
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::CloudsearchV1::Date]
        attr_accessor :date_value
      
        # 
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # 
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # 
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # 
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # 
      class ValueFilter
        include Google::Apis::Core::Hashable
      
        # The `operator_name` applied to the query, such as *price_greater_than*. The
        # filter can work against both types of filters defined in the schema for your
        # data source: 1. `operator_name`, where the query filters results by the
        # property that matches the value. 2. `greater_than_operator_name` or `
        # less_than_operator_name` in your schema. The query filters the results for the
        # property values that are greater than or less than the supplied value in the
        # query.
        # Corresponds to the JSON property `operatorName`
        # @return [String]
        attr_accessor :operator_name
      
        # Definition of a single value with generic type.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::CloudsearchV1::Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_name = args[:operator_name] if args.key?(:operator_name)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
