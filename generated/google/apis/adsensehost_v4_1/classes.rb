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
    module AdsensehostV4_1
      
      # 
      class Account
        include Google::Apis::Core::Hashable
      
        # Unique identifier of this account.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsensehost#account.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Approval status of this account. One of: PENDING, APPROVED, DISABLED.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # 
      class Accounts
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The accounts returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsensehostV4_1::Account>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsensehost#accounts.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class AdClient
        include Google::Apis::Core::Hashable
      
        # Whether this ad client is opted in to ARC.
        # Corresponds to the JSON property `arcOptIn`
        # @return [Boolean]
        attr_accessor :arc_opt_in
        alias_method :arc_opt_in?, :arc_opt_in
      
        # Unique identifier of this ad client.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsensehost#adClient.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This ad client's product code, which corresponds to the PRODUCT_CODE report
        # dimension.
        # Corresponds to the JSON property `productCode`
        # @return [String]
        attr_accessor :product_code
      
        # Whether this ad client supports being reported on.
        # Corresponds to the JSON property `supportsReporting`
        # @return [Boolean]
        attr_accessor :supports_reporting
        alias_method :supports_reporting?, :supports_reporting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arc_opt_in = args[:arc_opt_in] unless args[:arc_opt_in].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @product_code = args[:product_code] unless args[:product_code].nil?
          @supports_reporting = args[:supports_reporting] unless args[:supports_reporting].nil?
        end
      end
      
      # 
      class AdClients
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ad clients returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsensehostV4_1::AdClient>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsensehost#adClients.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through ad clients. To retrieve the next page
        # of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class AdCode
        include Google::Apis::Core::Hashable
      
        # The ad code snippet.
        # Corresponds to the JSON property `adCode`
        # @return [String]
        attr_accessor :ad_code
      
        # Kind this is, in this case adsensehost#adCode.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_code = args[:ad_code] unless args[:ad_code].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class AdStyle
        include Google::Apis::Core::Hashable
      
        # The colors included in the style. These are represented as six hexadecimal
        # characters, similar to HTML color codes, but without the leading hash.
        # Corresponds to the JSON property `colors`
        # @return [Google::Apis::AdsensehostV4_1::AdStyle::Colors]
        attr_accessor :colors
      
        # The style of the corners in the ad. Possible values are SQUARE,
        # SLIGHTLY_ROUNDED and VERY_ROUNDED.
        # Corresponds to the JSON property `corners`
        # @return [String]
        attr_accessor :corners
      
        # The font which is included in the style.
        # Corresponds to the JSON property `font`
        # @return [Google::Apis::AdsensehostV4_1::AdStyle::Font]
        attr_accessor :font
      
        # Kind this is, in this case adsensehost#adStyle.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @colors = args[:colors] unless args[:colors].nil?
          @corners = args[:corners] unless args[:corners].nil?
          @font = args[:font] unless args[:font].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
        
        # The colors included in the style. These are represented as six hexadecimal
        # characters, similar to HTML color codes, but without the leading hash.
        class Colors
          include Google::Apis::Core::Hashable
        
          # The color of the ad background.
          # Corresponds to the JSON property `background`
          # @return [String]
          attr_accessor :background
        
          # The color of the ad border.
          # Corresponds to the JSON property `border`
          # @return [String]
          attr_accessor :border
        
          # The color of the ad text.
          # Corresponds to the JSON property `text`
          # @return [String]
          attr_accessor :text
        
          # The color of the ad title.
          # Corresponds to the JSON property `title`
          # @return [String]
          attr_accessor :title
        
          # The color of the ad url.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @background = args[:background] unless args[:background].nil?
            @border = args[:border] unless args[:border].nil?
            @text = args[:text] unless args[:text].nil?
            @title = args[:title] unless args[:title].nil?
            @url = args[:url] unless args[:url].nil?
          end
        end
        
        # The font which is included in the style.
        class Font
          include Google::Apis::Core::Hashable
        
          # The family of the font. Possible values are: ACCOUNT_DEFAULT_FAMILY,
          # ADSENSE_DEFAULT_FAMILY, ARIAL, TIMES and VERDANA.
          # Corresponds to the JSON property `family`
          # @return [String]
          attr_accessor :family
        
          # The size of the font. Possible values are: ACCOUNT_DEFAULT_SIZE,
          # ADSENSE_DEFAULT_SIZE, SMALL, MEDIUM and LARGE.
          # Corresponds to the JSON property `size`
          # @return [String]
          attr_accessor :size
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @family = args[:family] unless args[:family].nil?
            @size = args[:size] unless args[:size].nil?
          end
        end
      end
      
      # 
      class AdUnit
        include Google::Apis::Core::Hashable
      
        # Identity code of this ad unit, not necessarily unique across ad clients.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Settings specific to content ads (AFC) and highend mobile content ads (AFMC).
        # Corresponds to the JSON property `contentAdsSettings`
        # @return [Google::Apis::AdsensehostV4_1::AdUnit::ContentAdsSettings]
        attr_accessor :content_ads_settings
      
        # Custom style information specific to this ad unit.
        # Corresponds to the JSON property `customStyle`
        # @return [Google::Apis::AdsensehostV4_1::AdStyle]
        attr_accessor :custom_style
      
        # Unique identifier of this ad unit. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsensehost#adUnit.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Settings specific to WAP mobile content ads (AFMC).
        # Corresponds to the JSON property `mobileContentAdsSettings`
        # @return [Google::Apis::AdsensehostV4_1::AdUnit::MobileContentAdsSettings]
        attr_accessor :mobile_content_ads_settings
      
        # Name of this ad unit.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Status of this ad unit. Possible values are:
        # NEW: Indicates that the ad unit was created within the last seven days and
        # does not yet have any activity associated with it.
        # ACTIVE: Indicates that there has been activity on this ad unit in the last
        # seven days.
        # INACTIVE: Indicates that there has been no activity on this ad unit in the
        # last seven days.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @content_ads_settings = args[:content_ads_settings] unless args[:content_ads_settings].nil?
          @custom_style = args[:custom_style] unless args[:custom_style].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @mobile_content_ads_settings = args[:mobile_content_ads_settings] unless args[:mobile_content_ads_settings].nil?
          @name = args[:name] unless args[:name].nil?
          @status = args[:status] unless args[:status].nil?
        end
        
        # Settings specific to content ads (AFC) and highend mobile content ads (AFMC).
        class ContentAdsSettings
          include Google::Apis::Core::Hashable
        
          # The backup option to be used in instances where no ad is available.
          # Corresponds to the JSON property `backupOption`
          # @return [Google::Apis::AdsensehostV4_1::AdUnit::ContentAdsSettings::BackupOption]
          attr_accessor :backup_option
        
          # Size of this ad unit. Size values are in the form SIZE_`width`_`height`.
          # Corresponds to the JSON property `size`
          # @return [String]
          attr_accessor :size
        
          # Type of this ad unit. Possible values are TEXT, TEXT_IMAGE, IMAGE and LINK.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @backup_option = args[:backup_option] unless args[:backup_option].nil?
            @size = args[:size] unless args[:size].nil?
            @type = args[:type] unless args[:type].nil?
          end
          
          # The backup option to be used in instances where no ad is available.
          class BackupOption
            include Google::Apis::Core::Hashable
          
            # Color to use when type is set to COLOR. These are represented as six
            # hexadecimal characters, similar to HTML color codes, but without the leading
            # hash.
            # Corresponds to the JSON property `color`
            # @return [String]
            attr_accessor :color
          
            # Type of the backup option. Possible values are BLANK, COLOR and URL.
            # Corresponds to the JSON property `type`
            # @return [String]
            attr_accessor :type
          
            # URL to use when type is set to URL.
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @color = args[:color] unless args[:color].nil?
              @type = args[:type] unless args[:type].nil?
              @url = args[:url] unless args[:url].nil?
            end
          end
        end
        
        # Settings specific to WAP mobile content ads (AFMC).
        class MobileContentAdsSettings
          include Google::Apis::Core::Hashable
        
          # The markup language to use for this ad unit.
          # Corresponds to the JSON property `markupLanguage`
          # @return [String]
          attr_accessor :markup_language
        
          # The scripting language to use for this ad unit.
          # Corresponds to the JSON property `scriptingLanguage`
          # @return [String]
          attr_accessor :scripting_language
        
          # Size of this ad unit.
          # Corresponds to the JSON property `size`
          # @return [String]
          attr_accessor :size
        
          # Type of this ad unit.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @markup_language = args[:markup_language] unless args[:markup_language].nil?
            @scripting_language = args[:scripting_language] unless args[:scripting_language].nil?
            @size = args[:size] unless args[:size].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # 
      class AdUnits
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ad units returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsensehostV4_1::AdUnit>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsensehost#adUnits.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through ad units. To retrieve the next page of
        # results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class AssociationSession
        include Google::Apis::Core::Hashable
      
        # Hosted account id of the associated publisher after association. Present if
        # status is ACCEPTED.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Unique identifier of this association session.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsensehost#associationSession.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The products to associate with the user. Options: AFC, AFF, AFS, AFMC
        # Corresponds to the JSON property `productCodes`
        # @return [Array<String>]
        attr_accessor :product_codes
      
        # Redirect URL of this association session. Used to redirect users into the
        # AdSense association flow.
        # Corresponds to the JSON property `redirectUrl`
        # @return [String]
        attr_accessor :redirect_url
      
        # Status of the completed association, available once the association callback
        # token has been verified. One of ACCEPTED, REJECTED, or ERROR.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The preferred locale of the user themselves when going through the AdSense
        # association flow.
        # Corresponds to the JSON property `userLocale`
        # @return [String]
        attr_accessor :user_locale
      
        # The locale of the user's hosted website.
        # Corresponds to the JSON property `websiteLocale`
        # @return [String]
        attr_accessor :website_locale
      
        # The URL of the user's hosted website.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @product_codes = args[:product_codes] unless args[:product_codes].nil?
          @redirect_url = args[:redirect_url] unless args[:redirect_url].nil?
          @status = args[:status] unless args[:status].nil?
          @user_locale = args[:user_locale] unless args[:user_locale].nil?
          @website_locale = args[:website_locale] unless args[:website_locale].nil?
          @website_url = args[:website_url] unless args[:website_url].nil?
        end
      end
      
      # 
      class CustomChannel
        include Google::Apis::Core::Hashable
      
        # Code of this custom channel, not necessarily unique across ad clients.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Unique identifier of this custom channel. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsensehost#customChannel.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this custom channel.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # 
      class CustomChannels
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The custom channels returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsensehostV4_1::CustomChannel>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsensehost#customChannels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through custom channels. To retrieve the next
        # page of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class Report
        include Google::Apis::Core::Hashable
      
        # The averages of the report. This is the same length as any other row in the
        # report; cells corresponding to dimension columns are empty.
        # Corresponds to the JSON property `averages`
        # @return [Array<String>]
        attr_accessor :averages
      
        # The header information of the columns requested in the report. This is a list
        # of headers; one for each dimension in the request, followed by one for each
        # metric in the request.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::AdsensehostV4_1::Report::Header>]
        attr_accessor :headers
      
        # Kind this is, in this case adsensehost#report.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The output rows of the report. Each row is a list of cells; one for each
        # dimension in the request, followed by one for each metric in the request. The
        # dimension cells contain strings, and the metric cells contain numbers.
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<String>>]
        attr_accessor :rows
      
        # The total number of rows matched by the report request. Fewer rows may be
        # returned in the response due to being limited by the row count requested or
        # the report row limit.
        # Corresponds to the JSON property `totalMatchedRows`
        # @return [String]
        attr_accessor :total_matched_rows
      
        # The totals of the report. This is the same length as any other row in the
        # report; cells corresponding to dimension columns are empty.
        # Corresponds to the JSON property `totals`
        # @return [Array<String>]
        attr_accessor :totals
      
        # Any warnings associated with generation of the report.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @averages = args[:averages] unless args[:averages].nil?
          @headers = args[:headers] unless args[:headers].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @total_matched_rows = args[:total_matched_rows] unless args[:total_matched_rows].nil?
          @totals = args[:totals] unless args[:totals].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
        end
        
        # 
        class Header
          include Google::Apis::Core::Hashable
        
          # The currency of this column. Only present if the header type is
          # METRIC_CURRENCY.
          # Corresponds to the JSON property `currency`
          # @return [String]
          attr_accessor :currency
        
          # The name of the header.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or
          # METRIC_CURRENCY.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @currency = args[:currency] unless args[:currency].nil?
            @name = args[:name] unless args[:name].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # 
      class UrlChannel
        include Google::Apis::Core::Hashable
      
        # Unique identifier of this URL channel. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adsensehost#urlChannel.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # URL Pattern of this URL channel. Does not include "http://" or "https://".
        # Example: www.example.com/home
        # Corresponds to the JSON property `urlPattern`
        # @return [String]
        attr_accessor :url_pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @url_pattern = args[:url_pattern] unless args[:url_pattern].nil?
        end
      end
      
      # 
      class UrlChannels
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The URL channels returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdsensehostV4_1::UrlChannel>]
        attr_accessor :items
      
        # Kind of list this is, in this case adsensehost#urlChannels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through URL channels. To retrieve the next
        # page of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
    end
  end
end
