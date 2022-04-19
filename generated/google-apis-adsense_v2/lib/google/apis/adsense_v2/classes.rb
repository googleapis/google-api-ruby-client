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
    module AdsenseV2
      
      # Representation of an account.
      class Account
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of the account.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Display name of this account.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the account. Format: accounts/pub-[0-9]+
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Outstanding tasks that need to be completed as part of the sign-
        # up process for a new account. e.g. "billing-profile-creation", "phone-pin-
        # verification".
        # Corresponds to the JSON property `pendingTasks`
        # @return [Array<String>]
        attr_accessor :pending_tasks
      
        # Output only. Whether this account is premium.
        # Corresponds to the JSON property `premium`
        # @return [Boolean]
        attr_accessor :premium
        alias_method :premium?, :premium
      
        # Output only. State of the account.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::AdsenseV2::TimeZone]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @pending_tasks = args[:pending_tasks] if args.key?(:pending_tasks)
          @premium = args[:premium] if args.key?(:premium)
          @state = args[:state] if args.key?(:state)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Representation of an ad client. An ad client represents a user's subscription
      # with a specific AdSense product.
      class AdClient
        include Google::Apis::Core::Hashable
      
        # Resource name of the ad client. Format: accounts/`account`/adclients/`adclient`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Product code of the ad client. For example, "AFC" for AdSense for
        # Content.
        # Corresponds to the JSON property `productCode`
        # @return [String]
        attr_accessor :product_code
      
        # Output only. Unique ID of the ad client as used in the `AD_CLIENT_ID`
        # reporting dimension. Present only if the ad client supports reporting.
        # Corresponds to the JSON property `reportingDimensionId`
        # @return [String]
        attr_accessor :reporting_dimension_id
      
        # Output only. State of the ad client.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @product_code = args[:product_code] if args.key?(:product_code)
          @reporting_dimension_id = args[:reporting_dimension_id] if args.key?(:reporting_dimension_id)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Representation of the AdSense code for a given ad client. For more information,
      # see [About the AdSense code](https://support.google.com/adsense/answer/
      # 9274634).
      class AdClientAdCode
        include Google::Apis::Core::Hashable
      
        # Output only. The AdSense code snippet to add to the head of an HTML page.
        # Corresponds to the JSON property `adCode`
        # @return [String]
        attr_accessor :ad_code
      
        # Output only. The AdSense code snippet to add to the body of an AMP page.
        # Corresponds to the JSON property `ampBody`
        # @return [String]
        attr_accessor :amp_body
      
        # Output only. The AdSense code snippet to add to the head of an AMP page.
        # Corresponds to the JSON property `ampHead`
        # @return [String]
        attr_accessor :amp_head
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_code = args[:ad_code] if args.key?(:ad_code)
          @amp_body = args[:amp_body] if args.key?(:amp_body)
          @amp_head = args[:amp_head] if args.key?(:amp_head)
        end
      end
      
      # Representation of an ad unit. An ad unit represents a saved ad unit with a
      # specific set of ad settings that have been customized within an account.
      class AdUnit
        include Google::Apis::Core::Hashable
      
        # Settings specific to content ads (AFC).
        # Corresponds to the JSON property `contentAdsSettings`
        # @return [Google::Apis::AdsenseV2::ContentAdsSettings]
        attr_accessor :content_ads_settings
      
        # Required. Display name of the ad unit, as provided when the ad unit was
        # created.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the ad unit. Format: accounts/`account`/adclients/`adclient`/
        # adunits/`adunit`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Unique ID of the ad unit as used in the `AD_UNIT_ID` reporting
        # dimension.
        # Corresponds to the JSON property `reportingDimensionId`
        # @return [String]
        attr_accessor :reporting_dimension_id
      
        # State of the ad unit.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_ads_settings = args[:content_ads_settings] if args.key?(:content_ads_settings)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @reporting_dimension_id = args[:reporting_dimension_id] if args.key?(:reporting_dimension_id)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Representation of the AdSense code for a given ad unit.
      class AdUnitAdCode
        include Google::Apis::Core::Hashable
      
        # Output only. The AdSense code snippet to add to the body of an HTML page.
        # Corresponds to the JSON property `adCode`
        # @return [String]
        attr_accessor :ad_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_code = args[:ad_code] if args.key?(:ad_code)
        end
      end
      
      # Representation of an alert.
      class Alert
        include Google::Apis::Core::Hashable
      
        # Output only. The localized alert message. This may contain HTML markup, such
        # as phrase elements or links.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Resource name of the alert. Format: accounts/`account`/alerts/`alert`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Severity of this alert.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Output only. Type of alert. This identifies the broad type of this alert, and
        # provides a stable machine-readable identifier that will not be translated. For
        # example, "payment-hold".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @name = args[:name] if args.key?(:name)
          @severity = args[:severity] if args.key?(:severity)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Cell representation.
      class Cell
        include Google::Apis::Core::Hashable
      
        # Value in the cell. The dimension cells contain strings, and the metric cells
        # contain numbers.
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
      
      # Settings specific to content ads (AFC).
      class ContentAdsSettings
        include Google::Apis::Core::Hashable
      
        # Required. Size of the ad unit. e.g. "728x90", "1x3" (for responsive ad units).
        # Corresponds to the JSON property `size`
        # @return [String]
        attr_accessor :size
      
        # Required. Type of the ad unit.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size = args[:size] if args.key?(:size)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Representation of a custom channel.
      class CustomChannel
        include Google::Apis::Core::Hashable
      
        # Required. Display name of the custom channel.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the custom channel. Format: accounts/`account`/adclients/`
        # adclient`/customchannels/`customchannel`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Unique ID of the custom channel as used in the `CUSTOM_CHANNEL_ID`
        # reporting dimension.
        # Corresponds to the JSON property `reportingDimensionId`
        # @return [String]
        attr_accessor :reporting_dimension_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @reporting_dimension_id = args[:reporting_dimension_id] if args.key?(:reporting_dimension_id)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
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
      
      # The header information of the columns requested in the report.
      class Header
        include Google::Apis::Core::Hashable
      
        # The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) of this
        # column. Only present if the header type is METRIC_CURRENCY.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Required. Name of the header.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Type of the header.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class HttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # Response definition for the account list rpc.
      class ListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The accounts returned in this list response.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::AdsenseV2::Account>]
        attr_accessor :accounts
      
        # Continuation token used to page through accounts. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
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
      
      # Response definition for the ad client list rpc.
      class ListAdClientsResponse
        include Google::Apis::Core::Hashable
      
        # The ad clients returned in this list response.
        # Corresponds to the JSON property `adClients`
        # @return [Array<Google::Apis::AdsenseV2::AdClient>]
        attr_accessor :ad_clients
      
        # Continuation token used to page through ad clients. To retrieve the next page
        # of the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_clients = args[:ad_clients] if args.key?(:ad_clients)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response definition for the adunit list rpc.
      class ListAdUnitsResponse
        include Google::Apis::Core::Hashable
      
        # The ad units returned in the list response.
        # Corresponds to the JSON property `adUnits`
        # @return [Array<Google::Apis::AdsenseV2::AdUnit>]
        attr_accessor :ad_units
      
        # Continuation token used to page through ad units. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_units = args[:ad_units] if args.key?(:ad_units)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response definition for the alerts list rpc.
      class ListAlertsResponse
        include Google::Apis::Core::Hashable
      
        # The alerts returned in this list response.
        # Corresponds to the JSON property `alerts`
        # @return [Array<Google::Apis::AdsenseV2::Alert>]
        attr_accessor :alerts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alerts = args[:alerts] if args.key?(:alerts)
        end
      end
      
      # Response definition for the child account list rpc.
      class ListChildAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The accounts returned in this list response.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::AdsenseV2::Account>]
        attr_accessor :accounts
      
        # Continuation token used to page through accounts. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
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
      
      # Response definition for the custom channel list rpc.
      class ListCustomChannelsResponse
        include Google::Apis::Core::Hashable
      
        # The custom channels returned in this list response.
        # Corresponds to the JSON property `customChannels`
        # @return [Array<Google::Apis::AdsenseV2::CustomChannel>]
        attr_accessor :custom_channels
      
        # Continuation token used to page through alerts. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_channels = args[:custom_channels] if args.key?(:custom_channels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response definition for the ad units linked to a custom channel list rpc.
      class ListLinkedAdUnitsResponse
        include Google::Apis::Core::Hashable
      
        # The ad units returned in the list response.
        # Corresponds to the JSON property `adUnits`
        # @return [Array<Google::Apis::AdsenseV2::AdUnit>]
        attr_accessor :ad_units
      
        # Continuation token used to page through ad units. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_units = args[:ad_units] if args.key?(:ad_units)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response definition for the custom channels linked to an adunit list rpc.
      class ListLinkedCustomChannelsResponse
        include Google::Apis::Core::Hashable
      
        # The custom channels returned in this list response.
        # Corresponds to the JSON property `customChannels`
        # @return [Array<Google::Apis::AdsenseV2::CustomChannel>]
        attr_accessor :custom_channels
      
        # Continuation token used to page through alerts. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_channels = args[:custom_channels] if args.key?(:custom_channels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response definition for the payments list rpc.
      class ListPaymentsResponse
        include Google::Apis::Core::Hashable
      
        # The payments returned in this list response.
        # Corresponds to the JSON property `payments`
        # @return [Array<Google::Apis::AdsenseV2::Payment>]
        attr_accessor :payments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payments = args[:payments] if args.key?(:payments)
        end
      end
      
      # Response definition for the saved reports list rpc.
      class ListSavedReportsResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token used to page through reports. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The reports returned in this list response.
        # Corresponds to the JSON property `savedReports`
        # @return [Array<Google::Apis::AdsenseV2::SavedReport>]
        attr_accessor :saved_reports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @saved_reports = args[:saved_reports] if args.key?(:saved_reports)
        end
      end
      
      # Response definition for the sites list rpc.
      class ListSitesResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token used to page through sites. To retrieve the next page of
        # the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The sites returned in this list response.
        # Corresponds to the JSON property `sites`
        # @return [Array<Google::Apis::AdsenseV2::Site>]
        attr_accessor :sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sites = args[:sites] if args.key?(:sites)
        end
      end
      
      # Response definition for the url channels list rpc.
      class ListUrlChannelsResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token used to page through url channels. To retrieve the next
        # page of the results, set the next request's "page_token" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The url channels returned in this list response.
        # Corresponds to the JSON property `urlChannels`
        # @return [Array<Google::Apis::AdsenseV2::UrlChannel>]
        attr_accessor :url_channels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @url_channels = args[:url_channels] if args.key?(:url_channels)
        end
      end
      
      # Representation of an unpaid or paid payment. See [Payment timelines for
      # AdSense](https://support.google.com/adsense/answer/7164703) for more
      # information about payments and the [YouTube homepage and payments account](
      # https://support.google.com/adsense/answer/11622510) article for information
      # about dedicated payments accounts for YouTube.
      class Payment
        include Google::Apis::Core::Hashable
      
        # Output only. The amount of unpaid or paid earnings, as a formatted string,
        # including the currency. E.g. "¥1,235 JPY", "$1,234.57", "£87.65".
        # Corresponds to the JSON property `amount`
        # @return [String]
        attr_accessor :amount
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::AdsenseV2::Date]
        attr_accessor :date
      
        # Resource name of the payment. Format: - accounts/`account`/payments/unpaid for
        # unpaid (current) AdSense earnings. - accounts/`account`/payments/youtube-
        # unpaid for unpaid (current) YouTube earnings. - accounts/`account`/payments/
        # yyyy-MM-dd for paid AdSense earnings. - accounts/`account`/payments/youtube-
        # yyyy-MM-dd for paid YouTube earnings.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @date = args[:date] if args.key?(:date)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Result of a generated report.
      class ReportResult
        include Google::Apis::Core::Hashable
      
        # Row representation.
        # Corresponds to the JSON property `averages`
        # @return [Google::Apis::AdsenseV2::Row]
        attr_accessor :averages
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::AdsenseV2::Date]
        attr_accessor :end_date
      
        # The header information; one for each dimension in the request, followed by one
        # for each metric in the request.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::AdsenseV2::Header>]
        attr_accessor :headers
      
        # The output rows of the report. Each row is a list of cells; one for each
        # dimension in the request, followed by one for each metric in the request.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::AdsenseV2::Row>]
        attr_accessor :rows
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::AdsenseV2::Date]
        attr_accessor :start_date
      
        # The total number of rows matched by the report request.
        # Corresponds to the JSON property `totalMatchedRows`
        # @return [Fixnum]
        attr_accessor :total_matched_rows
      
        # Row representation.
        # Corresponds to the JSON property `totals`
        # @return [Google::Apis::AdsenseV2::Row]
        attr_accessor :totals
      
        # Any warnings associated with generation of the report. These warnings are
        # always returned in English.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @averages = args[:averages] if args.key?(:averages)
          @end_date = args[:end_date] if args.key?(:end_date)
          @headers = args[:headers] if args.key?(:headers)
          @rows = args[:rows] if args.key?(:rows)
          @start_date = args[:start_date] if args.key?(:start_date)
          @total_matched_rows = args[:total_matched_rows] if args.key?(:total_matched_rows)
          @totals = args[:totals] if args.key?(:totals)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Row representation.
      class Row
        include Google::Apis::Core::Hashable
      
        # Cells in the row.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::AdsenseV2::Cell>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # Representation of a saved report.
      class SavedReport
        include Google::Apis::Core::Hashable
      
        # Resource name of the report. Format: accounts/`account`/reports/`report`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Report title as specified by publisher.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Representation of a Site.
      class Site
        include Google::Apis::Core::Hashable
      
        # Whether auto ads is turned on for the site.
        # Corresponds to the JSON property `autoAdsEnabled`
        # @return [Boolean]
        attr_accessor :auto_ads_enabled
        alias_method :auto_ads_enabled?, :auto_ads_enabled
      
        # Domain (or subdomain) of the site, e.g. "example.com" or "www.example.com".
        # This is used in the `OWNED_SITE_DOMAIN_NAME` reporting dimension.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Resource name of a site. Format: accounts/`account`/sites/`site`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Unique ID of the site as used in the `OWNED_SITE_ID` reporting
        # dimension.
        # Corresponds to the JSON property `reportingDimensionId`
        # @return [String]
        attr_accessor :reporting_dimension_id
      
        # Output only. State of a site.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_ads_enabled = args[:auto_ads_enabled] if args.key?(:auto_ads_enabled)
          @domain = args[:domain] if args.key?(:domain)
          @name = args[:name] if args.key?(:name)
          @reporting_dimension_id = args[:reporting_dimension_id] if args.key?(:reporting_dimension_id)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Representation of a URL channel. URL channels allow you to track the
      # performance of particular pages in your site; see [URL channels](https://
      # support.google.com/adsense/answer/2923836) for more information.
      class UrlChannel
        include Google::Apis::Core::Hashable
      
        # Resource name of the URL channel. Format: accounts/`account`/adclients/`
        # adclient`/urlchannels/`urlchannel`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Unique ID of the custom channel as used in the `URL_CHANNEL_ID`
        # reporting dimension.
        # Corresponds to the JSON property `reportingDimensionId`
        # @return [String]
        attr_accessor :reporting_dimension_id
      
        # URI pattern of the channel. Does not include "http://" or "https://". Example:
        # www.example.com/home
        # Corresponds to the JSON property `uriPattern`
        # @return [String]
        attr_accessor :uri_pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @reporting_dimension_id = args[:reporting_dimension_id] if args.key?(:reporting_dimension_id)
          @uri_pattern = args[:uri_pattern] if args.key?(:uri_pattern)
        end
      end
    end
  end
end
