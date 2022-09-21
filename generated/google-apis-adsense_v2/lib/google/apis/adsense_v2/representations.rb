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
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdBlockingRecoveryTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdClient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdClientAdCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdUnit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdUnitAdCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Alert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentAdsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Header
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAdClientsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAdUnitsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAlertsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListChildAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLinkedAdUnitsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLinkedCustomChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPaymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSavedReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListUrlChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Payment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SavedReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Site
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :pending_tasks, as: 'pendingTasks'
          property :premium, as: 'premium'
          property :state, as: 'state'
          property :time_zone, as: 'timeZone', class: Google::Apis::AdsenseV2::TimeZone, decorator: Google::Apis::AdsenseV2::TimeZone::Representation
      
        end
      end
      
      class AdBlockingRecoveryTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_protection_code, as: 'errorProtectionCode'
          property :tag, as: 'tag'
        end
      end
      
      class AdClient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :product_code, as: 'productCode'
          property :reporting_dimension_id, as: 'reportingDimensionId'
          property :state, as: 'state'
        end
      end
      
      class AdClientAdCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_code, as: 'adCode'
          property :amp_body, as: 'ampBody'
          property :amp_head, as: 'ampHead'
        end
      end
      
      class AdUnit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_ads_settings, as: 'contentAdsSettings', class: Google::Apis::AdsenseV2::ContentAdsSettings, decorator: Google::Apis::AdsenseV2::ContentAdsSettings::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :reporting_dimension_id, as: 'reportingDimensionId'
          property :state, as: 'state'
        end
      end
      
      class AdUnitAdCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_code, as: 'adCode'
        end
      end
      
      class Alert
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :name, as: 'name'
          property :severity, as: 'severity'
          property :type, as: 'type'
        end
      end
      
      class Cell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class ContentAdsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size, as: 'size'
          property :type, as: 'type'
        end
      end
      
      class CustomChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active, as: 'active'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :reporting_dimension_id, as: 'reportingDimensionId'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Header
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class HttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class ListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::AdsenseV2::Account, decorator: Google::Apis::AdsenseV2::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAdClientsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_clients, as: 'adClients', class: Google::Apis::AdsenseV2::AdClient, decorator: Google::Apis::AdsenseV2::AdClient::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAdUnitsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_units, as: 'adUnits', class: Google::Apis::AdsenseV2::AdUnit, decorator: Google::Apis::AdsenseV2::AdUnit::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAlertsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alerts, as: 'alerts', class: Google::Apis::AdsenseV2::Alert, decorator: Google::Apis::AdsenseV2::Alert::Representation
      
        end
      end
      
      class ListChildAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::AdsenseV2::Account, decorator: Google::Apis::AdsenseV2::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCustomChannelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_channels, as: 'customChannels', class: Google::Apis::AdsenseV2::CustomChannel, decorator: Google::Apis::AdsenseV2::CustomChannel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLinkedAdUnitsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_units, as: 'adUnits', class: Google::Apis::AdsenseV2::AdUnit, decorator: Google::Apis::AdsenseV2::AdUnit::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLinkedCustomChannelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_channels, as: 'customChannels', class: Google::Apis::AdsenseV2::CustomChannel, decorator: Google::Apis::AdsenseV2::CustomChannel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPaymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :payments, as: 'payments', class: Google::Apis::AdsenseV2::Payment, decorator: Google::Apis::AdsenseV2::Payment::Representation
      
        end
      end
      
      class ListSavedReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :saved_reports, as: 'savedReports', class: Google::Apis::AdsenseV2::SavedReport, decorator: Google::Apis::AdsenseV2::SavedReport::Representation
      
        end
      end
      
      class ListSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sites, as: 'sites', class: Google::Apis::AdsenseV2::Site, decorator: Google::Apis::AdsenseV2::Site::Representation
      
        end
      end
      
      class ListUrlChannelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :url_channels, as: 'urlChannels', class: Google::Apis::AdsenseV2::UrlChannel, decorator: Google::Apis::AdsenseV2::UrlChannel::Representation
      
        end
      end
      
      class Payment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount'
          property :date, as: 'date', class: Google::Apis::AdsenseV2::Date, decorator: Google::Apis::AdsenseV2::Date::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ReportResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :averages, as: 'averages', class: Google::Apis::AdsenseV2::Row, decorator: Google::Apis::AdsenseV2::Row::Representation
      
          property :end_date, as: 'endDate', class: Google::Apis::AdsenseV2::Date, decorator: Google::Apis::AdsenseV2::Date::Representation
      
          collection :headers, as: 'headers', class: Google::Apis::AdsenseV2::Header, decorator: Google::Apis::AdsenseV2::Header::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::AdsenseV2::Row, decorator: Google::Apis::AdsenseV2::Row::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::AdsenseV2::Date, decorator: Google::Apis::AdsenseV2::Date::Representation
      
          property :total_matched_rows, :numeric_string => true, as: 'totalMatchedRows'
          property :totals, as: 'totals', class: Google::Apis::AdsenseV2::Row, decorator: Google::Apis::AdsenseV2::Row::Representation
      
          collection :warnings, as: 'warnings'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::AdsenseV2::Cell, decorator: Google::Apis::AdsenseV2::Cell::Representation
      
        end
      end
      
      class SavedReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :title, as: 'title'
        end
      end
      
      class Site
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_ads_enabled, as: 'autoAdsEnabled'
          property :domain, as: 'domain'
          property :name, as: 'name'
          property :reporting_dimension_id, as: 'reportingDimensionId'
          property :state, as: 'state'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class UrlChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :reporting_dimension_id, as: 'reportingDimensionId'
          property :uri_pattern, as: 'uriPattern'
        end
      end
    end
  end
end
