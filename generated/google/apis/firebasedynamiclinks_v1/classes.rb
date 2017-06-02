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
    module FirebasedynamiclinksV1
      
      # Response to create a short Dynamic Link.
      class CreateShortDynamicLinkResponse
        include Google::Apis::Core::Hashable
      
        # Preivew link to show the link flow chart.
        # Corresponds to the JSON property `previewLink`
        # @return [String]
        attr_accessor :preview_link
      
        # Information about potential warnings on link creation.
        # Corresponds to the JSON property `warning`
        # @return [Array<Google::Apis::FirebasedynamiclinksV1::DynamicLinkWarning>]
        attr_accessor :warning
      
        # Short Dynamic Link value. e.g. https://abcd.app.goo.gl/wxyz
        # Corresponds to the JSON property `shortLink`
        # @return [String]
        attr_accessor :short_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @preview_link = args[:preview_link] if args.key?(:preview_link)
          @warning = args[:warning] if args.key?(:warning)
          @short_link = args[:short_link] if args.key?(:short_link)
        end
      end
      
      # Short Dynamic Link suffix.
      class Suffix
        include Google::Apis::Core::Hashable
      
        # Suffix option.
        # Corresponds to the JSON property `option`
        # @return [String]
        attr_accessor :option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @option = args[:option] if args.key?(:option)
        end
      end
      
      # Parameters for Google Play Campaign Measurements.
      # [Learn more](https://developers.google.com/analytics/devguides/collection/
      # android/v4/campaigns#campaign-params)
      class GooglePlayAnalytics
        include Google::Apis::Core::Hashable
      
        # Campaign medium; used to identify a medium such as email or cost-per-click.
        # Corresponds to the JSON property `utmMedium`
        # @return [String]
        attr_accessor :utm_medium
      
        # Campaign term; used with paid search to supply the keywords for ads.
        # Corresponds to the JSON property `utmTerm`
        # @return [String]
        attr_accessor :utm_term
      
        # Campaign source; used to identify a search engine, newsletter, or other
        # source.
        # Corresponds to the JSON property `utmSource`
        # @return [String]
        attr_accessor :utm_source
      
        # [AdWords autotagging parameter](https://support.google.com/analytics/answer/
        # 1033981?hl=en);
        # used to measure Google AdWords ads. This value is generated dynamically
        # and should never be modified.
        # Corresponds to the JSON property `gclid`
        # @return [String]
        attr_accessor :gclid
      
        # Campaign name; used for keyword analysis to identify a specific product
        # promotion or strategic campaign.
        # Corresponds to the JSON property `utmCampaign`
        # @return [String]
        attr_accessor :utm_campaign
      
        # Campaign content; used for A/B testing and content-targeted ads to
        # differentiate ads or links that point to the same URL.
        # Corresponds to the JSON property `utmContent`
        # @return [String]
        attr_accessor :utm_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utm_medium = args[:utm_medium] if args.key?(:utm_medium)
          @utm_term = args[:utm_term] if args.key?(:utm_term)
          @utm_source = args[:utm_source] if args.key?(:utm_source)
          @gclid = args[:gclid] if args.key?(:gclid)
          @utm_campaign = args[:utm_campaign] if args.key?(:utm_campaign)
          @utm_content = args[:utm_content] if args.key?(:utm_content)
        end
      end
      
      # Information about a Dynamic Link.
      class DynamicLinkInfo
        include Google::Apis::Core::Hashable
      
        # The link your app will open, You can specify any URL your app can handle.
        # This link must be a well-formatted URL, be properly URL-encoded, and use
        # the HTTP or HTTPS scheme. See 'link' parameters in the
        # [documentation](https://firebase.google.com/docs/dynamic-links/create-manually)
        # .
        # Required.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # iOS related attributes to the Dynamic Link..
        # Corresponds to the JSON property `iosInfo`
        # @return [Google::Apis::FirebasedynamiclinksV1::IosInfo]
        attr_accessor :ios_info
      
        # Parameters for social meta tag params.
        # Used to set meta tag data for link previews on social sites.
        # Corresponds to the JSON property `socialMetaTagInfo`
        # @return [Google::Apis::FirebasedynamiclinksV1::SocialMetaTagInfo]
        attr_accessor :social_meta_tag_info
      
        # Android related attributes to the Dynamic Link.
        # Corresponds to the JSON property `androidInfo`
        # @return [Google::Apis::FirebasedynamiclinksV1::AndroidInfo]
        attr_accessor :android_info
      
        # Information of navigation behavior.
        # Corresponds to the JSON property `navigationInfo`
        # @return [Google::Apis::FirebasedynamiclinksV1::NavigationInfo]
        attr_accessor :navigation_info
      
        # Tracking parameters supported by Dynamic Link.
        # Corresponds to the JSON property `analyticsInfo`
        # @return [Google::Apis::FirebasedynamiclinksV1::AnalyticsInfo]
        attr_accessor :analytics_info
      
        # Dynamic Links domain that the project owns, e.g. abcd.app.goo.gl
        # [Learn more](https://firebase.google.com/docs/dynamic-links/android/receive)
        # on how to set up Dynamic Link domain associated with your Firebase project.
        # Required.
        # Corresponds to the JSON property `dynamicLinkDomain`
        # @return [String]
        attr_accessor :dynamic_link_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link = args[:link] if args.key?(:link)
          @ios_info = args[:ios_info] if args.key?(:ios_info)
          @social_meta_tag_info = args[:social_meta_tag_info] if args.key?(:social_meta_tag_info)
          @android_info = args[:android_info] if args.key?(:android_info)
          @navigation_info = args[:navigation_info] if args.key?(:navigation_info)
          @analytics_info = args[:analytics_info] if args.key?(:analytics_info)
          @dynamic_link_domain = args[:dynamic_link_domain] if args.key?(:dynamic_link_domain)
        end
      end
      
      # Parameters for iTunes Connect App Analytics.
      class ITunesConnectAnalytics
        include Google::Apis::Core::Hashable
      
        # Affiliate token used to create affiliate-coded links.
        # Corresponds to the JSON property `at`
        # @return [String]
        attr_accessor :at
      
        # iTune media types, including music, podcasts, audiobooks and so on.
        # Corresponds to the JSON property `mt`
        # @return [String]
        attr_accessor :mt
      
        # Campaign text that developers can optionally add to any link in order to
        # track sales from a specific marketing campaign.
        # Corresponds to the JSON property `ct`
        # @return [String]
        attr_accessor :ct
      
        # Provider token that enables analytics for Dynamic Links from within iTunes
        # Connect.
        # Corresponds to the JSON property `pt`
        # @return [String]
        attr_accessor :pt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @at = args[:at] if args.key?(:at)
          @mt = args[:mt] if args.key?(:mt)
          @ct = args[:ct] if args.key?(:ct)
          @pt = args[:pt] if args.key?(:pt)
        end
      end
      
      # Parameters for social meta tag params.
      # Used to set meta tag data for link previews on social sites.
      class SocialMetaTagInfo
        include Google::Apis::Core::Hashable
      
        # An image url string. Optional.
        # Corresponds to the JSON property `socialImageLink`
        # @return [String]
        attr_accessor :social_image_link
      
        # Title to be displayed. Optional.
        # Corresponds to the JSON property `socialTitle`
        # @return [String]
        attr_accessor :social_title
      
        # A short description of the link. Optional.
        # Corresponds to the JSON property `socialDescription`
        # @return [String]
        attr_accessor :social_description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @social_image_link = args[:social_image_link] if args.key?(:social_image_link)
          @social_title = args[:social_title] if args.key?(:social_title)
          @social_description = args[:social_description] if args.key?(:social_description)
        end
      end
      
      # Android related attributes to the Dynamic Link.
      class AndroidInfo
        include Google::Apis::Core::Hashable
      
        # If specified, this overrides the ‘link’ parameter on Android.
        # Corresponds to the JSON property `androidLink`
        # @return [String]
        attr_accessor :android_link
      
        # Link to open on Android if the app is not installed.
        # Corresponds to the JSON property `androidFallbackLink`
        # @return [String]
        attr_accessor :android_fallback_link
      
        # Android package name of the app.
        # Corresponds to the JSON property `androidPackageName`
        # @return [String]
        attr_accessor :android_package_name
      
        # Minimum version code for the Android app. If the installed app’s version
        # code is lower, then the user is taken to the Play Store.
        # Corresponds to the JSON property `androidMinPackageVersionCode`
        # @return [String]
        attr_accessor :android_min_package_version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_link = args[:android_link] if args.key?(:android_link)
          @android_fallback_link = args[:android_fallback_link] if args.key?(:android_fallback_link)
          @android_package_name = args[:android_package_name] if args.key?(:android_package_name)
          @android_min_package_version_code = args[:android_min_package_version_code] if args.key?(:android_min_package_version_code)
        end
      end
      
      # Dynamic Links warning messages.
      class DynamicLinkWarning
        include Google::Apis::Core::Hashable
      
        # The warning code.
        # Corresponds to the JSON property `warningCode`
        # @return [String]
        attr_accessor :warning_code
      
        # The warning message to help developers improve their requests.
        # Corresponds to the JSON property `warningMessage`
        # @return [String]
        attr_accessor :warning_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warning_code = args[:warning_code] if args.key?(:warning_code)
          @warning_message = args[:warning_message] if args.key?(:warning_message)
        end
      end
      
      # Information of navigation behavior.
      class NavigationInfo
        include Google::Apis::Core::Hashable
      
        # If this option is on, FDL click will be forced to redirect rather than
        # show an interstitial page.
        # Corresponds to the JSON property `enableForcedRedirect`
        # @return [Boolean]
        attr_accessor :enable_forced_redirect
        alias_method :enable_forced_redirect?, :enable_forced_redirect
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_forced_redirect = args[:enable_forced_redirect] if args.key?(:enable_forced_redirect)
        end
      end
      
      # iOS related attributes to the Dynamic Link..
      class IosInfo
        include Google::Apis::Core::Hashable
      
        # If specified, this overrides the ios_fallback_link value on iPads.
        # Corresponds to the JSON property `iosIpadFallbackLink`
        # @return [String]
        attr_accessor :ios_ipad_fallback_link
      
        # iPad bundle ID of the app.
        # Corresponds to the JSON property `iosIpadBundleId`
        # @return [String]
        attr_accessor :ios_ipad_bundle_id
      
        # Custom (destination) scheme to use for iOS. By default, we’ll use the
        # bundle ID as the custom scheme. Developer can override this behavior using
        # this param.
        # Corresponds to the JSON property `iosCustomScheme`
        # @return [String]
        attr_accessor :ios_custom_scheme
      
        # iOS bundle ID of the app.
        # Corresponds to the JSON property `iosBundleId`
        # @return [String]
        attr_accessor :ios_bundle_id
      
        # Link to open on iOS if the app is not installed.
        # Corresponds to the JSON property `iosFallbackLink`
        # @return [String]
        attr_accessor :ios_fallback_link
      
        # iOS App Store ID.
        # Corresponds to the JSON property `iosAppStoreId`
        # @return [String]
        attr_accessor :ios_app_store_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ios_ipad_fallback_link = args[:ios_ipad_fallback_link] if args.key?(:ios_ipad_fallback_link)
          @ios_ipad_bundle_id = args[:ios_ipad_bundle_id] if args.key?(:ios_ipad_bundle_id)
          @ios_custom_scheme = args[:ios_custom_scheme] if args.key?(:ios_custom_scheme)
          @ios_bundle_id = args[:ios_bundle_id] if args.key?(:ios_bundle_id)
          @ios_fallback_link = args[:ios_fallback_link] if args.key?(:ios_fallback_link)
          @ios_app_store_id = args[:ios_app_store_id] if args.key?(:ios_app_store_id)
        end
      end
      
      # Tracking parameters supported by Dynamic Link.
      class AnalyticsInfo
        include Google::Apis::Core::Hashable
      
        # Parameters for iTunes Connect App Analytics.
        # Corresponds to the JSON property `itunesConnectAnalytics`
        # @return [Google::Apis::FirebasedynamiclinksV1::ITunesConnectAnalytics]
        attr_accessor :itunes_connect_analytics
      
        # Parameters for Google Play Campaign Measurements.
        # [Learn more](https://developers.google.com/analytics/devguides/collection/
        # android/v4/campaigns#campaign-params)
        # Corresponds to the JSON property `googlePlayAnalytics`
        # @return [Google::Apis::FirebasedynamiclinksV1::GooglePlayAnalytics]
        attr_accessor :google_play_analytics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @itunes_connect_analytics = args[:itunes_connect_analytics] if args.key?(:itunes_connect_analytics)
          @google_play_analytics = args[:google_play_analytics] if args.key?(:google_play_analytics)
        end
      end
      
      # Request to create a short Dynamic Link.
      class CreateShortDynamicLinkRequest
        include Google::Apis::Core::Hashable
      
        # Full long Dynamic Link URL with desired query parameters specified.
        # For example,
        # "https://sample.app.goo.gl/?link=http://www.google.com&apn=com.sample",
        # [Learn more](https://firebase.google.com/docs/dynamic-links/android#create-a-
        # dynamic-link-programmatically).
        # Corresponds to the JSON property `longDynamicLink`
        # @return [String]
        attr_accessor :long_dynamic_link
      
        # Short Dynamic Link suffix.
        # Corresponds to the JSON property `suffix`
        # @return [Google::Apis::FirebasedynamiclinksV1::Suffix]
        attr_accessor :suffix
      
        # Information about a Dynamic Link.
        # Corresponds to the JSON property `dynamicLinkInfo`
        # @return [Google::Apis::FirebasedynamiclinksV1::DynamicLinkInfo]
        attr_accessor :dynamic_link_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @long_dynamic_link = args[:long_dynamic_link] if args.key?(:long_dynamic_link)
          @suffix = args[:suffix] if args.key?(:suffix)
          @dynamic_link_info = args[:dynamic_link_info] if args.key?(:dynamic_link_info)
        end
      end
    end
  end
end
