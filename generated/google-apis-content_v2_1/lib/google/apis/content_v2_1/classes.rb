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
    module ContentV2_1
      
      # Account data. After the creation of a new account it may take a few minutes
      # before it's fully operational. The methods delete, insert, and update require
      # the admin role.
      class Account
        include Google::Apis::Core::Hashable
      
        # Output only. How the account is managed. Acceptable values are: - "`manual`" -
        # "`automatic`"
        # Corresponds to the JSON property `accountManagement`
        # @return [String]
        attr_accessor :account_management
      
        # Linked Ads accounts that are active or pending approval. To create a new link
        # request, add a new link with status `active` to the list. It will remain in a `
        # pending` state until approved or rejected either in the Ads interface or
        # through the Google Ads API. To delete an active link, or to cancel a link
        # request, remove it from the list.
        # Corresponds to the JSON property `adsLinks`
        # @return [Array<Google::Apis::ContentV2_1::AccountAdsLink>]
        attr_accessor :ads_links
      
        # Indicates whether the merchant sells adult content.
        # Corresponds to the JSON property `adultContent`
        # @return [Boolean]
        attr_accessor :adult_content
        alias_method :adult_content?, :adult_content
      
        # The automatic improvements of the account can be used to automatically update
        # items, improve images and shipping.
        # Corresponds to the JSON property `automaticImprovements`
        # @return [Google::Apis::ContentV2_1::AccountAutomaticImprovements]
        attr_accessor :automatic_improvements
      
        # Automatically created label IDs that are assigned to the account by CSS Center.
        # Corresponds to the JSON property `automaticLabelIds`
        # @return [Array<Fixnum>]
        attr_accessor :automatic_label_ids
      
        # The [business identity attributes](https://support.google.com/merchants/answer/
        # 10342414) can be used to self-declare attributes that let customers know more
        # about your business.
        # Corresponds to the JSON property `businessIdentity`
        # @return [Google::Apis::ContentV2_1::AccountBusinessIdentity]
        attr_accessor :business_identity
      
        # The business information of the account.
        # Corresponds to the JSON property `businessInformation`
        # @return [Google::Apis::ContentV2_1::AccountBusinessInformation]
        attr_accessor :business_information
      
        # Settings for conversion tracking.
        # Corresponds to the JSON property `conversionSettings`
        # @return [Google::Apis::ContentV2_1::AccountConversionSettings]
        attr_accessor :conversion_settings
      
        # ID of CSS the account belongs to.
        # Corresponds to the JSON property `cssId`
        # @return [Fixnum]
        attr_accessor :css_id
      
        # The Business Profile which is linked or in the process of being linked with
        # the Merchant Center account.
        # Corresponds to the JSON property `googleMyBusinessLink`
        # @return [Google::Apis::ContentV2_1::AccountGoogleMyBusinessLink]
        attr_accessor :google_my_business_link
      
        # Required. 64-bit Merchant Center account ID.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # account`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Manually created label IDs that are assigned to the account by CSS.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<Fixnum>]
        attr_accessor :label_ids
      
        # Required. Display name for the account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Client-specific, locally-unique, internal ID for the child account.
        # Corresponds to the JSON property `sellerId`
        # @return [String]
        attr_accessor :seller_id
      
        # Users with access to the account. Every account (except for subaccounts) must
        # have at least one admin user.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::ContentV2_1::AccountUser>]
        attr_accessor :users
      
        # The merchant's website.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        # Linked YouTube channels that are active or pending approval. To create a new
        # link request, add a new link with status `active` to the list. It will remain
        # in a `pending` state until approved or rejected in the YT Creator Studio
        # interface. To delete an active link, or to cancel a link request, remove it
        # from the list.
        # Corresponds to the JSON property `youtubeChannelLinks`
        # @return [Array<Google::Apis::ContentV2_1::AccountYouTubeChannelLink>]
        attr_accessor :youtube_channel_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_management = args[:account_management] if args.key?(:account_management)
          @ads_links = args[:ads_links] if args.key?(:ads_links)
          @adult_content = args[:adult_content] if args.key?(:adult_content)
          @automatic_improvements = args[:automatic_improvements] if args.key?(:automatic_improvements)
          @automatic_label_ids = args[:automatic_label_ids] if args.key?(:automatic_label_ids)
          @business_identity = args[:business_identity] if args.key?(:business_identity)
          @business_information = args[:business_information] if args.key?(:business_information)
          @conversion_settings = args[:conversion_settings] if args.key?(:conversion_settings)
          @css_id = args[:css_id] if args.key?(:css_id)
          @google_my_business_link = args[:google_my_business_link] if args.key?(:google_my_business_link)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @label_ids = args[:label_ids] if args.key?(:label_ids)
          @name = args[:name] if args.key?(:name)
          @seller_id = args[:seller_id] if args.key?(:seller_id)
          @users = args[:users] if args.key?(:users)
          @website_url = args[:website_url] if args.key?(:website_url)
          @youtube_channel_links = args[:youtube_channel_links] if args.key?(:youtube_channel_links)
        end
      end
      
      # 
      class AccountAddress
        include Google::Apis::Core::Hashable
      
        # CLDR country code (for example, "US"). All MCA sub-accounts inherit the
        # country of their parent MCA by default, however the country can be updated for
        # individual sub-accounts.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # City, town or commune. May also include dependent localities or sublocalities (
        # for example, neighborhoods or suburbs).
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Postal code or ZIP (for example, "94043").
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Top-level administrative subdivision of the country. For example, a state like
        # California ("CA") or a province like Quebec ("QC").
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Street-level part of the address. Use `\n` to add a second line.
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @locality = args[:locality] if args.key?(:locality)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region = args[:region] if args.key?(:region)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # 
      class AccountAdsLink
        include Google::Apis::Core::Hashable
      
        # Customer ID of the Ads account.
        # Corresponds to the JSON property `adsId`
        # @return [Fixnum]
        attr_accessor :ads_id
      
        # Status of the link between this Merchant Center account and the Ads account.
        # Upon retrieval, it represents the actual status of the link and can be either `
        # active` if it was approved in Google Ads or `pending` if it's pending approval.
        # Upon insertion, it represents the *intended* status of the link. Re-uploading
        # a link with status `active` when it's still pending or with status `pending`
        # when it's already active will have no effect: the status will remain unchanged.
        # Re-uploading a link with deprecated status `inactive` is equivalent to not
        # submitting the link at all and will delete the link if it was active or cancel
        # the link request if it was pending. Acceptable values are: - "`active`" - "`
        # pending`"
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_id = args[:ads_id] if args.key?(:ads_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The automatic improvements of the account can be used to automatically update
      # items, improve images and shipping.
      class AccountAutomaticImprovements
        include Google::Apis::Core::Hashable
      
        # This improvement will attempt to automatically correct submitted images if
        # they don't meet the [image requirements](https://support.google.com/merchants/
        # answer/6324350), for example, removing overlays. If successful, the image will
        # be replaced and approved. This improvement is only applied to images of
        # disapproved offers. For more information see: [Automatic image improvements](
        # https://support.google.com/merchants/answer/9242973)
        # Corresponds to the JSON property `imageImprovements`
        # @return [Google::Apis::ContentV2_1::AccountImageImprovements]
        attr_accessor :image_improvements
      
        # Turning on [item updates](https://support.google.com/merchants/answer/3246284)
        # allows Google to automatically update items for you. When item updates are on,
        # Google uses the structured data markup on the website and advanced data
        # extractors to update the price and availability of the items. When the item
        # updates are off, items with mismatched data aren't shown.
        # Corresponds to the JSON property `itemUpdates`
        # @return [Google::Apis::ContentV2_1::AccountItemUpdates]
        attr_accessor :item_updates
      
        # Not available for MCAs [accounts](https://support.google.com/merchants/answer/
        # 188487). By turning on [automatic shipping improvements](https://support.
        # google.com/merchants/answer/10027038), you are allowing Google to improve the
        # accuracy of your delivery times shown to shoppers using Google. More accurate
        # delivery times, especially when faster, typically lead to better conversion
        # rates. Google will improve your estimated delivery times based on various
        # factors: * Delivery address of an order * Current handling time and shipping
        # time settings * Estimated weekdays or business days * Parcel tracking data
        # Corresponds to the JSON property `shippingImprovements`
        # @return [Google::Apis::ContentV2_1::AccountShippingImprovements]
        attr_accessor :shipping_improvements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_improvements = args[:image_improvements] if args.key?(:image_improvements)
          @item_updates = args[:item_updates] if args.key?(:item_updates)
          @shipping_improvements = args[:shipping_improvements] if args.key?(:shipping_improvements)
        end
      end
      
      # The [business identity attributes](https://support.google.com/merchants/answer/
      # 10342414) can be used to self-declare attributes that let customers know more
      # about your business.
      class AccountBusinessIdentity
        include Google::Apis::Core::Hashable
      
        # The account identity type used to specify attributes.
        # Corresponds to the JSON property `blackOwned`
        # @return [Google::Apis::ContentV2_1::AccountIdentityType]
        attr_accessor :black_owned
      
        # Required. By setting this field, your business may be included in promotions
        # for all the selected attributes. If you clear this option, it won't affect
        # your identification with any of the attributes. For this field to be set, the
        # merchant must self identify with at least one of the `AccountIdentityType`. If
        # none are included, the request will be considered invalid.
        # Corresponds to the JSON property `includeForPromotions`
        # @return [Boolean]
        attr_accessor :include_for_promotions
        alias_method :include_for_promotions?, :include_for_promotions
      
        # The account identity type used to specify attributes.
        # Corresponds to the JSON property `latinoOwned`
        # @return [Google::Apis::ContentV2_1::AccountIdentityType]
        attr_accessor :latino_owned
      
        # The account identity type used to specify attributes.
        # Corresponds to the JSON property `smallBusiness`
        # @return [Google::Apis::ContentV2_1::AccountIdentityType]
        attr_accessor :small_business
      
        # The account identity type used to specify attributes.
        # Corresponds to the JSON property `veteranOwned`
        # @return [Google::Apis::ContentV2_1::AccountIdentityType]
        attr_accessor :veteran_owned
      
        # The account identity type used to specify attributes.
        # Corresponds to the JSON property `womenOwned`
        # @return [Google::Apis::ContentV2_1::AccountIdentityType]
        attr_accessor :women_owned
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @black_owned = args[:black_owned] if args.key?(:black_owned)
          @include_for_promotions = args[:include_for_promotions] if args.key?(:include_for_promotions)
          @latino_owned = args[:latino_owned] if args.key?(:latino_owned)
          @small_business = args[:small_business] if args.key?(:small_business)
          @veteran_owned = args[:veteran_owned] if args.key?(:veteran_owned)
          @women_owned = args[:women_owned] if args.key?(:women_owned)
        end
      end
      
      # 
      class AccountBusinessInformation
        include Google::Apis::Core::Hashable
      
        # The address of the business. Use `\n` to add a second address line.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::ContentV2_1::AccountAddress]
        attr_accessor :address
      
        # The customer service information of the business.
        # Corresponds to the JSON property `customerService`
        # @return [Google::Apis::ContentV2_1::AccountCustomerService]
        attr_accessor :customer_service
      
        # The 10-digit [Korean business registration number](https://support.google.com/
        # merchants/answer/9037766) separated with dashes in the format: XXX-XX-XXXXX.
        # This field will only be updated if explicitly set.
        # Corresponds to the JSON property `koreanBusinessRegistrationNumber`
        # @return [String]
        attr_accessor :korean_business_registration_number
      
        # The phone number of the business in [E.164](https://en.wikipedia.org/wiki/E.
        # 164) format. This can only be updated if a verified phone number is not
        # already set. To replace a verified phone number use the `Accounts.
        # requestphoneverification` and `Accounts.verifyphonenumber`.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Verification status of the phone number of the business. This status is read
        # only and can be updated only by successful phone verification. Acceptable
        # values are: - "`verified`" - "`unverified`"
        # Corresponds to the JSON property `phoneVerificationStatus`
        # @return [String]
        attr_accessor :phone_verification_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @customer_service = args[:customer_service] if args.key?(:customer_service)
          @korean_business_registration_number = args[:korean_business_registration_number] if args.key?(:korean_business_registration_number)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @phone_verification_status = args[:phone_verification_status] if args.key?(:phone_verification_status)
        end
      end
      
      # Settings for conversion tracking.
      class AccountConversionSettings
        include Google::Apis::Core::Hashable
      
        # When enabled, free listing URLs have a parameter to enable conversion tracking
        # for products owned by the current merchant account. See [auto-tagging](https://
        # support.google.com/merchants/answer/11127659).
        # Corresponds to the JSON property `freeListingsAutoTaggingEnabled`
        # @return [Boolean]
        attr_accessor :free_listings_auto_tagging_enabled
        alias_method :free_listings_auto_tagging_enabled?, :free_listings_auto_tagging_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_listings_auto_tagging_enabled = args[:free_listings_auto_tagging_enabled] if args.key?(:free_listings_auto_tagging_enabled)
        end
      end
      
      # Credentials allowing Google to call a partner's API on behalf of a merchant.
      class AccountCredentials
        include Google::Apis::Core::Hashable
      
        # An OAuth access token.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        # The amount of time, in seconds, after which the access token is no longer
        # valid.
        # Corresponds to the JSON property `expiresIn`
        # @return [Fixnum]
        attr_accessor :expires_in
      
        # Indicates to Google how Google should use these OAuth tokens.
        # Corresponds to the JSON property `purpose`
        # @return [String]
        attr_accessor :purpose
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @purpose = args[:purpose] if args.key?(:purpose)
        end
      end
      
      # 
      class AccountCustomerService
        include Google::Apis::Core::Hashable
      
        # Customer service email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Customer service phone number.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Customer service URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class AccountGoogleMyBusinessLink
        include Google::Apis::Core::Hashable
      
        # The ID of the Business Profile. If this is provided, then `gmbEmail` is
        # ignored. The value of this field should match the `accountId` used by the
        # Business Profile API.
        # Corresponds to the JSON property `gmbAccountId`
        # @return [String]
        attr_accessor :gmb_account_id
      
        # The Business Profile email address of a specific account within a Business
        # Profile. A sample account within a Business Profile could be a business
        # account with set of locations, managed under the Business Profile.
        # Corresponds to the JSON property `gmbEmail`
        # @return [String]
        attr_accessor :gmb_email
      
        # Status of the link between this Merchant Center account and the Business
        # Profile. Acceptable values are: - "`active`" - "`pending`"
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gmb_account_id = args[:gmb_account_id] if args.key?(:gmb_account_id)
          @gmb_email = args[:gmb_email] if args.key?(:gmb_email)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class AccountIdentifier
        include Google::Apis::Core::Hashable
      
        # The aggregator ID, set for aggregators and subaccounts (in that case, it
        # represents the aggregator of the subaccount).
        # Corresponds to the JSON property `aggregatorId`
        # @return [Fixnum]
        attr_accessor :aggregator_id
      
        # The merchant account ID, set for individual accounts and subaccounts.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregator_id = args[:aggregator_id] if args.key?(:aggregator_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
        end
      end
      
      # The account identity type used to specify attributes.
      class AccountIdentityType
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates that the business identifies itself with a given identity
        # type. Setting this field does not automatically mean eligibility for
        # promotions.
        # Corresponds to the JSON property `selfIdentified`
        # @return [Boolean]
        attr_accessor :self_identified
        alias_method :self_identified?, :self_identified
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @self_identified = args[:self_identified] if args.key?(:self_identified)
        end
      end
      
      # This improvement will attempt to automatically correct submitted images if
      # they don't meet the [image requirements](https://support.google.com/merchants/
      # answer/6324350), for example, removing overlays. If successful, the image will
      # be replaced and approved. This improvement is only applied to images of
      # disapproved offers. For more information see: [Automatic image improvements](
      # https://support.google.com/merchants/answer/9242973)
      class AccountImageImprovements
        include Google::Apis::Core::Hashable
      
        # Settings for the Automatic Image Improvements.
        # Corresponds to the JSON property `accountImageImprovementsSettings`
        # @return [Google::Apis::ContentV2_1::AccountImageImprovementsSettings]
        attr_accessor :account_image_improvements_settings
      
        # Output only. The effective value of allow_automatic_image_improvements. If
        # account_image_improvements_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. Read-only.
        # Corresponds to the JSON property `effectiveAllowAutomaticImageImprovements`
        # @return [Boolean]
        attr_accessor :effective_allow_automatic_image_improvements
        alias_method :effective_allow_automatic_image_improvements?, :effective_allow_automatic_image_improvements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_image_improvements_settings = args[:account_image_improvements_settings] if args.key?(:account_image_improvements_settings)
          @effective_allow_automatic_image_improvements = args[:effective_allow_automatic_image_improvements] if args.key?(:effective_allow_automatic_image_improvements)
        end
      end
      
      # Settings for the Automatic Image Improvements.
      class AccountImageImprovementsSettings
        include Google::Apis::Core::Hashable
      
        # Enables automatic image improvements.
        # Corresponds to the JSON property `allowAutomaticImageImprovements`
        # @return [Boolean]
        attr_accessor :allow_automatic_image_improvements
        alias_method :allow_automatic_image_improvements?, :allow_automatic_image_improvements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_automatic_image_improvements = args[:allow_automatic_image_improvements] if args.key?(:allow_automatic_image_improvements)
        end
      end
      
      # An issue affecting specific merchant.
      class AccountIssue
        include Google::Apis::Core::Hashable
      
        # A list of actionable steps that can be executed to solve the issue. An example
        # is requesting a re-review or providing arguments when merchant disagrees with
        # the issue. Actions that are supported in (your) third-party application can be
        # rendered as buttons and should be available to merchant when they expand the
        # issue.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::ContentV2_1::Action>]
        attr_accessor :actions
      
        # Overall impact of the issue.
        # Corresponds to the JSON property `impact`
        # @return [Google::Apis::ContentV2_1::AccountIssueImpact]
        attr_accessor :impact
      
        # Details of the issue as a pre-rendered HTML. HTML elements contain CSS classes
        # that can be used to customize the style of the content. Always sanitize the
        # HTML before embedding it directly to your application. The sanitizer needs to
        # allow basic HTML tags, such as: `div`, `span`, `p`, `a`, `ul`, `li`, `table`, `
        # tr`, `td`. For example, you can use [DOMPurify](https://www.npmjs.com/package/
        # dompurify). CSS classes: * `issue-detail` - top level container for the detail
        # of the issue * `callout-banners` - section of the `issue-detail` with callout
        # banners * `callout-banner` - single callout banner, inside `callout-banners` *
        # `callout-banner-info` - callout with important information (default) * `
        # callout-banner-warning` - callout with a warning * `callout-banner-error` -
        # callout informing about an error (most severe) * `issue-content` - section of
        # the `issue-detail`, contains multiple `content-element` * `content-element` -
        # content element such as a list, link or paragraph, inside `issue-content` * `
        # root-causes` - unordered list with items describing root causes of the issue,
        # inside `issue-content` * `root-causes-intro` - intro text before the `root-
        # causes` list, inside `issue-content` * `segment` - section of the text, `span`
        # inside paragraph * `segment-attribute` - section of the text that represents a
        # product attribute, for example 'image\_link' * `segment-literal` - section of
        # the text that contains a special value, for example '0-1000 kg' * `segment-
        # bold` - section of the text that should be rendered as bold * `segment-italic`
        # - section of the text that should be rendered as italic * `tooltip` - used on
        # paragraphs that should be rendered with a tooltip. A section of the text in
        # such a paragraph will have a class `tooltip-text` and is intended to be shown
        # in a mouse over dialog. If the style is not used, the `tooltip-text` section
        # would be shown on a new line, after the main part of the text. * `tooltip-text`
        # - marks a section of the text within a `tooltip`, that is intended to be
        # shown in a mouse over dialog. * `tooltip-icon` - marks a section of the text
        # within a `tooltip`, that can be replaced with a tooltip icon, for example '?'
        # or 'i'. By default, this section contains a `br` tag, that is separating the
        # main text and the tooltip text when the style is not used. * `tooltip-style-
        # question` - the tooltip shows helpful information, can use the '?' as an icon.
        # * `tooltip-style-info` - the tooltip adds additional information fitting to
        # the context, can use the 'i' as an icon. * `content-moderation` - marks the
        # paragraph that explains how the issue was identified. * `new-element` -
        # Present for new elements added to the pre-rendered content in the future. To
        # make sure that a new content element does not break your style, you can hide
        # everything with this class.
        # Corresponds to the JSON property `prerenderedContent`
        # @return [String]
        attr_accessor :prerendered_content
      
        # Pre-rendered HTML that contains a link to the external location where the ODS
        # can be requested and instructions for how to request it. HTML elements contain
        # CSS classes that can be used to customize the style of this snippet. Always
        # sanitize the HTML before embedding it directly to your application. The
        # sanitizer needs to allow basic HTML tags, such as: `div`, `span`, `p`, `a`, `
        # ul`, `li`, `table`, `tr`, `td`. For example, you can use [DOMPurify](https://
        # www.npmjs.com/package/dompurify). CSS classes: * `ods-section`* - wrapper
        # around the out-of-court dispute resolution section * `ods-description`* -
        # intro text for the out-of-court dispute resolution. It may contain multiple
        # segments and a link. * `ods-param`* - wrapper around the header-value pair for
        # parameters that merchant may need to provide during the ODS process. * `ods-
        # routing-id`* - ods param for the Routing ID. * `ods-reference-id`* - ods param
        # for the Routing ID. * `ods-param-header`* - header for the ODS parameter * `
        # ods-param-value`* - value of the ODS parameter. This value should be rendered
        # in a way that it is easy for merchants to identify and copy. * `segment` -
        # section of the text, `span` inside paragraph * `segment-attribute` - section
        # of the text that represents a product attribute, for example 'image\_link' * `
        # segment-literal` - section of the text that contains a special value, for
        # example '0-1000 kg' * `segment-bold` - section of the text that should be
        # rendered as bold * `segment-italic` - section of the text that should be
        # rendered as italic * `tooltip` - used on paragraphs that should be rendered
        # with a tooltip. A section of the text in such a paragraph will have a class `
        # tooltip-text` and is intended to be shown in a mouse over dialog. If the style
        # is not used, the `tooltip-text` section would be shown on a new line, after
        # the main part of the text. * `tooltip-text` - marks a section of the text
        # within a `tooltip`, that is intended to be shown in a mouse over dialog. * `
        # tooltip-icon` - marks a section of the text within a `tooltip`, that can be
        # replaced with a tooltip icon, for example '?' or 'i'. By default, this section
        # contains a `br` tag, that is separating the main text and the tooltip text
        # when the style is not used. * `tooltip-style-question` - the tooltip shows
        # helpful information, can use the '?' as an icon. * `tooltip-style-info` - the
        # tooltip adds additional information fitting to the context, can use the 'i' as
        # an icon.
        # Corresponds to the JSON property `prerenderedOutOfCourtDisputeSettlement`
        # @return [String]
        attr_accessor :prerendered_out_of_court_dispute_settlement
      
        # Title of the issue.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @impact = args[:impact] if args.key?(:impact)
          @prerendered_content = args[:prerendered_content] if args.key?(:prerendered_content)
          @prerendered_out_of_court_dispute_settlement = args[:prerendered_out_of_court_dispute_settlement] if args.key?(:prerendered_out_of_court_dispute_settlement)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Overall impact of the issue.
      class AccountIssueImpact
        include Google::Apis::Core::Hashable
      
        # Detailed impact breakdown. Explains the types of restriction the issue has in
        # different shopping destinations and territory. If present, it should be
        # rendered to the merchant. Can be shown as a mouse over dropdown or a dialog.
        # Each breakdown item represents a group of regions with the same impact details.
        # Corresponds to the JSON property `breakdowns`
        # @return [Array<Google::Apis::ContentV2_1::Breakdown>]
        attr_accessor :breakdowns
      
        # Optional. Message summarizing the overall impact of the issue. If present, it
        # should be rendered to the merchant. For example: "Disapproves 90k offers in 25
        # countries"
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The severity of the issue.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @breakdowns = args[:breakdowns] if args.key?(:breakdowns)
          @message = args[:message] if args.key?(:message)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Turning on [item updates](https://support.google.com/merchants/answer/3246284)
      # allows Google to automatically update items for you. When item updates are on,
      # Google uses the structured data markup on the website and advanced data
      # extractors to update the price and availability of the items. When the item
      # updates are off, items with mismatched data aren't shown.
      class AccountItemUpdates
        include Google::Apis::Core::Hashable
      
        # Settings for the Automatic Item Updates.
        # Corresponds to the JSON property `accountItemUpdatesSettings`
        # @return [Google::Apis::ContentV2_1::AccountItemUpdatesSettings]
        attr_accessor :account_item_updates_settings
      
        # Output only. The effective value of allow_availability_updates. If
        # account_item_updates_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. Read-only.
        # Corresponds to the JSON property `effectiveAllowAvailabilityUpdates`
        # @return [Boolean]
        attr_accessor :effective_allow_availability_updates
        alias_method :effective_allow_availability_updates?, :effective_allow_availability_updates
      
        # Output only. The effective value of allow_condition_updates. If
        # account_item_updates_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. Read-only.
        # Corresponds to the JSON property `effectiveAllowConditionUpdates`
        # @return [Boolean]
        attr_accessor :effective_allow_condition_updates
        alias_method :effective_allow_condition_updates?, :effective_allow_condition_updates
      
        # Output only. The effective value of allow_price_updates. If
        # account_item_updates_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. Read-only.
        # Corresponds to the JSON property `effectiveAllowPriceUpdates`
        # @return [Boolean]
        attr_accessor :effective_allow_price_updates
        alias_method :effective_allow_price_updates?, :effective_allow_price_updates
      
        # Output only. The effective value of allow_strict_availability_updates. If
        # account_item_updates_settings is present, then this value is the same.
        # Otherwise, it represents the inherited value of the parent account. Read-only.
        # Corresponds to the JSON property `effectiveAllowStrictAvailabilityUpdates`
        # @return [Boolean]
        attr_accessor :effective_allow_strict_availability_updates
        alias_method :effective_allow_strict_availability_updates?, :effective_allow_strict_availability_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_item_updates_settings = args[:account_item_updates_settings] if args.key?(:account_item_updates_settings)
          @effective_allow_availability_updates = args[:effective_allow_availability_updates] if args.key?(:effective_allow_availability_updates)
          @effective_allow_condition_updates = args[:effective_allow_condition_updates] if args.key?(:effective_allow_condition_updates)
          @effective_allow_price_updates = args[:effective_allow_price_updates] if args.key?(:effective_allow_price_updates)
          @effective_allow_strict_availability_updates = args[:effective_allow_strict_availability_updates] if args.key?(:effective_allow_strict_availability_updates)
        end
      end
      
      # Settings for the Automatic Item Updates.
      class AccountItemUpdatesSettings
        include Google::Apis::Core::Hashable
      
        # If availability updates are enabled, any previous availability values get
        # overwritten if Google finds an out-of-stock annotation on the offer's page. If
        # additionally `allow_availability_updates` field is set to true, values get
        # overwritten if Google finds an in-stock annotation on the offer’s page.
        # Corresponds to the JSON property `allowAvailabilityUpdates`
        # @return [Boolean]
        attr_accessor :allow_availability_updates
        alias_method :allow_availability_updates?, :allow_availability_updates
      
        # If condition updates are enabled, Google always updates item condition with
        # the condition detected from the details of your product.
        # Corresponds to the JSON property `allowConditionUpdates`
        # @return [Boolean]
        attr_accessor :allow_condition_updates
        alias_method :allow_condition_updates?, :allow_condition_updates
      
        # If price updates are enabled, Google always updates the active price with the
        # crawled information.
        # Corresponds to the JSON property `allowPriceUpdates`
        # @return [Boolean]
        attr_accessor :allow_price_updates
        alias_method :allow_price_updates?, :allow_price_updates
      
        # If allow_availability_updates is enabled, items are automatically updated in
        # all your Shopping target countries. By default, availability updates will only
        # be applied to items that are 'out of stock' on your website but 'in stock' on
        # Shopping. Set this to true to also update items that are 'in stock' on your
        # website, but 'out of stock' on Google Shopping. In order for this field to
        # have an effect, you must also allow availability updates.
        # Corresponds to the JSON property `allowStrictAvailabilityUpdates`
        # @return [Boolean]
        attr_accessor :allow_strict_availability_updates
        alias_method :allow_strict_availability_updates?, :allow_strict_availability_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_availability_updates = args[:allow_availability_updates] if args.key?(:allow_availability_updates)
          @allow_condition_updates = args[:allow_condition_updates] if args.key?(:allow_condition_updates)
          @allow_price_updates = args[:allow_price_updates] if args.key?(:allow_price_updates)
          @allow_strict_availability_updates = args[:allow_strict_availability_updates] if args.key?(:allow_strict_availability_updates)
        end
      end
      
      # Label assigned by CSS domain or CSS group to one of its sub-accounts.
      class AccountLabel
        include Google::Apis::Core::Hashable
      
        # Immutable. The ID of account this label belongs to.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # The description of this label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The ID of the label.
        # Corresponds to the JSON property `labelId`
        # @return [Fixnum]
        attr_accessor :label_id
      
        # Output only. The type of this label.
        # Corresponds to the JSON property `labelType`
        # @return [String]
        attr_accessor :label_type
      
        # The display name of this label.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @description = args[:description] if args.key?(:description)
          @label_id = args[:label_id] if args.key?(:label_id)
          @label_type = args[:label_type] if args.key?(:label_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The return carrier information. This service is designed for merchants
      # enrolled in the Buy on Google program.
      class AccountReturnCarrier
        include Google::Apis::Core::Hashable
      
        # Output only. Immutable. The Google-provided unique carrier ID, used to update
        # the resource.
        # Corresponds to the JSON property `carrierAccountId`
        # @return [Fixnum]
        attr_accessor :carrier_account_id
      
        # Name of the carrier account.
        # Corresponds to the JSON property `carrierAccountName`
        # @return [String]
        attr_accessor :carrier_account_name
      
        # Number of the carrier account.
        # Corresponds to the JSON property `carrierAccountNumber`
        # @return [String]
        attr_accessor :carrier_account_number
      
        # The carrier code enum. Accepts the values FEDEX or UPS.
        # Corresponds to the JSON property `carrierCode`
        # @return [String]
        attr_accessor :carrier_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier_account_id = args[:carrier_account_id] if args.key?(:carrier_account_id)
          @carrier_account_name = args[:carrier_account_name] if args.key?(:carrier_account_name)
          @carrier_account_number = args[:carrier_account_number] if args.key?(:carrier_account_number)
          @carrier_code = args[:carrier_code] if args.key?(:carrier_code)
        end
      end
      
      # Not available for MCAs [accounts](https://support.google.com/merchants/answer/
      # 188487). By turning on [automatic shipping improvements](https://support.
      # google.com/merchants/answer/10027038), you are allowing Google to improve the
      # accuracy of your delivery times shown to shoppers using Google. More accurate
      # delivery times, especially when faster, typically lead to better conversion
      # rates. Google will improve your estimated delivery times based on various
      # factors: * Delivery address of an order * Current handling time and shipping
      # time settings * Estimated weekdays or business days * Parcel tracking data
      class AccountShippingImprovements
        include Google::Apis::Core::Hashable
      
        # Enables automatic shipping improvements.
        # Corresponds to the JSON property `allowShippingImprovements`
        # @return [Boolean]
        attr_accessor :allow_shipping_improvements
        alias_method :allow_shipping_improvements?, :allow_shipping_improvements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_shipping_improvements = args[:allow_shipping_improvements] if args.key?(:allow_shipping_improvements)
        end
      end
      
      # The status of an account, that is, information about its products, which is
      # computed offline and not returned immediately at insertion time.
      class AccountStatus
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which the status is reported.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # A list of account level issues.
        # Corresponds to the JSON property `accountLevelIssues`
        # @return [Array<Google::Apis::ContentV2_1::AccountStatusAccountLevelIssue>]
        attr_accessor :account_level_issues
      
        # How the account is managed. Acceptable values are: - "`manual`" - "`automatic`"
        # 
        # Corresponds to the JSON property `accountManagement`
        # @return [String]
        attr_accessor :account_management
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountStatus`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of product-related data by channel, destination, and country. Data in
        # this field may be delayed by up to 30 minutes.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::ContentV2_1::AccountStatusProducts>]
        attr_accessor :products
      
        # Whether the account's website is claimed or not.
        # Corresponds to the JSON property `websiteClaimed`
        # @return [Boolean]
        attr_accessor :website_claimed
        alias_method :website_claimed?, :website_claimed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_level_issues = args[:account_level_issues] if args.key?(:account_level_issues)
          @account_management = args[:account_management] if args.key?(:account_management)
          @kind = args[:kind] if args.key?(:kind)
          @products = args[:products] if args.key?(:products)
          @website_claimed = args[:website_claimed] if args.key?(:website_claimed)
        end
      end
      
      # 
      class AccountStatusAccountLevelIssue
        include Google::Apis::Core::Hashable
      
        # Country for which this issue is reported.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The destination the issue applies to. If this field is empty then the issue
        # applies to all available destinations.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Additional details about the issue.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The URL of a web page to help resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Issue identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Severity of the issue. Acceptable values are: - "`critical`" - "`error`" - "`
        # suggestion`"
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Short description of the issue.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @destination = args[:destination] if args.key?(:destination)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @id = args[:id] if args.key?(:id)
          @severity = args[:severity] if args.key?(:severity)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class AccountStatusItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # The attribute's name, if the issue is caused by a single attribute.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # The error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A short issue description in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Number of items with this issue.
        # Corresponds to the JSON property `numItems`
        # @return [Fixnum]
        attr_accessor :num_items
      
        # Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # How this issue affects serving of the offer.
        # Corresponds to the JSON property `servability`
        # @return [String]
        attr_accessor :servability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @num_items = args[:num_items] if args.key?(:num_items)
          @resolution = args[:resolution] if args.key?(:resolution)
          @servability = args[:servability] if args.key?(:servability)
        end
      end
      
      # 
      class AccountStatusProducts
        include Google::Apis::Core::Hashable
      
        # The channel the data applies to. Acceptable values are: - "`local`" - "`online`
        # "
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # The country the data applies to.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The destination the data applies to.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # List of item-level issues.
        # Corresponds to the JSON property `itemLevelIssues`
        # @return [Array<Google::Apis::ContentV2_1::AccountStatusItemLevelIssue>]
        attr_accessor :item_level_issues
      
        # Aggregated product statistics.
        # Corresponds to the JSON property `statistics`
        # @return [Google::Apis::ContentV2_1::AccountStatusStatistics]
        attr_accessor :statistics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @country = args[:country] if args.key?(:country)
          @destination = args[:destination] if args.key?(:destination)
          @item_level_issues = args[:item_level_issues] if args.key?(:item_level_issues)
          @statistics = args[:statistics] if args.key?(:statistics)
        end
      end
      
      # 
      class AccountStatusStatistics
        include Google::Apis::Core::Hashable
      
        # Number of active offers.
        # Corresponds to the JSON property `active`
        # @return [Fixnum]
        attr_accessor :active
      
        # Number of disapproved offers.
        # Corresponds to the JSON property `disapproved`
        # @return [Fixnum]
        attr_accessor :disapproved
      
        # Number of expiring offers.
        # Corresponds to the JSON property `expiring`
        # @return [Fixnum]
        attr_accessor :expiring
      
        # Number of pending offers.
        # Corresponds to the JSON property `pending`
        # @return [Fixnum]
        attr_accessor :pending
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @disapproved = args[:disapproved] if args.key?(:disapproved)
          @expiring = args[:expiring] if args.key?(:expiring)
          @pending = args[:pending] if args.key?(:pending)
        end
      end
      
      # The tax settings of a merchant account. All methods require the admin role.
      class AccountTax
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the account to which these account tax settings belong.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountTax`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Tax rules. Updating the tax rules will enable "US" taxes (not reversible).
        # Defining no rules is equivalent to not charging tax at all.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ContentV2_1::AccountTaxTaxRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @kind = args[:kind] if args.key?(:kind)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Tax calculation rule to apply in a state or province (US only).
      class AccountTaxTaxRule
        include Google::Apis::Core::Hashable
      
        # Country code in which tax is applicable.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Required. State (or province) is which the tax is applicable, described by its
        # location ID (also called criteria ID).
        # Corresponds to the JSON property `locationId`
        # @return [Fixnum]
        attr_accessor :location_id
      
        # Explicit tax rate in percent, represented as a floating point number without
        # the percentage character. Must not be negative.
        # Corresponds to the JSON property `ratePercent`
        # @return [String]
        attr_accessor :rate_percent
      
        # If true, shipping charges are also taxed.
        # Corresponds to the JSON property `shippingTaxed`
        # @return [Boolean]
        attr_accessor :shipping_taxed
        alias_method :shipping_taxed?, :shipping_taxed
      
        # Whether the tax rate is taken from a global tax table or specified explicitly.
        # Corresponds to the JSON property `useGlobalRate`
        # @return [Boolean]
        attr_accessor :use_global_rate
        alias_method :use_global_rate?, :use_global_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @location_id = args[:location_id] if args.key?(:location_id)
          @rate_percent = args[:rate_percent] if args.key?(:rate_percent)
          @shipping_taxed = args[:shipping_taxed] if args.key?(:shipping_taxed)
          @use_global_rate = args[:use_global_rate] if args.key?(:use_global_rate)
        end
      end
      
      # 
      class AccountUser
        include Google::Apis::Core::Hashable
      
        # Whether user is an admin.
        # Corresponds to the JSON property `admin`
        # @return [Boolean]
        attr_accessor :admin
        alias_method :admin?, :admin
      
        # User's email address.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # This role is deprecated and can no longer be assigned. Any value set will be
        # ignored.
        # Corresponds to the JSON property `orderManager`
        # @return [Boolean]
        attr_accessor :order_manager
        alias_method :order_manager?, :order_manager
      
        # This role is deprecated and can no longer be assigned. Any value set will be
        # ignored.
        # Corresponds to the JSON property `paymentsAnalyst`
        # @return [Boolean]
        attr_accessor :payments_analyst
        alias_method :payments_analyst?, :payments_analyst
      
        # This role is deprecated and can no longer be assigned. Any value set will be
        # ignored.
        # Corresponds to the JSON property `paymentsManager`
        # @return [Boolean]
        attr_accessor :payments_manager
        alias_method :payments_manager?, :payments_manager
      
        # Optional. Whether user has standard read-only access.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # Whether user is a reporting manager. This role is equivalent to the
        # Performance and insights role in Merchant Center.
        # Corresponds to the JSON property `reportingManager`
        # @return [Boolean]
        attr_accessor :reporting_manager
        alias_method :reporting_manager?, :reporting_manager
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin = args[:admin] if args.key?(:admin)
          @email_address = args[:email_address] if args.key?(:email_address)
          @order_manager = args[:order_manager] if args.key?(:order_manager)
          @payments_analyst = args[:payments_analyst] if args.key?(:payments_analyst)
          @payments_manager = args[:payments_manager] if args.key?(:payments_manager)
          @read_only = args[:read_only] if args.key?(:read_only)
          @reporting_manager = args[:reporting_manager] if args.key?(:reporting_manager)
        end
      end
      
      # 
      class AccountYouTubeChannelLink
        include Google::Apis::Core::Hashable
      
        # Channel ID.
        # Corresponds to the JSON property `channelId`
        # @return [String]
        attr_accessor :channel_id
      
        # Status of the link between this Merchant Center account and the YouTube
        # channel. Upon retrieval, it represents the actual status of the link and can
        # be either `active` if it was approved in YT Creator Studio or `pending` if it'
        # s pending approval. Upon insertion, it represents the *intended* status of the
        # link. Re-uploading a link with status `active` when it's still pending or with
        # status `pending` when it's already active will have no effect: the status will
        # remain unchanged. Re-uploading a link with deprecated status `inactive` is
        # equivalent to not submitting the link at all and will delete the link if it
        # was active or cancel the link request if it was pending.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class AccountsAuthInfoResponse
        include Google::Apis::Core::Hashable
      
        # The account identifiers corresponding to the authenticated user. - For an
        # individual account: only the merchant ID is defined - For an aggregator: only
        # the aggregator ID is defined - For a subaccount of an MCA: both the merchant
        # ID and the aggregator ID are defined.
        # Corresponds to the JSON property `accountIdentifiers`
        # @return [Array<Google::Apis::ContentV2_1::AccountIdentifier>]
        attr_accessor :account_identifiers
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountsAuthInfoResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_identifiers = args[:account_identifiers] if args.key?(:account_identifiers)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccountsClaimWebsiteResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountsClaimWebsiteResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccountsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccountsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch accounts request.
      class AccountsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # Account data. After the creation of a new account it may take a few minutes
        # before it's fully operational. The methods delete, insert, and update require
        # the admin role.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::ContentV2_1::Account]
        attr_accessor :account
      
        # The ID of the targeted account. Only defined if the method is not `insert`.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Whether the account should be deleted if the account has offers. Only
        # applicable if the method is `delete`.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Label IDs for the 'updatelabels' request.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<Fixnum>]
        attr_accessor :label_ids
      
        # Details about the `link` request.
        # Corresponds to the JSON property `linkRequest`
        # @return [Google::Apis::ContentV2_1::AccountsCustomBatchRequestEntryLinkRequest]
        attr_accessor :link_request
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`claimWebsite`" - "`
        # delete`" - "`get`" - "`insert`" - "`link`" - "`update`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Only applicable if the method is `claimwebsite`. Indicates whether or not to
        # take the claim from another account in case there is a conflict.
        # Corresponds to the JSON property `overwrite`
        # @return [Boolean]
        attr_accessor :overwrite
        alias_method :overwrite?, :overwrite
      
        # Controls which fields are visible. Only applicable if the method is 'get'.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @account_id = args[:account_id] if args.key?(:account_id)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @force = args[:force] if args.key?(:force)
          @label_ids = args[:label_ids] if args.key?(:label_ids)
          @link_request = args[:link_request] if args.key?(:link_request)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @overwrite = args[:overwrite] if args.key?(:overwrite)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # 
      class AccountsCustomBatchRequestEntryLinkRequest
        include Google::Apis::Core::Hashable
      
        # Action to perform for this link. The `"request"` action is only available to
        # select merchants. Acceptable values are: - "`approve`" - "`remove`" - "`
        # request`"
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Type of the link between the two accounts. Acceptable values are: - "`
        # channelPartner`" - "`eCommercePlatform`" - "`paymentServiceProvider`" - "`
        # localProductManager`"
        # Corresponds to the JSON property `linkType`
        # @return [String]
        attr_accessor :link_type
      
        # The ID of the linked account.
        # Corresponds to the JSON property `linkedAccountId`
        # @return [String]
        attr_accessor :linked_account_id
      
        # Provided services. Acceptable values are: - "`shoppingAdsProductManagement`" -
        # "`shoppingActionsProductManagement`" - "`shoppingActionsOrderManagement`" - "`
        # paymentProcessing`" - "`localProductManagement`"
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @link_type = args[:link_type] if args.key?(:link_type)
          @linked_account_id = args[:linked_account_id] if args.key?(:linked_account_id)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # 
      class AccountsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccountsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountsCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch accounts response.
      class AccountsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # Account data. After the creation of a new account it may take a few minutes
        # before it's fully operational. The methods delete, insert, and update require
        # the admin role.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::ContentV2_1::Account]
        attr_accessor :account
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountsCustomBatchResponseEntry`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccountsLinkRequest
        include Google::Apis::Core::Hashable
      
        # Action to perform for this link. The `"request"` action is only available to
        # select merchants. Acceptable values are: - "`approve`" - "`remove`" - "`
        # request`"
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Additional information required for E_COMMERCE_PLATFORM link type.
        # Corresponds to the JSON property `eCommercePlatformLinkInfo`
        # @return [Google::Apis::ContentV2_1::ECommercePlatformLinkInfo]
        attr_accessor :e_commerce_platform_link_info
      
        # Type of the link between the two accounts. Acceptable values are: - "`
        # channelPartner`" - "`eCommercePlatform`" - "`paymentServiceProvider`"
        # Corresponds to the JSON property `linkType`
        # @return [String]
        attr_accessor :link_type
      
        # The ID of the linked account.
        # Corresponds to the JSON property `linkedAccountId`
        # @return [String]
        attr_accessor :linked_account_id
      
        # Additional information required for PAYMENT_SERVICE_PROVIDER link type.
        # Corresponds to the JSON property `paymentServiceProviderLinkInfo`
        # @return [Google::Apis::ContentV2_1::PaymentServiceProviderLinkInfo]
        attr_accessor :payment_service_provider_link_info
      
        # Acceptable values are: - "`shoppingAdsProductManagement`" - "`
        # shoppingActionsProductManagement`" - "`shoppingActionsOrderManagement`" - "`
        # paymentProcessing`"
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @e_commerce_platform_link_info = args[:e_commerce_platform_link_info] if args.key?(:e_commerce_platform_link_info)
          @link_type = args[:link_type] if args.key?(:link_type)
          @linked_account_id = args[:linked_account_id] if args.key?(:linked_account_id)
          @payment_service_provider_link_info = args[:payment_service_provider_link_info] if args.key?(:payment_service_provider_link_info)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # 
      class AccountsLinkResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountsLinkResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccountsListLinksResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountsListLinksResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list of available links.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::ContentV2_1::LinkedAccount>]
        attr_accessor :links
      
        # The token for the retrieval of the next page of links.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @links = args[:links] if args.key?(:links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class AccountsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountsListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of accounts.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::Account>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class AccountsUpdateLabelsRequest
        include Google::Apis::Core::Hashable
      
        # The IDs of labels that should be assigned to the account.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<Fixnum>]
        attr_accessor :label_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_ids = args[:label_ids] if args.key?(:label_ids)
        end
      end
      
      # 
      class AccountsUpdateLabelsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountsUpdateLabelsResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccountstatusesCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccountstatusesCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch accountstatuses request.
      class AccountstatusesCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the (sub-)account whose status to get.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # If set, only issues for the specified destinations are returned, otherwise
        # only issues for the Shopping destination.
        # Corresponds to the JSON property `destinations`
        # @return [Array<String>]
        attr_accessor :destinations
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`get`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @destinations = args[:destinations] if args.key?(:destinations)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # 
      class AccountstatusesCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountstatusesCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch accountstatuses response.
      class AccountstatusesCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The status of an account, that is, information about its products, which is
        # computed offline and not returned immediately at insertion time.
        # Corresponds to the JSON property `accountStatus`
        # @return [Google::Apis::ContentV2_1::AccountStatus]
        attr_accessor :account_status
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_status = args[:account_status] if args.key?(:account_status)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class AccountstatusesListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accountstatusesListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of account statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::AccountStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class AccounttaxCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccounttaxCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch accounttax request.
      class AccounttaxCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which to get/update account tax settings.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # The tax settings of a merchant account. All methods require the admin role.
        # Corresponds to the JSON property `accountTax`
        # @return [Google::Apis::ContentV2_1::AccountTax]
        attr_accessor :account_tax
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`get`" - "`update`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_tax = args[:account_tax] if args.key?(:account_tax)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # 
      class AccounttaxCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccounttaxCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accounttaxCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch accounttax response.
      class AccounttaxCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The tax settings of a merchant account. All methods require the admin role.
        # Corresponds to the JSON property `accountTax`
        # @return [Google::Apis::ContentV2_1::AccountTax]
        attr_accessor :account_tax
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accounttaxCustomBatchResponseEntry`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_tax = args[:account_tax] if args.key?(:account_tax)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccounttaxListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # accounttaxListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of account tax settings.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::AccountTax>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # An actionable step that can be executed to solve the issue.
      class Action
        include Google::Apis::Core::Hashable
      
        # Action that is implemented and performed in (your) third-party application.
        # Represents various functionality that is expected to be available to merchant
        # and will help them with resolving the issue. The application should point the
        # merchant to the place, where they can access the corresponding functionality.
        # If the functionality is not supported, it is recommended to explain the
        # situation to merchant and provide them with instructions how to solve the
        # issue.
        # Corresponds to the JSON property `builtinSimpleAction`
        # @return [Google::Apis::ContentV2_1::BuiltInSimpleAction]
        attr_accessor :builtin_simple_action
      
        # Action that is implemented and performed in (your) third-party application.
        # The application needs to show an additional content and input form to the
        # merchant. They can start the action only when they provided all required
        # inputs. The application will request processing of the action by calling the [
        # triggeraction method](https://developers.google.com/shopping-content/reference/
        # rest/v2.1/merchantsupport/triggeraction).
        # Corresponds to the JSON property `builtinUserInputAction`
        # @return [Google::Apis::ContentV2_1::BuiltInUserInputAction]
        attr_accessor :builtin_user_input_action
      
        # Label of the action button.
        # Corresponds to the JSON property `buttonLabel`
        # @return [String]
        attr_accessor :button_label
      
        # Action that is implemented and performed outside of the third-party
        # application. It should redirect the merchant to the provided URL of an
        # external system where they can perform the action. For example to request a
        # review in the Merchant Center.
        # Corresponds to the JSON property `externalAction`
        # @return [Google::Apis::ContentV2_1::ExternalAction]
        attr_accessor :external_action
      
        # Controlling whether the button is active or disabled. The value is 'false'
        # when the action was already requested or is not available. If the action is
        # not available then a reason will be present. If (your) third-party application
        # shows a disabled button for action that is not available, then it should also
        # show reasons.
        # Corresponds to the JSON property `isAvailable`
        # @return [Boolean]
        attr_accessor :is_available
        alias_method :is_available?, :is_available
      
        # List of reasons why the action is not available. The list of reasons is empty
        # if the action is available. If there is only one reason, it can be displayed
        # next to the disabled button. If there are more reasons, all of them should be
        # displayed, for example in a pop-up dialog.
        # Corresponds to the JSON property `reasons`
        # @return [Array<Google::Apis::ContentV2_1::ActionReason>]
        attr_accessor :reasons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @builtin_simple_action = args[:builtin_simple_action] if args.key?(:builtin_simple_action)
          @builtin_user_input_action = args[:builtin_user_input_action] if args.key?(:builtin_user_input_action)
          @button_label = args[:button_label] if args.key?(:button_label)
          @external_action = args[:external_action] if args.key?(:external_action)
          @is_available = args[:is_available] if args.key?(:is_available)
          @reasons = args[:reasons] if args.key?(:reasons)
        end
      end
      
      # Flow that can be selected for an action. When merchant selects a flow,
      # application should open a dialog with more information and input form.
      class ActionFlow
        include Google::Apis::Core::Hashable
      
        # Label for the button to trigger the action from the action dialog. For example:
        # "Request review"
        # Corresponds to the JSON property `dialogButtonLabel`
        # @return [String]
        attr_accessor :dialog_button_label
      
        # An important message that should be highlighted. Usually displayed as a banner.
        # Corresponds to the JSON property `dialogCallout`
        # @return [Google::Apis::ContentV2_1::Callout]
        attr_accessor :dialog_callout
      
        # Block of text that may contain a tooltip with more information.
        # Corresponds to the JSON property `dialogMessage`
        # @return [Google::Apis::ContentV2_1::TextWithTooltip]
        attr_accessor :dialog_message
      
        # Title of the request dialog. For example: "Before you request a review"
        # Corresponds to the JSON property `dialogTitle`
        # @return [String]
        attr_accessor :dialog_title
      
        # Not for display but need to be sent back for the selected action flow.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of input fields.
        # Corresponds to the JSON property `inputs`
        # @return [Array<Google::Apis::ContentV2_1::InputField>]
        attr_accessor :inputs
      
        # Text value describing the intent for the action flow. It can be used as an
        # input label if merchant needs to pick one of multiple flows. For example: "I
        # disagree with the issue"
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialog_button_label = args[:dialog_button_label] if args.key?(:dialog_button_label)
          @dialog_callout = args[:dialog_callout] if args.key?(:dialog_callout)
          @dialog_message = args[:dialog_message] if args.key?(:dialog_message)
          @dialog_title = args[:dialog_title] if args.key?(:dialog_title)
          @id = args[:id] if args.key?(:id)
          @inputs = args[:inputs] if args.key?(:inputs)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # Input provided by the merchant.
      class ActionInput
        include Google::Apis::Core::Hashable
      
        # Required. Id of the selected action flow.
        # Corresponds to the JSON property `actionFlowId`
        # @return [String]
        attr_accessor :action_flow_id
      
        # Required. Values for input fields.
        # Corresponds to the JSON property `inputValues`
        # @return [Array<Google::Apis::ContentV2_1::InputValue>]
        attr_accessor :input_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_flow_id = args[:action_flow_id] if args.key?(:action_flow_id)
          @input_values = args[:input_values] if args.key?(:input_values)
        end
      end
      
      # A single reason why the action is not available.
      class ActionReason
        include Google::Apis::Core::Hashable
      
        # An actionable step that can be executed to solve the issue.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::ContentV2_1::Action]
        attr_accessor :action
      
        # Detailed explanation of the reason. Should be displayed as a hint if present.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Messages summarizing the reason, why the action is not available. For example:
        # "Review requested on Jan 03. Review requests can take a few days to complete."
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @detail = args[:detail] if args.key?(:detail)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class Address
        include Google::Apis::Core::Hashable
      
        # Required. Top-level administrative subdivision of the country. For example, a
        # state like California ("CA") or a province like Quebec ("QC").
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Required. City, town or commune. May also include dependent localities or
        # sublocalities (for example, neighborhoods or suburbs).
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # Required. [CLDR country code](https://github.com/unicode-org/cldr/blob/latest/
        # common/main/en.xml) (for example, "US").
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Required. Postal code or ZIP (for example, "94043").
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Street-level part of the address. Use `\n` to add a second line.
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @city = args[:city] if args.key?(:city)
          @country = args[:country] if args.key?(:country)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # The Alternate Dispute Resolution (ADR) that may be available to merchants in
      # some regions. If present, the link should be shown on the same page as the
      # list of issues.
      class AlternateDisputeResolution
        include Google::Apis::Core::Hashable
      
        # The label for the alternate dispute resolution link.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The URL pointing to a page, where merchant can request alternative dispute
        # resolution with an [external body](https://support.google.com/european-union-
        # digital-services-act-redress-options/answer/13535501).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents attribution settings for conversion sources receiving pre-
      # attribution data.
      class AttributionSettings
        include Google::Apis::Core::Hashable
      
        # Required. Lookback windows (in days) used for attribution in this source.
        # Supported values are 7, 30, 40.
        # Corresponds to the JSON property `attributionLookbackWindowInDays`
        # @return [Fixnum]
        attr_accessor :attribution_lookback_window_in_days
      
        # 
        # Corresponds to the JSON property `attributionModel`
        # @return [String]
        attr_accessor :attribution_model
      
        # Immutable. Unordered list. List of different conversion types a conversion
        # event can be classified as. A standard "purchase" type will be automatically
        # created if this list is empty at creation time.
        # Corresponds to the JSON property `conversionType`
        # @return [Array<Google::Apis::ContentV2_1::AttributionSettingsConversionType>]
        attr_accessor :conversion_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution_lookback_window_in_days = args[:attribution_lookback_window_in_days] if args.key?(:attribution_lookback_window_in_days)
          @attribution_model = args[:attribution_model] if args.key?(:attribution_model)
          @conversion_type = args[:conversion_type] if args.key?(:conversion_type)
        end
      end
      
      # Message representing a types of conversion events
      class AttributionSettingsConversionType
        include Google::Apis::Core::Hashable
      
        # Output only. Option indicating if the type should be included in Merchant
        # Center reporting.
        # Corresponds to the JSON property `includeInReporting`
        # @return [Boolean]
        attr_accessor :include_in_reporting
        alias_method :include_in_reporting?, :include_in_reporting
      
        # Output only. Conversion event name, as it'll be reported by the client.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_in_reporting = args[:include_in_reporting] if args.key?(:include_in_reporting)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Fields related to the [Best sellers reports](https://support.google.com/
      # merchants/answer/9488679).
      class BestSellers
        include Google::Apis::Core::Hashable
      
        # Google product category ID to calculate the ranking for, represented in [
        # Google's product taxonomy](https://support.google.com/merchants/answer/6324436)
        # . If a `WHERE` condition on `best_sellers.category_id` is not specified in the
        # query, rankings for all top-level categories are returned.
        # Corresponds to the JSON property `categoryId`
        # @return [Fixnum]
        attr_accessor :category_id
      
        # Country where the ranking is calculated. A `WHERE` condition on `best_sellers.
        # country_code` is required in the query.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Popularity rank in the previous week or month.
        # Corresponds to the JSON property `previousRank`
        # @return [Fixnum]
        attr_accessor :previous_rank
      
        # Estimated demand in relation to the item with the highest popularity rank in
        # the same category and country in the previous week or month.
        # Corresponds to the JSON property `previousRelativeDemand`
        # @return [String]
        attr_accessor :previous_relative_demand
      
        # Popularity on Shopping ads and free listings, in the selected category and
        # country, based on the estimated number of units sold.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        # Estimated demand in relation to the item with the highest popularity rank in
        # the same category and country.
        # Corresponds to the JSON property `relativeDemand`
        # @return [String]
        attr_accessor :relative_demand
      
        # Change in the estimated demand. Whether it rose, sank or remained flat.
        # Corresponds to the JSON property `relativeDemandChange`
        # @return [String]
        attr_accessor :relative_demand_change
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `reportDate`
        # @return [Google::Apis::ContentV2_1::Date]
        attr_accessor :report_date
      
        # Granularity of the report. The ranking can be done over a week or a month
        # timeframe. A `WHERE` condition on `best_sellers.report_granularity` is
        # required in the query.
        # Corresponds to the JSON property `reportGranularity`
        # @return [String]
        attr_accessor :report_granularity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_id = args[:category_id] if args.key?(:category_id)
          @country_code = args[:country_code] if args.key?(:country_code)
          @previous_rank = args[:previous_rank] if args.key?(:previous_rank)
          @previous_relative_demand = args[:previous_relative_demand] if args.key?(:previous_relative_demand)
          @rank = args[:rank] if args.key?(:rank)
          @relative_demand = args[:relative_demand] if args.key?(:relative_demand)
          @relative_demand_change = args[:relative_demand_change] if args.key?(:relative_demand_change)
          @report_date = args[:report_date] if args.key?(:report_date)
          @report_granularity = args[:report_granularity] if args.key?(:report_granularity)
        end
      end
      
      # Brand fields. Values are only set for fields requested explicitly in the
      # request's search query.
      class Brand
        include Google::Apis::Core::Hashable
      
        # Name of the brand.
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
      
      # A detailed impact breakdown for a group of regions where the impact of the
      # issue on different shopping destinations is the same.
      class Breakdown
        include Google::Apis::Core::Hashable
      
        # Human readable, localized description of issue's effect on different targets.
        # Should be rendered as a list. For example: * "Products not showing in ads" * "
        # Products not showing organically"
        # Corresponds to the JSON property `details`
        # @return [Array<String>]
        attr_accessor :details
      
        # Lists of regions. Should be rendered as a title for this group of details. The
        # full list should be shown to merchant. If the list is too long, it is
        # recommended to make it expandable.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::ContentV2_1::BreakdownRegion>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Region with code and localized name.
      class BreakdownRegion
        include Google::Apis::Core::Hashable
      
        # The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/latest/
        # common/main/en.xml)
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The localized name of the region. For region with code='001' the value is 'All
        # countries' or the equivalent in other languages.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Action that is implemented and performed in (your) third-party application.
      # Represents various functionality that is expected to be available to merchant
      # and will help them with resolving the issue. The application should point the
      # merchant to the place, where they can access the corresponding functionality.
      # If the functionality is not supported, it is recommended to explain the
      # situation to merchant and provide them with instructions how to solve the
      # issue.
      class BuiltInSimpleAction
        include Google::Apis::Core::Hashable
      
        # Long text from external source.
        # Corresponds to the JSON property `additionalContent`
        # @return [Google::Apis::ContentV2_1::BuiltInSimpleActionAdditionalContent]
        attr_accessor :additional_content
      
        # The attribute that needs to be updated. Present when the type is `
        # EDIT_ITEM_ATTRIBUTE`. This field contains a code for attribute, represented in
        # snake_case. You can find a list of product's attributes, with their codes [
        # here](https://support.google.com/merchants/answer/7052112).
        # Corresponds to the JSON property `attributeCode`
        # @return [String]
        attr_accessor :attribute_code
      
        # The type of action that represents a functionality that is expected to be
        # available in third-party application.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_content = args[:additional_content] if args.key?(:additional_content)
          @attribute_code = args[:attribute_code] if args.key?(:attribute_code)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Long text from external source.
      class BuiltInSimpleActionAdditionalContent
        include Google::Apis::Core::Hashable
      
        # Long text organized into paragraphs.
        # Corresponds to the JSON property `paragraphs`
        # @return [Array<String>]
        attr_accessor :paragraphs
      
        # Title of the additional content;
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paragraphs = args[:paragraphs] if args.key?(:paragraphs)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Action that is implemented and performed in (your) third-party application.
      # The application needs to show an additional content and input form to the
      # merchant. They can start the action only when they provided all required
      # inputs. The application will request processing of the action by calling the [
      # triggeraction method](https://developers.google.com/shopping-content/reference/
      # rest/v2.1/merchantsupport/triggeraction).
      class BuiltInUserInputAction
        include Google::Apis::Core::Hashable
      
        # Internal details. Not for display but need to be sent back when triggering the
        # action.
        # Corresponds to the JSON property `actionContext`
        # @return [String]
        attr_accessor :action_context
      
        # Actions may provide multiple different flows. Merchant selects one that fits
        # best to their intent. Selecting the flow is the first step in user's
        # interaction with the action. It affects what input fields will be available
        # and required and also how the request will be processed.
        # Corresponds to the JSON property `flows`
        # @return [Array<Google::Apis::ContentV2_1::ActionFlow>]
        attr_accessor :flows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_context = args[:action_context] if args.key?(:action_context)
          @flows = args[:flows] if args.key?(:flows)
        end
      end
      
      # 
      class BusinessDayConfig
        include Google::Apis::Core::Hashable
      
        # Regular business days, such as '"monday"'. May not be empty.
        # Corresponds to the JSON property `businessDays`
        # @return [Array<String>]
        attr_accessor :business_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_days = args[:business_days] if args.key?(:business_days)
        end
      end
      
      # An important message that should be highlighted. Usually displayed as a banner.
      class Callout
        include Google::Apis::Core::Hashable
      
        # Block of text that may contain a tooltip with more information.
        # Corresponds to the JSON property `fullMessage`
        # @return [Google::Apis::ContentV2_1::TextWithTooltip]
        attr_accessor :full_message
      
        # Can be used to render messages with different severity in different styles.
        # Snippets off all types contain important information that should be displayed
        # to merchants.
        # Corresponds to the JSON property `styleHint`
        # @return [String]
        attr_accessor :style_hint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_message = args[:full_message] if args.key?(:full_message)
          @style_hint = args[:style_hint] if args.key?(:style_hint)
        end
      end
      
      # 
      class CarrierRate
        include Google::Apis::Core::Hashable
      
        # Carrier service, such as `"UPS"` or `"Fedex"`. The list of supported carriers
        # can be retrieved through the `getSupportedCarriers` method. Required.
        # Corresponds to the JSON property `carrierName`
        # @return [String]
        attr_accessor :carrier_name
      
        # Carrier service, such as `"ground"` or `"2 days"`. The list of supported
        # services for a carrier can be retrieved through the `getSupportedCarriers`
        # method. Required.
        # Corresponds to the JSON property `carrierService`
        # @return [String]
        attr_accessor :carrier_service
      
        # Additive shipping rate modifier. Can be negative. For example `` "value": "1",
        # "currency" : "USD" `` adds $1 to the rate, `` "value": "-3", "currency" : "USD"
        # `` removes $3 from the rate. Optional.
        # Corresponds to the JSON property `flatAdjustment`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :flat_adjustment
      
        # Name of the carrier rate. Must be unique per rate group. Required.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Shipping origin for this carrier rate. Required.
        # Corresponds to the JSON property `originPostalCode`
        # @return [String]
        attr_accessor :origin_postal_code
      
        # Multiplicative shipping rate modifier as a number in decimal notation. Can be
        # negative. For example `"5.4"` increases the rate by 5.4%, `"-3"` decreases the
        # rate by 3%. Optional.
        # Corresponds to the JSON property `percentageAdjustment`
        # @return [String]
        attr_accessor :percentage_adjustment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier_name = args[:carrier_name] if args.key?(:carrier_name)
          @carrier_service = args[:carrier_service] if args.key?(:carrier_service)
          @flat_adjustment = args[:flat_adjustment] if args.key?(:flat_adjustment)
          @name = args[:name] if args.key?(:name)
          @origin_postal_code = args[:origin_postal_code] if args.key?(:origin_postal_code)
          @percentage_adjustment = args[:percentage_adjustment] if args.key?(:percentage_adjustment)
        end
      end
      
      # 
      class CarriersCarrier
        include Google::Apis::Core::Hashable
      
        # The CLDR country code of the carrier (for example, "US"). Always present.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # A list of services supported for EDD (Estimated Delivery Date) calculation.
        # This is the list of valid values for WarehouseBasedDeliveryTime.carrierService.
        # Corresponds to the JSON property `eddServices`
        # @return [Array<String>]
        attr_accessor :edd_services
      
        # The name of the carrier (for example, `"UPS"`). Always present.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of supported services (for example, `"ground"`) for that carrier.
        # Contains at least one service. This is the list of valid values for
        # CarrierRate.carrierService.
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @edd_services = args[:edd_services] if args.key?(:edd_services)
          @name = args[:name] if args.key?(:name)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # `CheckoutSettings` for a specific merchant ID.
      class CheckoutSettings
        include Google::Apis::Core::Hashable
      
        # Output only. The effective value of enrollment state for a given merchant ID.
        # If account level settings are present then this value will be a copy of the
        # account level settings. Otherwise, it will have the value of the parent
        # account.
        # Corresponds to the JSON property `effectiveEnrollmentState`
        # @return [String]
        attr_accessor :effective_enrollment_state
      
        # Output only. The effective value of review state for a given merchant ID. If
        # account level settings are present then this value will be a copy of the
        # account level settings. Otherwise, it will have the value of the parent
        # account.
        # Corresponds to the JSON property `effectiveReviewState`
        # @return [String]
        attr_accessor :effective_review_state
      
        # Specifications related to the `Checkout` URL. The `UriTemplate` is of the form
        # `https://www.mystore.com/checkout?item_id=`id`` where ``id`` will be
        # automatically replaced with data from the merchant account with this attribute
        # [offer_id](https://developers.google.com/shopping-content/reference/rest/v2.1/
        # products#Product.FIELDS.offer_id)
        # Corresponds to the JSON property `effectiveUriSettings`
        # @return [Google::Apis::ContentV2_1::UrlSettings]
        attr_accessor :effective_uri_settings
      
        # Output only. Reflects the merchant enrollment state in `Checkout` feature.
        # Corresponds to the JSON property `enrollmentState`
        # @return [String]
        attr_accessor :enrollment_state
      
        # Required. The ID of the account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Output only. Reflects the merchant review state in `Checkout` feature. This is
        # set based on the data quality reviews of the URL provided by the merchant. A
        # merchant with enrollment state as `ENROLLED` can be in the following review
        # states: `IN_REVIEW`, `APPROVED` or `DISAPPROVED`. A merchant must be in an
        # enrollment_state of `ENROLLED` before a review can begin for the merchant.
        # Corresponds to the JSON property `reviewState`
        # @return [String]
        attr_accessor :review_state
      
        # Specifications related to the `Checkout` URL. The `UriTemplate` is of the form
        # `https://www.mystore.com/checkout?item_id=`id`` where ``id`` will be
        # automatically replaced with data from the merchant account with this attribute
        # [offer_id](https://developers.google.com/shopping-content/reference/rest/v2.1/
        # products#Product.FIELDS.offer_id)
        # Corresponds to the JSON property `uriSettings`
        # @return [Google::Apis::ContentV2_1::UrlSettings]
        attr_accessor :uri_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_enrollment_state = args[:effective_enrollment_state] if args.key?(:effective_enrollment_state)
          @effective_review_state = args[:effective_review_state] if args.key?(:effective_review_state)
          @effective_uri_settings = args[:effective_uri_settings] if args.key?(:effective_uri_settings)
          @enrollment_state = args[:enrollment_state] if args.key?(:enrollment_state)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @review_state = args[:review_state] if args.key?(:review_state)
          @uri_settings = args[:uri_settings] if args.key?(:uri_settings)
        end
      end
      
      # Product property for the Cloud Retail API. For example, properties for a TV
      # product could be "Screen-Resolution" or "Screen-Size".
      class CloudExportAdditionalProperties
        include Google::Apis::Core::Hashable
      
        # Boolean value of the given property. For example for a TV product, "True" or "
        # False" if the screen is UHD.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Float values of the given property. For example for a TV product 1.2345.
        # Maximum number of specified values for this field is 400. Values are stored in
        # an arbitrary but consistent order.
        # Corresponds to the JSON property `floatValue`
        # @return [Array<Float>]
        attr_accessor :float_value
      
        # Integer values of the given property. For example, 1080 for a screen
        # resolution of a TV product. Maximum number of specified values for this field
        # is 400. Values are stored in an arbitrary but consistent order.
        # Corresponds to the JSON property `intValue`
        # @return [Array<Fixnum>]
        attr_accessor :int_value
      
        # Maximum float value of the given property. For example for a TV product 100.00.
        # Corresponds to the JSON property `maxValue`
        # @return [Float]
        attr_accessor :max_value
      
        # Minimum float value of the given property. For example for a TV product 1.00.
        # Corresponds to the JSON property `minValue`
        # @return [Float]
        attr_accessor :min_value
      
        # Name of the given property. For example, "Screen-Resolution" for a TV product.
        # Maximum string size is 256 characters.
        # Corresponds to the JSON property `propertyName`
        # @return [String]
        attr_accessor :property_name
      
        # Text value of the given property. For example, "8K(UHD)" could be a text value
        # for a TV product. Maximum number of specified values for this field is 400.
        # Values are stored in an arbitrary but consistent order. Maximum string size is
        # 256 characters.
        # Corresponds to the JSON property `textValue`
        # @return [Array<String>]
        attr_accessor :text_value
      
        # Unit of the given property. For example, "Pixels" for a TV product. Maximum
        # string size is 256 bytes.
        # Corresponds to the JSON property `unitCode`
        # @return [String]
        attr_accessor :unit_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @property_name = args[:property_name] if args.key?(:property_name)
          @text_value = args[:text_value] if args.key?(:text_value)
          @unit_code = args[:unit_code] if args.key?(:unit_code)
        end
      end
      
      # The collection message.
      class Collection
        include Google::Apis::Core::Hashable
      
        # Label that you assign to a collection to help organize bidding and reporting
        # in Shopping campaigns. [Custom label](https://support.google.com/merchants/
        # answer/9674217)
        # Corresponds to the JSON property `customLabel0`
        # @return [String]
        attr_accessor :custom_label0
      
        # Label that you assign to a collection to help organize bidding and reporting
        # in Shopping campaigns.
        # Corresponds to the JSON property `customLabel1`
        # @return [String]
        attr_accessor :custom_label1
      
        # Label that you assign to a collection to help organize bidding and reporting
        # in Shopping campaigns.
        # Corresponds to the JSON property `customLabel2`
        # @return [String]
        attr_accessor :custom_label2
      
        # Label that you assign to a collection to help organize bidding and reporting
        # in Shopping campaigns.
        # Corresponds to the JSON property `customLabel3`
        # @return [String]
        attr_accessor :custom_label3
      
        # Label that you assign to a collection to help organize bidding and reporting
        # in Shopping campaigns.
        # Corresponds to the JSON property `customLabel4`
        # @return [String]
        attr_accessor :custom_label4
      
        # This identifies one or more products associated with the collection. Used as a
        # lookup to the corresponding product ID in your product feeds. Provide a
        # maximum of 100 featuredProduct (for collections). Provide up to 10
        # featuredProduct (for Shoppable Images only) with ID and X and Y coordinates. [
        # featured_product attribute](https://support.google.com/merchants/answer/
        # 9703736)
        # Corresponds to the JSON property `featuredProduct`
        # @return [Array<Google::Apis::ContentV2_1::CollectionFeaturedProduct>]
        attr_accessor :featured_product
      
        # Your collection's name. [headline attribute](https://support.google.com/
        # merchants/answer/9673580)
        # Corresponds to the JSON property `headline`
        # @return [Array<String>]
        attr_accessor :headline
      
        # Required. The REST ID of the collection. Content API methods that operate on
        # collections take this as their collectionId parameter. The REST ID for a
        # collection is of the form collectionId. [id attribute](https://support.google.
        # com/merchants/answer/9649290)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The URL of a collection’s image. [image_link attribute](https://support.google.
        # com/merchants/answer/9703236)
        # Corresponds to the JSON property `imageLink`
        # @return [Array<String>]
        attr_accessor :image_link
      
        # The language of a collection and the language of any featured products linked
        # to the collection. [language attribute](https://support.google.com/merchants/
        # answer/9673781)
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # A collection’s landing page. URL directly linking to your collection's page on
        # your website. [link attribute](https://support.google.com/merchants/answer/
        # 9673983)
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # A collection’s mobile-optimized landing page when you have a different URL for
        # mobile and desktop traffic. [mobile_link attribute](https://support.google.com/
        # merchants/answer/9646123)
        # Corresponds to the JSON property `mobileLink`
        # @return [String]
        attr_accessor :mobile_link
      
        # [product_country attribute](https://support.google.com/merchants/answer/
        # 9674155)
        # Corresponds to the JSON property `productCountry`
        # @return [String]
        attr_accessor :product_country
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_label0 = args[:custom_label0] if args.key?(:custom_label0)
          @custom_label1 = args[:custom_label1] if args.key?(:custom_label1)
          @custom_label2 = args[:custom_label2] if args.key?(:custom_label2)
          @custom_label3 = args[:custom_label3] if args.key?(:custom_label3)
          @custom_label4 = args[:custom_label4] if args.key?(:custom_label4)
          @featured_product = args[:featured_product] if args.key?(:featured_product)
          @headline = args[:headline] if args.key?(:headline)
          @id = args[:id] if args.key?(:id)
          @image_link = args[:image_link] if args.key?(:image_link)
          @language = args[:language] if args.key?(:language)
          @link = args[:link] if args.key?(:link)
          @mobile_link = args[:mobile_link] if args.key?(:mobile_link)
          @product_country = args[:product_country] if args.key?(:product_country)
        end
      end
      
      # The message for FeaturedProduct. [FeaturedProduct](https://support.google.com/
      # merchants/answer/9703736)
      class CollectionFeaturedProduct
        include Google::Apis::Core::Hashable
      
        # The unique identifier for the product item.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # Required. X-coordinate of the product callout on the Shoppable Image.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Required. Y-coordinate of the product callout on the Shoppable Image.
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # The collectionstatus message.
      class CollectionStatus
        include Google::Apis::Core::Hashable
      
        # A list of all issues associated with the collection.
        # Corresponds to the JSON property `collectionLevelIssuses`
        # @return [Array<Google::Apis::ContentV2_1::CollectionStatusItemLevelIssue>]
        attr_accessor :collection_level_issuses
      
        # Date on which the collection has been created in [ISO 8601](http://en.
        # wikipedia.org/wiki/ISO_8601) format: Date, time, and offset, for example "2020-
        # 01-02T09:00:00+01:00" or "2020-01-02T09:00:00Z"
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The intended destinations for the collection.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::ContentV2_1::CollectionStatusDestinationStatus>]
        attr_accessor :destination_statuses
      
        # Required. The ID of the collection for which status is reported.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Date on which the collection has been last updated in [ISO 8601](http://en.
        # wikipedia.org/wiki/ISO_8601) format: Date, time, and offset, for example "2020-
        # 01-02T09:00:00+01:00" or "2020-01-02T09:00:00Z"
        # Corresponds to the JSON property `lastUpdateDate`
        # @return [String]
        attr_accessor :last_update_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_level_issuses = args[:collection_level_issuses] if args.key?(:collection_level_issuses)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @destination_statuses = args[:destination_statuses] if args.key?(:destination_statuses)
          @id = args[:id] if args.key?(:id)
          @last_update_date = args[:last_update_date] if args.key?(:last_update_date)
        end
      end
      
      # Destination status message.
      class CollectionStatusDestinationStatus
        include Google::Apis::Core::Hashable
      
        # Country codes (ISO 3166-1 alpha-2) where the collection is approved.
        # Corresponds to the JSON property `approvedCountries`
        # @return [Array<String>]
        attr_accessor :approved_countries
      
        # The name of the destination
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Country codes (ISO 3166-1 alpha-2) where the collection is disapproved.
        # Corresponds to the JSON property `disapprovedCountries`
        # @return [Array<String>]
        attr_accessor :disapproved_countries
      
        # Country codes (ISO 3166-1 alpha-2) where the collection is pending approval.
        # Corresponds to the JSON property `pendingCountries`
        # @return [Array<String>]
        attr_accessor :pending_countries
      
        # The status for the specified destination in the collections target country.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approved_countries = args[:approved_countries] if args.key?(:approved_countries)
          @destination = args[:destination] if args.key?(:destination)
          @disapproved_countries = args[:disapproved_countries] if args.key?(:disapproved_countries)
          @pending_countries = args[:pending_countries] if args.key?(:pending_countries)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Issue associated with the collection.
      class CollectionStatusItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # Country codes (ISO 3166-1 alpha-2) where issue applies to the offer.
        # Corresponds to the JSON property `applicableCountries`
        # @return [Array<String>]
        attr_accessor :applicable_countries
      
        # The attribute's name, if the issue is caused by a single attribute.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # The error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A short issue description in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The destination the issue applies to.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # How this issue affects the serving of the collection.
        # Corresponds to the JSON property `servability`
        # @return [String]
        attr_accessor :servability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_countries = args[:applicable_countries] if args.key?(:applicable_countries)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @destination = args[:destination] if args.key?(:destination)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @resolution = args[:resolution] if args.key?(:resolution)
          @servability = args[:servability] if args.key?(:servability)
        end
      end
      
      # Fields related to [competitive visibility reports] (https://support.google.com/
      # merchants/answer/11366442).
      class CompetitiveVisibility
        include Google::Apis::Core::Hashable
      
        # [Ads / organic ratio] (https://support.google.com/merchants/answer/11366442#
        # zippy=%2Cadsfree-ratio) shows how often a merchant receives impressions from
        # Shopping ads compared to organic traffic. The number is rounded and bucketed.
        # Available only in `CompetitiveVisibilityTopMerchantView` and `
        # CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the 'WHERE'
        # clause.
        # Corresponds to the JSON property `adsOrganicRatio`
        # @return [Float]
        attr_accessor :ads_organic_ratio
      
        # Change in visibility based on impressions with respect to the start of the
        # selected time range (or first day with non-zero impressions) for a combined
        # set of merchants with highest visibility approximating the market. Available
        # only in `CompetitiveVisibilityBenchmarkView`. Cannot be filtered on in the '
        # WHERE' clause.
        # Corresponds to the JSON property `categoryBenchmarkVisibilityTrend`
        # @return [Float]
        attr_accessor :category_benchmark_visibility_trend
      
        # Google product category ID to calculate the report for, represented in [Google'
        # s product taxonomy](https://support.google.com/merchants/answer/6324436).
        # Required in the `SELECT` clause. A `WHERE` condition on `
        # competitive_visibility.category_id` is required in the query.
        # Corresponds to the JSON property `categoryId`
        # @return [Fixnum]
        attr_accessor :category_id
      
        # The country where impression appeared. Required in the `SELECT` clause. A `
        # WHERE` condition on `competitive_visibility.country_code` is required in the
        # query.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::ContentV2_1::Date]
        attr_accessor :date
      
        # Domain of your competitor or your domain, if 'is_your_domain' is true.
        # Available only in `CompetitiveVisibilityTopMerchantView` and `
        # CompetitiveVisibilityCompetitorView`. Required in the `SELECT` clause for `
        # CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`
        # . Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Higher position rate shows how often a competitor’s offer got placed in a
        # higher position on the page than your offer. Available only in `
        # CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`
        # . Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `higherPositionRate`
        # @return [Float]
        attr_accessor :higher_position_rate
      
        # True if this row contains data for your domain. Available only in `
        # CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`
        # . Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `isYourDomain`
        # @return [Boolean]
        attr_accessor :is_your_domain
        alias_method :is_your_domain?, :is_your_domain
      
        # Page overlap rate describes how frequently competing retailers’ offers are
        # shown together with your offers on the same page. Available only in `
        # CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`
        # . Cannot be filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `pageOverlapRate`
        # @return [Float]
        attr_accessor :page_overlap_rate
      
        # Position of the domain in the top merchants ranking for the selected keys (`
        # date`, `category_id`, `country_code`, `listing_type`) based on impressions. 1
        # is the highest. Available only in `CompetitiveVisibilityTopMerchantView` and `
        # CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the 'WHERE'
        # clause.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        # Relative visibility shows how often your competitors’ offers are shown
        # compared to your offers. In other words, this is the number of displayed
        # impressions of a competitor retailer divided by the number of your displayed
        # impressions during a selected time range for a selected product category and
        # country. Available only in `CompetitiveVisibilityCompetitorView`. Cannot be
        # filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `relativeVisibility`
        # @return [Float]
        attr_accessor :relative_visibility
      
        # Type of impression listing. Required in the `SELECT` clause. Cannot be
        # filtered on in the 'WHERE' clause.
        # Corresponds to the JSON property `trafficSource`
        # @return [String]
        attr_accessor :traffic_source
      
        # Change in visibility based on impressions for your domain with respect to the
        # start of the selected time range (or first day with non-zero impressions).
        # Available only in `CompetitiveVisibilityBenchmarkView`. Cannot be filtered on
        # in the 'WHERE' clause.
        # Corresponds to the JSON property `yourDomainVisibilityTrend`
        # @return [Float]
        attr_accessor :your_domain_visibility_trend
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_organic_ratio = args[:ads_organic_ratio] if args.key?(:ads_organic_ratio)
          @category_benchmark_visibility_trend = args[:category_benchmark_visibility_trend] if args.key?(:category_benchmark_visibility_trend)
          @category_id = args[:category_id] if args.key?(:category_id)
          @country_code = args[:country_code] if args.key?(:country_code)
          @date = args[:date] if args.key?(:date)
          @domain = args[:domain] if args.key?(:domain)
          @higher_position_rate = args[:higher_position_rate] if args.key?(:higher_position_rate)
          @is_your_domain = args[:is_your_domain] if args.key?(:is_your_domain)
          @page_overlap_rate = args[:page_overlap_rate] if args.key?(:page_overlap_rate)
          @rank = args[:rank] if args.key?(:rank)
          @relative_visibility = args[:relative_visibility] if args.key?(:relative_visibility)
          @traffic_source = args[:traffic_source] if args.key?(:traffic_source)
          @your_domain_visibility_trend = args[:your_domain_visibility_trend] if args.key?(:your_domain_visibility_trend)
        end
      end
      
      # Represents a conversion source owned by a Merchant account. A merchant account
      # can have up to 200 conversion sources.
      class ConversionSource
        include Google::Apis::Core::Hashable
      
        # Output only. Generated by the Content API upon creation of a new `
        # ConversionSource`. Format: [a-z]`4`:.+ The four characters before the colon
        # represent the type of conversio source. Content after the colon represents the
        # ID of the conversion source within that type. The ID of two different
        # conversion sources might be the same across different types. The following
        # type prefixes are supported: - galk: For GoogleAnalyticsLink sources. - mcdn:
        # For MerchantCenterDestination sources.
        # Corresponds to the JSON property `conversionSourceId`
        # @return [String]
        attr_accessor :conversion_source_id
      
        # Output only. The time when an archived conversion source becomes permanently
        # deleted and is no longer available to undelete.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # "Google Analytics Link" sources can be used to get conversion data from an
        # existing Google Analytics property into the linked Merchant Center account.
        # Corresponds to the JSON property `googleAnalyticsLink`
        # @return [Google::Apis::ContentV2_1::GoogleAnalyticsLink]
        attr_accessor :google_analytics_link
      
        # "Merchant Center Destination" sources can be used to send conversion events
        # from a website using a Google tag directly to a Merchant Center account where
        # the source is created.
        # Corresponds to the JSON property `merchantCenterDestination`
        # @return [Google::Apis::ContentV2_1::MerchantCenterDestination]
        attr_accessor :merchant_center_destination
      
        # Output only. Current state of this conversion source. Can't be edited through
        # the API.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversion_source_id = args[:conversion_source_id] if args.key?(:conversion_source_id)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @google_analytics_link = args[:google_analytics_link] if args.key?(:google_analytics_link)
          @merchant_center_destination = args[:merchant_center_destination] if args.key?(:merchant_center_destination)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Information about CSS domain.
      class Css
        include Google::Apis::Core::Hashable
      
        # Output only. Immutable. The CSS domain ID.
        # Corresponds to the JSON property `cssDomainId`
        # @return [Fixnum]
        attr_accessor :css_domain_id
      
        # Output only. Immutable. The ID of the CSS group this CSS domain is affiliated
        # with. Only populated for CSS group users.
        # Corresponds to the JSON property `cssGroupId`
        # @return [Fixnum]
        attr_accessor :css_group_id
      
        # Output only. Immutable. The CSS domain's display name, used when space is
        # constrained.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Immutable. The CSS domain's full name.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # Output only. Immutable. The CSS domain's homepage.
        # Corresponds to the JSON property `homepageUri`
        # @return [String]
        attr_accessor :homepage_uri
      
        # A list of label IDs that are assigned to this CSS domain by its CSS group.
        # Only populated for CSS group users.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<Fixnum>]
        attr_accessor :label_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @css_domain_id = args[:css_domain_id] if args.key?(:css_domain_id)
          @css_group_id = args[:css_group_id] if args.key?(:css_group_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @full_name = args[:full_name] if args.key?(:full_name)
          @homepage_uri = args[:homepage_uri] if args.key?(:homepage_uri)
          @label_ids = args[:label_ids] if args.key?(:label_ids)
        end
      end
      
      # A message that represents custom attributes. Exactly one of `value` or `
      # groupValues` must be provided. Maximum allowed number of characters for each
      # custom attribute is 10240 (represents sum of characters for name and value).
      # Maximum 2500 custom attributes can be set per merchant, with total size of 102.
      # 4kB.
      class CustomAttribute
        include Google::Apis::Core::Hashable
      
        # Subattributes within this attribute group. Exactly one of value or groupValues
        # must be provided.
        # Corresponds to the JSON property `groupValues`
        # @return [Array<Google::Apis::ContentV2_1::CustomAttribute>]
        attr_accessor :group_values
      
        # The name of the attribute. Underscores will be replaced by spaces upon
        # insertion.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the attribute.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_values = args[:group_values] if args.key?(:group_values)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class CutoffTime
        include Google::Apis::Core::Hashable
      
        # Hour of the cutoff time until which an order has to be placed to be processed
        # in the same day. Required.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # Minute of the cutoff time until which an order has to be placed to be
        # processed in the same day. Required.
        # Corresponds to the JSON property `minute`
        # @return [Fixnum]
        attr_accessor :minute
      
        # Timezone identifier for the cutoff time (for example, "Europe/Zurich"). List
        # of identifiers. Required.
        # Corresponds to the JSON property `timezone`
        # @return [String]
        attr_accessor :timezone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
          @timezone = args[:timezone] if args.key?(:timezone)
        end
      end
      
      # Datafeed configuration data.
      class Datafeed
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 639-1 language in which the attributes are defined in the
        # data feed.
        # Corresponds to the JSON property `attributeLanguage`
        # @return [String]
        attr_accessor :attribute_language
      
        # Required. The type of data feed. For product inventory feeds, only feeds for
        # local stores, not online stores, are supported. Acceptable values are: - "`
        # local products`" - "`product inventory`" - "`products`"
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The required fields vary based on the frequency of fetching. For a monthly
        # fetch schedule, day_of_month and hour are required. For a weekly fetch
        # schedule, weekday and hour are required. For a daily fetch schedule, only hour
        # is required.
        # Corresponds to the JSON property `fetchSchedule`
        # @return [Google::Apis::ContentV2_1::DatafeedFetchSchedule]
        attr_accessor :fetch_schedule
      
        # Required. The filename of the feed. All feeds must have a unique file name.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # Format of the feed file.
        # Corresponds to the JSON property `format`
        # @return [Google::Apis::ContentV2_1::DatafeedFormat]
        attr_accessor :format
      
        # Required for update. The ID of the data feed.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # datafeed`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Required for insert. A descriptive name of the data feed.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The targets this feed should apply to (country, language, destinations).
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedTarget>]
        attr_accessor :targets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_language = args[:attribute_language] if args.key?(:attribute_language)
          @content_type = args[:content_type] if args.key?(:content_type)
          @fetch_schedule = args[:fetch_schedule] if args.key?(:fetch_schedule)
          @file_name = args[:file_name] if args.key?(:file_name)
          @format = args[:format] if args.key?(:format)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @targets = args[:targets] if args.key?(:targets)
        end
      end
      
      # The required fields vary based on the frequency of fetching. For a monthly
      # fetch schedule, day_of_month and hour are required. For a weekly fetch
      # schedule, weekday and hour are required. For a daily fetch schedule, only hour
      # is required.
      class DatafeedFetchSchedule
        include Google::Apis::Core::Hashable
      
        # The day of the month the feed file should be fetched (1-31).
        # Corresponds to the JSON property `dayOfMonth`
        # @return [Fixnum]
        attr_accessor :day_of_month
      
        # The URL where the feed file can be fetched. Google Merchant Center will
        # support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP
        # protocols, so the value will need to be a valid link using one of those four
        # protocols.
        # Corresponds to the JSON property `fetchUrl`
        # @return [String]
        attr_accessor :fetch_url
      
        # The hour of the day the feed file should be fetched (0-23).
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # The minute of the hour the feed file should be fetched (0-59). Read-only.
        # Corresponds to the JSON property `minuteOfHour`
        # @return [Fixnum]
        attr_accessor :minute_of_hour
      
        # An optional password for fetch_url.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Whether the scheduled fetch is paused or not.
        # Corresponds to the JSON property `paused`
        # @return [Boolean]
        attr_accessor :paused
        alias_method :paused?, :paused
      
        # Time zone used for schedule. UTC by default. For example, "America/Los_Angeles"
        # .
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # An optional user name for fetch_url.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # The day of the week the feed file should be fetched. Acceptable values are: - "
        # `monday`" - "`tuesday`" - "`wednesday`" - "`thursday`" - "`friday`" - "`
        # saturday`" - "`sunday`"
        # Corresponds to the JSON property `weekday`
        # @return [String]
        attr_accessor :weekday
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_month = args[:day_of_month] if args.key?(:day_of_month)
          @fetch_url = args[:fetch_url] if args.key?(:fetch_url)
          @hour = args[:hour] if args.key?(:hour)
          @minute_of_hour = args[:minute_of_hour] if args.key?(:minute_of_hour)
          @password = args[:password] if args.key?(:password)
          @paused = args[:paused] if args.key?(:paused)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @username = args[:username] if args.key?(:username)
          @weekday = args[:weekday] if args.key?(:weekday)
        end
      end
      
      # 
      class DatafeedFormat
        include Google::Apis::Core::Hashable
      
        # Delimiter for the separation of values in a delimiter-separated values feed.
        # If not specified, the delimiter will be auto-detected. Ignored for non-DSV
        # data feeds. Acceptable values are: - "`pipe`" - "`tab`" - "`tilde`"
        # Corresponds to the JSON property `columnDelimiter`
        # @return [String]
        attr_accessor :column_delimiter
      
        # Character encoding scheme of the data feed. If not specified, the encoding
        # will be auto-detected. Acceptable values are: - "`latin-1`" - "`utf-16be`" - "`
        # utf-16le`" - "`utf-8`" - "`windows-1252`"
        # Corresponds to the JSON property `fileEncoding`
        # @return [String]
        attr_accessor :file_encoding
      
        # Specifies how double quotes are interpreted. If not specified, the mode will
        # be auto-detected. Ignored for non-DSV data feeds. Acceptable values are: - "`
        # normal character`" - "`value quoting`"
        # Corresponds to the JSON property `quotingMode`
        # @return [String]
        attr_accessor :quoting_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_delimiter = args[:column_delimiter] if args.key?(:column_delimiter)
          @file_encoding = args[:file_encoding] if args.key?(:file_encoding)
          @quoting_mode = args[:quoting_mode] if args.key?(:quoting_mode)
        end
      end
      
      # The status of a datafeed, that is, the result of the last retrieval of the
      # datafeed computed asynchronously when the feed processing is finished.
      class DatafeedStatus
        include Google::Apis::Core::Hashable
      
        # The country for which the status is reported, represented as a CLDR territory
        # code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The ID of the feed for which the status is reported.
        # Corresponds to the JSON property `datafeedId`
        # @return [Fixnum]
        attr_accessor :datafeed_id
      
        # The list of errors occurring in the feed.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedStatusError>]
        attr_accessor :errors
      
        # The feed label status is reported for.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # The number of items in the feed that were processed.
        # Corresponds to the JSON property `itemsTotal`
        # @return [Fixnum]
        attr_accessor :items_total
      
        # The number of items in the feed that were valid.
        # Corresponds to the JSON property `itemsValid`
        # @return [Fixnum]
        attr_accessor :items_valid
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # datafeedStatus`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The two-letter ISO 639-1 language for which the status is reported.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The last date at which the feed was uploaded.
        # Corresponds to the JSON property `lastUploadDate`
        # @return [String]
        attr_accessor :last_upload_date
      
        # The processing status of the feed. Acceptable values are: - "`"`failure`": The
        # feed could not be processed or all items had errors.`" - "`in progress`": The
        # feed is being processed. - "`none`": The feed has not yet been processed. For
        # example, a feed that has never been uploaded will have this processing status.
        # - "`success`": The feed was processed successfully, though some items might
        # have had errors.
        # Corresponds to the JSON property `processingStatus`
        # @return [String]
        attr_accessor :processing_status
      
        # The list of errors occurring in the feed.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedStatusError>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @datafeed_id = args[:datafeed_id] if args.key?(:datafeed_id)
          @errors = args[:errors] if args.key?(:errors)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @items_total = args[:items_total] if args.key?(:items_total)
          @items_valid = args[:items_valid] if args.key?(:items_valid)
          @kind = args[:kind] if args.key?(:kind)
          @language = args[:language] if args.key?(:language)
          @last_upload_date = args[:last_upload_date] if args.key?(:last_upload_date)
          @processing_status = args[:processing_status] if args.key?(:processing_status)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # An error occurring in the feed, like "invalid price".
      class DatafeedStatusError
        include Google::Apis::Core::Hashable
      
        # The code of the error, for example, "validation/invalid_value".
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The number of occurrences of the error in the feed.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A list of example occurrences of the error, grouped by product.
        # Corresponds to the JSON property `examples`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedStatusExample>]
        attr_accessor :examples
      
        # The error message, for example, "Invalid price".
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @count = args[:count] if args.key?(:count)
          @examples = args[:examples] if args.key?(:examples)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # An example occurrence for a particular error.
      class DatafeedStatusExample
        include Google::Apis::Core::Hashable
      
        # The ID of the example item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Line number in the data feed where the example is found.
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        # The problematic value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @line_number = args[:line_number] if args.key?(:line_number)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class DatafeedTarget
        include Google::Apis::Core::Hashable
      
        # Deprecated. Use `feedLabel` instead. The country where the items in the feed
        # will be included in the search index, represented as a CLDR territory code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The list of [destinations to exclude](//support.google.com/merchants/answer/
        # 6324486) for this target (corresponds to cleared check boxes in Merchant
        # Center). Products that are excluded from all destinations for more than 7 days
        # are automatically deleted.
        # Corresponds to the JSON property `excludedDestinations`
        # @return [Array<String>]
        attr_accessor :excluded_destinations
      
        # Feed label for the DatafeedTarget. Either `country` or `feedLabel` is required.
        # If both `feedLabel` and `country` is specified, the values must match. Must
        # be less than or equal to 20 uppercase letters (A-Z), numbers (0-9), and dashes
        # (-).
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # The list of [destinations to include](//support.google.com/merchants/answer/
        # 7501026) for this target (corresponds to checked check boxes in Merchant
        # Center). Default destinations are always included unless provided in `
        # excludedDestinations`.
        # Corresponds to the JSON property `includedDestinations`
        # @return [Array<String>]
        attr_accessor :included_destinations
      
        # The two-letter ISO 639-1 language of the items in the feed. Must be a valid
        # language for `targets[].country`.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The countries where the items may be displayed. Represented as a CLDR
        # territory code. Will be ignored for "product inventory" feeds.
        # Corresponds to the JSON property `targetCountries`
        # @return [Array<String>]
        attr_accessor :target_countries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @excluded_destinations = args[:excluded_destinations] if args.key?(:excluded_destinations)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @included_destinations = args[:included_destinations] if args.key?(:included_destinations)
          @language = args[:language] if args.key?(:language)
          @target_countries = args[:target_countries] if args.key?(:target_countries)
        end
      end
      
      # 
      class DatafeedsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch datafeeds request.
      class DatafeedsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Datafeed configuration data.
        # Corresponds to the JSON property `datafeed`
        # @return [Google::Apis::ContentV2_1::Datafeed]
        attr_accessor :datafeed
      
        # The ID of the data feed to get, delete or fetch.
        # Corresponds to the JSON property `datafeedId`
        # @return [Fixnum]
        attr_accessor :datafeed_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`delete`" - "`
        # fetchNow`" - "`get`" - "`insert`" - "`update`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @datafeed = args[:datafeed] if args.key?(:datafeed)
          @datafeed_id = args[:datafeed_id] if args.key?(:datafeed_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # 
      class DatafeedsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # datafeedsCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch datafeeds response.
      class DatafeedsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Datafeed configuration data.
        # Corresponds to the JSON property `datafeed`
        # @return [Google::Apis::ContentV2_1::Datafeed]
        attr_accessor :datafeed
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @datafeed = args[:datafeed] if args.key?(:datafeed)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class DatafeedsFetchNowResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # datafeedsFetchNowResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class DatafeedsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # datafeedsListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of datafeeds.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::Datafeed>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class DatafeedstatusesCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch datafeedstatuses request.
      class DatafeedstatusesCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Deprecated. Use `feedLabel` instead. The country to get the datafeed status
        # for. If this parameter is provided, then `language` must also be provided.
        # Note that for multi-target datafeeds this parameter is required.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The ID of the data feed to get.
        # Corresponds to the JSON property `datafeedId`
        # @return [Fixnum]
        attr_accessor :datafeed_id
      
        # The feed label to get the datafeed status for. If this parameter is provided,
        # then `language` must also be provided. Note that for multi-target datafeeds
        # this parameter is required.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # The language to get the datafeed status for. If this parameter is provided
        # then `country` must also be provided. Note that for multi-target datafeeds
        # this parameter is required.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`get`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @country = args[:country] if args.key?(:country)
          @datafeed_id = args[:datafeed_id] if args.key?(:datafeed_id)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @language = args[:language] if args.key?(:language)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # 
      class DatafeedstatusesCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # datafeedstatusesCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch datafeedstatuses response.
      class DatafeedstatusesCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The status of a datafeed, that is, the result of the last retrieval of the
        # datafeed computed asynchronously when the feed processing is finished.
        # Corresponds to the JSON property `datafeedStatus`
        # @return [Google::Apis::ContentV2_1::DatafeedStatus]
        attr_accessor :datafeed_status
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @datafeed_status = args[:datafeed_status] if args.key?(:datafeed_status)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class DatafeedstatusesListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # datafeedstatusesListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of datafeed statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
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
      
      # Represents civil time (or occasionally physical time). This type can represent
      # a civil time in one of a few possible ways: * When utc_offset is set and
      # time_zone is unset: a civil time on a calendar day with a particular offset
      # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
      # calendar day in a particular time zone. * When neither time_zone nor
      # utc_offset is set: a civil time on a calendar day in local time. The date is
      # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
      # the DateTime is considered not to have a specific year, month, or day
      # respectively. This type may also be used to represent a physical time if all
      # the date and time fields are set and either case of the `time_offset` oneof is
      # set. Consider using `Timestamp` message for physical time instead. If your use
      # case also would like to store the user's timezone, that can be done in another
      # field. This type is more flexible than some applications may want. Make sure
      # to document and validate your application's limitations.
      class DateTime
        include Google::Apis::Core::Hashable
      
        # Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        # or 0 if specifying a datetime without a day.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        # 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        # like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        # without a month.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        # defaults to 0.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        # defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::ContentV2_1::TimeZone]
        attr_accessor :time_zone
      
        # UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        # example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        # without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @month = args[:month] if args.key?(:month)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # A delivery area for the product. Only one of `countryCode` or `postalCodeRange`
      # must be set.
      class DeliveryArea
        include Google::Apis::Core::Hashable
      
        # Required. The country that the product can be delivered to. Submit a [unicode
        # CLDR region](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
        # such as `US` or `CH`.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # A range of postal codes that defines the delivery area. Only set `
        # firstPostalCode` when specifying a single postal code.
        # Corresponds to the JSON property `postalCodeRange`
        # @return [Google::Apis::ContentV2_1::DeliveryAreaPostalCodeRange]
        attr_accessor :postal_code_range
      
        # A state, territory, or prefecture. This is supported for the United States,
        # Australia, and Japan. Provide a subdivision code from the ISO 3166-2 code
        # tables ([US](https://en.wikipedia.org/wiki/ISO_3166-2:US), [AU](https://en.
        # wikipedia.org/wiki/ISO_3166-2:AU), or [JP](https://en.wikipedia.org/wiki/
        # ISO_3166-2:JP)) without country prefix (for example, `"NY"`, `"NSW"`, `"03"`).
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @postal_code_range = args[:postal_code_range] if args.key?(:postal_code_range)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A range of postal codes that defines the delivery area. Only set `
      # firstPostalCode` when specifying a single postal code.
      class DeliveryAreaPostalCodeRange
        include Google::Apis::Core::Hashable
      
        # Required. A postal code or a pattern of the form prefix* denoting the
        # inclusive lower bound of the range defining the area. Examples values: `"94108"
        # `, `"9410*"`, `"9*"`.
        # Corresponds to the JSON property `firstPostalCode`
        # @return [String]
        attr_accessor :first_postal_code
      
        # A postal code or a pattern of the form prefix* denoting the inclusive upper
        # bound of the range defining the area (for example [070* - 078*] results in the
        # range [07000 - 07899]). It must have the same length as `firstPostalCode`: if `
        # firstPostalCode` is a postal code then `lastPostalCode` must be a postal code
        # too; if firstPostalCode is a pattern then `lastPostalCode` must be a pattern
        # with the same prefix length. Ignored if not set, then the area is defined as
        # being all the postal codes matching `firstPostalCode`.
        # Corresponds to the JSON property `lastPostalCode`
        # @return [String]
        attr_accessor :last_postal_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_postal_code = args[:first_postal_code] if args.key?(:first_postal_code)
          @last_postal_code = args[:last_postal_code] if args.key?(:last_postal_code)
        end
      end
      
      # 
      class DeliveryTime
        include Google::Apis::Core::Hashable
      
        # Business days cutoff time definition. If not configured, the cutoff time will
        # be defaulted to 8AM PST. If local delivery, use Service.StoreConfig.
        # CutoffConfig.
        # Corresponds to the JSON property `cutoffTime`
        # @return [Google::Apis::ContentV2_1::CutoffTime]
        attr_accessor :cutoff_time
      
        # The business days during which orders can be handled. If not provided, Monday
        # to Friday business days will be assumed.
        # Corresponds to the JSON property `handlingBusinessDayConfig`
        # @return [Google::Apis::ContentV2_1::BusinessDayConfig]
        attr_accessor :handling_business_day_config
      
        # Holiday cutoff definitions. If configured, they specify order cutoff times for
        # holiday-specific shipping.
        # Corresponds to the JSON property `holidayCutoffs`
        # @return [Array<Google::Apis::ContentV2_1::HolidayCutoff>]
        attr_accessor :holiday_cutoffs
      
        # Maximum number of business days spent before an order is shipped. 0 means same
        # day shipped, 1 means next day shipped. Must be greater than or equal to `
        # minHandlingTimeInDays`.
        # Corresponds to the JSON property `maxHandlingTimeInDays`
        # @return [Fixnum]
        attr_accessor :max_handling_time_in_days
      
        # Maximum number of business days that are spent in transit. 0 means same day
        # delivery, 1 means next day delivery. Must be greater than or equal to `
        # minTransitTimeInDays`.
        # Corresponds to the JSON property `maxTransitTimeInDays`
        # @return [Fixnum]
        attr_accessor :max_transit_time_in_days
      
        # Minimum number of business days spent before an order is shipped. 0 means same
        # day shipped, 1 means next day shipped.
        # Corresponds to the JSON property `minHandlingTimeInDays`
        # @return [Fixnum]
        attr_accessor :min_handling_time_in_days
      
        # Minimum number of business days that are spent in transit. 0 means same day
        # delivery, 1 means next day delivery. Either ``min,max`TransitTimeInDays` or `
        # transitTimeTable` must be set, but not both.
        # Corresponds to the JSON property `minTransitTimeInDays`
        # @return [Fixnum]
        attr_accessor :min_transit_time_in_days
      
        # The business days during which orders can be in-transit. If not provided,
        # Monday to Friday business days will be assumed.
        # Corresponds to the JSON property `transitBusinessDayConfig`
        # @return [Google::Apis::ContentV2_1::BusinessDayConfig]
        attr_accessor :transit_business_day_config
      
        # Transit time table, number of business days spent in transit based on row and
        # column dimensions. Either ``min,max`TransitTimeInDays` or `transitTimeTable`
        # can be set, but not both.
        # Corresponds to the JSON property `transitTimeTable`
        # @return [Google::Apis::ContentV2_1::TransitTable]
        attr_accessor :transit_time_table
      
        # Indicates that the delivery time should be calculated per warehouse (shipping
        # origin location) based on the settings of the selected carrier. When set, no
        # other transit time related field in DeliveryTime should be set.
        # Corresponds to the JSON property `warehouseBasedDeliveryTimes`
        # @return [Array<Google::Apis::ContentV2_1::WarehouseBasedDeliveryTime>]
        attr_accessor :warehouse_based_delivery_times
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cutoff_time = args[:cutoff_time] if args.key?(:cutoff_time)
          @handling_business_day_config = args[:handling_business_day_config] if args.key?(:handling_business_day_config)
          @holiday_cutoffs = args[:holiday_cutoffs] if args.key?(:holiday_cutoffs)
          @max_handling_time_in_days = args[:max_handling_time_in_days] if args.key?(:max_handling_time_in_days)
          @max_transit_time_in_days = args[:max_transit_time_in_days] if args.key?(:max_transit_time_in_days)
          @min_handling_time_in_days = args[:min_handling_time_in_days] if args.key?(:min_handling_time_in_days)
          @min_transit_time_in_days = args[:min_transit_time_in_days] if args.key?(:min_transit_time_in_days)
          @transit_business_day_config = args[:transit_business_day_config] if args.key?(:transit_business_day_config)
          @transit_time_table = args[:transit_time_table] if args.key?(:transit_time_table)
          @warehouse_based_delivery_times = args[:warehouse_based_delivery_times] if args.key?(:warehouse_based_delivery_times)
        end
      end
      
      # Distance represented by an integer and unit.
      class Distance
        include Google::Apis::Core::Hashable
      
        # The distance unit. Acceptable values are `None`, `Miles`, and `Kilometers`.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The distance represented as a number.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Additional information required for E_COMMERCE_PLATFORM link type.
      class ECommercePlatformLinkInfo
        include Google::Apis::Core::Hashable
      
        # The id used by the third party service provider to identify the merchant.
        # Corresponds to the JSON property `externalAccountId`
        # @return [String]
        attr_accessor :external_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_account_id = args[:external_account_id] if args.key?(:external_account_id)
        end
      end
      
      # An error returned by the API.
      class Error
        include Google::Apis::Core::Hashable
      
        # The domain of the error.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # A description of the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The error code.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # A list of errors returned by a failed batch entry.
      class Errors
        include Google::Apis::Core::Hashable
      
        # The HTTP status of the first error in `errors`.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ContentV2_1::Error>]
        attr_accessor :errors
      
        # The message of the first error in `errors`.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @errors = args[:errors] if args.key?(:errors)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Action that is implemented and performed outside of the third-party
      # application. It should redirect the merchant to the provided URL of an
      # external system where they can perform the action. For example to request a
      # review in the Merchant Center.
      class ExternalAction
        include Google::Apis::Core::Hashable
      
        # The type of external action.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # URL to external system, for example Merchant Center, where the merchant can
        # perform the action.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Response message for GetFreeListingsProgramStatus.
      class FreeListingsProgramStatus
        include Google::Apis::Core::Hashable
      
        # State of the program. `ENABLED` if there are offers for at least one region.
        # Corresponds to the JSON property `globalState`
        # @return [String]
        attr_accessor :global_state
      
        # Status of the program in each region. Regions with the same status and review
        # eligibility are grouped together in `regionCodes`.
        # Corresponds to the JSON property `regionStatuses`
        # @return [Array<Google::Apis::ContentV2_1::FreeListingsProgramStatusRegionStatus>]
        attr_accessor :region_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_state = args[:global_state] if args.key?(:global_state)
          @region_statuses = args[:region_statuses] if args.key?(:region_statuses)
        end
      end
      
      # Status of program and region.
      class FreeListingsProgramStatusRegionStatus
        include Google::Apis::Core::Hashable
      
        # Date by which eligibilityStatus will go from `WARNING` to `DISAPPROVED`. Only
        # visible when your eligibilityStatus is WARNING. In [ISO 8601](https://en.
        # wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DD`.
        # Corresponds to the JSON property `disapprovalDate`
        # @return [String]
        attr_accessor :disapproval_date
      
        # Eligibility status of the standard free listing program.
        # Corresponds to the JSON property `eligibilityStatus`
        # @return [String]
        attr_accessor :eligibility_status
      
        # Issues that must be fixed to be eligible for review.
        # Corresponds to the JSON property `onboardingIssues`
        # @return [Array<String>]
        attr_accessor :onboarding_issues
      
        # The two-letter [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-
        # 1_alpha-2) codes for all the regions with the same `eligibilityStatus` and `
        # reviewEligibility`.
        # Corresponds to the JSON property `regionCodes`
        # @return [Array<String>]
        attr_accessor :region_codes
      
        # If a program is eligible for review in a specific region. Only visible if `
        # eligibilityStatus` is `DISAPPROVED`.
        # Corresponds to the JSON property `reviewEligibilityStatus`
        # @return [String]
        attr_accessor :review_eligibility_status
      
        # Review ineligibility reason if account is not eligible for review.
        # Corresponds to the JSON property `reviewIneligibilityReason`
        # @return [String]
        attr_accessor :review_ineligibility_reason
      
        # Reason a program in a specific region isn’t eligible for review. Only visible
        # if `reviewEligibilityStatus` is `INELIGIBLE`.
        # Corresponds to the JSON property `reviewIneligibilityReasonDescription`
        # @return [String]
        attr_accessor :review_ineligibility_reason_description
      
        # Additional details for review ineligibility reasons.
        # Corresponds to the JSON property `reviewIneligibilityReasonDetails`
        # @return [Google::Apis::ContentV2_1::FreeListingsProgramStatusReviewIneligibilityReasonDetails]
        attr_accessor :review_ineligibility_reason_details
      
        # Issues evaluated in the review process. Fix all issues before requesting a
        # review.
        # Corresponds to the JSON property `reviewIssues`
        # @return [Array<String>]
        attr_accessor :review_issues
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disapproval_date = args[:disapproval_date] if args.key?(:disapproval_date)
          @eligibility_status = args[:eligibility_status] if args.key?(:eligibility_status)
          @onboarding_issues = args[:onboarding_issues] if args.key?(:onboarding_issues)
          @region_codes = args[:region_codes] if args.key?(:region_codes)
          @review_eligibility_status = args[:review_eligibility_status] if args.key?(:review_eligibility_status)
          @review_ineligibility_reason = args[:review_ineligibility_reason] if args.key?(:review_ineligibility_reason)
          @review_ineligibility_reason_description = args[:review_ineligibility_reason_description] if args.key?(:review_ineligibility_reason_description)
          @review_ineligibility_reason_details = args[:review_ineligibility_reason_details] if args.key?(:review_ineligibility_reason_details)
          @review_issues = args[:review_issues] if args.key?(:review_issues)
        end
      end
      
      # Additional details for review ineligibility reasons.
      class FreeListingsProgramStatusReviewIneligibilityReasonDetails
        include Google::Apis::Core::Hashable
      
        # This timestamp represents end of cooldown period for review ineligbility
        # reason `IN_COOLDOWN_PERIOD`.
        # Corresponds to the JSON property `cooldownTime`
        # @return [String]
        attr_accessor :cooldown_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cooldown_time = args[:cooldown_time] if args.key?(:cooldown_time)
        end
      end
      
      # Conditions to be met for a product to have free shipping.
      class FreeShippingThreshold
        include Google::Apis::Core::Hashable
      
        # Required. The [CLDR territory code](http://www.unicode.org/repos/cldr/tags/
        # latest/common/main/en.xml) of the country to which an item will ship.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Required. The minimum product price for the shipping cost to become free.
        # Represented as a number.
        # Corresponds to the JSON property `priceThreshold`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @price_threshold = args[:price_threshold] if args.key?(:price_threshold)
        end
      end
      
      # Response containing generated recommendations.
      class GenerateRecommendationsResponse
        include Google::Apis::Core::Hashable
      
        # Recommendations generated for a request.
        # Corresponds to the JSON property `recommendations`
        # @return [Array<Google::Apis::ContentV2_1::Recommendation>]
        attr_accessor :recommendations
      
        # Output only. Response token is a string created for each `
        # GenerateRecommendationsResponse`. This token doesn't expire, and is globally
        # unique. This token must be used when reporting interactions for
        # recommendations.
        # Corresponds to the JSON property `responseToken`
        # @return [String]
        attr_accessor :response_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recommendations = args[:recommendations] if args.key?(:recommendations)
          @response_token = args[:response_token] if args.key?(:response_token)
        end
      end
      
      # 
      class GmbAccounts
        include Google::Apis::Core::Hashable
      
        # The ID of the Merchant Center account.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # A list of Business Profiles which are available to the merchant.
        # Corresponds to the JSON property `gmbAccounts`
        # @return [Array<Google::Apis::ContentV2_1::GmbAccountsGmbAccount>]
        attr_accessor :gmb_accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @gmb_accounts = args[:gmb_accounts] if args.key?(:gmb_accounts)
        end
      end
      
      # 
      class GmbAccountsGmbAccount
        include Google::Apis::Core::Hashable
      
        # The email which identifies the Business Profile.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Number of listings under this account.
        # Corresponds to the JSON property `listingCount`
        # @return [Fixnum]
        attr_accessor :listing_count
      
        # The name of the Business Profile.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of the Business Profile (User or Business).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @listing_count = args[:listing_count] if args.key?(:listing_count)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # "Google Analytics Link" sources can be used to get conversion data from an
      # existing Google Analytics property into the linked Merchant Center account.
      class GoogleAnalyticsLink
        include Google::Apis::Core::Hashable
      
        # Represents attribution settings for conversion sources receiving pre-
        # attribution data.
        # Corresponds to the JSON property `attributionSettings`
        # @return [Google::Apis::ContentV2_1::AttributionSettings]
        attr_accessor :attribution_settings
      
        # Required. Immutable. ID of the Google Analytics property the merchant is
        # linked to.
        # Corresponds to the JSON property `propertyId`
        # @return [Fixnum]
        attr_accessor :property_id
      
        # Output only. Name of the Google Analytics property the merchant is linked to.
        # Corresponds to the JSON property `propertyName`
        # @return [String]
        attr_accessor :property_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution_settings = args[:attribution_settings] if args.key?(:attribution_settings)
          @property_id = args[:property_id] if args.key?(:property_id)
          @property_name = args[:property_name] if args.key?(:property_name)
        end
      end
      
      # A non-empty list of row or column headers for a table. Exactly one of `prices`,
      # `weights`, `numItems`, `postalCodeGroupNames`, or `location` must be set.
      class Headers
        include Google::Apis::Core::Hashable
      
        # A list of location ID sets. Must be non-empty. Can only be set if all other
        # fields are not set.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ContentV2_1::LocationIdSet>]
        attr_accessor :locations
      
        # A list of inclusive number of items upper bounds. The last value can be `"
        # infinity"`. For example `["10", "50", "infinity"]` represents the headers "<=
        # 10 items", "<= 50 items", and "> 50 items". Must be non-empty. Can only be set
        # if all other fields are not set.
        # Corresponds to the JSON property `numberOfItems`
        # @return [Array<String>]
        attr_accessor :number_of_items
      
        # A list of postal group names. The last value can be `"all other locations"`.
        # Example: `["zone 1", "zone 2", "all other locations"]`. The referred postal
        # code groups must match the delivery country of the service. Must be non-empty.
        # Can only be set if all other fields are not set.
        # Corresponds to the JSON property `postalCodeGroupNames`
        # @return [Array<String>]
        attr_accessor :postal_code_group_names
      
        # A list of inclusive order price upper bounds. The last price's value can be `"
        # infinity"`. For example `[`"value": "10", "currency": "USD"`, `"value": "500",
        # "currency": "USD"`, `"value": "infinity", "currency": "USD"`]` represents the
        # headers "<= $10", "<= $500", and "> $500". All prices within a service must
        # have the same currency. Must be non-empty. Can only be set if all other fields
        # are not set.
        # Corresponds to the JSON property `prices`
        # @return [Array<Google::Apis::ContentV2_1::Price>]
        attr_accessor :prices
      
        # A list of inclusive order weight upper bounds. The last weight's value can be `
        # "infinity"`. For example `[`"value": "10", "unit": "kg"`, `"value": "50", "
        # unit": "kg"`, `"value": "infinity", "unit": "kg"`]` represents the headers "<=
        # 10kg", "<= 50kg", and "> 50kg". All weights within a service must have the
        # same unit. Must be non-empty. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `weights`
        # @return [Array<Google::Apis::ContentV2_1::Weight>]
        attr_accessor :weights
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @number_of_items = args[:number_of_items] if args.key?(:number_of_items)
          @postal_code_group_names = args[:postal_code_group_names] if args.key?(:postal_code_group_names)
          @prices = args[:prices] if args.key?(:prices)
          @weights = args[:weights] if args.key?(:weights)
        end
      end
      
      # 
      class HolidayCutoff
        include Google::Apis::Core::Hashable
      
        # Date of the order deadline, in ISO 8601 format. For example, "2016-11-29" for
        # 29th November 2016. Required.
        # Corresponds to the JSON property `deadlineDate`
        # @return [String]
        attr_accessor :deadline_date
      
        # Hour of the day on the deadline date until which the order has to be placed to
        # qualify for the delivery guarantee. Possible values are: 0 (midnight), 1, ...,
        # 12 (noon), 13, ..., 23. Required.
        # Corresponds to the JSON property `deadlineHour`
        # @return [Fixnum]
        attr_accessor :deadline_hour
      
        # Timezone identifier for the deadline hour (for example, "Europe/Zurich"). List
        # of identifiers. Required.
        # Corresponds to the JSON property `deadlineTimezone`
        # @return [String]
        attr_accessor :deadline_timezone
      
        # Unique identifier for the holiday. Required.
        # Corresponds to the JSON property `holidayId`
        # @return [String]
        attr_accessor :holiday_id
      
        # Date on which the deadline will become visible to consumers in ISO 8601 format.
        # For example, "2016-10-31" for 31st October 2016. Required.
        # Corresponds to the JSON property `visibleFromDate`
        # @return [String]
        attr_accessor :visible_from_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deadline_date = args[:deadline_date] if args.key?(:deadline_date)
          @deadline_hour = args[:deadline_hour] if args.key?(:deadline_hour)
          @deadline_timezone = args[:deadline_timezone] if args.key?(:deadline_timezone)
          @holiday_id = args[:holiday_id] if args.key?(:holiday_id)
          @visible_from_date = args[:visible_from_date] if args.key?(:visible_from_date)
        end
      end
      
      # 
      class HolidaysHoliday
        include Google::Apis::Core::Hashable
      
        # The CLDR territory code of the country in which the holiday is available. For
        # example, "US", "DE", "GB". A holiday cutoff can only be configured in a
        # shipping settings service with matching delivery country. Always present.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Date of the holiday, in ISO 8601 format. For example, "2016-12-25" for
        # Christmas 2016. Always present.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        # Date on which the order has to arrive at the customer's, in ISO 8601 format.
        # For example, "2016-12-24" for 24th December 2016. Always present.
        # Corresponds to the JSON property `deliveryGuaranteeDate`
        # @return [String]
        attr_accessor :delivery_guarantee_date
      
        # Hour of the day in the delivery location's timezone on the guaranteed delivery
        # date by which the order has to arrive at the customer's. Possible values are:
        # 0 (midnight), 1, ..., 12 (noon), 13, ..., 23. Always present.
        # Corresponds to the JSON property `deliveryGuaranteeHour`
        # @return [Fixnum]
        attr_accessor :delivery_guarantee_hour
      
        # Unique identifier for the holiday to be used when configuring holiday cutoffs.
        # Always present.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The holiday type. Always present. Acceptable values are: - "`Christmas`" - "`
        # Easter`" - "`Father's Day`" - "`Halloween`" - "`Independence Day (USA)`" - "`
        # Mother's Day`" - "`Thanksgiving`" - "`Valentine's Day`"
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @date = args[:date] if args.key?(:date)
          @delivery_guarantee_date = args[:delivery_guarantee_date] if args.key?(:delivery_guarantee_date)
          @delivery_guarantee_hour = args[:delivery_guarantee_hour] if args.key?(:delivery_guarantee_hour)
          @id = args[:id] if args.key?(:id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Input field that needs to be available to the merchant. If the field is marked
      # as required, then a value needs to be provided for a successful processing of
      # the request.
      class InputField
        include Google::Apis::Core::Hashable
      
        # Checkbox input allows merchants to provide a boolean value. Corresponds to the
        # [html input type=checkbox](https://www.w3.org/TR/2012/WD-html-markup-20121025/
        # input.checkbox.html#input.checkbox). If merchant checks the box, the input
        # value for the field is `true`, otherwise it is `false`. This type of input is
        # often used as a confirmation that the merchant completed required steps before
        # they are allowed to start the action. In such a case, the input field is
        # marked as required and the button to trigger the action should stay disabled
        # until the merchant checks the box.
        # Corresponds to the JSON property `checkboxInput`
        # @return [Google::Apis::ContentV2_1::InputFieldCheckboxInput]
        attr_accessor :checkbox_input
      
        # Choice input allows merchants to select one of the offered choices. Some
        # choices may be linked to additional input fields that should be displayed
        # under or next to the choice option. The value for the additional input field
        # needs to be provided only when the specific choice is selected by the merchant.
        # For example, additional input field can be hidden or disabled until the
        # merchant selects the specific choice.
        # Corresponds to the JSON property `choiceInput`
        # @return [Google::Apis::ContentV2_1::InputFieldChoiceInput]
        attr_accessor :choice_input
      
        # Not for display but need to be sent back for the given input field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Block of text that may contain a tooltip with more information.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::ContentV2_1::TextWithTooltip]
        attr_accessor :label
      
        # Whether the field is required. The action button needs to stay disabled till
        # values for all required fields are provided.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # Text input allows merchants to provide a text value.
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::ContentV2_1::InputFieldTextInput]
        attr_accessor :text_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checkbox_input = args[:checkbox_input] if args.key?(:checkbox_input)
          @choice_input = args[:choice_input] if args.key?(:choice_input)
          @id = args[:id] if args.key?(:id)
          @label = args[:label] if args.key?(:label)
          @required = args[:required] if args.key?(:required)
          @text_input = args[:text_input] if args.key?(:text_input)
        end
      end
      
      # Checkbox input allows merchants to provide a boolean value. Corresponds to the
      # [html input type=checkbox](https://www.w3.org/TR/2012/WD-html-markup-20121025/
      # input.checkbox.html#input.checkbox). If merchant checks the box, the input
      # value for the field is `true`, otherwise it is `false`. This type of input is
      # often used as a confirmation that the merchant completed required steps before
      # they are allowed to start the action. In such a case, the input field is
      # marked as required and the button to trigger the action should stay disabled
      # until the merchant checks the box.
      class InputFieldCheckboxInput
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Choice input allows merchants to select one of the offered choices. Some
      # choices may be linked to additional input fields that should be displayed
      # under or next to the choice option. The value for the additional input field
      # needs to be provided only when the specific choice is selected by the merchant.
      # For example, additional input field can be hidden or disabled until the
      # merchant selects the specific choice.
      class InputFieldChoiceInput
        include Google::Apis::Core::Hashable
      
        # A list of choices. Only one option can be selected.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::ContentV2_1::InputFieldChoiceInputChoiceInputOption>]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # A choice that merchant can select.
      class InputFieldChoiceInputChoiceInputOption
        include Google::Apis::Core::Hashable
      
        # Input field that needs to be available to the merchant. If the field is marked
        # as required, then a value needs to be provided for a successful processing of
        # the request.
        # Corresponds to the JSON property `additionalInput`
        # @return [Google::Apis::ContentV2_1::InputField]
        attr_accessor :additional_input
      
        # Not for display but need to be sent back for the selected choice option.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Block of text that may contain a tooltip with more information.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::ContentV2_1::TextWithTooltip]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_input = args[:additional_input] if args.key?(:additional_input)
          @id = args[:id] if args.key?(:id)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # Text input allows merchants to provide a text value.
      class InputFieldTextInput
        include Google::Apis::Core::Hashable
      
        # Block of text that may contain a tooltip with more information.
        # Corresponds to the JSON property `additionalInfo`
        # @return [Google::Apis::ContentV2_1::TextWithTooltip]
        attr_accessor :additional_info
      
        # Text to be used as the [aria-label](https://www.w3.org/TR/WCAG20-TECHS/ARIA14.
        # html) for the input.
        # Corresponds to the JSON property `ariaLabel`
        # @return [String]
        attr_accessor :aria_label
      
        # Information about the required format. If present, it should be shown close to
        # the input field to help merchants to provide a correct value. For example: "
        # VAT numbers should be in a format similar to SK9999999999"
        # Corresponds to the JSON property `formatInfo`
        # @return [String]
        attr_accessor :format_info
      
        # Type of the text input
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_info = args[:additional_info] if args.key?(:additional_info)
          @aria_label = args[:aria_label] if args.key?(:aria_label)
          @format_info = args[:format_info] if args.key?(:format_info)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Input provided by the merchant for input field.
      class InputValue
        include Google::Apis::Core::Hashable
      
        # Value for checkbox input field.
        # Corresponds to the JSON property `checkboxInputValue`
        # @return [Google::Apis::ContentV2_1::InputValueCheckboxInputValue]
        attr_accessor :checkbox_input_value
      
        # Value for choice input field.
        # Corresponds to the JSON property `choiceInputValue`
        # @return [Google::Apis::ContentV2_1::InputValueChoiceInputValue]
        attr_accessor :choice_input_value
      
        # Required. Id of the corresponding input field.
        # Corresponds to the JSON property `inputFieldId`
        # @return [String]
        attr_accessor :input_field_id
      
        # Value for text input field.
        # Corresponds to the JSON property `textInputValue`
        # @return [Google::Apis::ContentV2_1::InputValueTextInputValue]
        attr_accessor :text_input_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checkbox_input_value = args[:checkbox_input_value] if args.key?(:checkbox_input_value)
          @choice_input_value = args[:choice_input_value] if args.key?(:choice_input_value)
          @input_field_id = args[:input_field_id] if args.key?(:input_field_id)
          @text_input_value = args[:text_input_value] if args.key?(:text_input_value)
        end
      end
      
      # Value for checkbox input field.
      class InputValueCheckboxInputValue
        include Google::Apis::Core::Hashable
      
        # Required. True if the merchant checked the box field. False otherwise.
        # Corresponds to the JSON property `value`
        # @return [Boolean]
        attr_accessor :value
        alias_method :value?, :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Value for choice input field.
      class InputValueChoiceInputValue
        include Google::Apis::Core::Hashable
      
        # Required. Id of the option that was selected by the merchant.
        # Corresponds to the JSON property `choiceInputOptionId`
        # @return [String]
        attr_accessor :choice_input_option_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @choice_input_option_id = args[:choice_input_option_id] if args.key?(:choice_input_option_id)
        end
      end
      
      # Value for text input field.
      class InputValueTextInputValue
        include Google::Apis::Core::Hashable
      
        # Required. Text provided by the merchant.
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
      
      # Request message for the `InsertCheckoutSettings` method.
      class InsertCheckoutSettingsRequest
        include Google::Apis::Core::Hashable
      
        # Specifications related to the `Checkout` URL. The `UriTemplate` is of the form
        # `https://www.mystore.com/checkout?item_id=`id`` where ``id`` will be
        # automatically replaced with data from the merchant account with this attribute
        # [offer_id](https://developers.google.com/shopping-content/reference/rest/v2.1/
        # products#Product.FIELDS.offer_id)
        # Corresponds to the JSON property `uriSettings`
        # @return [Google::Apis::ContentV2_1::UrlSettings]
        attr_accessor :uri_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri_settings = args[:uri_settings] if args.key?(:uri_settings)
        end
      end
      
      # Details of a monthly installment payment offering. [Learn more](https://
      # support.google.com/merchants/answer/6324474) about installments.
      class Installment
        include Google::Apis::Core::Hashable
      
        # The amount the buyer has to pay per month.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :amount
      
        # Optional. Type of installment payments. Supported values are: - "`finance`" - "
        # `lease`"
        # Corresponds to the JSON property `creditType`
        # @return [String]
        attr_accessor :credit_type
      
        # Optional. The initial down payment amount the buyer has to pay.
        # Corresponds to the JSON property `downpayment`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :downpayment
      
        # The number of installments the buyer has to pay.
        # Corresponds to the JSON property `months`
        # @return [Fixnum]
        attr_accessor :months
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @credit_type = args[:credit_type] if args.key?(:credit_type)
          @downpayment = args[:downpayment] if args.key?(:downpayment)
          @months = args[:months] if args.key?(:months)
        end
      end
      
      # The IDs of labels that should be assigned to the CSS domain.
      class LabelIds
        include Google::Apis::Core::Hashable
      
        # The list of label IDs.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<Fixnum>]
        attr_accessor :label_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_ids = args[:label_ids] if args.key?(:label_ids)
        end
      end
      
      # 
      class LiaAboutPageSettings
        include Google::Apis::Core::Hashable
      
        # The status of the verification process for the About page. Supported values
        # are: - "`active`" - "`inactive`" - "`pending`"
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The URL for the About page.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class LiaCountrySettings
        include Google::Apis::Core::Hashable
      
        # The settings for the About page.
        # Corresponds to the JSON property `about`
        # @return [Google::Apis::ContentV2_1::LiaAboutPageSettings]
        attr_accessor :about
      
        # Required. CLDR country code (for example, "US").
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The status of the "Merchant hosted local storefront" feature.
        # Corresponds to the JSON property `hostedLocalStorefrontActive`
        # @return [Boolean]
        attr_accessor :hosted_local_storefront_active
        alias_method :hosted_local_storefront_active?, :hosted_local_storefront_active
      
        # LIA inventory verification settings.
        # Corresponds to the JSON property `inventory`
        # @return [Google::Apis::ContentV2_1::LiaInventorySettings]
        attr_accessor :inventory
      
        # Omnichannel experience details.
        # Corresponds to the JSON property `omnichannelExperience`
        # @return [Google::Apis::ContentV2_1::LiaOmnichannelExperience]
        attr_accessor :omnichannel_experience
      
        # LIA "On Display To Order" settings.
        # Corresponds to the JSON property `onDisplayToOrder`
        # @return [Google::Apis::ContentV2_1::LiaOnDisplayToOrderSettings]
        attr_accessor :on_display_to_order
      
        # The POS data provider linked with this country.
        # Corresponds to the JSON property `posDataProvider`
        # @return [Google::Apis::ContentV2_1::LiaPosDataProvider]
        attr_accessor :pos_data_provider
      
        # The status of the "Store pickup" feature.
        # Corresponds to the JSON property `storePickupActive`
        # @return [Boolean]
        attr_accessor :store_pickup_active
        alias_method :store_pickup_active?, :store_pickup_active
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @about = args[:about] if args.key?(:about)
          @country = args[:country] if args.key?(:country)
          @hosted_local_storefront_active = args[:hosted_local_storefront_active] if args.key?(:hosted_local_storefront_active)
          @inventory = args[:inventory] if args.key?(:inventory)
          @omnichannel_experience = args[:omnichannel_experience] if args.key?(:omnichannel_experience)
          @on_display_to_order = args[:on_display_to_order] if args.key?(:on_display_to_order)
          @pos_data_provider = args[:pos_data_provider] if args.key?(:pos_data_provider)
          @store_pickup_active = args[:store_pickup_active] if args.key?(:store_pickup_active)
        end
      end
      
      # 
      class LiaInventorySettings
        include Google::Apis::Core::Hashable
      
        # The email of the contact for the inventory verification process.
        # Corresponds to the JSON property `inventoryVerificationContactEmail`
        # @return [String]
        attr_accessor :inventory_verification_contact_email
      
        # The name of the contact for the inventory verification process.
        # Corresponds to the JSON property `inventoryVerificationContactName`
        # @return [String]
        attr_accessor :inventory_verification_contact_name
      
        # The status of the verification contact. Acceptable values are: - "`active`" - "
        # `inactive`" - "`pending`"
        # Corresponds to the JSON property `inventoryVerificationContactStatus`
        # @return [String]
        attr_accessor :inventory_verification_contact_status
      
        # The status of the inventory verification process. Acceptable values are: - "`
        # active`" - "`inactive`" - "`pending`"
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_verification_contact_email = args[:inventory_verification_contact_email] if args.key?(:inventory_verification_contact_email)
          @inventory_verification_contact_name = args[:inventory_verification_contact_name] if args.key?(:inventory_verification_contact_name)
          @inventory_verification_contact_status = args[:inventory_verification_contact_status] if args.key?(:inventory_verification_contact_status)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Omnichannel experience details.
      class LiaOmnichannelExperience
        include Google::Apis::Core::Hashable
      
        # The CLDR country code (for example, "US").
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The Local Store Front (LSF) type for this country. Acceptable values are: - "`
        # ghlsf`" (Google-Hosted Local Store Front) - "`mhlsfBasic`" (Merchant-Hosted
        # Local Store Front Basic) - "`mhlsfFull`" (Merchant-Hosted Local Store Front
        # Full) More details about these types can be found here.
        # Corresponds to the JSON property `lsfType`
        # @return [String]
        attr_accessor :lsf_type
      
        # The Pickup types for this country. Acceptable values are: - "`pickupToday`" - "
        # `pickupLater`"
        # Corresponds to the JSON property `pickupTypes`
        # @return [Array<String>]
        attr_accessor :pickup_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @lsf_type = args[:lsf_type] if args.key?(:lsf_type)
          @pickup_types = args[:pickup_types] if args.key?(:pickup_types)
        end
      end
      
      # 
      class LiaOnDisplayToOrderSettings
        include Google::Apis::Core::Hashable
      
        # Shipping cost and policy URL.
        # Corresponds to the JSON property `shippingCostPolicyUrl`
        # @return [String]
        attr_accessor :shipping_cost_policy_url
      
        # The status of the ?On display to order? feature. Acceptable values are: - "`
        # active`" - "`inactive`" - "`pending`"
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shipping_cost_policy_url = args[:shipping_cost_policy_url] if args.key?(:shipping_cost_policy_url)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class LiaPosDataProvider
        include Google::Apis::Core::Hashable
      
        # The ID of the POS data provider.
        # Corresponds to the JSON property `posDataProviderId`
        # @return [Fixnum]
        attr_accessor :pos_data_provider_id
      
        # The account ID by which this merchant is known to the POS data provider.
        # Corresponds to the JSON property `posExternalAccountId`
        # @return [String]
        attr_accessor :pos_external_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pos_data_provider_id = args[:pos_data_provider_id] if args.key?(:pos_data_provider_id)
          @pos_external_account_id = args[:pos_external_account_id] if args.key?(:pos_external_account_id)
        end
      end
      
      # Local Inventory ads (LIA) settings. All methods except listposdataproviders
      # require the admin role.
      class LiaSettings
        include Google::Apis::Core::Hashable
      
        # The ID of the account to which these LIA settings belong. Ignored upon update,
        # always present in get request responses.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # The LIA settings for each country.
        # Corresponds to the JSON property `countrySettings`
        # @return [Array<Google::Apis::ContentV2_1::LiaCountrySettings>]
        attr_accessor :country_settings
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liaSettings`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @country_settings = args[:country_settings] if args.key?(:country_settings)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::LiasettingsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # 
      class LiasettingsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which to get/update account LIA settings.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Inventory validation contact email. Required only for
        # SetInventoryValidationContact.
        # Corresponds to the JSON property `contactEmail`
        # @return [String]
        attr_accessor :contact_email
      
        # Inventory validation contact name. Required only for
        # SetInventoryValidationContact.
        # Corresponds to the JSON property `contactName`
        # @return [String]
        attr_accessor :contact_name
      
        # The country code. Required only for RequestInventoryVerification.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The Business Profile. Required only for RequestGmbAccess.
        # Corresponds to the JSON property `gmbEmail`
        # @return [String]
        attr_accessor :gmb_email
      
        # Local Inventory ads (LIA) settings. All methods except listposdataproviders
        # require the admin role.
        # Corresponds to the JSON property `liaSettings`
        # @return [Google::Apis::ContentV2_1::LiaSettings]
        attr_accessor :lia_settings
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`get`" - "`
        # getAccessibleGmbAccounts`" - "`requestGmbAccess`" - "`
        # requestInventoryVerification`" - "`setInventoryVerificationContact`" - "`
        # update`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Omnichannel experience details.
        # Corresponds to the JSON property `omnichannelExperience`
        # @return [Google::Apis::ContentV2_1::LiaOmnichannelExperience]
        attr_accessor :omnichannel_experience
      
        # The ID of POS data provider. Required only for SetPosProvider.
        # Corresponds to the JSON property `posDataProviderId`
        # @return [Fixnum]
        attr_accessor :pos_data_provider_id
      
        # The account ID by which this merchant is known to the POS provider.
        # Corresponds to the JSON property `posExternalAccountId`
        # @return [String]
        attr_accessor :pos_external_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @contact_email = args[:contact_email] if args.key?(:contact_email)
          @contact_name = args[:contact_name] if args.key?(:contact_name)
          @country = args[:country] if args.key?(:country)
          @gmb_email = args[:gmb_email] if args.key?(:gmb_email)
          @lia_settings = args[:lia_settings] if args.key?(:lia_settings)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @omnichannel_experience = args[:omnichannel_experience] if args.key?(:omnichannel_experience)
          @pos_data_provider_id = args[:pos_data_provider_id] if args.key?(:pos_data_provider_id)
          @pos_external_account_id = args[:pos_external_account_id] if args.key?(:pos_external_account_id)
        end
      end
      
      # 
      class LiasettingsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::LiasettingsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liasettingsCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry to which this entry responds.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # The list of accessible Business Profiles.
        # Corresponds to the JSON property `gmbAccounts`
        # @return [Google::Apis::ContentV2_1::GmbAccounts]
        attr_accessor :gmb_accounts
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liasettingsCustomBatchResponseEntry`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Local Inventory ads (LIA) settings. All methods except listposdataproviders
        # require the admin role.
        # Corresponds to the JSON property `liaSettings`
        # @return [Google::Apis::ContentV2_1::LiaSettings]
        attr_accessor :lia_settings
      
        # Omnichannel experience details.
        # Corresponds to the JSON property `omnichannelExperience`
        # @return [Google::Apis::ContentV2_1::LiaOmnichannelExperience]
        attr_accessor :omnichannel_experience
      
        # The list of POS data providers.
        # Corresponds to the JSON property `posDataProviders`
        # @return [Array<Google::Apis::ContentV2_1::PosDataProviders>]
        attr_accessor :pos_data_providers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @gmb_accounts = args[:gmb_accounts] if args.key?(:gmb_accounts)
          @kind = args[:kind] if args.key?(:kind)
          @lia_settings = args[:lia_settings] if args.key?(:lia_settings)
          @omnichannel_experience = args[:omnichannel_experience] if args.key?(:omnichannel_experience)
          @pos_data_providers = args[:pos_data_providers] if args.key?(:pos_data_providers)
        end
      end
      
      # 
      class LiasettingsGetAccessibleGmbAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The ID of the Merchant Center account.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # A list of Business Profiles which are available to the merchant.
        # Corresponds to the JSON property `gmbAccounts`
        # @return [Array<Google::Apis::ContentV2_1::GmbAccountsGmbAccount>]
        attr_accessor :gmb_accounts
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liasettingsGetAccessibleGmbAccountsResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @gmb_accounts = args[:gmb_accounts] if args.key?(:gmb_accounts)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsListPosDataProvidersResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liasettingsListPosDataProvidersResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list of POS data providers for each eligible country
        # Corresponds to the JSON property `posDataProviders`
        # @return [Array<Google::Apis::ContentV2_1::PosDataProviders>]
        attr_accessor :pos_data_providers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @pos_data_providers = args[:pos_data_providers] if args.key?(:pos_data_providers)
        end
      end
      
      # 
      class LiasettingsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liasettingsListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of LIA settings.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::LiaSettings>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class LiasettingsRequestGmbAccessResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liasettingsRequestGmbAccessResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsRequestInventoryVerificationResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liasettingsRequestInventoryVerificationResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsSetInventoryVerificationContactResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liasettingsSetInventoryVerificationContactResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsSetPosDataProviderResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # liasettingsSetPosDataProviderResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LinkService
        include Google::Apis::Core::Hashable
      
        # Service provided to or by the linked account. Acceptable values are: - "`
        # shoppingActionsOrderManagement`" - "`shoppingActionsProductManagement`" - "`
        # shoppingAdsProductManagement`" - "`paymentProcessing`"
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Status of the link Acceptable values are: - "`active`" - "`inactive`" - "`
        # pending`"
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class LinkedAccount
        include Google::Apis::Core::Hashable
      
        # The ID of the linked account.
        # Corresponds to the JSON property `linkedAccountId`
        # @return [String]
        attr_accessor :linked_account_id
      
        # List of provided services.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::ContentV2_1::LinkService>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linked_account_id = args[:linked_account_id] if args.key?(:linked_account_id)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # Response message for the `ListAccountLabels` method.
      class ListAccountLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The labels from the specified account.
        # Corresponds to the JSON property `accountLabels`
        # @return [Array<Google::Apis::ContentV2_1::AccountLabel>]
        attr_accessor :account_labels
      
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
          @account_labels = args[:account_labels] if args.key?(:account_labels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for listing account return carriers.
      class ListAccountReturnCarrierResponse
        include Google::Apis::Core::Hashable
      
        # List of all available account return carriers for the merchant.
        # Corresponds to the JSON property `accountReturnCarriers`
        # @return [Array<Google::Apis::ContentV2_1::AccountReturnCarrier>]
        attr_accessor :account_return_carriers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_return_carriers = args[:account_return_carriers] if args.key?(:account_return_carriers)
        end
      end
      
      # Response message for the ListCollectionStatuses method.
      class ListCollectionStatusesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The collectionstatuses listed.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::CollectionStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Response message for the ListCollections method.
      class ListCollectionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The collections listed.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::Collection>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Response message for the ListConversionSources method.
      class ListConversionSourcesResponse
        include Google::Apis::Core::Hashable
      
        # List of conversion sources.
        # Corresponds to the JSON property `conversionSources`
        # @return [Array<Google::Apis::ContentV2_1::ConversionSource>]
        attr_accessor :conversion_sources
      
        # Token to be used to fetch the next results page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversion_sources = args[:conversion_sources] if args.key?(:conversion_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for the `ListCsses` method
      class ListCssesResponse
        include Google::Apis::Core::Hashable
      
        # The CSS domains affiliated with the specified CSS group.
        # Corresponds to the JSON property `csses`
        # @return [Array<Google::Apis::ContentV2_1::Css>]
        attr_accessor :csses
      
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
          @csses = args[:csses] if args.key?(:csses)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the ListMethodQuotas method.
      class ListMethodQuotasResponse
        include Google::Apis::Core::Hashable
      
        # The current quota usage and limits per each method.
        # Corresponds to the JSON property `methodQuotas`
        # @return [Array<Google::Apis::ContentV2_1::MethodQuota>]
        attr_accessor :method_quotas
      
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
          @method_quotas = args[:method_quotas] if args.key?(:method_quotas)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for Promotions.List method.
      class ListPromotionResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of all available promotions for the merchant.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::ContentV2_1::Promotion>]
        attr_accessor :promotions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @promotions = args[:promotions] if args.key?(:promotions)
        end
      end
      
      # Response message for the `ListRegions` method.
      class ListRegionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The regions from the specified merchant.
        # Corresponds to the JSON property `regions`
        # @return [Array<Google::Apis::ContentV2_1::Region>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Response message for the `ListReturnPolicyOnline` method.
      class ListReturnPolicyOnlineResponse
        include Google::Apis::Core::Hashable
      
        # The retrieved return policies.
        # Corresponds to the JSON property `returnPolicies`
        # @return [Array<Google::Apis::ContentV2_1::ReturnPolicyOnline>]
        attr_accessor :return_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @return_policies = args[:return_policies] if args.key?(:return_policies)
        end
      end
      
      # Local inventory resource. For accepted attribute values, see the local product
      # inventory feed specification.
      class LocalInventory
        include Google::Apis::Core::Hashable
      
        # The availability of the product. For accepted attribute values, see the local
        # product inventory feed specification.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # A list of custom (merchant-provided) attributes. Can also be used to submit
        # any attribute of the feed specification in its generic form, for example, `` "
        # name": "size type", "value": "regular" ``.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::ContentV2_1::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # The in-store product location.
        # Corresponds to the JSON property `instoreProductLocation`
        # @return [String]
        attr_accessor :instore_product_location
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # localInventory`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The supported pickup method for this offer. Unless the value is "not supported"
        # , this field must be submitted together with `pickupSla`. For accepted
        # attribute values, see the local product inventory feed specification.
        # Corresponds to the JSON property `pickupMethod`
        # @return [String]
        attr_accessor :pickup_method
      
        # The expected date that an order will be ready for pickup relative to the order
        # date. Must be submitted together with `pickupMethod`. For accepted attribute
        # values, see the local product inventory feed specification.
        # Corresponds to the JSON property `pickupSla`
        # @return [String]
        attr_accessor :pickup_sla
      
        # The price of the product.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The quantity of the product. Must be nonnegative.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The sale price of the product. Mandatory if `sale_price_effective_date` is
        # defined.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :sale_price
      
        # A date range represented by a pair of ISO 8601 dates separated by a space,
        # comma, or slash. Both dates may be specified as 'null' if undecided.
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [String]
        attr_accessor :sale_price_effective_date
      
        # Required. The store code of this local inventory resource.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] if args.key?(:availability)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @instore_product_location = args[:instore_product_location] if args.key?(:instore_product_location)
          @kind = args[:kind] if args.key?(:kind)
          @pickup_method = args[:pickup_method] if args.key?(:pickup_method)
          @pickup_sla = args[:pickup_sla] if args.key?(:pickup_sla)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @sale_price = args[:sale_price] if args.key?(:sale_price)
          @sale_price_effective_date = args[:sale_price_effective_date] if args.key?(:sale_price_effective_date)
          @store_code = args[:store_code] if args.key?(:store_code)
        end
      end
      
      # 
      class LocalinventoryCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::LocalinventoryCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Batch entry encoding a single local inventory update request.
      class LocalinventoryCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Local inventory resource. For accepted attribute values, see the local product
        # inventory feed specification.
        # Corresponds to the JSON property `localInventory`
        # @return [Google::Apis::ContentV2_1::LocalInventory]
        attr_accessor :local_inventory
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Method of the batch request entry. Acceptable values are: - "`insert`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The ID of the product for which to update local inventory.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @local_inventory = args[:local_inventory] if args.key?(:local_inventory)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # 
      class LocalinventoryCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::LocalinventoryCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # localinventoryCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Batch entry encoding a single local inventory update response.
      class LocalinventoryCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # localinventoryCustomBatchResponseEntry`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LocationIdSet
        include Google::Apis::Core::Hashable
      
        # A non-empty list of location IDs. They must all be of the same location type (
        # for example, state).
        # Corresponds to the JSON property `locationIds`
        # @return [Array<String>]
        attr_accessor :location_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_ids = args[:location_ids] if args.key?(:location_ids)
        end
      end
      
      # Allows the setting up of loyalty program benefits (for example price or points)
      # . https://support.google.com/merchants/answer/12922446
      class LoyaltyProgram
        include Google::Apis::Core::Hashable
      
        # Optional. The cashback that can be used for future purchases.
        # Corresponds to the JSON property `cashbackForFutureUse`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :cashback_for_future_use
      
        # Optional. The amount of loyalty points earned on a purchase.
        # Corresponds to the JSON property `loyaltyPoints`
        # @return [Fixnum]
        attr_accessor :loyalty_points
      
        # Optional. A date range during which the item is eligible for member price. If
        # not specified, the member price is always applicable. The date range is
        # represented by a pair of ISO 8601 dates separated by a space, comma, or slash.
        # Corresponds to the JSON property `memberPriceEffectiveDate`
        # @return [String]
        attr_accessor :member_price_effective_date
      
        # Optional. The price for members of the given tier (instant discount price).
        # Must be smaller or equal to the regular price.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Required. The label of the loyalty program. This is an internal label that
        # uniquely identifies the relationship between a merchant entity and a loyalty
        # program entity. It must be provided so that system can associate the assets
        # below (for example, price and points) with a merchant. The corresponding
        # program must be linked to the merchant account.
        # Corresponds to the JSON property `programLabel`
        # @return [String]
        attr_accessor :program_label
      
        # Optional. The shipping label for the loyalty program. You can use this label
        # to indicate whether this offer has the loyalty shipping benefit. If not
        # specified, the item is not eligible for loyalty shipping for the given loyalty
        # tier.
        # Corresponds to the JSON property `shippingLabel`
        # @return [String]
        attr_accessor :shipping_label
      
        # Required. The label of the tier within the loyalty program. Must match one of
        # the labels within the program.
        # Corresponds to the JSON property `tierLabel`
        # @return [String]
        attr_accessor :tier_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cashback_for_future_use = args[:cashback_for_future_use] if args.key?(:cashback_for_future_use)
          @loyalty_points = args[:loyalty_points] if args.key?(:loyalty_points)
          @member_price_effective_date = args[:member_price_effective_date] if args.key?(:member_price_effective_date)
          @price = args[:price] if args.key?(:price)
          @program_label = args[:program_label] if args.key?(:program_label)
          @shipping_label = args[:shipping_label] if args.key?(:shipping_label)
          @tier_label = args[:tier_label] if args.key?(:tier_label)
        end
      end
      
      # "Merchant Center Destination" sources can be used to send conversion events
      # from a website using a Google tag directly to a Merchant Center account where
      # the source is created.
      class MerchantCenterDestination
        include Google::Apis::Core::Hashable
      
        # Represents attribution settings for conversion sources receiving pre-
        # attribution data.
        # Corresponds to the JSON property `attributionSettings`
        # @return [Google::Apis::ContentV2_1::AttributionSettings]
        attr_accessor :attribution_settings
      
        # Required. Three-letter currency code (ISO 4217). The currency code defines in
        # which currency the conversions sent to this destination will be reported in
        # Merchant Center.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Output only. Merchant Center Destination ID.
        # Corresponds to the JSON property `destinationId`
        # @return [String]
        attr_accessor :destination_id
      
        # Required. Merchant-specified display name for the destination. This is the
        # name that identifies the conversion source within the Merchant Center UI.
        # Limited to 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution_settings = args[:attribution_settings] if args.key?(:attribution_settings)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @destination_id = args[:destination_id] if args.key?(:destination_id)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # The quota information per method in the Content API.
      class MethodQuota
        include Google::Apis::Core::Hashable
      
        # Output only. The method name, for example `products.list`. Method name does
        # not contain version because quota can be shared between different API versions
        # of the same method.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Output only. The maximum number of calls allowed per day for the method.
        # Corresponds to the JSON property `quotaLimit`
        # @return [Fixnum]
        attr_accessor :quota_limit
      
        # Output only. The maximum number of calls allowed per minute for the method.
        # Corresponds to the JSON property `quotaMinuteLimit`
        # @return [Fixnum]
        attr_accessor :quota_minute_limit
      
        # Output only. The current quota usage, meaning the number of calls already made
        # to the method per day. Usage is reset every day at 12 PM midday UTC.
        # Corresponds to the JSON property `quotaUsage`
        # @return [Fixnum]
        attr_accessor :quota_usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @quota_limit = args[:quota_limit] if args.key?(:quota_limit)
          @quota_minute_limit = args[:quota_minute_limit] if args.key?(:quota_minute_limit)
          @quota_usage = args[:quota_usage] if args.key?(:quota_usage)
        end
      end
      
      # Performance metrics. Values are only set for metrics requested explicitly in
      # the request's search query.
      class Metrics
        include Google::Apis::Core::Hashable
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Average order size - the average number of items in an
        # order. **This metric cannot be segmented by product dimensions and
        # customer_country_code.**
        # Corresponds to the JSON property `aos`
        # @return [Float]
        attr_accessor :aos
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Average order value in micros (1 millionth of a
        # standard unit, 1 USD = 1000000 micros) - the average value (total price of
        # items) of all placed orders. The currency of the returned value is stored in
        # the currency_code segment. If this metric is selected, 'segments.currency_code'
        # is automatically added to the SELECT clause in the search query (unless it is
        # explicitly selected by the user) and the currency_code segment is populated in
        # the response. **This metric cannot be segmented by product dimensions and
        # customer_country_code.**
        # Corresponds to the JSON property `aovMicros`
        # @return [Float]
        attr_accessor :aov_micros
      
        # Number of clicks.
        # Corresponds to the JSON property `clicks`
        # @return [Fixnum]
        attr_accessor :clicks
      
        # Number of conversions divided by the number of clicks, reported on the
        # impression date. The metric is currently available only for the `
        # FREE_PRODUCT_LISTING` program.
        # Corresponds to the JSON property `conversionRate`
        # @return [Float]
        attr_accessor :conversion_rate
      
        # Value of conversions in micros (1 millionth of a standard unit, 1 USD =
        # 1000000 micros) attributed to the product, reported on the conversion date.
        # The metric is currently available only for the `FREE_PRODUCT_LISTING` program.
        # The currency of the returned value is stored in the currency_code segment. If
        # this metric is selected, 'segments.currency_code' is automatically added to
        # the SELECT clause in the search query (unless it is explicitly selected by the
        # user) and the currency_code segment is populated in the response.
        # Corresponds to the JSON property `conversionValueMicros`
        # @return [Fixnum]
        attr_accessor :conversion_value_micros
      
        # Number of conversions attributed to the product, reported on the conversion
        # date. Depending on the attribution model, a conversion might be distributed
        # across multiple clicks, where each click gets its own credit assigned. This
        # metric is a sum of all such credits. The metric is currently available only
        # for the `FREE_PRODUCT_LISTING` program.
        # Corresponds to the JSON property `conversions`
        # @return [Float]
        attr_accessor :conversions
      
        # Click-through rate - the number of clicks merchant's products receive (clicks)
        # divided by the number of times the products are shown (impressions).
        # Corresponds to the JSON property `ctr`
        # @return [Float]
        attr_accessor :ctr
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Average number of days between an order being placed
        # and the order being fully shipped, reported on the last shipment date. **This
        # metric cannot be segmented by product dimensions and customer_country_code.**
        # Corresponds to the JSON property `daysToShip`
        # @return [Float]
        attr_accessor :days_to_ship
      
        # Number of times merchant's products are shown.
        # Corresponds to the JSON property `impressions`
        # @return [Fixnum]
        attr_accessor :impressions
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Average number of days between an item being ordered
        # and the item being **This metric cannot be segmented by customer_country_code.*
        # *
        # Corresponds to the JSON property `itemDaysToShip`
        # @return [Float]
        attr_accessor :item_days_to_ship
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Percentage of shipped items in relation to all
        # finalized items (shipped or rejected by the merchant; unshipped items are not
        # taken into account), reported on the order date. Item fill rate is lowered by
        # merchant rejections. **This metric cannot be segmented by
        # customer_country_code.**
        # Corresponds to the JSON property `itemFillRate`
        # @return [Float]
        attr_accessor :item_fill_rate
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Total price of ordered items in micros (1 millionth of
        # a standard unit, 1 USD = 1000000 micros). Excludes shipping, taxes (US only),
        # and customer cancellations that happened within 30 minutes of placing the
        # order. The currency of the returned value is stored in the currency_code
        # segment. If this metric is selected, 'segments.currency_code' is automatically
        # added to the SELECT clause in the search query (unless it is explicitly
        # selected by the user) and the currency_code segment is populated in the
        # response. **This metric cannot be segmented by customer_country_code.**
        # Corresponds to the JSON property `orderedItemSalesMicros`
        # @return [Fixnum]
        attr_accessor :ordered_item_sales_micros
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Number of ordered items. Excludes customer
        # cancellations that happened within 30 minutes of placing the order. **This
        # metric cannot be segmented by customer_country_code.**
        # Corresponds to the JSON property `orderedItems`
        # @return [Fixnum]
        attr_accessor :ordered_items
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Number of placed orders. Excludes customer
        # cancellations that happened within 30 minutes of placing the order. **This
        # metric cannot be segmented by product dimensions and customer_country_code.**
        # Corresponds to the JSON property `orders`
        # @return [Fixnum]
        attr_accessor :orders
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Number of ordered items canceled by the merchant,
        # reported on the order date. **This metric cannot be segmented by
        # customer_country_code.**
        # Corresponds to the JSON property `rejectedItems`
        # @return [Fixnum]
        attr_accessor :rejected_items
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Total price of returned items divided by the total
        # price of shipped items, reported on the order date. If this metric is selected,
        # 'segments.currency_code' is automatically added to the SELECT clause in the
        # search query (unless it is explicitly selected by the user) and the
        # currency_code segment is populated in the response. **This metric cannot be
        # segmented by customer_country_code.**
        # Corresponds to the JSON property `returnRate`
        # @return [Float]
        attr_accessor :return_rate
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Number of ordered items sent back for return, reported
        # on the date when the merchant accepted the return. **This metric cannot be
        # segmented by customer_country_code.**
        # Corresponds to the JSON property `returnedItems`
        # @return [Fixnum]
        attr_accessor :returned_items
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Total price of ordered items sent back for return in
        # micros (1 millionth of a standard unit, 1 USD = 1000000 micros), reported on
        # the date when the merchant accepted the return. The currency of the returned
        # value is stored in the currency_code segment. If this metric is selected, '
        # segments.currency_code' is automatically added to the SELECT clause in the
        # search query (unless it is explicitly selected by the user) and the
        # currency_code segment is populated in the response. **This metric cannot be
        # segmented by customer_country_code.**
        # Corresponds to the JSON property `returnsMicros`
        # @return [Fixnum]
        attr_accessor :returns_micros
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Total price of shipped items in micros (1 millionth of
        # a standard unit, 1 USD = 1000000 micros), reported on the order date. Excludes
        # shipping and taxes (US only). The currency of the returned value is stored in
        # the currency_code segment. If this metric is selected, 'segments.currency_code'
        # is automatically added to the SELECT clause in the search query (unless it is
        # explicitly selected by the user) and the currency_code segment is populated in
        # the response. **This metric cannot be segmented by customer_country_code.**
        # Corresponds to the JSON property `shippedItemSalesMicros`
        # @return [Fixnum]
        attr_accessor :shipped_item_sales_micros
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Number of shipped items, reported on the shipment date.
        # **This metric cannot be segmented by customer_country_code.**
        # Corresponds to the JSON property `shippedItems`
        # @return [Fixnum]
        attr_accessor :shipped_items
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Number of fully shipped orders, reported on the last
        # shipment date. **This metric cannot be segmented by product dimensions and
        # customer_country_code.**
        # Corresponds to the JSON property `shippedOrders`
        # @return [Fixnum]
        attr_accessor :shipped_orders
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Number of ordered items not shipped up until the end
        # of the queried day. If a multi-day period is specified in the search query,
        # the returned value is the average number of unshipped items over the days in
        # the queried period. **This metric cannot be segmented by customer_country_code.
        # **
        # Corresponds to the JSON property `unshippedItems`
        # @return [Float]
        attr_accessor :unshipped_items
      
        # *Deprecated*: This field is no longer supported and retrieving it returns 0
        # starting from May 2024. Number of orders not shipped or partially shipped up
        # until the end of the queried day. If a multi-day period is specified in the
        # search query, the returned value is the average number of unshipped orders
        # over the days in the queried period. **This metric cannot be segmented by
        # product dimensions and customer_country_code.**
        # Corresponds to the JSON property `unshippedOrders`
        # @return [Float]
        attr_accessor :unshipped_orders
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aos = args[:aos] if args.key?(:aos)
          @aov_micros = args[:aov_micros] if args.key?(:aov_micros)
          @clicks = args[:clicks] if args.key?(:clicks)
          @conversion_rate = args[:conversion_rate] if args.key?(:conversion_rate)
          @conversion_value_micros = args[:conversion_value_micros] if args.key?(:conversion_value_micros)
          @conversions = args[:conversions] if args.key?(:conversions)
          @ctr = args[:ctr] if args.key?(:ctr)
          @days_to_ship = args[:days_to_ship] if args.key?(:days_to_ship)
          @impressions = args[:impressions] if args.key?(:impressions)
          @item_days_to_ship = args[:item_days_to_ship] if args.key?(:item_days_to_ship)
          @item_fill_rate = args[:item_fill_rate] if args.key?(:item_fill_rate)
          @ordered_item_sales_micros = args[:ordered_item_sales_micros] if args.key?(:ordered_item_sales_micros)
          @ordered_items = args[:ordered_items] if args.key?(:ordered_items)
          @orders = args[:orders] if args.key?(:orders)
          @rejected_items = args[:rejected_items] if args.key?(:rejected_items)
          @return_rate = args[:return_rate] if args.key?(:return_rate)
          @returned_items = args[:returned_items] if args.key?(:returned_items)
          @returns_micros = args[:returns_micros] if args.key?(:returns_micros)
          @shipped_item_sales_micros = args[:shipped_item_sales_micros] if args.key?(:shipped_item_sales_micros)
          @shipped_items = args[:shipped_items] if args.key?(:shipped_items)
          @shipped_orders = args[:shipped_orders] if args.key?(:shipped_orders)
          @unshipped_items = args[:unshipped_items] if args.key?(:unshipped_items)
          @unshipped_orders = args[:unshipped_orders] if args.key?(:unshipped_orders)
        end
      end
      
      # 
      class MinimumOrderValueTable
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `storeCodeSetWithMovs`
        # @return [Array<Google::Apis::ContentV2_1::MinimumOrderValueTableStoreCodeSetWithMov>]
        attr_accessor :store_code_set_with_movs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @store_code_set_with_movs = args[:store_code_set_with_movs] if args.key?(:store_code_set_with_movs)
        end
      end
      
      # A list of store code sets sharing the same minimum order value. At least two
      # sets are required and the last one must be empty, which signifies 'MOV for all
      # other stores'. Each store code can only appear once across all the sets. All
      # prices within a service must have the same currency.
      class MinimumOrderValueTableStoreCodeSetWithMov
        include Google::Apis::Core::Hashable
      
        # A list of unique store codes or empty for the catch all.
        # Corresponds to the JSON property `storeCodes`
        # @return [Array<String>]
        attr_accessor :store_codes
      
        # The minimum order value for the given stores.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @store_codes = args[:store_codes] if args.key?(:store_codes)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents a merchant trade from which signals are extracted, e.g. shipping.
      class OrderTrackingSignal
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `customerShippingFee`
        # @return [Google::Apis::ContentV2_1::PriceAmount]
        attr_accessor :customer_shipping_fee
      
        # Required. The delivery postal code, as a continuous string without spaces or
        # dashes, e.g. "95016". This field will be anonymized in returned
        # OrderTrackingSignal creation response.
        # Corresponds to the JSON property `deliveryPostalCode`
        # @return [String]
        attr_accessor :delivery_postal_code
      
        # Required. The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/
        # latest/common/main/en.xml) for the shipping destination.
        # Corresponds to the JSON property `deliveryRegionCode`
        # @return [String]
        attr_accessor :delivery_region_code
      
        # Information about line items in the order.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2_1::OrderTrackingSignalLineItemDetails>]
        attr_accessor :line_items
      
        # The Google merchant ID of this order tracking signal. This value is optional.
        # If left unset, the caller's merchant ID is used. You must request access in
        # order to provide data on behalf of another merchant. For more information, see
        # [Submitting Order Tracking Signals](/shopping-content/guides/order-tracking-
        # signals).
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `orderCreatedTime`
        # @return [Google::Apis::ContentV2_1::DateTime]
        attr_accessor :order_created_time
      
        # Required. The ID of the order on the merchant side. This field will be hashed
        # in returned OrderTrackingSignal creation response.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # Output only. The ID that uniquely identifies this order tracking signal.
        # Corresponds to the JSON property `orderTrackingSignalId`
        # @return [Fixnum]
        attr_accessor :order_tracking_signal_id
      
        # The mapping of the line items to the shipment information.
        # Corresponds to the JSON property `shipmentLineItemMapping`
        # @return [Array<Google::Apis::ContentV2_1::OrderTrackingSignalShipmentLineItemMapping>]
        attr_accessor :shipment_line_item_mapping
      
        # The shipping information for the order.
        # Corresponds to the JSON property `shippingInfo`
        # @return [Array<Google::Apis::ContentV2_1::OrderTrackingSignalShippingInfo>]
        attr_accessor :shipping_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_shipping_fee = args[:customer_shipping_fee] if args.key?(:customer_shipping_fee)
          @delivery_postal_code = args[:delivery_postal_code] if args.key?(:delivery_postal_code)
          @delivery_region_code = args[:delivery_region_code] if args.key?(:delivery_region_code)
          @line_items = args[:line_items] if args.key?(:line_items)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @order_created_time = args[:order_created_time] if args.key?(:order_created_time)
          @order_id = args[:order_id] if args.key?(:order_id)
          @order_tracking_signal_id = args[:order_tracking_signal_id] if args.key?(:order_tracking_signal_id)
          @shipment_line_item_mapping = args[:shipment_line_item_mapping] if args.key?(:shipment_line_item_mapping)
          @shipping_info = args[:shipping_info] if args.key?(:shipping_info)
        end
      end
      
      # The line items of the order.
      class OrderTrackingSignalLineItemDetails
        include Google::Apis::Core::Hashable
      
        # Brand of the product.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # The Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Required. The ID for this line item.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The manufacturer part number.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # Plain text description of this product (deprecated: Please use product_title
        # instead).
        # Corresponds to the JSON property `productDescription`
        # @return [String]
        attr_accessor :product_description
      
        # Required. The Content API REST ID of the product, in the form channel:
        # contentLanguage:targetCountry:offerId.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Plain text title of this product.
        # Corresponds to the JSON property `productTitle`
        # @return [String]
        attr_accessor :product_title
      
        # The quantity of the line item in the order.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Merchant SKU for this item (deprecated).
        # Corresponds to the JSON property `sku`
        # @return [String]
        attr_accessor :sku
      
        # Universal product code for this item (deprecated: Please use GTIN instead).
        # Corresponds to the JSON property `upc`
        # @return [String]
        attr_accessor :upc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @gtin = args[:gtin] if args.key?(:gtin)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @mpn = args[:mpn] if args.key?(:mpn)
          @product_description = args[:product_description] if args.key?(:product_description)
          @product_id = args[:product_id] if args.key?(:product_id)
          @product_title = args[:product_title] if args.key?(:product_title)
          @quantity = args[:quantity] if args.key?(:quantity)
          @sku = args[:sku] if args.key?(:sku)
          @upc = args[:upc] if args.key?(:upc)
        end
      end
      
      # Represents how many items are in the shipment for the given shipment_id and
      # line_item_id.
      class OrderTrackingSignalShipmentLineItemMapping
        include Google::Apis::Core::Hashable
      
        # Required. The line item ID.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The line item quantity in the shipment.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Required. The shipment ID. This field will be hashed in returned
        # OrderTrackingSignal creation response.
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
        end
      end
      
      # The shipping information for the order.
      class OrderTrackingSignalShippingInfo
        include Google::Apis::Core::Hashable
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `actualDeliveryTime`
        # @return [Google::Apis::ContentV2_1::DateTime]
        attr_accessor :actual_delivery_time
      
        # The name of the shipping carrier for the delivery. This field is required if
        # one of the following fields is absent: earliest_delivery_promise_time,
        # latest_delivery_promise_time, and actual_delivery_time.
        # Corresponds to the JSON property `carrierName`
        # @return [String]
        attr_accessor :carrier_name
      
        # The service type for fulfillment, e.g., GROUND, FIRST_CLASS, etc.
        # Corresponds to the JSON property `carrierServiceName`
        # @return [String]
        attr_accessor :carrier_service_name
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `earliestDeliveryPromiseTime`
        # @return [Google::Apis::ContentV2_1::DateTime]
        attr_accessor :earliest_delivery_promise_time
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `latestDeliveryPromiseTime`
        # @return [Google::Apis::ContentV2_1::DateTime]
        attr_accessor :latest_delivery_promise_time
      
        # The origin postal code, as a continuous string without spaces or dashes, e.g. "
        # 95016". This field will be anonymized in returned OrderTrackingSignal creation
        # response.
        # Corresponds to the JSON property `originPostalCode`
        # @return [String]
        attr_accessor :origin_postal_code
      
        # The [CLDR territory code] (http://www.unicode.org/repos/cldr/tags/latest/
        # common/main/en.xml) for the shipping origin.
        # Corresponds to the JSON property `originRegionCode`
        # @return [String]
        attr_accessor :origin_region_code
      
        # Required. The shipment ID. This field will be hashed in returned
        # OrderTrackingSignal creation response.
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `shippedTime`
        # @return [Google::Apis::ContentV2_1::DateTime]
        attr_accessor :shipped_time
      
        # The status of the shipment.
        # Corresponds to the JSON property `shippingStatus`
        # @return [String]
        attr_accessor :shipping_status
      
        # The tracking ID of the shipment. This field is required if one of the
        # following fields is absent: earliest_delivery_promise_time,
        # latest_delivery_promise_time, and actual_delivery_time.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actual_delivery_time = args[:actual_delivery_time] if args.key?(:actual_delivery_time)
          @carrier_name = args[:carrier_name] if args.key?(:carrier_name)
          @carrier_service_name = args[:carrier_service_name] if args.key?(:carrier_service_name)
          @earliest_delivery_promise_time = args[:earliest_delivery_promise_time] if args.key?(:earliest_delivery_promise_time)
          @latest_delivery_promise_time = args[:latest_delivery_promise_time] if args.key?(:latest_delivery_promise_time)
          @origin_postal_code = args[:origin_postal_code] if args.key?(:origin_postal_code)
          @origin_region_code = args[:origin_region_code] if args.key?(:origin_region_code)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
          @shipped_time = args[:shipped_time] if args.key?(:shipped_time)
          @shipping_status = args[:shipping_status] if args.key?(:shipping_status)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # Additional information required for PAYMENT_SERVICE_PROVIDER link type.
      class PaymentServiceProviderLinkInfo
        include Google::Apis::Core::Hashable
      
        # The business country of the merchant account as identified by the third party
        # service provider.
        # Corresponds to the JSON property `externalAccountBusinessCountry`
        # @return [String]
        attr_accessor :external_account_business_country
      
        # The id used by the third party service provider to identify the merchant.
        # Corresponds to the JSON property `externalAccountId`
        # @return [String]
        attr_accessor :external_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_account_business_country = args[:external_account_business_country] if args.key?(:external_account_business_country)
          @external_account_id = args[:external_account_id] if args.key?(:external_account_id)
        end
      end
      
      # 
      class PickupCarrierService
        include Google::Apis::Core::Hashable
      
        # The name of the pickup carrier (for example, `"UPS"`). Required.
        # Corresponds to the JSON property `carrierName`
        # @return [String]
        attr_accessor :carrier_name
      
        # The name of the pickup service (for example, `"Access point"`). Required.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier_name = args[:carrier_name] if args.key?(:carrier_name)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # 
      class PickupServicesPickupService
        include Google::Apis::Core::Hashable
      
        # The name of the carrier (for example, `"UPS"`). Always present.
        # Corresponds to the JSON property `carrierName`
        # @return [String]
        attr_accessor :carrier_name
      
        # The CLDR country code of the carrier (for example, "US"). Always present.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The name of the pickup service (for example, `"Access point"`). Always present.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier_name = args[:carrier_name] if args.key?(:carrier_name)
          @country = args[:country] if args.key?(:country)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # 
      class PosCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::PosCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # 
      class PosCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The absolute quantity of an item available at the given store.
        # Corresponds to the JSON property `inventory`
        # @return [Google::Apis::ContentV2_1::PosInventory]
        attr_accessor :inventory
      
        # The ID of the POS data provider.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`delete`" - "`get`" -
        # "`insert`" - "`inventory`" - "`sale`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The change of the available quantity of an item at the given store.
        # Corresponds to the JSON property `sale`
        # @return [Google::Apis::ContentV2_1::PosSale]
        attr_accessor :sale
      
        # Store resource.
        # Corresponds to the JSON property `store`
        # @return [Google::Apis::ContentV2_1::PosStore]
        attr_accessor :store
      
        # The store code. This should be set only if the method is `delete` or `get`.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # The ID of the account for which to get/submit data.
        # Corresponds to the JSON property `targetMerchantId`
        # @return [Fixnum]
        attr_accessor :target_merchant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @inventory = args[:inventory] if args.key?(:inventory)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @sale = args[:sale] if args.key?(:sale)
          @store = args[:store] if args.key?(:store)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_merchant_id = args[:target_merchant_id] if args.key?(:target_merchant_id)
        end
      end
      
      # 
      class PosCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::PosCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # posCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class PosCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry to which this entry responds.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # The absolute quantity of an item available at the given store.
        # Corresponds to the JSON property `inventory`
        # @return [Google::Apis::ContentV2_1::PosInventory]
        attr_accessor :inventory
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # posCustomBatchResponseEntry`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The change of the available quantity of an item at the given store.
        # Corresponds to the JSON property `sale`
        # @return [Google::Apis::ContentV2_1::PosSale]
        attr_accessor :sale
      
        # Store resource.
        # Corresponds to the JSON property `store`
        # @return [Google::Apis::ContentV2_1::PosStore]
        attr_accessor :store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @inventory = args[:inventory] if args.key?(:inventory)
          @kind = args[:kind] if args.key?(:kind)
          @sale = args[:sale] if args.key?(:sale)
          @store = args[:store] if args.key?(:store)
        end
      end
      
      # 
      class PosDataProviders
        include Google::Apis::Core::Hashable
      
        # Country code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # A list of POS data providers.
        # Corresponds to the JSON property `posDataProviders`
        # @return [Array<Google::Apis::ContentV2_1::PosDataProvidersPosDataProvider>]
        attr_accessor :pos_data_providers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @pos_data_providers = args[:pos_data_providers] if args.key?(:pos_data_providers)
        end
      end
      
      # 
      class PosDataProvidersPosDataProvider
        include Google::Apis::Core::Hashable
      
        # The display name of Pos data Provider.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The full name of this POS data Provider.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # The ID of the account.
        # Corresponds to the JSON property `providerId`
        # @return [Fixnum]
        attr_accessor :provider_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @full_name = args[:full_name] if args.key?(:full_name)
          @provider_id = args[:provider_id] if args.key?(:provider_id)
        end
      end
      
      # The absolute quantity of an item available at the given store.
      class PosInventory
        include Google::Apis::Core::Hashable
      
        # Required. The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Required. A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # posInventory`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. Supported pickup method for this offer. Unless the value is "not
        # supported", this field must be submitted together with `pickupSla`. For
        # accepted attribute values, see the [local product inventory feed specification]
        # (https://support.google.com/merchants/answer/3061342).
        # Corresponds to the JSON property `pickupMethod`
        # @return [String]
        attr_accessor :pickup_method
      
        # Optional. Expected date that an order will be ready for pickup relative to the
        # order date. Must be submitted together with `pickupMethod`. For accepted
        # attribute values, see the [local product inventory feed specification](https://
        # support.google.com/merchants/answer/3061342).
        # Corresponds to the JSON property `pickupSla`
        # @return [String]
        attr_accessor :pickup_sla
      
        # Required. The current price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Required. The available quantity of the item.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Required. The identifier of the merchant's store. Either a `storeCode`
        # inserted through the API or the code of the store in a Business Profile.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # Required. The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # Required. The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @kind = args[:kind] if args.key?(:kind)
          @pickup_method = args[:pickup_method] if args.key?(:pickup_method)
          @pickup_sla = args[:pickup_sla] if args.key?(:pickup_sla)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosInventoryRequest
        include Google::Apis::Core::Hashable
      
        # Required. The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Required. A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Optional. Supported pickup method for this offer. Unless the value is "not
        # supported", this field must be submitted together with `pickupSla`. For
        # accepted attribute values, see the [local product inventory feed specification]
        # (https://support.google.com/merchants/answer/3061342).
        # Corresponds to the JSON property `pickupMethod`
        # @return [String]
        attr_accessor :pickup_method
      
        # Optional. Expected date that an order will be ready for pickup relative to the
        # order date. Must be submitted together with `pickupMethod`. For accepted
        # attribute values, see the [local product inventory feed specification](https://
        # support.google.com/merchants/answer/3061342).
        # Corresponds to the JSON property `pickupSla`
        # @return [String]
        attr_accessor :pickup_sla
      
        # Required. The current price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Required. The available quantity of the item.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Required. The identifier of the merchant's store. Either a `storeCode`
        # inserted through the API or the code of the store in a Business Profile.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # Required. The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # Required. The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @pickup_method = args[:pickup_method] if args.key?(:pickup_method)
          @pickup_sla = args[:pickup_sla] if args.key?(:pickup_sla)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosInventoryResponse
        include Google::Apis::Core::Hashable
      
        # Required. The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Required. A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # posInventoryResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional. Supported pickup method for this offer. Unless the value is "not
        # supported", this field must be submitted together with `pickupSla`. For
        # accepted attribute values, see the [local product inventory feed specification]
        # (https://support.google.com/merchants/answer/3061342).
        # Corresponds to the JSON property `pickupMethod`
        # @return [String]
        attr_accessor :pickup_method
      
        # Optional. Expected date that an order will be ready for pickup relative to the
        # order date. Must be submitted together with `pickupMethod`. For accepted
        # attribute values, see the [local product inventory feed specification](https://
        # support.google.com/merchants/answer/3061342).
        # Corresponds to the JSON property `pickupSla`
        # @return [String]
        attr_accessor :pickup_sla
      
        # Required. The current price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Required. The available quantity of the item.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # Required. The identifier of the merchant's store. Either a `storeCode`
        # inserted through the API or the code of the store in a Business Profile.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # Required. The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # Required. The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @kind = args[:kind] if args.key?(:kind)
          @pickup_method = args[:pickup_method] if args.key?(:pickup_method)
          @pickup_sla = args[:pickup_sla] if args.key?(:pickup_sla)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # posListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::PosStore>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # The change of the available quantity of an item at the given store.
      class PosSale
        include Google::Apis::Core::Hashable
      
        # Required. The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Required. A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # posSale`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Required. The price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Required. The relative change of the available quantity. Negative for items
        # returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # A unique ID to group items from the same sale event.
        # Corresponds to the JSON property `saleId`
        # @return [String]
        attr_accessor :sale_id
      
        # Required. The identifier of the merchant's store. Either a `storeCode`
        # inserted through the API or the code of the store in a Business Profile.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # Required. The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # Required. The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @kind = args[:kind] if args.key?(:kind)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @sale_id = args[:sale_id] if args.key?(:sale_id)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosSaleRequest
        include Google::Apis::Core::Hashable
      
        # Required. The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Required. A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Required. The price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Required. The relative change of the available quantity. Negative for items
        # returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # A unique ID to group items from the same sale event.
        # Corresponds to the JSON property `saleId`
        # @return [String]
        attr_accessor :sale_id
      
        # Required. The identifier of the merchant's store. Either a `storeCode`
        # inserted through the API or the code of the store in a Business Profile.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # Required. The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # Required. The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @sale_id = args[:sale_id] if args.key?(:sale_id)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosSaleResponse
        include Google::Apis::Core::Hashable
      
        # Required. The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # Required. A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # posSaleResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Required. The price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Required. The relative change of the available quantity. Negative for items
        # returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # A unique ID to group items from the same sale event.
        # Corresponds to the JSON property `saleId`
        # @return [String]
        attr_accessor :sale_id
      
        # Required. The identifier of the merchant's store. Either a `storeCode`
        # inserted through the API or the code of the store in a Business Profile.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # Required. The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # Required. The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @kind = args[:kind] if args.key?(:kind)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @sale_id = args[:sale_id] if args.key?(:sale_id)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # Store resource.
      class PosStore
        include Google::Apis::Core::Hashable
      
        # The business type of the store.
        # Corresponds to the JSON property `gcidCategory`
        # @return [Array<String>]
        attr_accessor :gcid_category
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # posStore`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The matching status of POS store and Google Business Profile
        # store. Possible values are: - "`matched`": The POS store is successfully
        # matched with the Google Business Profile store. - "`failed`": The POS store is
        # not matched with the Google Business Profile store. See matching_status_hint
        # for further details. Note that there is up to 48 hours propagation delay for
        # changes in Merchant Center (e.g. creation of new account, accounts linking)
        # and Google Business Profile (e.g. store address update) which may affect the
        # matching status. In such cases, after a delay call [pos.list](https://
        # developers.google.com/shopping-content/reference/rest/v2.1/pos/list) to
        # retrieve the updated matching status.
        # Corresponds to the JSON property `matchingStatus`
        # @return [String]
        attr_accessor :matching_status
      
        # Output only. The hint of why the matching has failed. This is only set when
        # matching_status=failed. Possible values are: - "`linked-store-not-found`":
        # There aren't any Google Business Profile stores available for matching.
        # Connect your Merchant Center account with the Google Business Profile account.
        # Or add a new Google Business Profile store corresponding to the POS store. - "`
        # store-match-not-found`": The provided POS store couldn't be matched to any of
        # the connected Google Business Profile stores. Merchant Center account is
        # connected correctly and stores are available on Google Business Profile, but
        # POS store location address does not match with Google Business Profile stores'
        # addresses. Update POS store address or Google Business Profile store address
        # to match correctly. - "`store-match-unverified`": The provided POS store
        # couldn't be matched to any of the connected Google Business Profile stores, as
        # the matched Google Business Profile store is unverified. Go through the Google
        # Business Profile verification process to match correctly.
        # Corresponds to the JSON property `matchingStatusHint`
        # @return [String]
        attr_accessor :matching_status_hint
      
        # The store phone number.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # The Google Place Id of the store location.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Required. The street address of the store.
        # Corresponds to the JSON property `storeAddress`
        # @return [String]
        attr_accessor :store_address
      
        # Required. A store identifier that is unique for the given merchant.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # The merchant or store name.
        # Corresponds to the JSON property `storeName`
        # @return [String]
        attr_accessor :store_name
      
        # The website url for the store or merchant.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcid_category = args[:gcid_category] if args.key?(:gcid_category)
          @kind = args[:kind] if args.key?(:kind)
          @matching_status = args[:matching_status] if args.key?(:matching_status)
          @matching_status_hint = args[:matching_status_hint] if args.key?(:matching_status_hint)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @place_id = args[:place_id] if args.key?(:place_id)
          @store_address = args[:store_address] if args.key?(:store_address)
          @store_code = args[:store_code] if args.key?(:store_code)
          @store_name = args[:store_name] if args.key?(:store_name)
          @website_url = args[:website_url] if args.key?(:website_url)
        end
      end
      
      # 
      class PostalCodeGroup
        include Google::Apis::Core::Hashable
      
        # The CLDR territory code of the country the postal code group applies to.
        # Required.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The name of the postal code group, referred to in headers. Required.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A range of postal codes. Required.
        # Corresponds to the JSON property `postalCodeRanges`
        # @return [Array<Google::Apis::ContentV2_1::PostalCodeRange>]
        attr_accessor :postal_code_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @name = args[:name] if args.key?(:name)
          @postal_code_ranges = args[:postal_code_ranges] if args.key?(:postal_code_ranges)
        end
      end
      
      # 
      class PostalCodeRange
        include Google::Apis::Core::Hashable
      
        # A postal code or a pattern of the form `prefix*` denoting the inclusive lower
        # bound of the range defining the area. Examples values: `"94108"`, `"9410*"`, `"
        # 9*"`. Required.
        # Corresponds to the JSON property `postalCodeRangeBegin`
        # @return [String]
        attr_accessor :postal_code_range_begin
      
        # A postal code or a pattern of the form `prefix*` denoting the inclusive upper
        # bound of the range defining the area. It must have the same length as `
        # postalCodeRangeBegin`: if `postalCodeRangeBegin` is a postal code then `
        # postalCodeRangeEnd` must be a postal code too; if `postalCodeRangeBegin` is a
        # pattern then `postalCodeRangeEnd` must be a pattern with the same prefix
        # length. Optional: if not set, then the area is defined as being all the postal
        # codes matching `postalCodeRangeBegin`.
        # Corresponds to the JSON property `postalCodeRangeEnd`
        # @return [String]
        attr_accessor :postal_code_range_end
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postal_code_range_begin = args[:postal_code_range_begin] if args.key?(:postal_code_range_begin)
          @postal_code_range_end = args[:postal_code_range_end] if args.key?(:postal_code_range_end)
        end
      end
      
      # 
      class Price
        include Google::Apis::Core::Hashable
      
        # The currency of the price.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The price represented as a number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency = args[:currency] if args.key?(:currency)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The price represented as a number and currency.
      class PriceAmount
        include Google::Apis::Core::Hashable
      
        # The currency of the price.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The price represented as a number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency = args[:currency] if args.key?(:currency)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Price competitiveness fields requested by the merchant in the query. Field
      # values are only set if the merchant queries `PriceCompetitivenessProductView`.
      # https://support.google.com/merchants/answer/9626903
      class PriceCompetitiveness
        include Google::Apis::Core::Hashable
      
        # The price benchmark currency (ISO 4217 code).
        # Corresponds to the JSON property `benchmarkPriceCurrencyCode`
        # @return [String]
        attr_accessor :benchmark_price_currency_code
      
        # The latest available price benchmark in micros (1 millionth of a standard unit,
        # 1 USD = 1000000 micros) for the product's catalog in the benchmark country.
        # Corresponds to the JSON property `benchmarkPriceMicros`
        # @return [Fixnum]
        attr_accessor :benchmark_price_micros
      
        # The country of the price benchmark (ISO 3166 code).
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @benchmark_price_currency_code = args[:benchmark_price_currency_code] if args.key?(:benchmark_price_currency_code)
          @benchmark_price_micros = args[:benchmark_price_micros] if args.key?(:benchmark_price_micros)
          @country_code = args[:country_code] if args.key?(:country_code)
        end
      end
      
      # Price insights fields requested by the merchant in the query. Field values are
      # only set if the merchant queries `PriceInsightsProductView`. https://support.
      # google.com/merchants/answer/11916926
      class PriceInsights
        include Google::Apis::Core::Hashable
      
        # The predicted effectiveness of applying the price suggestion, bucketed.
        # Corresponds to the JSON property `effectiveness`
        # @return [String]
        attr_accessor :effectiveness
      
        # The predicted change in clicks as a fraction after introducing the suggested
        # price compared to current active price. For example, 0.05 is a 5% predicted
        # increase in clicks.
        # Corresponds to the JSON property `predictedClicksChangeFraction`
        # @return [Float]
        attr_accessor :predicted_clicks_change_fraction
      
        # The predicted change in conversions as a fraction after introducing the
        # suggested price compared to current active price. For example, 0.05 is a 5%
        # predicted increase in conversions).
        # Corresponds to the JSON property `predictedConversionsChangeFraction`
        # @return [Float]
        attr_accessor :predicted_conversions_change_fraction
      
        # *Deprecated*: This field is no longer supported and will start returning 0.
        # The predicted change in gross profit as a fraction after introducing the
        # suggested price compared to current active price. For example, 0.05 is a 5%
        # predicted increase in gross profit.
        # Corresponds to the JSON property `predictedGrossProfitChangeFraction`
        # @return [Float]
        attr_accessor :predicted_gross_profit_change_fraction
      
        # The predicted change in impressions as a fraction after introducing the
        # suggested price compared to current active price. For example, 0.05 is a 5%
        # predicted increase in impressions.
        # Corresponds to the JSON property `predictedImpressionsChangeFraction`
        # @return [Float]
        attr_accessor :predicted_impressions_change_fraction
      
        # *Deprecated*: This field is no longer supported and will start returning USD
        # for all requests. The predicted monthly gross profit change currency (ISO 4217
        # code).
        # Corresponds to the JSON property `predictedMonthlyGrossProfitChangeCurrencyCode`
        # @return [String]
        attr_accessor :predicted_monthly_gross_profit_change_currency_code
      
        # *Deprecated*: This field is no longer supported and will start returning 0.
        # The predicted change in gross profit in micros (1 millionth of a standard unit,
        # 1 USD = 1000000 micros) after introducing the suggested price for a month
        # compared to current active price.
        # Corresponds to the JSON property `predictedMonthlyGrossProfitChangeMicros`
        # @return [Fixnum]
        attr_accessor :predicted_monthly_gross_profit_change_micros
      
        # The suggested price currency (ISO 4217 code).
        # Corresponds to the JSON property `suggestedPriceCurrencyCode`
        # @return [String]
        attr_accessor :suggested_price_currency_code
      
        # The latest suggested price in micros (1 millionth of a standard unit, 1 USD =
        # 1000000 micros) for the product.
        # Corresponds to the JSON property `suggestedPriceMicros`
        # @return [Fixnum]
        attr_accessor :suggested_price_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effectiveness = args[:effectiveness] if args.key?(:effectiveness)
          @predicted_clicks_change_fraction = args[:predicted_clicks_change_fraction] if args.key?(:predicted_clicks_change_fraction)
          @predicted_conversions_change_fraction = args[:predicted_conversions_change_fraction] if args.key?(:predicted_conversions_change_fraction)
          @predicted_gross_profit_change_fraction = args[:predicted_gross_profit_change_fraction] if args.key?(:predicted_gross_profit_change_fraction)
          @predicted_impressions_change_fraction = args[:predicted_impressions_change_fraction] if args.key?(:predicted_impressions_change_fraction)
          @predicted_monthly_gross_profit_change_currency_code = args[:predicted_monthly_gross_profit_change_currency_code] if args.key?(:predicted_monthly_gross_profit_change_currency_code)
          @predicted_monthly_gross_profit_change_micros = args[:predicted_monthly_gross_profit_change_micros] if args.key?(:predicted_monthly_gross_profit_change_micros)
          @suggested_price_currency_code = args[:suggested_price_currency_code] if args.key?(:suggested_price_currency_code)
          @suggested_price_micros = args[:suggested_price_micros] if args.key?(:suggested_price_micros)
        end
      end
      
      # Required product attributes are primarily defined by the product data
      # specification. See the Product Data Specification Help Center article for
      # information. Product data. After inserting, updating, or deleting a product,
      # it may take several minutes before changes take effect. The following
      # reference documentation lists the field names in the **camelCase** casing
      # style while the Products Data Specification lists the names in the **
      # snake_case** casing style.
      class Product
        include Google::Apis::Core::Hashable
      
        # Additional URLs of images of the item.
        # Corresponds to the JSON property `additionalImageLinks`
        # @return [Array<String>]
        attr_accessor :additional_image_links
      
        # Additional cut of the item. Used together with size_type to represent combined
        # size types for apparel items.
        # Corresponds to the JSON property `additionalSizeType`
        # @return [String]
        attr_accessor :additional_size_type
      
        # Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise.
        # Corresponds to the JSON property `adsGrouping`
        # @return [String]
        attr_accessor :ads_grouping
      
        # Similar to ads_grouping, but only works on CPC.
        # Corresponds to the JSON property `adsLabels`
        # @return [Array<String>]
        attr_accessor :ads_labels
      
        # Allows advertisers to override the item URL when the product is shown within
        # the context of Product Ads.
        # Corresponds to the JSON property `adsRedirect`
        # @return [String]
        attr_accessor :ads_redirect
      
        # Should be set to true if the item is targeted towards adults.
        # Corresponds to the JSON property `adult`
        # @return [Boolean]
        attr_accessor :adult
        alias_method :adult?, :adult
      
        # Target age group of the item.
        # Corresponds to the JSON property `ageGroup`
        # @return [String]
        attr_accessor :age_group
      
        # A safeguard in the [Automated Discounts](//support.google.com/merchants/answer/
        # 10295759) and [Dynamic Promotions](//support.google.com/merchants/answer/
        # 13949249) projects, ensuring that discounts on merchants' offers do not fall
        # below this value, thereby preserving the offer's value and profitability.
        # Corresponds to the JSON property `autoPricingMinPrice`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :auto_pricing_min_price
      
        # Availability status of the item.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # The day a pre-ordered product becomes available for delivery, in ISO 8601
        # format.
        # Corresponds to the JSON property `availabilityDate`
        # @return [String]
        attr_accessor :availability_date
      
        # Brand of the item.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # URL for the canonical version of your item's landing page.
        # Corresponds to the JSON property `canonicalLink`
        # @return [String]
        attr_accessor :canonical_link
      
        # Product [certification](https://support.google.com/merchants/answer/13528839),
        # introduced for EU energy efficiency labeling compliance using the [EU EPREL](
        # https://eprel.ec.europa.eu/screen/home) database.
        # Corresponds to the JSON property `certifications`
        # @return [Array<Google::Apis::ContentV2_1::ProductCertification>]
        attr_accessor :certifications
      
        # Required. The item's channel (online or local). Acceptable values are: - "`
        # local`" - "`online`"
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Extra fields to export to the Cloud Retail program.
        # Corresponds to the JSON property `cloudExportAdditionalProperties`
        # @return [Array<Google::Apis::ContentV2_1::CloudExportAdditionalProperties>]
        attr_accessor :cloud_export_additional_properties
      
        # Color of the item.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # Condition or state of the item.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Required. The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Cost of goods sold. Used for gross profit reporting.
        # Corresponds to the JSON property `costOfGoodsSold`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :cost_of_goods_sold
      
        # A list of custom (merchant-provided) attributes. It can also be used for
        # submitting any attribute of the feed specification in its generic form (for
        # example, `` "name": "size type", "value": "regular" ``). This is useful for
        # submitting attributes not explicitly exposed by the API, such as additional
        # attributes used for Buy on Google (formerly known as Shopping Actions).
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::ContentV2_1::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Custom label 0 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel0`
        # @return [String]
        attr_accessor :custom_label0
      
        # Custom label 1 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel1`
        # @return [String]
        attr_accessor :custom_label1
      
        # Custom label 2 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel2`
        # @return [String]
        attr_accessor :custom_label2
      
        # Custom label 3 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel3`
        # @return [String]
        attr_accessor :custom_label3
      
        # Custom label 4 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel4`
        # @return [String]
        attr_accessor :custom_label4
      
        # Description of the item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The date time when an offer becomes visible in search results across Google’s
        # YouTube surfaces, in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format.
        # See [Disclosure date](https://support.google.com/merchants/answer/13034208)
        # for more information.
        # Corresponds to the JSON property `disclosureDate`
        # @return [String]
        attr_accessor :disclosure_date
      
        # An identifier for an item for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsId`
        # @return [String]
        attr_accessor :display_ads_id
      
        # URL directly to your item's landing page for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsLink`
        # @return [String]
        attr_accessor :display_ads_link
      
        # Advertiser-specified recommendations.
        # Corresponds to the JSON property `displayAdsSimilarIds`
        # @return [Array<String>]
        attr_accessor :display_ads_similar_ids
      
        # Title of an item for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsTitle`
        # @return [String]
        attr_accessor :display_ads_title
      
        # Offer margin for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsValue`
        # @return [Float]
        attr_accessor :display_ads_value
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `energyEfficiencyClass`
        # @return [String]
        attr_accessor :energy_efficiency_class
      
        # The list of [destinations to exclude](//support.google.com/merchants/answer/
        # 6324486) for this target (corresponds to cleared check boxes in Merchant
        # Center). Products that are excluded from all destinations for more than 7 days
        # are automatically deleted.
        # Corresponds to the JSON property `excludedDestinations`
        # @return [Array<String>]
        attr_accessor :excluded_destinations
      
        # Date on which the item should expire, as specified upon insertion, in ISO 8601
        # format. The actual expiration date in Google Shopping is exposed in `
        # productstatuses` as `googleExpirationDate` and might be earlier if `
        # expirationDate` is too far in the future.
        # Corresponds to the JSON property `expirationDate`
        # @return [String]
        attr_accessor :expiration_date
      
        # Required for multi-seller accounts. Use this attribute if you're a marketplace
        # uploading products for various sellers to your multi-seller account.
        # Corresponds to the JSON property `externalSellerId`
        # @return [String]
        attr_accessor :external_seller_id
      
        # Feed label for the item. Either `targetCountry` or `feedLabel` is required.
        # Must be less than or equal to 20 uppercase letters (A-Z), numbers (0-9), and
        # dashes (-).
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        # Optional. Conditions to be met for a product to have free shipping.
        # Corresponds to the JSON property `freeShippingThreshold`
        # @return [Array<Google::Apis::ContentV2_1::FreeShippingThreshold>]
        attr_accessor :free_shipping_threshold
      
        # Target gender of the item.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # Google's category of the item (see [Google product taxonomy](https://support.
        # google.com/merchants/answer/1705911)). When querying products, this field will
        # contain the user provided value. There is currently no way to get back the
        # auto assigned google product categories through the API.
        # Corresponds to the JSON property `googleProductCategory`
        # @return [String]
        attr_accessor :google_product_category
      
        # Global Trade Item Number (GTIN) of the item.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # The REST ID of the product. Content API methods that operate on products take
        # this as their `productId` parameter. The REST ID for a product has one of the
        # 2 forms channel:contentLanguage: targetCountry: offerId or channel:
        # contentLanguage:feedLabel: offerId.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # False when the item does not have unique product identifiers appropriate to
        # its category, such as GTIN, MPN, and brand. Required according to the Unique
        # Product Identifier Rules for all target countries except for Canada.
        # Corresponds to the JSON property `identifierExists`
        # @return [Boolean]
        attr_accessor :identifier_exists
        alias_method :identifier_exists?, :identifier_exists
      
        # URL of an image of the item.
        # Corresponds to the JSON property `imageLink`
        # @return [String]
        attr_accessor :image_link
      
        # The list of [destinations to include](//support.google.com/merchants/answer/
        # 7501026) for this target (corresponds to checked check boxes in Merchant
        # Center). Default destinations are always included unless provided in `
        # excludedDestinations`.
        # Corresponds to the JSON property `includedDestinations`
        # @return [Array<String>]
        attr_accessor :included_destinations
      
        # Details of a monthly installment payment offering. [Learn more](https://
        # support.google.com/merchants/answer/6324474) about installments.
        # Corresponds to the JSON property `installment`
        # @return [Google::Apis::ContentV2_1::Installment]
        attr_accessor :installment
      
        # Whether the item is a merchant-defined bundle. A bundle is a custom grouping
        # of different products sold by a merchant for a single price.
        # Corresponds to the JSON property `isBundle`
        # @return [Boolean]
        attr_accessor :is_bundle
        alias_method :is_bundle?, :is_bundle
      
        # Shared identifier for all variants of the same product.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # product`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Additional URLs of lifestyle images of the item. Used to explicitly identify
        # images that showcase your item in a real-world context. See the Help Center
        # article for more information.
        # Corresponds to the JSON property `lifestyleImageLinks`
        # @return [Array<String>]
        attr_accessor :lifestyle_image_links
      
        # URL directly linking to your item's page on your website.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # URL template for merchant hosted local storefront.
        # Corresponds to the JSON property `linkTemplate`
        # @return [String]
        attr_accessor :link_template
      
        # Allows the setting up of loyalty program benefits (for example price or points)
        # . https://support.google.com/merchants/answer/12922446
        # Corresponds to the JSON property `loyaltyProgram`
        # @return [Google::Apis::ContentV2_1::LoyaltyProgram]
        attr_accessor :loyalty_program
      
        # Optional. A list of loyalty program information that is used to surface
        # loyalty benefits (for example, better pricing, points, etc) to the user of
        # this item.
        # Corresponds to the JSON property `loyaltyPrograms`
        # @return [Array<Google::Apis::ContentV2_1::LoyaltyProgram>]
        attr_accessor :loyalty_programs
      
        # The material of which the item is made.
        # Corresponds to the JSON property `material`
        # @return [String]
        attr_accessor :material
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `maxEnergyEfficiencyClass`
        # @return [String]
        attr_accessor :max_energy_efficiency_class
      
        # Maximal product handling time (in business days).
        # Corresponds to the JSON property `maxHandlingTime`
        # @return [Fixnum]
        attr_accessor :max_handling_time
      
        # Maximum retail price (MRP) of the item. Applicable to India only.
        # Corresponds to the JSON property `maximumRetailPrice`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :maximum_retail_price
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `minEnergyEfficiencyClass`
        # @return [String]
        attr_accessor :min_energy_efficiency_class
      
        # Minimal product handling time (in business days).
        # Corresponds to the JSON property `minHandlingTime`
        # @return [Fixnum]
        attr_accessor :min_handling_time
      
        # URL for the mobile-optimized version of your item's landing page.
        # Corresponds to the JSON property `mobileLink`
        # @return [String]
        attr_accessor :mobile_link
      
        # URL template for merchant hosted local storefront optimized for mobile devices.
        # Corresponds to the JSON property `mobileLinkTemplate`
        # @return [String]
        attr_accessor :mobile_link_template
      
        # Manufacturer Part Number (MPN) of the item.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # The number of identical products in a merchant-defined multipack.
        # Corresponds to the JSON property `multipack`
        # @return [Fixnum]
        attr_accessor :multipack
      
        # Required. A unique identifier for the item. Leading and trailing whitespaces
        # are stripped and multiple whitespaces are replaced by a single whitespace upon
        # submission. Only valid unicode characters are accepted. See the products feed
        # specification for details. *Note:* Content API methods that operate on
        # products take the REST ID of the product, *not* this identifier.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # The item's pattern (for example, polka dots).
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # Publication of this item should be temporarily paused. Acceptable values are: -
        # "`ads`"
        # Corresponds to the JSON property `pause`
        # @return [String]
        attr_accessor :pause
      
        # The pick up option for the item. Acceptable values are: - "`buy`" - "`reserve`"
        # - "`ship to store`" - "`not supported`"
        # Corresponds to the JSON property `pickupMethod`
        # @return [String]
        attr_accessor :pickup_method
      
        # Item store pickup timeline. Acceptable values are: - "`same day`" - "`next day`
        # " - "`2-day`" - "`3-day`" - "`4-day`" - "`5-day`" - "`6-day`" - "`7-day`" - "`
        # multi-week`"
        # Corresponds to the JSON property `pickupSla`
        # @return [String]
        attr_accessor :pickup_sla
      
        # Price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Technical specification or additional product details.
        # Corresponds to the JSON property `productDetails`
        # @return [Array<Google::Apis::ContentV2_1::ProductProductDetail>]
        attr_accessor :product_details
      
        # The height of the product in the units provided. The value must be between 0 (
        # exclusive) and 3000 (inclusive).
        # Corresponds to the JSON property `productHeight`
        # @return [Google::Apis::ContentV2_1::ProductDimension]
        attr_accessor :product_height
      
        # Bullet points describing the most relevant highlights of a product.
        # Corresponds to the JSON property `productHighlights`
        # @return [Array<String>]
        attr_accessor :product_highlights
      
        # The length of the product in the units provided. The value must be between 0 (
        # exclusive) and 3000 (inclusive).
        # Corresponds to the JSON property `productLength`
        # @return [Google::Apis::ContentV2_1::ProductDimension]
        attr_accessor :product_length
      
        # Categories of the item (formatted as in product data specification).
        # Corresponds to the JSON property `productTypes`
        # @return [Array<String>]
        attr_accessor :product_types
      
        # The weight of the product in the units provided. The value must be between 0 (
        # exclusive) and 2000 (inclusive).
        # Corresponds to the JSON property `productWeight`
        # @return [Google::Apis::ContentV2_1::ProductWeight]
        attr_accessor :product_weight
      
        # The width of the product in the units provided. The value must be between 0 (
        # exclusive) and 3000 (inclusive).
        # Corresponds to the JSON property `productWidth`
        # @return [Google::Apis::ContentV2_1::ProductDimension]
        attr_accessor :product_width
      
        # The unique ID of a promotion.
        # Corresponds to the JSON property `promotionIds`
        # @return [Array<String>]
        attr_accessor :promotion_ids
      
        # Advertised sale price of the item.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :sale_price
      
        # Date range during which the item is on sale (see product data specification ).
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [String]
        attr_accessor :sale_price_effective_date
      
        # The quantity of the product that is available for selling on Google. Supported
        # only for online products.
        # Corresponds to the JSON property `sellOnGoogleQuantity`
        # @return [Fixnum]
        attr_accessor :sell_on_google_quantity
      
        # Shipping rules.
        # Corresponds to the JSON property `shipping`
        # @return [Array<Google::Apis::ContentV2_1::ProductShipping>]
        attr_accessor :shipping
      
        # Height of the item for shipping.
        # Corresponds to the JSON property `shippingHeight`
        # @return [Google::Apis::ContentV2_1::ProductShippingDimension]
        attr_accessor :shipping_height
      
        # The shipping label of the product, used to group product in account-level
        # shipping rules.
        # Corresponds to the JSON property `shippingLabel`
        # @return [String]
        attr_accessor :shipping_label
      
        # Length of the item for shipping.
        # Corresponds to the JSON property `shippingLength`
        # @return [Google::Apis::ContentV2_1::ProductShippingDimension]
        attr_accessor :shipping_length
      
        # Weight of the item for shipping.
        # Corresponds to the JSON property `shippingWeight`
        # @return [Google::Apis::ContentV2_1::ProductShippingWeight]
        attr_accessor :shipping_weight
      
        # Width of the item for shipping.
        # Corresponds to the JSON property `shippingWidth`
        # @return [Google::Apis::ContentV2_1::ProductShippingDimension]
        attr_accessor :shipping_width
      
        # List of country codes (ISO 3166-1 alpha-2) to exclude the offer from Shopping
        # Ads destination. Countries from this list are removed from countries
        # configured in MC feed settings.
        # Corresponds to the JSON property `shoppingAdsExcludedCountries`
        # @return [Array<String>]
        attr_accessor :shopping_ads_excluded_countries
      
        # System in which the size is specified. Recommended for apparel items.
        # Corresponds to the JSON property `sizeSystem`
        # @return [String]
        attr_accessor :size_system
      
        # The cut of the item. Recommended for apparel items.
        # Corresponds to the JSON property `sizeType`
        # @return [String]
        attr_accessor :size_type
      
        # Size of the item. Only one value is allowed. For variants with different sizes,
        # insert a separate product for each size with the same `itemGroupId` value (
        # see size definition).
        # Corresponds to the JSON property `sizes`
        # @return [Array<String>]
        attr_accessor :sizes
      
        # Output only. The source of the offer, that is, how the offer was created.
        # Acceptable values are: - "`api`" - "`crawl`" - "`feed`"
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Structured description, for algorithmically (AI)-generated descriptions. See [
        # description](https://support.google.com/merchants/answer/6324468#When_to_use)
        # for more information.
        # Corresponds to the JSON property `structuredDescription`
        # @return [Google::Apis::ContentV2_1::ProductStructuredDescription]
        attr_accessor :structured_description
      
        # Structured title, for algorithmically (AI)-generated titles. See [title](https:
        # //support.google.com/merchants/answer/6324415#Whentouse) for more information.
        # Corresponds to the JSON property `structuredTitle`
        # @return [Google::Apis::ContentV2_1::ProductStructuredTitle]
        attr_accessor :structured_title
      
        # Number of periods (months or years) and amount of payment per period for an
        # item with an associated subscription contract.
        # Corresponds to the JSON property `subscriptionCost`
        # @return [Google::Apis::ContentV2_1::ProductSubscriptionCost]
        attr_accessor :subscription_cost
      
        # Optional. The list of sustainability incentive programs.
        # Corresponds to the JSON property `sustainabilityIncentives`
        # @return [Array<Google::Apis::ContentV2_1::ProductSustainabilityIncentive>]
        attr_accessor :sustainability_incentives
      
        # Required. The CLDR territory code for the item's country of sale.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The tax category of the product, used to configure detailed tax nexus in
        # account-level tax settings.
        # Corresponds to the JSON property `taxCategory`
        # @return [String]
        attr_accessor :tax_category
      
        # Tax information.
        # Corresponds to the JSON property `taxes`
        # @return [Array<Google::Apis::ContentV2_1::ProductTax>]
        attr_accessor :taxes
      
        # Title of the item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The transit time label of the product, used to group product in account-level
        # transit time tables.
        # Corresponds to the JSON property `transitTimeLabel`
        # @return [String]
        attr_accessor :transit_time_label
      
        # The preference of the denominator of the unit price.
        # Corresponds to the JSON property `unitPricingBaseMeasure`
        # @return [Google::Apis::ContentV2_1::ProductUnitPricingBaseMeasure]
        attr_accessor :unit_pricing_base_measure
      
        # The measure and dimension of an item.
        # Corresponds to the JSON property `unitPricingMeasure`
        # @return [Google::Apis::ContentV2_1::ProductUnitPricingMeasure]
        attr_accessor :unit_pricing_measure
      
        # URL of the 3D model of the item to provide more visuals.
        # Corresponds to the JSON property `virtualModelLink`
        # @return [String]
        attr_accessor :virtual_model_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_image_links = args[:additional_image_links] if args.key?(:additional_image_links)
          @additional_size_type = args[:additional_size_type] if args.key?(:additional_size_type)
          @ads_grouping = args[:ads_grouping] if args.key?(:ads_grouping)
          @ads_labels = args[:ads_labels] if args.key?(:ads_labels)
          @ads_redirect = args[:ads_redirect] if args.key?(:ads_redirect)
          @adult = args[:adult] if args.key?(:adult)
          @age_group = args[:age_group] if args.key?(:age_group)
          @auto_pricing_min_price = args[:auto_pricing_min_price] if args.key?(:auto_pricing_min_price)
          @availability = args[:availability] if args.key?(:availability)
          @availability_date = args[:availability_date] if args.key?(:availability_date)
          @brand = args[:brand] if args.key?(:brand)
          @canonical_link = args[:canonical_link] if args.key?(:canonical_link)
          @certifications = args[:certifications] if args.key?(:certifications)
          @channel = args[:channel] if args.key?(:channel)
          @cloud_export_additional_properties = args[:cloud_export_additional_properties] if args.key?(:cloud_export_additional_properties)
          @color = args[:color] if args.key?(:color)
          @condition = args[:condition] if args.key?(:condition)
          @content_language = args[:content_language] if args.key?(:content_language)
          @cost_of_goods_sold = args[:cost_of_goods_sold] if args.key?(:cost_of_goods_sold)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @custom_label0 = args[:custom_label0] if args.key?(:custom_label0)
          @custom_label1 = args[:custom_label1] if args.key?(:custom_label1)
          @custom_label2 = args[:custom_label2] if args.key?(:custom_label2)
          @custom_label3 = args[:custom_label3] if args.key?(:custom_label3)
          @custom_label4 = args[:custom_label4] if args.key?(:custom_label4)
          @description = args[:description] if args.key?(:description)
          @disclosure_date = args[:disclosure_date] if args.key?(:disclosure_date)
          @display_ads_id = args[:display_ads_id] if args.key?(:display_ads_id)
          @display_ads_link = args[:display_ads_link] if args.key?(:display_ads_link)
          @display_ads_similar_ids = args[:display_ads_similar_ids] if args.key?(:display_ads_similar_ids)
          @display_ads_title = args[:display_ads_title] if args.key?(:display_ads_title)
          @display_ads_value = args[:display_ads_value] if args.key?(:display_ads_value)
          @energy_efficiency_class = args[:energy_efficiency_class] if args.key?(:energy_efficiency_class)
          @excluded_destinations = args[:excluded_destinations] if args.key?(:excluded_destinations)
          @expiration_date = args[:expiration_date] if args.key?(:expiration_date)
          @external_seller_id = args[:external_seller_id] if args.key?(:external_seller_id)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
          @free_shipping_threshold = args[:free_shipping_threshold] if args.key?(:free_shipping_threshold)
          @gender = args[:gender] if args.key?(:gender)
          @google_product_category = args[:google_product_category] if args.key?(:google_product_category)
          @gtin = args[:gtin] if args.key?(:gtin)
          @id = args[:id] if args.key?(:id)
          @identifier_exists = args[:identifier_exists] if args.key?(:identifier_exists)
          @image_link = args[:image_link] if args.key?(:image_link)
          @included_destinations = args[:included_destinations] if args.key?(:included_destinations)
          @installment = args[:installment] if args.key?(:installment)
          @is_bundle = args[:is_bundle] if args.key?(:is_bundle)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @kind = args[:kind] if args.key?(:kind)
          @lifestyle_image_links = args[:lifestyle_image_links] if args.key?(:lifestyle_image_links)
          @link = args[:link] if args.key?(:link)
          @link_template = args[:link_template] if args.key?(:link_template)
          @loyalty_program = args[:loyalty_program] if args.key?(:loyalty_program)
          @loyalty_programs = args[:loyalty_programs] if args.key?(:loyalty_programs)
          @material = args[:material] if args.key?(:material)
          @max_energy_efficiency_class = args[:max_energy_efficiency_class] if args.key?(:max_energy_efficiency_class)
          @max_handling_time = args[:max_handling_time] if args.key?(:max_handling_time)
          @maximum_retail_price = args[:maximum_retail_price] if args.key?(:maximum_retail_price)
          @min_energy_efficiency_class = args[:min_energy_efficiency_class] if args.key?(:min_energy_efficiency_class)
          @min_handling_time = args[:min_handling_time] if args.key?(:min_handling_time)
          @mobile_link = args[:mobile_link] if args.key?(:mobile_link)
          @mobile_link_template = args[:mobile_link_template] if args.key?(:mobile_link_template)
          @mpn = args[:mpn] if args.key?(:mpn)
          @multipack = args[:multipack] if args.key?(:multipack)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @pattern = args[:pattern] if args.key?(:pattern)
          @pause = args[:pause] if args.key?(:pause)
          @pickup_method = args[:pickup_method] if args.key?(:pickup_method)
          @pickup_sla = args[:pickup_sla] if args.key?(:pickup_sla)
          @price = args[:price] if args.key?(:price)
          @product_details = args[:product_details] if args.key?(:product_details)
          @product_height = args[:product_height] if args.key?(:product_height)
          @product_highlights = args[:product_highlights] if args.key?(:product_highlights)
          @product_length = args[:product_length] if args.key?(:product_length)
          @product_types = args[:product_types] if args.key?(:product_types)
          @product_weight = args[:product_weight] if args.key?(:product_weight)
          @product_width = args[:product_width] if args.key?(:product_width)
          @promotion_ids = args[:promotion_ids] if args.key?(:promotion_ids)
          @sale_price = args[:sale_price] if args.key?(:sale_price)
          @sale_price_effective_date = args[:sale_price_effective_date] if args.key?(:sale_price_effective_date)
          @sell_on_google_quantity = args[:sell_on_google_quantity] if args.key?(:sell_on_google_quantity)
          @shipping = args[:shipping] if args.key?(:shipping)
          @shipping_height = args[:shipping_height] if args.key?(:shipping_height)
          @shipping_label = args[:shipping_label] if args.key?(:shipping_label)
          @shipping_length = args[:shipping_length] if args.key?(:shipping_length)
          @shipping_weight = args[:shipping_weight] if args.key?(:shipping_weight)
          @shipping_width = args[:shipping_width] if args.key?(:shipping_width)
          @shopping_ads_excluded_countries = args[:shopping_ads_excluded_countries] if args.key?(:shopping_ads_excluded_countries)
          @size_system = args[:size_system] if args.key?(:size_system)
          @size_type = args[:size_type] if args.key?(:size_type)
          @sizes = args[:sizes] if args.key?(:sizes)
          @source = args[:source] if args.key?(:source)
          @structured_description = args[:structured_description] if args.key?(:structured_description)
          @structured_title = args[:structured_title] if args.key?(:structured_title)
          @subscription_cost = args[:subscription_cost] if args.key?(:subscription_cost)
          @sustainability_incentives = args[:sustainability_incentives] if args.key?(:sustainability_incentives)
          @target_country = args[:target_country] if args.key?(:target_country)
          @tax_category = args[:tax_category] if args.key?(:tax_category)
          @taxes = args[:taxes] if args.key?(:taxes)
          @title = args[:title] if args.key?(:title)
          @transit_time_label = args[:transit_time_label] if args.key?(:transit_time_label)
          @unit_pricing_base_measure = args[:unit_pricing_base_measure] if args.key?(:unit_pricing_base_measure)
          @unit_pricing_measure = args[:unit_pricing_measure] if args.key?(:unit_pricing_measure)
          @virtual_model_link = args[:virtual_model_link] if args.key?(:virtual_model_link)
        end
      end
      
      # Product [certification](https://support.google.com/merchants/answer/13528839),
      # introduced for EU energy efficiency labeling compliance using the [EU EPREL](
      # https://eprel.ec.europa.eu/screen/home) database.
      class ProductCertification
        include Google::Apis::Core::Hashable
      
        # The certification authority, for example "European_Commission". Maximum length
        # is 2000 characters.
        # Corresponds to the JSON property `certificationAuthority`
        # @return [String]
        attr_accessor :certification_authority
      
        # The certification code, for eaxample "123456". Maximum length is 2000
        # characters.
        # Corresponds to the JSON property `certificationCode`
        # @return [String]
        attr_accessor :certification_code
      
        # The name of the certification, for example "EPREL". Maximum length is 2000
        # characters.
        # Corresponds to the JSON property `certificationName`
        # @return [String]
        attr_accessor :certification_name
      
        # The certification value (also known as class, level or grade), for example "A+"
        # , "C", "gold". Maximum length is 2000 characters.
        # Corresponds to the JSON property `certificationValue`
        # @return [String]
        attr_accessor :certification_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certification_authority = args[:certification_authority] if args.key?(:certification_authority)
          @certification_code = args[:certification_code] if args.key?(:certification_code)
          @certification_name = args[:certification_name] if args.key?(:certification_name)
          @certification_value = args[:certification_value] if args.key?(:certification_value)
        end
      end
      
      # Product cluster fields. A product cluster is a grouping for different offers
      # that represent the same product. Values are only set for fields requested
      # explicitly in the request's search query.
      class ProductCluster
        include Google::Apis::Core::Hashable
      
        # Brand of the product cluster.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Tells if there is at least one product of the brand currently `IN_STOCK` in
        # your product feed across multiple countries, all products are `OUT_OF_STOCK`
        # in your product feed, or `NOT_IN_INVENTORY`. The field doesn't take the Best
        # Sellers report country filter into account.
        # Corresponds to the JSON property `brandInventoryStatus`
        # @return [String]
        attr_accessor :brand_inventory_status
      
        # Product category (1st level) of the product cluster, represented in Google's
        # product taxonomy.
        # Corresponds to the JSON property `categoryL1`
        # @return [String]
        attr_accessor :category_l1
      
        # Product category (2nd level) of the product cluster, represented in Google's
        # product taxonomy.
        # Corresponds to the JSON property `categoryL2`
        # @return [String]
        attr_accessor :category_l2
      
        # Product category (3rd level) of the product cluster, represented in Google's
        # product taxonomy.
        # Corresponds to the JSON property `categoryL3`
        # @return [String]
        attr_accessor :category_l3
      
        # Product category (4th level) of the product cluster, represented in Google's
        # product taxonomy.
        # Corresponds to the JSON property `categoryL4`
        # @return [String]
        attr_accessor :category_l4
      
        # Product category (5th level) of the product cluster, represented in Google's
        # product taxonomy.
        # Corresponds to the JSON property `categoryL5`
        # @return [String]
        attr_accessor :category_l5
      
        # Tells whether the product cluster is `IN_STOCK` in your product feed across
        # multiple countries, `OUT_OF_STOCK` in your product feed, or `NOT_IN_INVENTORY`
        # at all. The field doesn't take the Best Sellers report country filter into
        # account.
        # Corresponds to the JSON property `inventoryStatus`
        # @return [String]
        attr_accessor :inventory_status
      
        # Title of the product cluster.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # GTINs of example variants of the product cluster.
        # Corresponds to the JSON property `variantGtins`
        # @return [Array<String>]
        attr_accessor :variant_gtins
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @brand_inventory_status = args[:brand_inventory_status] if args.key?(:brand_inventory_status)
          @category_l1 = args[:category_l1] if args.key?(:category_l1)
          @category_l2 = args[:category_l2] if args.key?(:category_l2)
          @category_l3 = args[:category_l3] if args.key?(:category_l3)
          @category_l4 = args[:category_l4] if args.key?(:category_l4)
          @category_l5 = args[:category_l5] if args.key?(:category_l5)
          @inventory_status = args[:inventory_status] if args.key?(:inventory_status)
          @title = args[:title] if args.key?(:title)
          @variant_gtins = args[:variant_gtins] if args.key?(:variant_gtins)
        end
      end
      
      # The estimated days to deliver a product after an order is placed. Only
      # authorized shipping signals partners working with a merchant can use this
      # resource. Merchants should use the [`products`](https://developers.google.com/
      # shopping-content/reference/rest/v2.1/products#productshipping) resource
      # instead.
      class ProductDeliveryTime
        include Google::Apis::Core::Hashable
      
        # Required. A set of associations between `DeliveryArea` and `DeliveryTime`
        # entries. The total number of `areaDeliveryTimes` can be at most 100.
        # Corresponds to the JSON property `areaDeliveryTimes`
        # @return [Array<Google::Apis::ContentV2_1::ProductDeliveryTimeAreaDeliveryTime>]
        attr_accessor :area_delivery_times
      
        # The Content API ID of the product.
        # Corresponds to the JSON property `productId`
        # @return [Google::Apis::ContentV2_1::ProductId]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @area_delivery_times = args[:area_delivery_times] if args.key?(:area_delivery_times)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # A pairing of `DeliveryArea` associated with a `DeliveryTime` for this product.
      class ProductDeliveryTimeAreaDeliveryTime
        include Google::Apis::Core::Hashable
      
        # A delivery area for the product. Only one of `countryCode` or `postalCodeRange`
        # must be set.
        # Corresponds to the JSON property `deliveryArea`
        # @return [Google::Apis::ContentV2_1::DeliveryArea]
        attr_accessor :delivery_area
      
        # A delivery time for this product.
        # Corresponds to the JSON property `deliveryTime`
        # @return [Google::Apis::ContentV2_1::ProductDeliveryTimeAreaDeliveryTimeDeliveryTime]
        attr_accessor :delivery_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_area = args[:delivery_area] if args.key?(:delivery_area)
          @delivery_time = args[:delivery_time] if args.key?(:delivery_time)
        end
      end
      
      # A delivery time for this product.
      class ProductDeliveryTimeAreaDeliveryTimeDeliveryTime
        include Google::Apis::Core::Hashable
      
        # Required. The maximum number of business days (inclusive) between when an
        # order is placed and when the product ships. If a product ships in the same day,
        # set this value to 0.
        # Corresponds to the JSON property `maxHandlingTimeDays`
        # @return [Fixnum]
        attr_accessor :max_handling_time_days
      
        # Required. The maximum number of business days (inclusive) between when the
        # product ships and when the product is delivered.
        # Corresponds to the JSON property `maxTransitTimeDays`
        # @return [Fixnum]
        attr_accessor :max_transit_time_days
      
        # Required. The minimum number of business days (inclusive) between when an
        # order is placed and when the product ships. If a product ships in the same day,
        # set this value to 0.
        # Corresponds to the JSON property `minHandlingTimeDays`
        # @return [Fixnum]
        attr_accessor :min_handling_time_days
      
        # Required. The minimum number of business days (inclusive) between when the
        # product ships and when the product is delivered.
        # Corresponds to the JSON property `minTransitTimeDays`
        # @return [Fixnum]
        attr_accessor :min_transit_time_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_handling_time_days = args[:max_handling_time_days] if args.key?(:max_handling_time_days)
          @max_transit_time_days = args[:max_transit_time_days] if args.key?(:max_transit_time_days)
          @min_handling_time_days = args[:min_handling_time_days] if args.key?(:min_handling_time_days)
          @min_transit_time_days = args[:min_transit_time_days] if args.key?(:min_transit_time_days)
        end
      end
      
      # 
      class ProductDimension
        include Google::Apis::Core::Hashable
      
        # Required. The length units. Acceptable values are: - "`in`" - "`cm`"
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Required. The length value represented as a number. The value can have a
        # maximum precision of four decimal places.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The Content API ID of the product.
      class ProductId
        include Google::Apis::Core::Hashable
      
        # The Content API ID of the product, in the form `channel:contentLanguage:
        # targetCountry:offerId`.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # An issue affecting specific product.
      class ProductIssue
        include Google::Apis::Core::Hashable
      
        # A list of actionable steps that can be executed to solve the issue. An example
        # is requesting a re-review or providing arguments when merchant disagrees with
        # the issue. Actions that are supported in (your) third-party application can be
        # rendered as buttons and should be available to merchant when they expand the
        # issue.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::ContentV2_1::Action>]
        attr_accessor :actions
      
        # Overall impact of product issue.
        # Corresponds to the JSON property `impact`
        # @return [Google::Apis::ContentV2_1::ProductIssueImpact]
        attr_accessor :impact
      
        # Details of the issue as a pre-rendered HTML. HTML elements contain CSS classes
        # that can be used to customize the style of the content. Always sanitize the
        # HTML before embedding it directly to your application. The sanitizer needs to
        # allow basic HTML tags, such as: `div`, `span`, `p`, `a`, `ul`, `li`, `table`, `
        # tr`, `td`. For example, you can use [DOMPurify](https://www.npmjs.com/package/
        # dompurify). CSS classes: * `issue-detail` - top level container for the detail
        # of the issue * `callout-banners` - section of the `issue-detail` with callout
        # banners * `callout-banner` - single callout banner, inside `callout-banners` *
        # `callout-banner-info` - callout with important information (default) * `
        # callout-banner-warning` - callout with a warning * `callout-banner-error` -
        # callout informing about an error (most severe) * `issue-content` - section of
        # the `issue-detail`, contains multiple `content-element` * `content-element` -
        # content element such as a list, link or paragraph, inside `issue-content` * `
        # root-causes` - unordered list with items describing root causes of the issue,
        # inside `issue-content` * `root-causes-intro` - intro text before the `root-
        # causes` list, inside `issue-content` * `segment` - section of the text, `span`
        # inside paragraph * `segment-attribute` - section of the text that represents a
        # product attribute, for example 'image\_link' * `segment-literal` - section of
        # the text that contains a special value, for example '0-1000 kg' * `segment-
        # bold` - section of the text that should be rendered as bold * `segment-italic`
        # - section of the text that should be rendered as italic * `tooltip` - used on
        # paragraphs that should be rendered with a tooltip. A section of the text in
        # such a paragraph will have a class `tooltip-text` and is intended to be shown
        # in a mouse over dialog. If the style is not used, the `tooltip-text` section
        # would be shown on a new line, after the main part of the text. * `tooltip-text`
        # - marks a section of the text within a `tooltip`, that is intended to be
        # shown in a mouse over dialog. * `tooltip-icon` - marks a section of the text
        # within a `tooltip`, that can be replaced with a tooltip icon, for example '?'
        # or 'i'. By default, this section contains a `br` tag, that is separating the
        # main text and the tooltip text when the style is not used. * `tooltip-style-
        # question` - the tooltip shows helpful information, can use the '?' as an icon.
        # * `tooltip-style-info` - the tooltip adds additional information fitting to
        # the context, can use the 'i' as an icon. * `content-moderation` - marks the
        # paragraph that explains how the issue was identified. * `list-intro` - marks
        # the paragraph that contains an intro for a list. This paragraph will be always
        # followed by a list. * `new-element` - Present for new elements added to the
        # pre-rendered content in the future. To make sure that a new content element
        # does not break your style, you can hide everything with this class.
        # Corresponds to the JSON property `prerenderedContent`
        # @return [String]
        attr_accessor :prerendered_content
      
        # Pre-rendered HTML that contains a link to the external location where the ODS
        # can be requested and instructions for how to request it. HTML elements contain
        # CSS classes that can be used to customize the style of this snippet. Always
        # sanitize the HTML before embedding it directly to your application. The
        # sanitizer needs to allow basic HTML tags, such as: `div`, `span`, `p`, `a`, `
        # ul`, `li`, `table`, `tr`, `td`. For example, you can use [DOMPurify](https://
        # www.npmjs.com/package/dompurify). CSS classes: * `ods-section`* - wrapper
        # around the out-of-court dispute resolution section * `ods-description`* -
        # intro text for the out-of-court dispute resolution. It may contain multiple
        # segments and a link. * `ods-param`* - wrapper around the header-value pair for
        # parameters that merchant may need to provide during the ODS process. * `ods-
        # routing-id`* - ods param for the Routing ID. * `ods-reference-id`* - ods param
        # for the Routing ID. * `ods-param-header`* - header for the ODS parameter * `
        # ods-param-value`* - value of the ODS parameter. This value should be rendered
        # in a way that it is easy for merchants to identify and copy. * `segment` -
        # section of the text, `span` inside paragraph * `segment-attribute` - section
        # of the text that represents a product attribute, for example 'image\_link' * `
        # segment-literal` - section of the text that contains a special value, for
        # example '0-1000 kg' * `segment-bold` - section of the text that should be
        # rendered as bold * `segment-italic` - section of the text that should be
        # rendered as italic * `tooltip` - used on paragraphs that should be rendered
        # with a tooltip. A section of the text in such a paragraph will have a class `
        # tooltip-text` and is intended to be shown in a mouse over dialog. If the style
        # is not used, the `tooltip-text` section would be shown on a new line, after
        # the main part of the text. * `tooltip-text` - marks a section of the text
        # within a `tooltip`, that is intended to be shown in a mouse over dialog. * `
        # tooltip-icon` - marks a section of the text within a `tooltip`, that can be
        # replaced with a tooltip icon, for example '?' or 'i'. By default, this section
        # contains a `br` tag, that is separating the main text and the tooltip text
        # when the style is not used. * `tooltip-style-question` - the tooltip shows
        # helpful information, can use the '?' as an icon. * `tooltip-style-info` - the
        # tooltip adds additional information fitting to the context, can use the 'i' as
        # an icon.
        # Corresponds to the JSON property `prerenderedOutOfCourtDisputeSettlement`
        # @return [String]
        attr_accessor :prerendered_out_of_court_dispute_settlement
      
        # Title of the issue.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @impact = args[:impact] if args.key?(:impact)
          @prerendered_content = args[:prerendered_content] if args.key?(:prerendered_content)
          @prerendered_out_of_court_dispute_settlement = args[:prerendered_out_of_court_dispute_settlement] if args.key?(:prerendered_out_of_court_dispute_settlement)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Overall impact of product issue.
      class ProductIssueImpact
        include Google::Apis::Core::Hashable
      
        # Detailed impact breakdown. Explains the types of restriction the issue has in
        # different shopping destinations and territory. If present, it should be
        # rendered to the merchant. Can be shown as a mouse over dropdown or a dialog.
        # Each breakdown item represents a group of regions with the same impact details.
        # Corresponds to the JSON property `breakdowns`
        # @return [Array<Google::Apis::ContentV2_1::Breakdown>]
        attr_accessor :breakdowns
      
        # Optional. Message summarizing the overall impact of the issue. If present, it
        # should be rendered to the merchant. For example: "Limits visibility in France"
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The severity of the issue.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @breakdowns = args[:breakdowns] if args.key?(:breakdowns)
          @message = args[:message] if args.key?(:message)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # 
      class ProductProductDetail
        include Google::Apis::Core::Hashable
      
        # The name of the product detail.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # The value of the product detail.
        # Corresponds to the JSON property `attributeValue`
        # @return [String]
        attr_accessor :attribute_value
      
        # The section header used to group a set of product details.
        # Corresponds to the JSON property `sectionName`
        # @return [String]
        attr_accessor :section_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
          @attribute_value = args[:attribute_value] if args.key?(:attribute_value)
          @section_name = args[:section_name] if args.key?(:section_name)
        end
      end
      
      # 
      class ProductShipping
        include Google::Apis::Core::Hashable
      
        # The CLDR territory code of the country to which an item will ship.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The location where the shipping is applicable, represented by a location group
        # name.
        # Corresponds to the JSON property `locationGroupName`
        # @return [String]
        attr_accessor :location_group_name
      
        # The numeric ID of a location that the shipping rate applies to as defined in
        # the Google Ads API.
        # Corresponds to the JSON property `locationId`
        # @return [Fixnum]
        attr_accessor :location_id
      
        # Maximum handling time (inclusive) between when the order is received and
        # shipped in business days. 0 means that the order is shipped on the same day as
        # it's received if it happens before the cut-off time. Both maxHandlingTime and
        # maxTransitTime are required if providing shipping speeds.
        # Corresponds to the JSON property `maxHandlingTime`
        # @return [Fixnum]
        attr_accessor :max_handling_time
      
        # Maximum transit time (inclusive) between when the order has shipped and when
        # it's delivered in business days. 0 means that the order is delivered on the
        # same day as it ships. Both maxHandlingTime and maxTransitTime are required if
        # providing shipping speeds.
        # Corresponds to the JSON property `maxTransitTime`
        # @return [Fixnum]
        attr_accessor :max_transit_time
      
        # Minimum handling time (inclusive) between when the order is received and
        # shipped in business days. 0 means that the order is shipped on the same day as
        # it's received if it happens before the cut-off time. minHandlingTime can only
        # be present together with maxHandlingTime; but it's not required if
        # maxHandlingTime is present.
        # Corresponds to the JSON property `minHandlingTime`
        # @return [Fixnum]
        attr_accessor :min_handling_time
      
        # Minimum transit time (inclusive) between when the order has shipped and when
        # it's delivered in business days. 0 means that the order is delivered on the
        # same day as it ships. minTransitTime can only be present together with
        # maxTransitTime; but it's not required if maxTransitTime is present.
        # Corresponds to the JSON property `minTransitTime`
        # @return [Fixnum]
        attr_accessor :min_transit_time
      
        # The postal code range that the shipping rate applies to, represented by a
        # postal code, a postal code prefix followed by a * wildcard, a range between
        # two postal codes or two postal code prefixes of equal length.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Fixed shipping price, represented as a number.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The geographic region to which a shipping rate applies.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # A free-form description of the service class or delivery speed.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @location_group_name = args[:location_group_name] if args.key?(:location_group_name)
          @location_id = args[:location_id] if args.key?(:location_id)
          @max_handling_time = args[:max_handling_time] if args.key?(:max_handling_time)
          @max_transit_time = args[:max_transit_time] if args.key?(:max_transit_time)
          @min_handling_time = args[:min_handling_time] if args.key?(:min_handling_time)
          @min_transit_time = args[:min_transit_time] if args.key?(:min_transit_time)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @price = args[:price] if args.key?(:price)
          @region = args[:region] if args.key?(:region)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class ProductShippingDimension
        include Google::Apis::Core::Hashable
      
        # The unit of value.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The dimension of the product used to calculate the shipping cost of the item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ProductShippingWeight
        include Google::Apis::Core::Hashable
      
        # The unit of value.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The weight of the product used to calculate the shipping cost of the item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The status of a product, that is, information about a product computed
      # asynchronously.
      class ProductStatus
        include Google::Apis::Core::Hashable
      
        # Date on which the item has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The intended destinations for the product.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::ContentV2_1::ProductStatusDestinationStatus>]
        attr_accessor :destination_statuses
      
        # Date on which the item expires in Google Shopping, in ISO 8601 format.
        # Corresponds to the JSON property `googleExpirationDate`
        # @return [String]
        attr_accessor :google_expiration_date
      
        # A list of all issues associated with the product.
        # Corresponds to the JSON property `itemLevelIssues`
        # @return [Array<Google::Apis::ContentV2_1::ProductStatusItemLevelIssue>]
        attr_accessor :item_level_issues
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # productStatus`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Date on which the item has been last updated, in ISO 8601 format.
        # Corresponds to the JSON property `lastUpdateDate`
        # @return [String]
        attr_accessor :last_update_date
      
        # The link to the product.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # The ID of the product for which status is reported.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @destination_statuses = args[:destination_statuses] if args.key?(:destination_statuses)
          @google_expiration_date = args[:google_expiration_date] if args.key?(:google_expiration_date)
          @item_level_issues = args[:item_level_issues] if args.key?(:item_level_issues)
          @kind = args[:kind] if args.key?(:kind)
          @last_update_date = args[:last_update_date] if args.key?(:last_update_date)
          @link = args[:link] if args.key?(:link)
          @product_id = args[:product_id] if args.key?(:product_id)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class ProductStatusDestinationStatus
        include Google::Apis::Core::Hashable
      
        # List of country codes (ISO 3166-1 alpha-2) where the offer is approved.
        # Corresponds to the JSON property `approvedCountries`
        # @return [Array<String>]
        attr_accessor :approved_countries
      
        # The name of the destination
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # List of country codes (ISO 3166-1 alpha-2) where the offer is disapproved.
        # Corresponds to the JSON property `disapprovedCountries`
        # @return [Array<String>]
        attr_accessor :disapproved_countries
      
        # List of country codes (ISO 3166-1 alpha-2) where the offer is pending approval.
        # Corresponds to the JSON property `pendingCountries`
        # @return [Array<String>]
        attr_accessor :pending_countries
      
        # Deprecated. Destination approval status in `targetCountry` of the offer.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approved_countries = args[:approved_countries] if args.key?(:approved_countries)
          @destination = args[:destination] if args.key?(:destination)
          @disapproved_countries = args[:disapproved_countries] if args.key?(:disapproved_countries)
          @pending_countries = args[:pending_countries] if args.key?(:pending_countries)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class ProductStatusItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # List of country codes (ISO 3166-1 alpha-2) where issue applies to the offer.
        # Corresponds to the JSON property `applicableCountries`
        # @return [Array<String>]
        attr_accessor :applicable_countries
      
        # The attribute's name, if the issue is caused by a single attribute.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # The error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A short issue description in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The destination the issue applies to.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # How this issue affects serving of the offer.
        # Corresponds to the JSON property `servability`
        # @return [String]
        attr_accessor :servability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_countries = args[:applicable_countries] if args.key?(:applicable_countries)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @destination = args[:destination] if args.key?(:destination)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @resolution = args[:resolution] if args.key?(:resolution)
          @servability = args[:servability] if args.key?(:servability)
        end
      end
      
      # Structured description, for algorithmically (AI)-generated descriptions. See [
      # description](https://support.google.com/merchants/answer/6324468#When_to_use)
      # for more information.
      class ProductStructuredDescription
        include Google::Apis::Core::Hashable
      
        # Required. The description text. Maximum length is 5000 characters.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Optional. The digital source type. Acceptable values are: - "`
        # trained_algorithmic_media`" - "`default`"
        # Corresponds to the JSON property `digitalSourceType`
        # @return [String]
        attr_accessor :digital_source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @digital_source_type = args[:digital_source_type] if args.key?(:digital_source_type)
        end
      end
      
      # Structured title, for algorithmically (AI)-generated titles. See [title](https:
      # //support.google.com/merchants/answer/6324415#Whentouse) for more information.
      class ProductStructuredTitle
        include Google::Apis::Core::Hashable
      
        # Required. The title text. Maximum length is 150 characters.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Optional. The digital source type. Acceptable values are: - "`
        # trained_algorithmic_media`" - "`default`"
        # Corresponds to the JSON property `digitalSourceType`
        # @return [String]
        attr_accessor :digital_source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @digital_source_type = args[:digital_source_type] if args.key?(:digital_source_type)
        end
      end
      
      # 
      class ProductSubscriptionCost
        include Google::Apis::Core::Hashable
      
        # The amount the buyer has to pay per subscription period.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :amount
      
        # The type of subscription period. - "`month`" - "`year`"
        # Corresponds to the JSON property `period`
        # @return [String]
        attr_accessor :period
      
        # The number of subscription periods the buyer has to pay.
        # Corresponds to the JSON property `periodLength`
        # @return [Fixnum]
        attr_accessor :period_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @period = args[:period] if args.key?(:period)
          @period_length = args[:period_length] if args.key?(:period_length)
        end
      end
      
      # Information regarding sustainability related incentive programs such as
      # rebates or tax relief.
      class ProductSustainabilityIncentive
        include Google::Apis::Core::Hashable
      
        # Optional. The fixed amount of the incentive.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :amount
      
        # Optional. The percentage of the sale price that the incentive is applied to.
        # Corresponds to the JSON property `percentage`
        # @return [Float]
        attr_accessor :percentage
      
        # Required. Sustainability incentive program.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @percentage = args[:percentage] if args.key?(:percentage)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class ProductTax
        include Google::Apis::Core::Hashable
      
        # The country within which the item is taxed, specified as a CLDR territory code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The numeric ID of a location that the tax rate applies to as defined in the
        # Google Ads API.
        # Corresponds to the JSON property `locationId`
        # @return [Fixnum]
        attr_accessor :location_id
      
        # The postal code range that the tax rate applies to, represented by a ZIP code,
        # a ZIP code prefix using * wildcard, a range between two ZIP codes or two ZIP
        # code prefixes of equal length. Examples: 94114, 94*, 94002-95460, 94*-95*.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The percentage of tax rate that applies to the item price.
        # Corresponds to the JSON property `rate`
        # @return [Float]
        attr_accessor :rate
      
        # The geographic region to which the tax rate applies.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Should be set to true if tax is charged on shipping.
        # Corresponds to the JSON property `taxShip`
        # @return [Boolean]
        attr_accessor :tax_ship
        alias_method :tax_ship?, :tax_ship
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @location_id = args[:location_id] if args.key?(:location_id)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @rate = args[:rate] if args.key?(:rate)
          @region = args[:region] if args.key?(:region)
          @tax_ship = args[:tax_ship] if args.key?(:tax_ship)
        end
      end
      
      # 
      class ProductUnitPricingBaseMeasure
        include Google::Apis::Core::Hashable
      
        # The unit of the denominator.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The denominator of the unit price.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ProductUnitPricingMeasure
        include Google::Apis::Core::Hashable
      
        # The unit of the measure.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The measure of an item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Product fields. Values are only set for fields requested explicitly in the
      # request's search query.
      class ProductView
        include Google::Apis::Core::Hashable
      
        # Aggregated destination status.
        # Corresponds to the JSON property `aggregatedDestinationStatus`
        # @return [String]
        attr_accessor :aggregated_destination_status
      
        # Availability of the product.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # Brand of the product.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # First level of the product category in [Google's product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL1`
        # @return [String]
        attr_accessor :category_l1
      
        # Second level of the product category in [Google's product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL2`
        # @return [String]
        attr_accessor :category_l2
      
        # Third level of the product category in [Google's product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL3`
        # @return [String]
        attr_accessor :category_l3
      
        # Fourth level of the product category in [Google's product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL4`
        # @return [String]
        attr_accessor :category_l4
      
        # Fifth level of the product category in [Google's product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `categoryL5`
        # @return [String]
        attr_accessor :category_l5
      
        # Channel of the product (online versus local).
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Estimated performance potential compared to highest performing products of the
        # merchant.
        # Corresponds to the JSON property `clickPotential`
        # @return [String]
        attr_accessor :click_potential
      
        # Rank of the product based on its click potential. A product with `
        # click_potential_rank` 1 has the highest click potential among the merchant's
        # products that fulfill the search query conditions.
        # Corresponds to the JSON property `clickPotentialRank`
        # @return [Fixnum]
        attr_accessor :click_potential_rank
      
        # Condition of the product.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The time the merchant created the product in timestamp seconds.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Product price currency code (for example, ISO 4217). Absent if product price
        # is not available.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `expirationDate`
        # @return [Google::Apis::ContentV2_1::Date]
        attr_accessor :expiration_date
      
        # GTIN of the product.
        # Corresponds to the JSON property `gtin`
        # @return [Array<String>]
        attr_accessor :gtin
      
        # The REST ID of the product, in the form of channel:contentLanguage:
        # targetCountry:offerId. Content API methods that operate on products take this
        # as their productId parameter. Should always be included in the SELECT clause.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Item group ID provided by the merchant for grouping variants together.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # List of item issues for the product.
        # Corresponds to the JSON property `itemIssues`
        # @return [Array<Google::Apis::ContentV2_1::ProductViewItemIssue>]
        attr_accessor :item_issues
      
        # Language code of the product in BCP 47 format.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Merchant-provided id of the product.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # Product price specified as micros (1 millionth of a standard unit, 1 USD =
        # 1000000 micros) in the product currency. Absent in case the information about
        # the price of the product is not available.
        # Corresponds to the JSON property `priceMicros`
        # @return [Fixnum]
        attr_accessor :price_micros
      
        # First level of the product type in merchant's own [product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `productTypeL1`
        # @return [String]
        attr_accessor :product_type_l1
      
        # Second level of the product type in merchant's own [product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `productTypeL2`
        # @return [String]
        attr_accessor :product_type_l2
      
        # Third level of the product type in merchant's own [product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `productTypeL3`
        # @return [String]
        attr_accessor :product_type_l3
      
        # Fourth level of the product type in merchant's own [product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `productTypeL4`
        # @return [String]
        attr_accessor :product_type_l4
      
        # Fifth level of the product type in merchant's own [product taxonomy](https://
        # support.google.com/merchants/answer/6324436).
        # Corresponds to the JSON property `productTypeL5`
        # @return [String]
        attr_accessor :product_type_l5
      
        # The normalized shipping label specified in the feed
        # Corresponds to the JSON property `shippingLabel`
        # @return [String]
        attr_accessor :shipping_label
      
        # Title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregated_destination_status = args[:aggregated_destination_status] if args.key?(:aggregated_destination_status)
          @availability = args[:availability] if args.key?(:availability)
          @brand = args[:brand] if args.key?(:brand)
          @category_l1 = args[:category_l1] if args.key?(:category_l1)
          @category_l2 = args[:category_l2] if args.key?(:category_l2)
          @category_l3 = args[:category_l3] if args.key?(:category_l3)
          @category_l4 = args[:category_l4] if args.key?(:category_l4)
          @category_l5 = args[:category_l5] if args.key?(:category_l5)
          @channel = args[:channel] if args.key?(:channel)
          @click_potential = args[:click_potential] if args.key?(:click_potential)
          @click_potential_rank = args[:click_potential_rank] if args.key?(:click_potential_rank)
          @condition = args[:condition] if args.key?(:condition)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @expiration_date = args[:expiration_date] if args.key?(:expiration_date)
          @gtin = args[:gtin] if args.key?(:gtin)
          @id = args[:id] if args.key?(:id)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @item_issues = args[:item_issues] if args.key?(:item_issues)
          @language_code = args[:language_code] if args.key?(:language_code)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @price_micros = args[:price_micros] if args.key?(:price_micros)
          @product_type_l1 = args[:product_type_l1] if args.key?(:product_type_l1)
          @product_type_l2 = args[:product_type_l2] if args.key?(:product_type_l2)
          @product_type_l3 = args[:product_type_l3] if args.key?(:product_type_l3)
          @product_type_l4 = args[:product_type_l4] if args.key?(:product_type_l4)
          @product_type_l5 = args[:product_type_l5] if args.key?(:product_type_l5)
          @shipping_label = args[:shipping_label] if args.key?(:shipping_label)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Item issue associated with the product.
      class ProductViewItemIssue
        include Google::Apis::Core::Hashable
      
        # Type of the item issue.
        # Corresponds to the JSON property `issueType`
        # @return [Google::Apis::ContentV2_1::ProductViewItemIssueItemIssueType]
        attr_accessor :issue_type
      
        # Item issue resolution.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # Severity of an issue per destination in a region, and aggregated severity.
        # Corresponds to the JSON property `severity`
        # @return [Google::Apis::ContentV2_1::ProductViewItemIssueItemIssueSeverity]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_type = args[:issue_type] if args.key?(:issue_type)
          @resolution = args[:resolution] if args.key?(:resolution)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Issue severity for all affected regions in a destination.
      class ProductViewItemIssueIssueSeverityPerDestination
        include Google::Apis::Core::Hashable
      
        # List of demoted countries in the destination.
        # Corresponds to the JSON property `demotedCountries`
        # @return [Array<String>]
        attr_accessor :demoted_countries
      
        # Issue destination.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # List of disapproved countries in the destination.
        # Corresponds to the JSON property `disapprovedCountries`
        # @return [Array<String>]
        attr_accessor :disapproved_countries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @demoted_countries = args[:demoted_countries] if args.key?(:demoted_countries)
          @destination = args[:destination] if args.key?(:destination)
          @disapproved_countries = args[:disapproved_countries] if args.key?(:disapproved_countries)
        end
      end
      
      # Severity of an issue per destination in a region, and aggregated severity.
      class ProductViewItemIssueItemIssueSeverity
        include Google::Apis::Core::Hashable
      
        # Severity of an issue aggregated for destination.
        # Corresponds to the JSON property `aggregatedSeverity`
        # @return [String]
        attr_accessor :aggregated_severity
      
        # Item issue severity for every destination.
        # Corresponds to the JSON property `severityPerDestination`
        # @return [Array<Google::Apis::ContentV2_1::ProductViewItemIssueIssueSeverityPerDestination>]
        attr_accessor :severity_per_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregated_severity = args[:aggregated_severity] if args.key?(:aggregated_severity)
          @severity_per_destination = args[:severity_per_destination] if args.key?(:severity_per_destination)
        end
      end
      
      # Type of the item issue.
      class ProductViewItemIssueItemIssueType
        include Google::Apis::Core::Hashable
      
        # Canonical attribute name for attribute-specific issues.
        # Corresponds to the JSON property `canonicalAttribute`
        # @return [String]
        attr_accessor :canonical_attribute
      
        # Error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_attribute = args[:canonical_attribute] if args.key?(:canonical_attribute)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # 
      class ProductWeight
        include Google::Apis::Core::Hashable
      
        # Required. The weight unit. Acceptable values are: - "`g`" - "`kg`" - "`oz`" - "
        # `lb`"
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Required. The weight represented as a number. The weight can have a maximum
        # precision of four decimal places.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ProductsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ProductsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch products request.
      class ProductsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The Content API Supplemental Feed ID. If present then product insertion or
        # deletion applies to a supplemental feed instead of primary Content API feed.
        # Corresponds to the JSON property `feedId`
        # @return [Fixnum]
        attr_accessor :feed_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`delete`" - "`get`" -
        # "`insert`" - "`update`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Required product attributes are primarily defined by the product data
        # specification. See the Product Data Specification Help Center article for
        # information. Product data. After inserting, updating, or deleting a product,
        # it may take several minutes before changes take effect. The following
        # reference documentation lists the field names in the **camelCase** casing
        # style while the Products Data Specification lists the names in the **
        # snake_case** casing style.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2_1::Product]
        attr_accessor :product
      
        # The ID of the product to get or mutate. Only defined if the method is `get`, `
        # delete`, or `update`.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The comma-separated list of product attributes to be updated. Example: `"title,
        # salePrice"`. Attributes specified in the update mask without a value specified
        # in the body will be deleted from the product. *You must specify the update
        # mask to delete attributes.* Only top-level product attributes can be updated.
        # If not defined, product attributes with set values will be updated and other
        # attributes will stay unchanged. Only defined if the method is `update`.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @feed_id = args[:feed_id] if args.key?(:feed_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @product = args[:product] if args.key?(:product)
          @product_id = args[:product_id] if args.key?(:product_id)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # 
      class ProductsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ProductsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # productsCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch products response.
      class ProductsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # productsCustomBatchResponseEntry`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Required product attributes are primarily defined by the product data
        # specification. See the Product Data Specification Help Center article for
        # information. Product data. After inserting, updating, or deleting a product,
        # it may take several minutes before changes take effect. The following
        # reference documentation lists the field names in the **camelCase** casing
        # style while the Products Data Specification lists the names in the **
        # snake_case** casing style.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2_1::Product]
        attr_accessor :product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @product = args[:product] if args.key?(:product)
        end
      end
      
      # 
      class ProductsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # productsListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of products.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::Product>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class ProductstatusesCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ProductstatusesCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch productstatuses request.
      class ProductstatusesCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # If set, only issues for the specified destinations are returned, otherwise
        # only issues for the Shopping destination.
        # Corresponds to the JSON property `destinations`
        # @return [Array<String>]
        attr_accessor :destinations
      
        # Deprecated: Setting this field has no effect and attributes are never included.
        # Corresponds to the JSON property `includeAttributes`
        # @return [Boolean]
        attr_accessor :include_attributes
        alias_method :include_attributes?, :include_attributes
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`get`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The ID of the product whose status to get.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @destinations = args[:destinations] if args.key?(:destinations)
          @include_attributes = args[:include_attributes] if args.key?(:include_attributes)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # 
      class ProductstatusesCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # productstatusesCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch productstatuses response.
      class ProductstatusesCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # productstatusesCustomBatchResponseEntry`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The status of a product, that is, information about a product computed
        # asynchronously.
        # Corresponds to the JSON property `productStatus`
        # @return [Google::Apis::ContentV2_1::ProductStatus]
        attr_accessor :product_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @product_status = args[:product_status] if args.key?(:product_status)
        end
      end
      
      # 
      class ProductstatusesListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # productstatusesListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of products statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::ProductStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Represents a promotion. See the following articles for more details. * [
      # Promotions feed specification](https://support.google.com/merchants/answer/
      # 2906014) * [Local promotions feed specification](https://support.google.com/
      # merchants/answer/10146130) * [Promotions on Buy on Google product data
      # specification](https://support.google.com/merchants/answer/9173673)
      class Promotion
        include Google::Apis::Core::Hashable
      
        # Product filter by brand for the promotion.
        # Corresponds to the JSON property `brand`
        # @return [Array<String>]
        attr_accessor :brand
      
        # Product filter by brand exclusion for the promotion.
        # Corresponds to the JSON property `brandExclusion`
        # @return [Array<String>]
        attr_accessor :brand_exclusion
      
        # Required. The content language used as part of the unique identifier. `en`
        # content language is available for all target countries. `fr` content language
        # is available for `CA` and `FR` target countries. `de` content language is
        # available for `DE` target country. `nl` content language is available for `NL`
        # target country. `it` content language is available for `IT` target country. `
        # pt` content language is available for `BR` target country. `ja` content
        # language is available for `JP` target country. `ko` content language is
        # available for `KR` target country.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Required. Coupon value type for the promotion.
        # Corresponds to the JSON property `couponValueType`
        # @return [String]
        attr_accessor :coupon_value_type
      
        # The custom redemption restriction for the promotion. If the `
        # redemption_restriction` field is set to `CUSTOM`, this field must be set.
        # Corresponds to the JSON property `customRedemptionRestriction`
        # @return [String]
        attr_accessor :custom_redemption_restriction
      
        # Free gift description for the promotion.
        # Corresponds to the JSON property `freeGiftDescription`
        # @return [String]
        attr_accessor :free_gift_description
      
        # Free gift item ID for the promotion.
        # Corresponds to the JSON property `freeGiftItemId`
        # @return [String]
        attr_accessor :free_gift_item_id
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `freeGiftValue`
        # @return [Google::Apis::ContentV2_1::PriceAmount]
        attr_accessor :free_gift_value
      
        # Generic redemption code for the promotion. To be used with the `offerType`
        # field.
        # Corresponds to the JSON property `genericRedemptionCode`
        # @return [String]
        attr_accessor :generic_redemption_code
      
        # The number of items discounted in the promotion.
        # Corresponds to the JSON property `getThisQuantityDiscounted`
        # @return [Fixnum]
        attr_accessor :get_this_quantity_discounted
      
        # Output only. The REST promotion ID to uniquely identify the promotion. Content
        # API methods that operate on promotions take this as their `promotionId`
        # parameter. The REST ID for a promotion is of the form channel:contentLanguage:
        # targetCountry:promotionId The `channel` field has a value of `"online"`, `"
        # in_store"`, or `"online_in_store"`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Product filter by item group ID for the promotion.
        # Corresponds to the JSON property `itemGroupId`
        # @return [Array<String>]
        attr_accessor :item_group_id
      
        # Product filter by item group ID exclusion for the promotion.
        # Corresponds to the JSON property `itemGroupIdExclusion`
        # @return [Array<String>]
        attr_accessor :item_group_id_exclusion
      
        # Product filter by item ID for the promotion.
        # Corresponds to the JSON property `itemId`
        # @return [Array<String>]
        attr_accessor :item_id
      
        # Product filter by item ID exclusion for the promotion.
        # Corresponds to the JSON property `itemIdExclusion`
        # @return [Array<String>]
        attr_accessor :item_id_exclusion
      
        # Maximum purchase quantity for the promotion.
        # Corresponds to the JSON property `limitQuantity`
        # @return [Fixnum]
        attr_accessor :limit_quantity
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `limitValue`
        # @return [Google::Apis::ContentV2_1::PriceAmount]
        attr_accessor :limit_value
      
        # Required. Long title for the promotion.
        # Corresponds to the JSON property `longTitle`
        # @return [String]
        attr_accessor :long_title
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `maxDiscountAmount`
        # @return [Google::Apis::ContentV2_1::PriceAmount]
        attr_accessor :max_discount_amount
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `minimumPurchaseAmount`
        # @return [Google::Apis::ContentV2_1::PriceAmount]
        attr_accessor :minimum_purchase_amount
      
        # Minimum purchase quantity for the promotion.
        # Corresponds to the JSON property `minimumPurchaseQuantity`
        # @return [Fixnum]
        attr_accessor :minimum_purchase_quantity
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `moneyBudget`
        # @return [Google::Apis::ContentV2_1::PriceAmount]
        attr_accessor :money_budget
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `moneyOffAmount`
        # @return [Google::Apis::ContentV2_1::PriceAmount]
        attr_accessor :money_off_amount
      
        # Required. Type of the promotion.
        # Corresponds to the JSON property `offerType`
        # @return [String]
        attr_accessor :offer_type
      
        # Order limit for the promotion.
        # Corresponds to the JSON property `orderLimit`
        # @return [Fixnum]
        attr_accessor :order_limit
      
        # The percentage discount offered in the promotion.
        # Corresponds to the JSON property `percentOff`
        # @return [Fixnum]
        attr_accessor :percent_off
      
        # Required. Applicability of the promotion to either all products or only
        # specific products.
        # Corresponds to the JSON property `productApplicability`
        # @return [String]
        attr_accessor :product_applicability
      
        # Product filter by product type for the promotion.
        # Corresponds to the JSON property `productType`
        # @return [Array<String>]
        attr_accessor :product_type
      
        # Product filter by product type exclusion for the promotion.
        # Corresponds to the JSON property `productTypeExclusion`
        # @return [Array<String>]
        attr_accessor :product_type_exclusion
      
        # Destination ID for the promotion.
        # Corresponds to the JSON property `promotionDestinationIds`
        # @return [Array<String>]
        attr_accessor :promotion_destination_ids
      
        # String representation of the promotion display dates. Deprecated. Use `
        # promotion_display_time_period` instead.
        # Corresponds to the JSON property `promotionDisplayDates`
        # @return [String]
        attr_accessor :promotion_display_dates
      
        # A message that represents a time period.
        # Corresponds to the JSON property `promotionDisplayTimePeriod`
        # @return [Google::Apis::ContentV2_1::TimePeriod]
        attr_accessor :promotion_display_time_period
      
        # String representation of the promotion effective dates. Deprecated. Use `
        # promotion_effective_time_period` instead.
        # Corresponds to the JSON property `promotionEffectiveDates`
        # @return [String]
        attr_accessor :promotion_effective_dates
      
        # A message that represents a time period.
        # Corresponds to the JSON property `promotionEffectiveTimePeriod`
        # @return [Google::Apis::ContentV2_1::TimePeriod]
        attr_accessor :promotion_effective_time_period
      
        # Required. The user provided promotion ID to uniquely identify the promotion.
        # Corresponds to the JSON property `promotionId`
        # @return [String]
        attr_accessor :promotion_id
      
        # The status of the promotion.
        # Corresponds to the JSON property `promotionStatus`
        # @return [Google::Apis::ContentV2_1::PromotionPromotionStatus]
        attr_accessor :promotion_status
      
        # URL to the page on the merchant's site where the promotion shows. Local
        # Inventory ads promotions throw an error if no promo url is included. URL is
        # used to confirm that the promotion is valid and can be redeemed.
        # Corresponds to the JSON property `promotionUrl`
        # @return [String]
        attr_accessor :promotion_url
      
        # Required. Redemption channel for the promotion. At least one channel is
        # required.
        # Corresponds to the JSON property `redemptionChannel`
        # @return [Array<String>]
        attr_accessor :redemption_channel
      
        # The redemption restriction for the promotion.
        # Corresponds to the JSON property `redemptionRestriction`
        # @return [String]
        attr_accessor :redemption_restriction
      
        # Shipping service names for the promotion.
        # Corresponds to the JSON property `shippingServiceNames`
        # @return [Array<String>]
        attr_accessor :shipping_service_names
      
        # Whether the promotion applies to all stores, or only specified stores. Local
        # Inventory ads promotions throw an error if no store applicability is included.
        # An INVALID_ARGUMENT error is thrown if store_applicability is set to
        # ALL_STORES and store_code or score_code_exclusion is set to a value.
        # Corresponds to the JSON property `storeApplicability`
        # @return [String]
        attr_accessor :store_applicability
      
        # Store codes to include for the promotion.
        # Corresponds to the JSON property `storeCode`
        # @return [Array<String>]
        attr_accessor :store_code
      
        # Store codes to exclude for the promotion.
        # Corresponds to the JSON property `storeCodeExclusion`
        # @return [Array<String>]
        attr_accessor :store_code_exclusion
      
        # Required. The target country used as part of the unique identifier. Can be `AU`
        # , `CA`, `DE`, `FR`, `GB`, `IN`, `US`, `BR`, `ES`, `NL`, `JP`, `IT` or `KR`.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @brand_exclusion = args[:brand_exclusion] if args.key?(:brand_exclusion)
          @content_language = args[:content_language] if args.key?(:content_language)
          @coupon_value_type = args[:coupon_value_type] if args.key?(:coupon_value_type)
          @custom_redemption_restriction = args[:custom_redemption_restriction] if args.key?(:custom_redemption_restriction)
          @free_gift_description = args[:free_gift_description] if args.key?(:free_gift_description)
          @free_gift_item_id = args[:free_gift_item_id] if args.key?(:free_gift_item_id)
          @free_gift_value = args[:free_gift_value] if args.key?(:free_gift_value)
          @generic_redemption_code = args[:generic_redemption_code] if args.key?(:generic_redemption_code)
          @get_this_quantity_discounted = args[:get_this_quantity_discounted] if args.key?(:get_this_quantity_discounted)
          @id = args[:id] if args.key?(:id)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @item_group_id_exclusion = args[:item_group_id_exclusion] if args.key?(:item_group_id_exclusion)
          @item_id = args[:item_id] if args.key?(:item_id)
          @item_id_exclusion = args[:item_id_exclusion] if args.key?(:item_id_exclusion)
          @limit_quantity = args[:limit_quantity] if args.key?(:limit_quantity)
          @limit_value = args[:limit_value] if args.key?(:limit_value)
          @long_title = args[:long_title] if args.key?(:long_title)
          @max_discount_amount = args[:max_discount_amount] if args.key?(:max_discount_amount)
          @minimum_purchase_amount = args[:minimum_purchase_amount] if args.key?(:minimum_purchase_amount)
          @minimum_purchase_quantity = args[:minimum_purchase_quantity] if args.key?(:minimum_purchase_quantity)
          @money_budget = args[:money_budget] if args.key?(:money_budget)
          @money_off_amount = args[:money_off_amount] if args.key?(:money_off_amount)
          @offer_type = args[:offer_type] if args.key?(:offer_type)
          @order_limit = args[:order_limit] if args.key?(:order_limit)
          @percent_off = args[:percent_off] if args.key?(:percent_off)
          @product_applicability = args[:product_applicability] if args.key?(:product_applicability)
          @product_type = args[:product_type] if args.key?(:product_type)
          @product_type_exclusion = args[:product_type_exclusion] if args.key?(:product_type_exclusion)
          @promotion_destination_ids = args[:promotion_destination_ids] if args.key?(:promotion_destination_ids)
          @promotion_display_dates = args[:promotion_display_dates] if args.key?(:promotion_display_dates)
          @promotion_display_time_period = args[:promotion_display_time_period] if args.key?(:promotion_display_time_period)
          @promotion_effective_dates = args[:promotion_effective_dates] if args.key?(:promotion_effective_dates)
          @promotion_effective_time_period = args[:promotion_effective_time_period] if args.key?(:promotion_effective_time_period)
          @promotion_id = args[:promotion_id] if args.key?(:promotion_id)
          @promotion_status = args[:promotion_status] if args.key?(:promotion_status)
          @promotion_url = args[:promotion_url] if args.key?(:promotion_url)
          @redemption_channel = args[:redemption_channel] if args.key?(:redemption_channel)
          @redemption_restriction = args[:redemption_restriction] if args.key?(:redemption_restriction)
          @shipping_service_names = args[:shipping_service_names] if args.key?(:shipping_service_names)
          @store_applicability = args[:store_applicability] if args.key?(:store_applicability)
          @store_code = args[:store_code] if args.key?(:store_code)
          @store_code_exclusion = args[:store_code_exclusion] if args.key?(:store_code_exclusion)
          @target_country = args[:target_country] if args.key?(:target_country)
        end
      end
      
      # The status of the promotion.
      class PromotionPromotionStatus
        include Google::Apis::Core::Hashable
      
        # Date on which the promotion has been created in [ISO 8601](http://en.wikipedia.
        # org/wiki/ISO_8601) format: Date, time, and offset, for example "2020-01-02T09:
        # 00:00+01:00" or "2020-01-02T09:00:00Z"
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The intended destinations for the promotion.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::ContentV2_1::PromotionPromotionStatusDestinationStatus>]
        attr_accessor :destination_statuses
      
        # Date on which the promotion status has been last updated in [ISO 8601](http://
        # en.wikipedia.org/wiki/ISO_8601) format: Date, time, and offset, for example "
        # 2020-01-02T09:00:00+01:00" or "2020-01-02T09:00:00Z"
        # Corresponds to the JSON property `lastUpdateDate`
        # @return [String]
        attr_accessor :last_update_date
      
        # A list of issues associated with the promotion.
        # Corresponds to the JSON property `promotionIssue`
        # @return [Array<Google::Apis::ContentV2_1::PromotionPromotionStatusPromotionIssue>]
        attr_accessor :promotion_issue
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @destination_statuses = args[:destination_statuses] if args.key?(:destination_statuses)
          @last_update_date = args[:last_update_date] if args.key?(:last_update_date)
          @promotion_issue = args[:promotion_issue] if args.key?(:promotion_issue)
        end
      end
      
      # The destination status of the promotion.
      class PromotionPromotionStatusDestinationStatus
        include Google::Apis::Core::Hashable
      
        # The name of the destination.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # The status for the specified destination.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The issue associated with the promotion.
      class PromotionPromotionStatusPromotionIssue
        include Google::Apis::Core::Hashable
      
        # Code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Explanation of the issue.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @detail = args[:detail] if args.key?(:detail)
        end
      end
      
      # Settings for Pub/Sub notifications, all methods require that the caller is a
      # direct user of the merchant center account.
      class PubsubNotificationSettings
        include Google::Apis::Core::Hashable
      
        # Cloud pub/sub topic to which notifications are sent (read-only).
        # Corresponds to the JSON property `cloudTopicName`
        # @return [String]
        attr_accessor :cloud_topic_name
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # pubsubNotificationSettings`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of event types. Acceptable values are: - "`orderPendingShipment`"
        # Corresponds to the JSON property `registeredEvents`
        # @return [Array<String>]
        attr_accessor :registered_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_topic_name = args[:cloud_topic_name] if args.key?(:cloud_topic_name)
          @kind = args[:kind] if args.key?(:kind)
          @registered_events = args[:registered_events] if args.key?(:registered_events)
        end
      end
      
      # 
      class RateGroup
        include Google::Apis::Core::Hashable
      
        # A list of shipping labels defining the products to which this rate group
        # applies to. This is a disjunction: only one of the labels has to match for the
        # rate group to apply. May only be empty for the last rate group of a service.
        # Required.
        # Corresponds to the JSON property `applicableShippingLabels`
        # @return [Array<String>]
        attr_accessor :applicable_shipping_labels
      
        # A list of carrier rates that can be referred to by `mainTable` or `singleValue`
        # .
        # Corresponds to the JSON property `carrierRates`
        # @return [Array<Google::Apis::ContentV2_1::CarrierRate>]
        attr_accessor :carrier_rates
      
        # A table defining the rate group, when `singleValue` is not expressive enough.
        # Can only be set if `singleValue` is not set.
        # Corresponds to the JSON property `mainTable`
        # @return [Google::Apis::ContentV2_1::Table]
        attr_accessor :main_table
      
        # Name of the rate group. Optional. If set has to be unique within shipping
        # service.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The single value of a rate group or the value of a rate group table's cell.
        # Exactly one of `noShipping`, `flatRate`, `pricePercentage`, `carrierRateName`,
        # `subtableName` must be set.
        # Corresponds to the JSON property `singleValue`
        # @return [Google::Apis::ContentV2_1::Value]
        attr_accessor :single_value
      
        # A list of subtables referred to by `mainTable`. Can only be set if `mainTable`
        # is set.
        # Corresponds to the JSON property `subtables`
        # @return [Array<Google::Apis::ContentV2_1::Table>]
        attr_accessor :subtables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_shipping_labels = args[:applicable_shipping_labels] if args.key?(:applicable_shipping_labels)
          @carrier_rates = args[:carrier_rates] if args.key?(:carrier_rates)
          @main_table = args[:main_table] if args.key?(:main_table)
          @name = args[:name] if args.key?(:name)
          @single_value = args[:single_value] if args.key?(:single_value)
          @subtables = args[:subtables] if args.key?(:subtables)
        end
      end
      
      # Recommendations are suggested ways to improve your merchant account's
      # performance. For example, to engage with a feature, or start using a new
      # Google product.
      class Recommendation
        include Google::Apis::Core::Hashable
      
        # Output only. CTAs of this recommendation. Repeated.
        # Corresponds to the JSON property `additionalCallToAction`
        # @return [Array<Google::Apis::ContentV2_1::RecommendationCallToAction>]
        attr_accessor :additional_call_to_action
      
        # Output only. List of additional localized descriptions for a recommendation.
        # Localication uses the `languageCode` field in `GenerateRecommendations`
        # requests. Not all description types are guaranteed to be present and we
        # recommend to rely on default description.
        # Corresponds to the JSON property `additionalDescriptions`
        # @return [Array<Google::Apis::ContentV2_1::RecommendationDescription>]
        attr_accessor :additional_descriptions
      
        # Output only. Any creatives attached to the recommendation. Repeated.
        # Corresponds to the JSON property `creative`
        # @return [Array<Google::Apis::ContentV2_1::RecommendationCreative>]
        attr_accessor :creative
      
        # Call to action (CTA) that explains how a merchant can implement this
        # recommendation
        # Corresponds to the JSON property `defaultCallToAction`
        # @return [Google::Apis::ContentV2_1::RecommendationCallToAction]
        attr_accessor :default_call_to_action
      
        # Optional. Localized recommendation description. The localization the `@link `
        # GenerateRecommendationsRequest.language_code`` field in `@link `
        # GenerateRecommendationsRequest`` requests.
        # Corresponds to the JSON property `defaultDescription`
        # @return [String]
        attr_accessor :default_description
      
        # Optional. A numerical score of the impact from the recommendation's
        # description. For example, a recommendation might suggest an upward trend in
        # sales for a certain product. Higher number means larger impact.
        # Corresponds to the JSON property `numericalImpact`
        # @return [Fixnum]
        attr_accessor :numerical_impact
      
        # Optional. Indicates whether a user needs to pay when they complete the user
        # journey suggested by the recommendation.
        # Corresponds to the JSON property `paid`
        # @return [Boolean]
        attr_accessor :paid
        alias_method :paid?, :paid
      
        # Optional. Localized recommendation name. The localization uses the `@link `
        # GenerateRecommendationsRequest.language_code`` field in `@link `
        # GenerateRecommendationsRequest`` requests.
        # Corresponds to the JSON property `recommendationName`
        # @return [String]
        attr_accessor :recommendation_name
      
        # Optional. Subtype of the recommendations. Only applicable when multiple
        # recommendations can be generated per type, and is used as an identifier of
        # recommendation under the same recommendation type.
        # Corresponds to the JSON property `subType`
        # @return [String]
        attr_accessor :sub_type
      
        # Optional. Localized Recommendation Title. Localization uses the `@link `
        # GenerateRecommendationsRequest.language_code`` field in `@link `
        # GenerateRecommendationsRequest`` requests.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Type of the recommendation. List of currently available
        # recommendation types: - OPPORTUNITY_CREATE_NEW_COLLECTION -
        # OPPORTUNITY_CREATE_EMAIL_CAMPAIGN
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_call_to_action = args[:additional_call_to_action] if args.key?(:additional_call_to_action)
          @additional_descriptions = args[:additional_descriptions] if args.key?(:additional_descriptions)
          @creative = args[:creative] if args.key?(:creative)
          @default_call_to_action = args[:default_call_to_action] if args.key?(:default_call_to_action)
          @default_description = args[:default_description] if args.key?(:default_description)
          @numerical_impact = args[:numerical_impact] if args.key?(:numerical_impact)
          @paid = args[:paid] if args.key?(:paid)
          @recommendation_name = args[:recommendation_name] if args.key?(:recommendation_name)
          @sub_type = args[:sub_type] if args.key?(:sub_type)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Call to action (CTA) that explains how a merchant can implement this
      # recommendation
      class RecommendationCallToAction
        include Google::Apis::Core::Hashable
      
        # Output only. Intent of the action. This value describes the intent (for
        # example, `OPEN_CREATE_EMAIL_CAMPAIGN_FLOW`) and can vary from recommendation
        # to recommendation. This value can change over time for the same recommendation.
        # Currently available intent values: - OPEN_CREATE_EMAIL_CAMPAIGN_FLOW: Opens a
        # user journey where they can create a marketing email campaign. (No default URL)
        # - OPEN_CREATE_COLLECTION_TAB: Opens a user journey where they can [create a
        # collection](https://support.google.com/merchants/answer/9703228) for their
        # Merchant account. (No default URL)
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # Output only. Localized text of the CTA. Optional.
        # Corresponds to the JSON property `localizedText`
        # @return [String]
        attr_accessor :localized_text
      
        # Optional. URL of the CTA. This field will only be set for some recommendations
        # where there is a suggested landing URL. Otherwise it will be set to an empty
        # string. We recommend developers to use their own custom landing page according
        # to the description of the intent field above when this uri field is empty.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intent = args[:intent] if args.key?(:intent)
          @localized_text = args[:localized_text] if args.key?(:localized_text)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Creative is a multimedia attachment to recommendation that can be used on the
      # frontend.
      class RecommendationCreative
        include Google::Apis::Core::Hashable
      
        # Type of the creative.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # URL of the creative.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Google-provided description for the recommendation.
      class RecommendationDescription
        include Google::Apis::Core::Hashable
      
        # Output only. Text of the description.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Output only. Type of the description.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a geographic region that you can use as a target with both the `
      # RegionalInventory` and `ShippingSettings` services. You can define regions as
      # collections of either postal codes or, in some countries, using predefined
      # geotargets.
      class Region
        include Google::Apis::Core::Hashable
      
        # The display name of the region.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A list of geotargets that defines the region area.
        # Corresponds to the JSON property `geotargetArea`
        # @return [Google::Apis::ContentV2_1::RegionGeoTargetArea]
        attr_accessor :geotarget_area
      
        # Output only. Immutable. Merchant that owns the region.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # A list of postal codes that defines the region area. Note: All regions defined
        # using postal codes are accessible via the account's `ShippingSettings.
        # postalCodeGroups` resource.
        # Corresponds to the JSON property `postalCodeArea`
        # @return [Google::Apis::ContentV2_1::RegionPostalCodeArea]
        attr_accessor :postal_code_area
      
        # Output only. Immutable. The ID uniquely identifying each region.
        # Corresponds to the JSON property `regionId`
        # @return [String]
        attr_accessor :region_id
      
        # Output only. Indicates if the region is eligible to use in the Regional
        # Inventory configuration.
        # Corresponds to the JSON property `regionalInventoryEligible`
        # @return [Boolean]
        attr_accessor :regional_inventory_eligible
        alias_method :regional_inventory_eligible?, :regional_inventory_eligible
      
        # Output only. Indicates if the region is eligible to use in the Shipping
        # Services configuration.
        # Corresponds to the JSON property `shippingEligible`
        # @return [Boolean]
        attr_accessor :shipping_eligible
        alias_method :shipping_eligible?, :shipping_eligible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geotarget_area = args[:geotarget_area] if args.key?(:geotarget_area)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @postal_code_area = args[:postal_code_area] if args.key?(:postal_code_area)
          @region_id = args[:region_id] if args.key?(:region_id)
          @regional_inventory_eligible = args[:regional_inventory_eligible] if args.key?(:regional_inventory_eligible)
          @shipping_eligible = args[:shipping_eligible] if args.key?(:shipping_eligible)
        end
      end
      
      # A list of geotargets that defines the region area.
      class RegionGeoTargetArea
        include Google::Apis::Core::Hashable
      
        # Required. A non-empty list of [location IDs](https://developers.google.com/
        # adwords/api/docs/appendix/geotargeting). They must all be of the same location
        # type (e.g., state).
        # Corresponds to the JSON property `geotargetCriteriaIds`
        # @return [Array<Fixnum>]
        attr_accessor :geotarget_criteria_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geotarget_criteria_ids = args[:geotarget_criteria_ids] if args.key?(:geotarget_criteria_ids)
        end
      end
      
      # A list of postal codes that defines the region area. Note: All regions defined
      # using postal codes are accessible via the account's `ShippingSettings.
      # postalCodeGroups` resource.
      class RegionPostalCodeArea
        include Google::Apis::Core::Hashable
      
        # Required. A range of postal codes.
        # Corresponds to the JSON property `postalCodes`
        # @return [Array<Google::Apis::ContentV2_1::RegionPostalCodeAreaPostalCodeRange>]
        attr_accessor :postal_codes
      
        # Required. CLDR territory code or the country the postal code group applies to.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postal_codes = args[:postal_codes] if args.key?(:postal_codes)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # A range of postal codes that defines the region area.
      class RegionPostalCodeAreaPostalCodeRange
        include Google::Apis::Core::Hashable
      
        # Required. A postal code or a pattern of the form prefix* denoting the
        # inclusive lower bound of the range defining the area. Examples values: "94108",
        # "9410*", "9*".
        # Corresponds to the JSON property `begin`
        # @return [String]
        attr_accessor :begin
      
        # Optional. A postal code or a pattern of the form prefix* denoting the
        # inclusive upper bound of the range defining the area. It must have the same
        # length as postalCodeRangeBegin: if postalCodeRangeBegin is a postal code then
        # postalCodeRangeEnd must be a postal code too; if postalCodeRangeBegin is a
        # pattern then postalCodeRangeEnd must be a pattern with the same prefix length.
        # Optional: if not set, then the area is defined as being all the postal codes
        # matching postalCodeRangeBegin.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @begin = args[:begin] if args.key?(:begin)
          @end = args[:end] if args.key?(:end)
        end
      end
      
      # Regional inventory resource. contains the regional name and all attributes
      # which are overridden for the specified region.
      class RegionalInventory
        include Google::Apis::Core::Hashable
      
        # The availability of the product.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # A list of custom (merchant-provided) attributes. It can also be used for
        # submitting any attribute of the feed specification in its generic form.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::ContentV2_1::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # regionalInventory`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The price of the product.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The ID uniquely identifying each region.
        # Corresponds to the JSON property `regionId`
        # @return [String]
        attr_accessor :region_id
      
        # The sale price of the product. Mandatory if `sale_price_effective_date` is
        # defined.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :sale_price
      
        # A date range represented by a pair of ISO 8601 dates separated by a space,
        # comma, or slash. Both dates might be specified as 'null' if undecided.
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [String]
        attr_accessor :sale_price_effective_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] if args.key?(:availability)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @kind = args[:kind] if args.key?(:kind)
          @price = args[:price] if args.key?(:price)
          @region_id = args[:region_id] if args.key?(:region_id)
          @sale_price = args[:sale_price] if args.key?(:sale_price)
          @sale_price_effective_date = args[:sale_price_effective_date] if args.key?(:sale_price_effective_date)
        end
      end
      
      # 
      class RegionalinventoryCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::RegionalinventoryCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch regional inventory request.
      class RegionalinventoryCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Method of the batch request entry. Acceptable values are: - "`insert`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The ID of the product for which to update price and availability.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Regional inventory resource. contains the regional name and all attributes
        # which are overridden for the specified region.
        # Corresponds to the JSON property `regionalInventory`
        # @return [Google::Apis::ContentV2_1::RegionalInventory]
        attr_accessor :regional_inventory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @product_id = args[:product_id] if args.key?(:product_id)
          @regional_inventory = args[:regional_inventory] if args.key?(:regional_inventory)
        end
      end
      
      # 
      class RegionalinventoryCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # regionalinventoryCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch regional inventory response.
      class RegionalinventoryCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # regionalinventoryCustomBatchResponseEntry`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Regional inventory resource. contains the regional name and all attributes
        # which are overridden for the specified region.
        # Corresponds to the JSON property `regionalInventory`
        # @return [Google::Apis::ContentV2_1::RegionalInventory]
        attr_accessor :regional_inventory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @regional_inventory = args[:regional_inventory] if args.key?(:regional_inventory)
        end
      end
      
      # The payload for configuring how the content should be rendered.
      class RenderAccountIssuesRequestPayload
        include Google::Apis::Core::Hashable
      
        # Optional. How the detailed content should be returned. Default option is to
        # return the content as a pre-rendered HTML text.
        # Corresponds to the JSON property `contentOption`
        # @return [String]
        attr_accessor :content_option
      
        # Optional. How actions with user input form should be handled. If not provided,
        # actions will be returned as links that points merchant to Merchant Center
        # where they can request the action.
        # Corresponds to the JSON property `userInputActionOption`
        # @return [String]
        attr_accessor :user_input_action_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_option = args[:content_option] if args.key?(:content_option)
          @user_input_action_option = args[:user_input_action_option] if args.key?(:user_input_action_option)
        end
      end
      
      # Response containing support content and actions for listed account issues.
      class RenderAccountIssuesResponse
        include Google::Apis::Core::Hashable
      
        # The Alternate Dispute Resolution (ADR) that may be available to merchants in
        # some regions. If present, the link should be shown on the same page as the
        # list of issues.
        # Corresponds to the JSON property `alternateDisputeResolution`
        # @return [Google::Apis::ContentV2_1::AlternateDisputeResolution]
        attr_accessor :alternate_dispute_resolution
      
        # List of account issues for a given account. This list can be shown with
        # compressed, expandable items. In the compressed form, the title and impact
        # should be shown for each issue. Once the issue is expanded, the detailed
        # content and available actions should be rendered.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ContentV2_1::AccountIssue>]
        attr_accessor :issues
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_dispute_resolution = args[:alternate_dispute_resolution] if args.key?(:alternate_dispute_resolution)
          @issues = args[:issues] if args.key?(:issues)
        end
      end
      
      # The payload for configuring how the content should be rendered.
      class RenderProductIssuesRequestPayload
        include Google::Apis::Core::Hashable
      
        # Optional. How the detailed content should be returned. Default option is to
        # return the content as a pre-rendered HTML text.
        # Corresponds to the JSON property `contentOption`
        # @return [String]
        attr_accessor :content_option
      
        # Optional. How actions with user input form should be handled. If not provided,
        # actions will be returned as links that points merchant to Merchant Center
        # where they can request the action.
        # Corresponds to the JSON property `userInputActionOption`
        # @return [String]
        attr_accessor :user_input_action_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_option = args[:content_option] if args.key?(:content_option)
          @user_input_action_option = args[:user_input_action_option] if args.key?(:user_input_action_option)
        end
      end
      
      # Response containing support content and actions for listed product issues.
      class RenderProductIssuesResponse
        include Google::Apis::Core::Hashable
      
        # The Alternate Dispute Resolution (ADR) that may be available to merchants in
        # some regions. If present, the link should be shown on the same page as the
        # list of issues.
        # Corresponds to the JSON property `alternateDisputeResolution`
        # @return [Google::Apis::ContentV2_1::AlternateDisputeResolution]
        attr_accessor :alternate_dispute_resolution
      
        # List of issues for a given product. This list can be shown with compressed,
        # expandable items. In the compressed form, the title and impact should be shown
        # for each issue. Once the issue is expanded, the detailed content and available
        # actions should be rendered.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ContentV2_1::ProductIssue>]
        attr_accessor :issues
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_dispute_resolution = args[:alternate_dispute_resolution] if args.key?(:alternate_dispute_resolution)
          @issues = args[:issues] if args.key?(:issues)
        end
      end
      
      # Request to report interactions on a recommendation.
      class ReportInteractionRequest
        include Google::Apis::Core::Hashable
      
        # Required. Type of the interaction that is reported, for example
        # INTERACTION_CLICK.
        # Corresponds to the JSON property `interactionType`
        # @return [String]
        attr_accessor :interaction_type
      
        # Required. Token of the response when recommendation was returned.
        # Corresponds to the JSON property `responseToken`
        # @return [String]
        attr_accessor :response_token
      
        # Optional. Subtype of the recommendations this interaction happened on. This
        # field must be set only to the value that is returned by `@link `
        # RecommendationsService.GenerateRecommendations`` call.
        # Corresponds to the JSON property `subtype`
        # @return [String]
        attr_accessor :subtype
      
        # Required. Type of the recommendations on which this interaction happened. This
        # field must be set only to the value that is returned by `@link `
        # GenerateRecommendationsResponse`` call.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interaction_type = args[:interaction_type] if args.key?(:interaction_type)
          @response_token = args[:response_token] if args.key?(:response_token)
          @subtype = args[:subtype] if args.key?(:subtype)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Result row returned from the search query.
      class ReportRow
        include Google::Apis::Core::Hashable
      
        # Fields related to the [Best sellers reports](https://support.google.com/
        # merchants/answer/9488679).
        # Corresponds to the JSON property `bestSellers`
        # @return [Google::Apis::ContentV2_1::BestSellers]
        attr_accessor :best_sellers
      
        # Brand fields. Values are only set for fields requested explicitly in the
        # request's search query.
        # Corresponds to the JSON property `brand`
        # @return [Google::Apis::ContentV2_1::Brand]
        attr_accessor :brand
      
        # Fields related to [competitive visibility reports] (https://support.google.com/
        # merchants/answer/11366442).
        # Corresponds to the JSON property `competitiveVisibility`
        # @return [Google::Apis::ContentV2_1::CompetitiveVisibility]
        attr_accessor :competitive_visibility
      
        # Performance metrics. Values are only set for metrics requested explicitly in
        # the request's search query.
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::ContentV2_1::Metrics]
        attr_accessor :metrics
      
        # Price competitiveness fields requested by the merchant in the query. Field
        # values are only set if the merchant queries `PriceCompetitivenessProductView`.
        # https://support.google.com/merchants/answer/9626903
        # Corresponds to the JSON property `priceCompetitiveness`
        # @return [Google::Apis::ContentV2_1::PriceCompetitiveness]
        attr_accessor :price_competitiveness
      
        # Price insights fields requested by the merchant in the query. Field values are
        # only set if the merchant queries `PriceInsightsProductView`. https://support.
        # google.com/merchants/answer/11916926
        # Corresponds to the JSON property `priceInsights`
        # @return [Google::Apis::ContentV2_1::PriceInsights]
        attr_accessor :price_insights
      
        # Product cluster fields. A product cluster is a grouping for different offers
        # that represent the same product. Values are only set for fields requested
        # explicitly in the request's search query.
        # Corresponds to the JSON property `productCluster`
        # @return [Google::Apis::ContentV2_1::ProductCluster]
        attr_accessor :product_cluster
      
        # Product fields. Values are only set for fields requested explicitly in the
        # request's search query.
        # Corresponds to the JSON property `productView`
        # @return [Google::Apis::ContentV2_1::ProductView]
        attr_accessor :product_view
      
        # Dimensions according to which metrics are segmented in the response. Values of
        # product dimensions, such as `offer_id`, reflect the state of a product at the
        # time of the corresponding event, for example, impression or order. Segment
        # fields cannot be selected in queries without also selecting at least one
        # metric field. Values are only set for dimensions requested explicitly in the
        # request's search query.
        # Corresponds to the JSON property `segments`
        # @return [Google::Apis::ContentV2_1::Segments]
        attr_accessor :segments
      
        # Topic trends fields requested by the merchant in the query. Field values are
        # only set if the merchant queries `TopicTrendsView`. Forecast data can be
        # queried up to 13 weeks by passing a future date in the `date` field.
        # Historical data is measured daily, and forecasted data is projected weekly.
        # All data points are normalized based on the highest data points returned in
        # the response. If you make separate queries with different date ranges, you
        # might see different values for the same date in each response. The recommended
        # way to get a trend score of a topic is `last7_days_search_interest / last`$day`
        # _days_search_interest - 1`. You can view trends for up to eight topics at a
        # time.
        # Corresponds to the JSON property `topicTrends`
        # @return [Google::Apis::ContentV2_1::TopicTrends]
        attr_accessor :topic_trends
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_sellers = args[:best_sellers] if args.key?(:best_sellers)
          @brand = args[:brand] if args.key?(:brand)
          @competitive_visibility = args[:competitive_visibility] if args.key?(:competitive_visibility)
          @metrics = args[:metrics] if args.key?(:metrics)
          @price_competitiveness = args[:price_competitiveness] if args.key?(:price_competitiveness)
          @price_insights = args[:price_insights] if args.key?(:price_insights)
          @product_cluster = args[:product_cluster] if args.key?(:product_cluster)
          @product_view = args[:product_view] if args.key?(:product_view)
          @segments = args[:segments] if args.key?(:segments)
          @topic_trends = args[:topic_trends] if args.key?(:topic_trends)
        end
      end
      
      # Request message for the RequestPhoneVerification method.
      class RequestPhoneVerificationRequest
        include Google::Apis::Core::Hashable
      
        # Language code [IETF BCP 47 syntax](https://tools.ietf.org/html/bcp47) (for
        # example, en-US). Language code is used to provide localized `SMS` and `
        # PHONE_CALL`. Default language used is en-US if not provided.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Phone number to be verified.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Required. Two letter country code for the phone number, for example `CA` for
        # Canadian numbers. See the [ISO 3166-1 alpha-2](https://wikipedia.org/wiki/
        # ISO_3166-1_alpha-2#Officially_assigned_code_elements) officially assigned
        # codes.
        # Corresponds to the JSON property `phoneRegionCode`
        # @return [String]
        attr_accessor :phone_region_code
      
        # Verification method to receive verification code.
        # Corresponds to the JSON property `phoneVerificationMethod`
        # @return [String]
        attr_accessor :phone_verification_method
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @phone_region_code = args[:phone_region_code] if args.key?(:phone_region_code)
          @phone_verification_method = args[:phone_verification_method] if args.key?(:phone_verification_method)
        end
      end
      
      # Response message for the RequestPhoneVerification method.
      class RequestPhoneVerificationResponse
        include Google::Apis::Core::Hashable
      
        # The verification ID to use in subsequent calls to `verifyphonenumber`.
        # Corresponds to the JSON property `verificationId`
        # @return [String]
        attr_accessor :verification_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verification_id = args[:verification_id] if args.key?(:verification_id)
        end
      end
      
      # Request message for the RequestReviewFreeListings Program method.
      class RequestReviewFreeListingsRequest
        include Google::Apis::Core::Hashable
      
        # The code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
        # of the country for which review is to be requested.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Request message for the RequestReviewShoppingAds program method.
      class RequestReviewShoppingAdsRequest
        include Google::Apis::Core::Hashable
      
        # The code [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
        # of the country for which review is to be requested.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Return policy online object. This is currently used to represent return
      # policies for ads and free listings programs.
      class ReturnPolicyOnline
        include Google::Apis::Core::Hashable
      
        # The countries of sale where the return policy is applicable. The values must
        # be a valid 2 letter ISO 3166 code, e.g. "US".
        # Corresponds to the JSON property `countries`
        # @return [Array<String>]
        attr_accessor :countries
      
        # The item conditions that are accepted for returns. This is required to not be
        # empty unless the type of return policy is noReturns.
        # Corresponds to the JSON property `itemConditions`
        # @return [Array<String>]
        attr_accessor :item_conditions
      
        # The unique user-defined label of the return policy. The same label cannot be
        # used in different return policies for the same country. Policies with the
        # label 'default' will apply to all products, unless a product specifies a
        # return_policy_label attribute.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the policy as shown in Merchant Center.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The available policies.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ContentV2_1::ReturnPolicyOnlinePolicy]
        attr_accessor :policy
      
        # The restocking fee. This can either be a fixed fee or a micro percent.
        # Corresponds to the JSON property `restockingFee`
        # @return [Google::Apis::ContentV2_1::ReturnPolicyOnlineRestockingFee]
        attr_accessor :restocking_fee
      
        # The return methods of how customers can return an item. This value is required
        # to not be empty unless the type of return policy is noReturns.
        # Corresponds to the JSON property `returnMethods`
        # @return [Array<String>]
        attr_accessor :return_methods
      
        # Output only. Return policy ID generated by Google.
        # Corresponds to the JSON property `returnPolicyId`
        # @return [String]
        attr_accessor :return_policy_id
      
        # The return policy uri. This can used by Google to do a sanity check for the
        # policy.
        # Corresponds to the JSON property `returnPolicyUri`
        # @return [String]
        attr_accessor :return_policy_uri
      
        # The return reason category information. This required to not be empty unless
        # the type of return policy is noReturns.
        # Corresponds to the JSON property `returnReasonCategoryInfo`
        # @return [Array<Google::Apis::ContentV2_1::ReturnPolicyOnlineReturnReasonCategoryInfo>]
        attr_accessor :return_reason_category_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @countries = args[:countries] if args.key?(:countries)
          @item_conditions = args[:item_conditions] if args.key?(:item_conditions)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @policy = args[:policy] if args.key?(:policy)
          @restocking_fee = args[:restocking_fee] if args.key?(:restocking_fee)
          @return_methods = args[:return_methods] if args.key?(:return_methods)
          @return_policy_id = args[:return_policy_id] if args.key?(:return_policy_id)
          @return_policy_uri = args[:return_policy_uri] if args.key?(:return_policy_uri)
          @return_reason_category_info = args[:return_reason_category_info] if args.key?(:return_reason_category_info)
        end
      end
      
      # The available policies.
      class ReturnPolicyOnlinePolicy
        include Google::Apis::Core::Hashable
      
        # The number of days items can be returned after delivery, where one day is
        # defined to be 24 hours after the delivery timestamp. Required for `
        # numberOfDaysAfterDelivery` returns.
        # Corresponds to the JSON property `days`
        # @return [Fixnum]
        attr_accessor :days
      
        # Policy type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @days = args[:days] if args.key?(:days)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The restocking fee. This can either be a fixed fee or a micro percent.
      class ReturnPolicyOnlineRestockingFee
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `fixedFee`
        # @return [Google::Apis::ContentV2_1::PriceAmount]
        attr_accessor :fixed_fee
      
        # Percent of total price in micros. 15,000,000 means 15% of the total price
        # would be charged.
        # Corresponds to the JSON property `microPercent`
        # @return [Fixnum]
        attr_accessor :micro_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_fee = args[:fixed_fee] if args.key?(:fixed_fee)
          @micro_percent = args[:micro_percent] if args.key?(:micro_percent)
        end
      end
      
      # The return reason category info wrapper.
      class ReturnPolicyOnlineReturnReasonCategoryInfo
        include Google::Apis::Core::Hashable
      
        # The corresponding return label source. If the `ReturnMethod` field includes `
        # BY_MAIL`, it is required to specify `ReturnLabelSource` for both `
        # BUYER_REMORSE` and `ITEM_DEFECT` return reason categories.
        # Corresponds to the JSON property `returnLabelSource`
        # @return [String]
        attr_accessor :return_label_source
      
        # The return reason category.
        # Corresponds to the JSON property `returnReasonCategory`
        # @return [String]
        attr_accessor :return_reason_category
      
        # The return shipping fee. This can either be a fixed fee or a boolean to
        # indicate that the customer pays the actual shipping cost.
        # Corresponds to the JSON property `returnShippingFee`
        # @return [Google::Apis::ContentV2_1::ReturnPolicyOnlineReturnShippingFee]
        attr_accessor :return_shipping_fee
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @return_label_source = args[:return_label_source] if args.key?(:return_label_source)
          @return_reason_category = args[:return_reason_category] if args.key?(:return_reason_category)
          @return_shipping_fee = args[:return_shipping_fee] if args.key?(:return_shipping_fee)
        end
      end
      
      # The return shipping fee. This can either be a fixed fee or a boolean to
      # indicate that the customer pays the actual shipping cost.
      class ReturnPolicyOnlineReturnShippingFee
        include Google::Apis::Core::Hashable
      
        # The price represented as a number and currency.
        # Corresponds to the JSON property `fixedFee`
        # @return [Google::Apis::ContentV2_1::PriceAmount]
        attr_accessor :fixed_fee
      
        # Type of return shipping fee.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_fee = args[:fixed_fee] if args.key?(:fixed_fee)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class Row
        include Google::Apis::Core::Hashable
      
        # The list of cells that constitute the row. Must have the same length as `
        # columnHeaders` for two-dimensional tables, a length of 1 for one-dimensional
        # tables. Required.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::ContentV2_1::Value>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # Request message for the ReportService.Search method.
      class SearchRequest
        include Google::Apis::Core::Hashable
      
        # Number of ReportRows to retrieve in a single page. Defaults to 1000. Values
        # above 5000 are coerced to 5000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Token of the page to retrieve. If not specified, the first page of results is
        # returned. In order to request the next page of results, the value obtained
        # from `next_page_token` in the previous response should be used.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. Query that defines performance metrics to retrieve and dimensions
        # according to which the metrics are to be segmented. For details on how to
        # construct your query, see the [Query Language guide](https://developers.google.
        # com/shopping-content/guides/reports/query-language/overview).
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Response message for the ReportService.Search method.
      class SearchResponse
        include Google::Apis::Core::Hashable
      
        # Token which can be sent as `page_token` to retrieve the next page. If omitted,
        # there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Rows that matched the search query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::ContentV2_1::ReportRow>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Dimensions according to which metrics are segmented in the response. Values of
      # product dimensions, such as `offer_id`, reflect the state of a product at the
      # time of the corresponding event, for example, impression or order. Segment
      # fields cannot be selected in queries without also selecting at least one
      # metric field. Values are only set for dimensions requested explicitly in the
      # request's search query.
      class Segments
        include Google::Apis::Core::Hashable
      
        # Brand of the product.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # [Product category (1st level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy.
        # Corresponds to the JSON property `categoryL1`
        # @return [String]
        attr_accessor :category_l1
      
        # [Product category (2nd level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy.
        # Corresponds to the JSON property `categoryL2`
        # @return [String]
        attr_accessor :category_l2
      
        # [Product category (3rd level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy.
        # Corresponds to the JSON property `categoryL3`
        # @return [String]
        attr_accessor :category_l3
      
        # [Product category (4th level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy.
        # Corresponds to the JSON property `categoryL4`
        # @return [String]
        attr_accessor :category_l4
      
        # [Product category (5th level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in Google's product
        # taxonomy.
        # Corresponds to the JSON property `categoryL5`
        # @return [String]
        attr_accessor :category_l5
      
        # Currency in which price metrics are represented, for example, if you select `
        # ordered_item_sales_micros`, the returned value will be represented by this
        # currency.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Custom label 0 for custom grouping of products.
        # Corresponds to the JSON property `customLabel0`
        # @return [String]
        attr_accessor :custom_label0
      
        # Custom label 1 for custom grouping of products.
        # Corresponds to the JSON property `customLabel1`
        # @return [String]
        attr_accessor :custom_label1
      
        # Custom label 2 for custom grouping of products.
        # Corresponds to the JSON property `customLabel2`
        # @return [String]
        attr_accessor :custom_label2
      
        # Custom label 3 for custom grouping of products.
        # Corresponds to the JSON property `customLabel3`
        # @return [String]
        attr_accessor :custom_label3
      
        # Custom label 4 for custom grouping of products.
        # Corresponds to the JSON property `customLabel4`
        # @return [String]
        attr_accessor :custom_label4
      
        # Code of the country where the customer is located at the time of the event.
        # Represented in the ISO 3166 format. If the customer country cannot be
        # determined, a special 'ZZ' code is returned.
        # Corresponds to the JSON property `customerCountryCode`
        # @return [String]
        attr_accessor :customer_country_code
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::ContentV2_1::Date]
        attr_accessor :date
      
        # Merchant-provided id of the product.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # [Product type (1st level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy.
        # Corresponds to the JSON property `productTypeL1`
        # @return [String]
        attr_accessor :product_type_l1
      
        # [Product type (2nd level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy.
        # Corresponds to the JSON property `productTypeL2`
        # @return [String]
        attr_accessor :product_type_l2
      
        # [Product type (3rd level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy.
        # Corresponds to the JSON property `productTypeL3`
        # @return [String]
        attr_accessor :product_type_l3
      
        # [Product type (4th level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy.
        # Corresponds to the JSON property `productTypeL4`
        # @return [String]
        attr_accessor :product_type_l4
      
        # [Product type (5th level)](https://developers.google.com/shopping-content/
        # guides/reports/segmentation#category_and_product_type) in merchant's own
        # product taxonomy.
        # Corresponds to the JSON property `productTypeL5`
        # @return [String]
        attr_accessor :product_type_l5
      
        # Program to which metrics apply, for example, Free Product Listing.
        # Corresponds to the JSON property `program`
        # @return [String]
        attr_accessor :program
      
        # Title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `week`
        # @return [Google::Apis::ContentV2_1::Date]
        attr_accessor :week
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @category_l1 = args[:category_l1] if args.key?(:category_l1)
          @category_l2 = args[:category_l2] if args.key?(:category_l2)
          @category_l3 = args[:category_l3] if args.key?(:category_l3)
          @category_l4 = args[:category_l4] if args.key?(:category_l4)
          @category_l5 = args[:category_l5] if args.key?(:category_l5)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @custom_label0 = args[:custom_label0] if args.key?(:custom_label0)
          @custom_label1 = args[:custom_label1] if args.key?(:custom_label1)
          @custom_label2 = args[:custom_label2] if args.key?(:custom_label2)
          @custom_label3 = args[:custom_label3] if args.key?(:custom_label3)
          @custom_label4 = args[:custom_label4] if args.key?(:custom_label4)
          @customer_country_code = args[:customer_country_code] if args.key?(:customer_country_code)
          @date = args[:date] if args.key?(:date)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @product_type_l1 = args[:product_type_l1] if args.key?(:product_type_l1)
          @product_type_l2 = args[:product_type_l2] if args.key?(:product_type_l2)
          @product_type_l3 = args[:product_type_l3] if args.key?(:product_type_l3)
          @product_type_l4 = args[:product_type_l4] if args.key?(:product_type_l4)
          @product_type_l5 = args[:product_type_l5] if args.key?(:product_type_l5)
          @program = args[:program] if args.key?(:program)
          @title = args[:title] if args.key?(:title)
          @week = args[:week] if args.key?(:week)
        end
      end
      
      # 
      class Service
        include Google::Apis::Core::Hashable
      
        # A boolean exposing the active status of the shipping service. Required.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # The CLDR code of the currency to which this service applies. Must match that
        # of the prices in rate groups.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The CLDR territory code of the country to which the service applies. Required.
        # Corresponds to the JSON property `deliveryCountry`
        # @return [String]
        attr_accessor :delivery_country
      
        # Time spent in various aspects from order to the delivery of the product.
        # Required.
        # Corresponds to the JSON property `deliveryTime`
        # @return [Google::Apis::ContentV2_1::DeliveryTime]
        attr_accessor :delivery_time
      
        # Eligibility for this service. Acceptable values are: - "`All scenarios`" - "`
        # All scenarios except Shopping Actions`" - "`Shopping Actions`"
        # Corresponds to the JSON property `eligibility`
        # @return [String]
        attr_accessor :eligibility
      
        # Minimum order value for this service. If set, indicates that customers will
        # have to spend at least this amount. All prices within a service must have the
        # same currency. Cannot be set together with minimum_order_value_table.
        # Corresponds to the JSON property `minimumOrderValue`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :minimum_order_value
      
        # Table of per store minimum order values for the pickup fulfillment type.
        # Cannot be set together with minimum_order_value.
        # Corresponds to the JSON property `minimumOrderValueTable`
        # @return [Google::Apis::ContentV2_1::MinimumOrderValueTable]
        attr_accessor :minimum_order_value_table
      
        # Free-form name of the service. Must be unique within target account. Required.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The carrier-service pair delivering items to collection points. The list of
        # supported pickup services can be retrieved through the `
        # getSupportedPickupServices` method. Required if and only if the service
        # delivery type is `pickup`.
        # Corresponds to the JSON property `pickupService`
        # @return [Google::Apis::ContentV2_1::PickupCarrierService]
        attr_accessor :pickup_service
      
        # Shipping rate group definitions. Only the last one is allowed to have an empty
        # `applicableShippingLabels`, which means "everything else". The other `
        # applicableShippingLabels` must not overlap.
        # Corresponds to the JSON property `rateGroups`
        # @return [Array<Google::Apis::ContentV2_1::RateGroup>]
        attr_accessor :rate_groups
      
        # Type of locations this service ships orders to. Acceptable values are: - "`
        # delivery`" - "`pickup` (deprecated)" - "`local_delivery`" - "`collection_point`
        # "
        # Corresponds to the JSON property `shipmentType`
        # @return [String]
        attr_accessor :shipment_type
      
        # Stores that provide local delivery. Only valid with local delivery fulfillment.
        # Corresponds to the JSON property `storeConfig`
        # @return [Google::Apis::ContentV2_1::ServiceStoreConfig]
        attr_accessor :store_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @currency = args[:currency] if args.key?(:currency)
          @delivery_country = args[:delivery_country] if args.key?(:delivery_country)
          @delivery_time = args[:delivery_time] if args.key?(:delivery_time)
          @eligibility = args[:eligibility] if args.key?(:eligibility)
          @minimum_order_value = args[:minimum_order_value] if args.key?(:minimum_order_value)
          @minimum_order_value_table = args[:minimum_order_value_table] if args.key?(:minimum_order_value_table)
          @name = args[:name] if args.key?(:name)
          @pickup_service = args[:pickup_service] if args.key?(:pickup_service)
          @rate_groups = args[:rate_groups] if args.key?(:rate_groups)
          @shipment_type = args[:shipment_type] if args.key?(:shipment_type)
          @store_config = args[:store_config] if args.key?(:store_config)
        end
      end
      
      # Stores that provide local delivery. Only valid with local delivery fulfillment.
      class ServiceStoreConfig
        include Google::Apis::Core::Hashable
      
        # Time local delivery ends for the day based on the local timezone of the store.
        # `local_cutoff_time` and `store_close_offset_hours` are mutually exclusive.
        # Corresponds to the JSON property `cutoffConfig`
        # @return [Google::Apis::ContentV2_1::ServiceStoreConfigCutoffConfig]
        attr_accessor :cutoff_config
      
        # Distance represented by an integer and unit.
        # Corresponds to the JSON property `serviceRadius`
        # @return [Google::Apis::ContentV2_1::Distance]
        attr_accessor :service_radius
      
        # A list of store codes that provide local delivery. If empty, then `
        # store_service_type` must be `all_stores`, or an error is thrown. If not empty,
        # then `store_service_type` must be `selected_stores`, or an error is thrown.
        # Corresponds to the JSON property `storeCodes`
        # @return [Array<String>]
        attr_accessor :store_codes
      
        # Indicates whether all stores listed by this merchant provide local delivery or
        # not. Acceptable values are `all stores` and `selected stores`
        # Corresponds to the JSON property `storeServiceType`
        # @return [String]
        attr_accessor :store_service_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cutoff_config = args[:cutoff_config] if args.key?(:cutoff_config)
          @service_radius = args[:service_radius] if args.key?(:service_radius)
          @store_codes = args[:store_codes] if args.key?(:store_codes)
          @store_service_type = args[:store_service_type] if args.key?(:store_service_type)
        end
      end
      
      # Time local delivery ends for the day based on the local timezone of the store.
      # `local_cutoff_time` and `store_close_offset_hours` are mutually exclusive.
      class ServiceStoreConfigCutoffConfig
        include Google::Apis::Core::Hashable
      
        # Time in hours and minutes in the local timezone when local delivery ends.
        # Corresponds to the JSON property `localCutoffTime`
        # @return [Google::Apis::ContentV2_1::ServiceStoreConfigCutoffConfigLocalCutoffTime]
        attr_accessor :local_cutoff_time
      
        # Merchants can opt-out of showing n+1 day local delivery when they have a
        # shipping service configured to n day local delivery. For example, if the
        # shipping service defines same-day delivery, and it's past the cut-off, setting
        # this field to `true` results in the calculated shipping service rate returning
        # `NO_DELIVERY_POST_CUTOFF`. In the same example, setting this field to `false`
        # results in the calculated shipping time being one day. This is only for local
        # delivery.
        # Corresponds to the JSON property `noDeliveryPostCutoff`
        # @return [Boolean]
        attr_accessor :no_delivery_post_cutoff
        alias_method :no_delivery_post_cutoff?, :no_delivery_post_cutoff
      
        # Represents cutoff time as the number of hours before store closing. Mutually
        # exclusive with other fields (hour and minute).
        # Corresponds to the JSON property `storeCloseOffsetHours`
        # @return [Fixnum]
        attr_accessor :store_close_offset_hours
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_cutoff_time = args[:local_cutoff_time] if args.key?(:local_cutoff_time)
          @no_delivery_post_cutoff = args[:no_delivery_post_cutoff] if args.key?(:no_delivery_post_cutoff)
          @store_close_offset_hours = args[:store_close_offset_hours] if args.key?(:store_close_offset_hours)
        end
      end
      
      # Time in hours and minutes in the local timezone when local delivery ends.
      class ServiceStoreConfigCutoffConfigLocalCutoffTime
        include Google::Apis::Core::Hashable
      
        # Hour local delivery orders must be placed by to process the same day.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # Minute local delivery orders must be placed by to process the same day.
        # Corresponds to the JSON property `minute`
        # @return [Fixnum]
        attr_accessor :minute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
        end
      end
      
      # The merchant account's shipping settings. All methods except
      # getsupportedcarriers and getsupportedholidays require the admin role.
      class ShippingSettings
        include Google::Apis::Core::Hashable
      
        # The ID of the account to which these account shipping settings belong. Ignored
        # upon update, always present in get request responses.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # A list of postal code groups that can be referred to in `services`. Optional.
        # Corresponds to the JSON property `postalCodeGroups`
        # @return [Array<Google::Apis::ContentV2_1::PostalCodeGroup>]
        attr_accessor :postal_code_groups
      
        # The target account's list of services. Optional.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::ContentV2_1::Service>]
        attr_accessor :services
      
        # Optional. A list of warehouses which can be referred to in `services`.
        # Corresponds to the JSON property `warehouses`
        # @return [Array<Google::Apis::ContentV2_1::Warehouse>]
        attr_accessor :warehouses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @postal_code_groups = args[:postal_code_groups] if args.key?(:postal_code_groups)
          @services = args[:services] if args.key?(:services)
          @warehouses = args[:warehouses] if args.key?(:warehouses)
        end
      end
      
      # 
      class ShippingsettingsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ShippingsettingsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch shippingsettings request.
      class ShippingsettingsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which to get/update account shipping settings.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry. Acceptable values are: - "`get`" - "`update`"
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The merchant account's shipping settings. All methods except
        # getsupportedcarriers and getsupportedholidays require the admin role.
        # Corresponds to the JSON property `shippingSettings`
        # @return [Google::Apis::ContentV2_1::ShippingSettings]
        attr_accessor :shipping_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @shipping_settings = args[:shipping_settings] if args.key?(:shipping_settings)
        end
      end
      
      # 
      class ShippingsettingsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # shippingsettingsCustomBatchResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch shipping settings response.
      class ShippingsettingsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry to which this entry responds.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # shippingsettingsCustomBatchResponseEntry`"
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The merchant account's shipping settings. All methods except
        # getsupportedcarriers and getsupportedholidays require the admin role.
        # Corresponds to the JSON property `shippingSettings`
        # @return [Google::Apis::ContentV2_1::ShippingSettings]
        attr_accessor :shipping_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @shipping_settings = args[:shipping_settings] if args.key?(:shipping_settings)
        end
      end
      
      # 
      class ShippingsettingsGetSupportedCarriersResponse
        include Google::Apis::Core::Hashable
      
        # A list of supported carriers. May be empty.
        # Corresponds to the JSON property `carriers`
        # @return [Array<Google::Apis::ContentV2_1::CarriersCarrier>]
        attr_accessor :carriers
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # shippingsettingsGetSupportedCarriersResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carriers = args[:carriers] if args.key?(:carriers)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ShippingsettingsGetSupportedHolidaysResponse
        include Google::Apis::Core::Hashable
      
        # A list of holidays applicable for delivery guarantees. May be empty.
        # Corresponds to the JSON property `holidays`
        # @return [Array<Google::Apis::ContentV2_1::HolidaysHoliday>]
        attr_accessor :holidays
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # shippingsettingsGetSupportedHolidaysResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @holidays = args[:holidays] if args.key?(:holidays)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ShippingsettingsGetSupportedPickupServicesResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # shippingsettingsGetSupportedPickupServicesResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list of supported pickup services. May be empty.
        # Corresponds to the JSON property `pickupServices`
        # @return [Array<Google::Apis::ContentV2_1::PickupServicesPickupService>]
        attr_accessor :pickup_services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @pickup_services = args[:pickup_services] if args.key?(:pickup_services)
        end
      end
      
      # 
      class ShippingsettingsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "`content#
        # shippingsettingsListResponse`".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of shipping settings.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::ShippingSettings>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Response message for GetShoppingAdsProgramStatus.
      class ShoppingAdsProgramStatus
        include Google::Apis::Core::Hashable
      
        # State of the program. `ENABLED` if there are offers for at least one region.
        # Corresponds to the JSON property `globalState`
        # @return [String]
        attr_accessor :global_state
      
        # Status of the program in each region. Regions with the same status and review
        # eligibility are grouped together in `regionCodes`.
        # Corresponds to the JSON property `regionStatuses`
        # @return [Array<Google::Apis::ContentV2_1::ShoppingAdsProgramStatusRegionStatus>]
        attr_accessor :region_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @global_state = args[:global_state] if args.key?(:global_state)
          @region_statuses = args[:region_statuses] if args.key?(:region_statuses)
        end
      end
      
      # Status of program and region.
      class ShoppingAdsProgramStatusRegionStatus
        include Google::Apis::Core::Hashable
      
        # Date by which eligibilityStatus will go from `WARNING` to `DISAPPROVED`. Only
        # visible when your eligibilityStatus is WARNING. In [ISO 8601](https://en.
        # wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DD`.
        # Corresponds to the JSON property `disapprovalDate`
        # @return [String]
        attr_accessor :disapproval_date
      
        # Eligibility status of the Shopping Ads program.
        # Corresponds to the JSON property `eligibilityStatus`
        # @return [String]
        attr_accessor :eligibility_status
      
        # Issues that must be fixed to be eligible for review.
        # Corresponds to the JSON property `onboardingIssues`
        # @return [Array<String>]
        attr_accessor :onboarding_issues
      
        # The two-letter [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-
        # 1_alpha-2) codes for all the regions with the same `eligibilityStatus` and `
        # reviewEligibility`.
        # Corresponds to the JSON property `regionCodes`
        # @return [Array<String>]
        attr_accessor :region_codes
      
        # If a program is eligible for review in a specific region. Only visible if `
        # eligibilityStatus` is `DISAPPROVED`.
        # Corresponds to the JSON property `reviewEligibilityStatus`
        # @return [String]
        attr_accessor :review_eligibility_status
      
        # Review ineligibility reason if account is not eligible for review.
        # Corresponds to the JSON property `reviewIneligibilityReason`
        # @return [String]
        attr_accessor :review_ineligibility_reason
      
        # Reason a program in a specific region isn’t eligible for review. Only visible
        # if `reviewEligibilityStatus` is `INELIGIBLE`.
        # Corresponds to the JSON property `reviewIneligibilityReasonDescription`
        # @return [String]
        attr_accessor :review_ineligibility_reason_description
      
        # Additional details for review ineligibility reasons.
        # Corresponds to the JSON property `reviewIneligibilityReasonDetails`
        # @return [Google::Apis::ContentV2_1::ShoppingAdsProgramStatusReviewIneligibilityReasonDetails]
        attr_accessor :review_ineligibility_reason_details
      
        # Issues evaluated in the review process. Fix all issues before requesting a
        # review.
        # Corresponds to the JSON property `reviewIssues`
        # @return [Array<String>]
        attr_accessor :review_issues
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disapproval_date = args[:disapproval_date] if args.key?(:disapproval_date)
          @eligibility_status = args[:eligibility_status] if args.key?(:eligibility_status)
          @onboarding_issues = args[:onboarding_issues] if args.key?(:onboarding_issues)
          @region_codes = args[:region_codes] if args.key?(:region_codes)
          @review_eligibility_status = args[:review_eligibility_status] if args.key?(:review_eligibility_status)
          @review_ineligibility_reason = args[:review_ineligibility_reason] if args.key?(:review_ineligibility_reason)
          @review_ineligibility_reason_description = args[:review_ineligibility_reason_description] if args.key?(:review_ineligibility_reason_description)
          @review_ineligibility_reason_details = args[:review_ineligibility_reason_details] if args.key?(:review_ineligibility_reason_details)
          @review_issues = args[:review_issues] if args.key?(:review_issues)
        end
      end
      
      # Additional details for review ineligibility reasons.
      class ShoppingAdsProgramStatusReviewIneligibilityReasonDetails
        include Google::Apis::Core::Hashable
      
        # This timestamp represents end of cooldown period for review ineligbility
        # reason `IN_COOLDOWN_PERIOD`.
        # Corresponds to the JSON property `cooldownTime`
        # @return [String]
        attr_accessor :cooldown_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cooldown_time = args[:cooldown_time] if args.key?(:cooldown_time)
        end
      end
      
      # 
      class Table
        include Google::Apis::Core::Hashable
      
        # A non-empty list of row or column headers for a table. Exactly one of `prices`,
        # `weights`, `numItems`, `postalCodeGroupNames`, or `location` must be set.
        # Corresponds to the JSON property `columnHeaders`
        # @return [Google::Apis::ContentV2_1::Headers]
        attr_accessor :column_headers
      
        # Name of the table. Required for subtables, ignored for the main table.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A non-empty list of row or column headers for a table. Exactly one of `prices`,
        # `weights`, `numItems`, `postalCodeGroupNames`, or `location` must be set.
        # Corresponds to the JSON property `rowHeaders`
        # @return [Google::Apis::ContentV2_1::Headers]
        attr_accessor :row_headers
      
        # The list of rows that constitute the table. Must have the same length as `
        # rowHeaders`. Required.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::ContentV2_1::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_headers = args[:column_headers] if args.key?(:column_headers)
          @name = args[:name] if args.key?(:name)
          @row_headers = args[:row_headers] if args.key?(:row_headers)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Block of text that may contain a tooltip with more information.
      class TextWithTooltip
        include Google::Apis::Core::Hashable
      
        # Value of the tooltip as a simple text.
        # Corresponds to the JSON property `simpleTooltipValue`
        # @return [String]
        attr_accessor :simple_tooltip_value
      
        # Value of the message as a simple text.
        # Corresponds to the JSON property `simpleValue`
        # @return [String]
        attr_accessor :simple_value
      
        # The suggested type of an icon for tooltip, if a tooltip is present.
        # Corresponds to the JSON property `tooltipIconStyle`
        # @return [String]
        attr_accessor :tooltip_icon_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @simple_tooltip_value = args[:simple_tooltip_value] if args.key?(:simple_tooltip_value)
          @simple_value = args[:simple_value] if args.key?(:simple_value)
          @tooltip_icon_style = args[:tooltip_icon_style] if args.key?(:tooltip_icon_style)
        end
      end
      
      # A message that represents a time period.
      class TimePeriod
        include Google::Apis::Core::Hashable
      
        # The ending timestamp.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The starting timestamp.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone. For example "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number. For example "2019a".
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
      
      # Topic trends fields requested by the merchant in the query. Field values are
      # only set if the merchant queries `TopicTrendsView`. Forecast data can be
      # queried up to 13 weeks by passing a future date in the `date` field.
      # Historical data is measured daily, and forecasted data is projected weekly.
      # All data points are normalized based on the highest data points returned in
      # the response. If you make separate queries with different date ranges, you
      # might see different values for the same date in each response. The recommended
      # way to get a trend score of a topic is `last7_days_search_interest / last`$day`
      # _days_search_interest - 1`. You can view trends for up to eight topics at a
      # time.
      class TopicTrends
        include Google::Apis::Core::Hashable
      
        # Country trends are calculated for. Must be a two-letter country code (ISO 3166-
        # 1-alpha-2 code), for example, `“US”`.
        # Corresponds to the JSON property `customerCountryCode`
        # @return [String]
        attr_accessor :customer_country_code
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::ContentV2_1::Date]
        attr_accessor :date
      
        # Search interest in the last 120 days, with the same normalization as
        # search_interest. This field is only present for a past date.
        # Corresponds to the JSON property `last120DaysSearchInterest`
        # @return [Float]
        attr_accessor :last120_days_search_interest
      
        # Search interest in the last 30 days, with the same normalization as
        # search_interest. This field is only present for a past date.
        # Corresponds to the JSON property `last30DaysSearchInterest`
        # @return [Float]
        attr_accessor :last30_days_search_interest
      
        # Search interest in the last 7 days, with the same normalization as
        # search_interest. This field is only present for a past date.
        # Corresponds to the JSON property `last7DaysSearchInterest`
        # @return [Float]
        attr_accessor :last7_days_search_interest
      
        # Search interest in the last 90 days, with the same normalization as
        # search_interest. This field is only present for a past date.
        # Corresponds to the JSON property `last90DaysSearchInterest`
        # @return [Float]
        attr_accessor :last90_days_search_interest
      
        # Estimated search interest in the next 7 days, with the same normalization as
        # search_interest. This field is only present for a future date.
        # Corresponds to the JSON property `next7DaysSearchInterest`
        # @return [Float]
        attr_accessor :next7_days_search_interest
      
        # Daily search interest, normalized to the time and country to make comparisons
        # easier, with 100 representing peak popularity (from 0 to 100) for the
        # requested time period and location.
        # Corresponds to the JSON property `searchInterest`
        # @return [Float]
        attr_accessor :search_interest
      
        # Google-provided topic trends are calculated for. Only top eight topics are
        # returned. Topic is what shoppers are searching for on Google, grouped by the
        # same concept.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_country_code = args[:customer_country_code] if args.key?(:customer_country_code)
          @date = args[:date] if args.key?(:date)
          @last120_days_search_interest = args[:last120_days_search_interest] if args.key?(:last120_days_search_interest)
          @last30_days_search_interest = args[:last30_days_search_interest] if args.key?(:last30_days_search_interest)
          @last7_days_search_interest = args[:last7_days_search_interest] if args.key?(:last7_days_search_interest)
          @last90_days_search_interest = args[:last90_days_search_interest] if args.key?(:last90_days_search_interest)
          @next7_days_search_interest = args[:next7_days_search_interest] if args.key?(:next7_days_search_interest)
          @search_interest = args[:search_interest] if args.key?(:search_interest)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # 
      class TransitTable
        include Google::Apis::Core::Hashable
      
        # A list of postal group names. The last value can be `"all other locations"`.
        # Example: `["zone 1", "zone 2", "all other locations"]`. The referred postal
        # code groups must match the delivery country of the service.
        # Corresponds to the JSON property `postalCodeGroupNames`
        # @return [Array<String>]
        attr_accessor :postal_code_group_names
      
        # 
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::ContentV2_1::TransitTableTransitTimeRow>]
        attr_accessor :rows
      
        # A list of transit time labels. The last value can be `"all other labels"`.
        # Example: `["food", "electronics", "all other labels"]`.
        # Corresponds to the JSON property `transitTimeLabels`
        # @return [Array<String>]
        attr_accessor :transit_time_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postal_code_group_names = args[:postal_code_group_names] if args.key?(:postal_code_group_names)
          @rows = args[:rows] if args.key?(:rows)
          @transit_time_labels = args[:transit_time_labels] if args.key?(:transit_time_labels)
        end
      end
      
      # 
      class TransitTableTransitTimeRow
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::ContentV2_1::TransitTableTransitTimeRowTransitTimeValue>]
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
      class TransitTableTransitTimeRowTransitTimeValue
        include Google::Apis::Core::Hashable
      
        # Must be greater than or equal to `minTransitTimeInDays`.
        # Corresponds to the JSON property `maxTransitTimeInDays`
        # @return [Fixnum]
        attr_accessor :max_transit_time_in_days
      
        # Transit time range (min-max) in business days. 0 means same day delivery, 1
        # means next day delivery.
        # Corresponds to the JSON property `minTransitTimeInDays`
        # @return [Fixnum]
        attr_accessor :min_transit_time_in_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_transit_time_in_days = args[:max_transit_time_in_days] if args.key?(:max_transit_time_in_days)
          @min_transit_time_in_days = args[:min_transit_time_in_days] if args.key?(:min_transit_time_in_days)
        end
      end
      
      # The payload for the triggered action.
      class TriggerActionPayload
        include Google::Apis::Core::Hashable
      
        # Required. The context from the selected action. The value is obtained from
        # rendered issues and needs to be sent back to identify the action that is being
        # triggered.
        # Corresponds to the JSON property `actionContext`
        # @return [String]
        attr_accessor :action_context
      
        # Input provided by the merchant.
        # Corresponds to the JSON property `actionInput`
        # @return [Google::Apis::ContentV2_1::ActionInput]
        attr_accessor :action_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_context = args[:action_context] if args.key?(:action_context)
          @action_input = args[:action_input] if args.key?(:action_input)
        end
      end
      
      # Response informing about the started action.
      class TriggerActionResponse
        include Google::Apis::Core::Hashable
      
        # The message for merchant.
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
      
      # Request message for the UndeleteConversionSource method.
      class UndeleteConversionSourceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Specifications related to the `Checkout` URL. The `UriTemplate` is of the form
      # `https://www.mystore.com/checkout?item_id=`id`` where ``id`` will be
      # automatically replaced with data from the merchant account with this attribute
      # [offer_id](https://developers.google.com/shopping-content/reference/rest/v2.1/
      # products#Product.FIELDS.offer_id)
      class UrlSettings
        include Google::Apis::Core::Hashable
      
        # URL template when the placeholders are expanded will redirect the buyer to the
        # cart page on the merchant website with the selected item in cart.
        # Corresponds to the JSON property `cartUriTemplate`
        # @return [String]
        attr_accessor :cart_uri_template
      
        # URL template when the placeholders are expanded will redirect the buyer to the
        # merchant checkout page with the item in the cart.
        # Corresponds to the JSON property `checkoutUriTemplate`
        # @return [String]
        attr_accessor :checkout_uri_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cart_uri_template = args[:cart_uri_template] if args.key?(:cart_uri_template)
          @checkout_uri_template = args[:checkout_uri_template] if args.key?(:checkout_uri_template)
        end
      end
      
      # The single value of a rate group or the value of a rate group table's cell.
      # Exactly one of `noShipping`, `flatRate`, `pricePercentage`, `carrierRateName`,
      # `subtableName` must be set.
      class Value
        include Google::Apis::Core::Hashable
      
        # The name of a carrier rate referring to a carrier rate defined in the same
        # rate group. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `carrierRateName`
        # @return [String]
        attr_accessor :carrier_rate_name
      
        # A flat rate. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `flatRate`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :flat_rate
      
        # If true, then the product can't ship. Must be true when set, can only be set
        # if all other fields are not set.
        # Corresponds to the JSON property `noShipping`
        # @return [Boolean]
        attr_accessor :no_shipping
        alias_method :no_shipping?, :no_shipping
      
        # A percentage of the price represented as a number in decimal notation (for
        # example, `"5.4"`). Can only be set if all other fields are not set.
        # Corresponds to the JSON property `pricePercentage`
        # @return [String]
        attr_accessor :price_percentage
      
        # The name of a subtable. Can only be set in table cells (not for single values),
        # and only if all other fields are not set.
        # Corresponds to the JSON property `subtableName`
        # @return [String]
        attr_accessor :subtable_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier_rate_name = args[:carrier_rate_name] if args.key?(:carrier_rate_name)
          @flat_rate = args[:flat_rate] if args.key?(:flat_rate)
          @no_shipping = args[:no_shipping] if args.key?(:no_shipping)
          @price_percentage = args[:price_percentage] if args.key?(:price_percentage)
          @subtable_name = args[:subtable_name] if args.key?(:subtable_name)
        end
      end
      
      # Request message for the VerifyPhoneNumber method.
      class VerifyPhoneNumberRequest
        include Google::Apis::Core::Hashable
      
        # Verification method used to receive verification code.
        # Corresponds to the JSON property `phoneVerificationMethod`
        # @return [String]
        attr_accessor :phone_verification_method
      
        # The verification code that was sent to the phone number for validation.
        # Corresponds to the JSON property `verificationCode`
        # @return [String]
        attr_accessor :verification_code
      
        # The verification ID returned by `requestphoneverification`.
        # Corresponds to the JSON property `verificationId`
        # @return [String]
        attr_accessor :verification_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_verification_method = args[:phone_verification_method] if args.key?(:phone_verification_method)
          @verification_code = args[:verification_code] if args.key?(:verification_code)
          @verification_id = args[:verification_id] if args.key?(:verification_id)
        end
      end
      
      # Response message for the VerifyPhoneNumber method.
      class VerifyPhoneNumberResponse
        include Google::Apis::Core::Hashable
      
        # Verified phone number if verification is successful. This phone number can
        # only be replaced by another verified phone number.
        # Corresponds to the JSON property `verifiedPhoneNumber`
        # @return [String]
        attr_accessor :verified_phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verified_phone_number = args[:verified_phone_number] if args.key?(:verified_phone_number)
        end
      end
      
      # A fulfillment warehouse, which stores and handles inventory.
      class Warehouse
        include Google::Apis::Core::Hashable
      
        # Business days of the warehouse. If not set, will be Monday to Friday by
        # default.
        # Corresponds to the JSON property `businessDayConfig`
        # @return [Google::Apis::ContentV2_1::BusinessDayConfig]
        attr_accessor :business_day_config
      
        # Required. The latest time of day that an order can be accepted and begin
        # processing. Later orders will be processed in the next day. The time is based
        # on the warehouse postal code.
        # Corresponds to the JSON property `cutoffTime`
        # @return [Google::Apis::ContentV2_1::WarehouseCutoffTime]
        attr_accessor :cutoff_time
      
        # Required. The number of days it takes for this warehouse to pack up and ship
        # an item. This is on the warehouse level, but can be overridden on the offer
        # level based on the attributes of an item.
        # Corresponds to the JSON property `handlingDays`
        # @return [Fixnum]
        attr_accessor :handling_days
      
        # Required. The name of the warehouse. Must be unique within account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Shipping address of the warehouse.
        # Corresponds to the JSON property `shippingAddress`
        # @return [Google::Apis::ContentV2_1::Address]
        attr_accessor :shipping_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business_day_config = args[:business_day_config] if args.key?(:business_day_config)
          @cutoff_time = args[:cutoff_time] if args.key?(:cutoff_time)
          @handling_days = args[:handling_days] if args.key?(:handling_days)
          @name = args[:name] if args.key?(:name)
          @shipping_address = args[:shipping_address] if args.key?(:shipping_address)
        end
      end
      
      # 
      class WarehouseBasedDeliveryTime
        include Google::Apis::Core::Hashable
      
        # Required. Carrier, such as `"UPS"` or `"Fedex"`. The list of supported
        # carriers can be retrieved through the `listSupportedCarriers` method.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Required. Carrier service, such as `"ground"` or `"2 days"`. The list of
        # supported services for a carrier can be retrieved through the `
        # listSupportedCarriers` method. The name of the service must be in the
        # eddSupportedServices list.
        # Corresponds to the JSON property `carrierService`
        # @return [String]
        attr_accessor :carrier_service
      
        # Shipping origin's state.
        # Corresponds to the JSON property `originAdministrativeArea`
        # @return [String]
        attr_accessor :origin_administrative_area
      
        # Shipping origin's city.
        # Corresponds to the JSON property `originCity`
        # @return [String]
        attr_accessor :origin_city
      
        # Shipping origin's country represented as a [CLDR territory code](https://
        # github.com/unicode-org/cldr/blob/latest/common/main/en.xml).
        # Corresponds to the JSON property `originCountry`
        # @return [String]
        attr_accessor :origin_country
      
        # Shipping origin.
        # Corresponds to the JSON property `originPostalCode`
        # @return [String]
        attr_accessor :origin_postal_code
      
        # Shipping origin's street address.
        # Corresponds to the JSON property `originStreetAddress`
        # @return [String]
        attr_accessor :origin_street_address
      
        # The name of the warehouse. Warehouse name need to be matched with name. If
        # warehouseName is set, the below fields will be ignored. The warehouse info
        # will be read from warehouse.
        # Corresponds to the JSON property `warehouseName`
        # @return [String]
        attr_accessor :warehouse_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @carrier_service = args[:carrier_service] if args.key?(:carrier_service)
          @origin_administrative_area = args[:origin_administrative_area] if args.key?(:origin_administrative_area)
          @origin_city = args[:origin_city] if args.key?(:origin_city)
          @origin_country = args[:origin_country] if args.key?(:origin_country)
          @origin_postal_code = args[:origin_postal_code] if args.key?(:origin_postal_code)
          @origin_street_address = args[:origin_street_address] if args.key?(:origin_street_address)
          @warehouse_name = args[:warehouse_name] if args.key?(:warehouse_name)
        end
      end
      
      # 
      class WarehouseCutoffTime
        include Google::Apis::Core::Hashable
      
        # Required. Hour (24-hour clock) of the cutoff time until which an order has to
        # be placed to be processed in the same day by the warehouse. Hour is based on
        # the timezone of warehouse.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # Required. Minute of the cutoff time until which an order has to be placed to
        # be processed in the same day by the warehouse. Minute is based on the timezone
        # of warehouse.
        # Corresponds to the JSON property `minute`
        # @return [Fixnum]
        attr_accessor :minute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
        end
      end
      
      # 
      class Weight
        include Google::Apis::Core::Hashable
      
        # Required. The weight unit. Acceptable values are: - "`kg`" - "`lb`"
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Required. The weight represented as a number. The weight can have a maximum
        # precision of four decimal places.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
