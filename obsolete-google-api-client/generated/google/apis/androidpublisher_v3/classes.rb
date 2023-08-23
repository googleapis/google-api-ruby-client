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
    module AndroidpublisherV3
      
      # Information about an APK. The resource for ApksService.
      class Apk
        include Google::Apis::Core::Hashable
      
        # Represents the binary payload of an APK.
        # Corresponds to the JSON property `binary`
        # @return [Google::Apis::AndroidpublisherV3::ApkBinary]
        attr_accessor :binary
      
        # The version code of the APK, as specified in the manifest file.
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary = args[:binary] if args.key?(:binary)
          @version_code = args[:version_code] if args.key?(:version_code)
        end
      end
      
      # Represents the binary payload of an APK.
      class ApkBinary
        include Google::Apis::Core::Hashable
      
        # A sha1 hash of the APK payload, encoded as a hex string and matching the
        # output of the sha1sum command.
        # Corresponds to the JSON property `sha1`
        # @return [String]
        attr_accessor :sha1
      
        # A sha256 hash of the APK payload, encoded as a hex string and matching the
        # output of the sha256sum command.
        # Corresponds to the JSON property `sha256`
        # @return [String]
        attr_accessor :sha256
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha1 = args[:sha1] if args.key?(:sha1)
          @sha256 = args[:sha256] if args.key?(:sha256)
        end
      end
      
      # Request to create a new externally hosted APK.
      class ApksAddExternallyHostedRequest
        include Google::Apis::Core::Hashable
      
        # Defines an APK available for this application that is hosted externally and
        # not uploaded to Google Play. This function is only available to organizations
        # using Managed Play whose application is configured to restrict distribution to
        # the organizations.
        # Corresponds to the JSON property `externallyHostedApk`
        # @return [Google::Apis::AndroidpublisherV3::ExternallyHostedApk]
        attr_accessor :externally_hosted_apk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @externally_hosted_apk = args[:externally_hosted_apk] if args.key?(:externally_hosted_apk)
        end
      end
      
      # Response for creating a new externally hosted APK.
      class ApksAddExternallyHostedResponse
        include Google::Apis::Core::Hashable
      
        # Defines an APK available for this application that is hosted externally and
        # not uploaded to Google Play. This function is only available to organizations
        # using Managed Play whose application is configured to restrict distribution to
        # the organizations.
        # Corresponds to the JSON property `externallyHostedApk`
        # @return [Google::Apis::AndroidpublisherV3::ExternallyHostedApk]
        attr_accessor :externally_hosted_apk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @externally_hosted_apk = args[:externally_hosted_apk] if args.key?(:externally_hosted_apk)
        end
      end
      
      # Response listing all APKs.
      class ApksListResponse
        include Google::Apis::Core::Hashable
      
        # All APKs.
        # Corresponds to the JSON property `apks`
        # @return [Array<Google::Apis::AndroidpublisherV3::Apk>]
        attr_accessor :apks
      
        # The kind of this response ("androidpublisher#apksListResponse").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apks = args[:apks] if args.key?(:apks)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # The app details. The resource for DetailsService.
      class AppDetails
        include Google::Apis::Core::Hashable
      
        # The user-visible support email for this app.
        # Corresponds to the JSON property `contactEmail`
        # @return [String]
        attr_accessor :contact_email
      
        # The user-visible support telephone number for this app.
        # Corresponds to the JSON property `contactPhone`
        # @return [String]
        attr_accessor :contact_phone
      
        # The user-visible website for this app.
        # Corresponds to the JSON property `contactWebsite`
        # @return [String]
        attr_accessor :contact_website
      
        # Default language code, in BCP 47 format (eg "en-US").
        # Corresponds to the JSON property `defaultLanguage`
        # @return [String]
        attr_accessor :default_language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_email = args[:contact_email] if args.key?(:contact_email)
          @contact_phone = args[:contact_phone] if args.key?(:contact_phone)
          @contact_website = args[:contact_website] if args.key?(:contact_website)
          @default_language = args[:default_language] if args.key?(:default_language)
        end
      end
      
      # An app edit. The resource for EditsService.
      class AppEdit
        include Google::Apis::Core::Hashable
      
        # Output only. The time (as seconds since Epoch) at which the edit will expire
        # and will be no longer valid for use.
        # Corresponds to the JSON property `expiryTimeSeconds`
        # @return [String]
        attr_accessor :expiry_time_seconds
      
        # Output only. Identifier of the edit. Can be used in subsequent API calls.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiry_time_seconds = args[:expiry_time_seconds] if args.key?(:expiry_time_seconds)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Information about a bundle. The resource for BundlesService.
      class Bundle
        include Google::Apis::Core::Hashable
      
        # A sha1 hash of the upload payload, encoded as a hex string and matching the
        # output of the sha1sum command.
        # Corresponds to the JSON property `sha1`
        # @return [String]
        attr_accessor :sha1
      
        # A sha256 hash of the upload payload, encoded as a hex string and matching the
        # output of the sha256sum command.
        # Corresponds to the JSON property `sha256`
        # @return [String]
        attr_accessor :sha256
      
        # The version code of the Android App Bundle, as specified in the Android App
        # Bundle's base module APK manifest file.
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha1 = args[:sha1] if args.key?(:sha1)
          @sha256 = args[:sha256] if args.key?(:sha256)
          @version_code = args[:version_code] if args.key?(:version_code)
        end
      end
      
      # Response listing all bundles.
      class BundlesListResponse
        include Google::Apis::Core::Hashable
      
        # All bundles.
        # Corresponds to the JSON property `bundles`
        # @return [Array<Google::Apis::AndroidpublisherV3::Bundle>]
        attr_accessor :bundles
      
        # The kind of this response ("androidpublisher#bundlesListResponse").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundles = args[:bundles] if args.key?(:bundles)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # An entry of conversation between user and developer.
      class Comment
        include Google::Apis::Core::Hashable
      
        # Developer entry from conversation between user and developer.
        # Corresponds to the JSON property `developerComment`
        # @return [Google::Apis::AndroidpublisherV3::DeveloperComment]
        attr_accessor :developer_comment
      
        # User entry from conversation between user and developer.
        # Corresponds to the JSON property `userComment`
        # @return [Google::Apis::AndroidpublisherV3::UserComment]
        attr_accessor :user_comment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @developer_comment = args[:developer_comment] if args.key?(:developer_comment)
          @user_comment = args[:user_comment] if args.key?(:user_comment)
        end
      end
      
      # Country targeting specification.
      class CountryTargeting
        include Google::Apis::Core::Hashable
      
        # Countries to target, specified as two letter [CLDR codes](https://unicode.org/
        # cldr/charts/latest/supplemental/territory_containment_un_m_49.html).
        # Corresponds to the JSON property `countries`
        # @return [Array<String>]
        attr_accessor :countries
      
        # Include "rest of world" as well as explicitly targeted countries.
        # Corresponds to the JSON property `includeRestOfWorld`
        # @return [Boolean]
        attr_accessor :include_rest_of_world
        alias_method :include_rest_of_world?, :include_rest_of_world
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @countries = args[:countries] if args.key?(:countries)
          @include_rest_of_world = args[:include_rest_of_world] if args.key?(:include_rest_of_world)
        end
      end
      
      # Represents a deobfuscation file.
      class DeobfuscationFile
        include Google::Apis::Core::Hashable
      
        # The type of the deobfuscation file.
        # Corresponds to the JSON property `symbolType`
        # @return [String]
        attr_accessor :symbol_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @symbol_type = args[:symbol_type] if args.key?(:symbol_type)
        end
      end
      
      # Responses for the upload.
      class DeobfuscationFilesUploadResponse
        include Google::Apis::Core::Hashable
      
        # Represents a deobfuscation file.
        # Corresponds to the JSON property `deobfuscationFile`
        # @return [Google::Apis::AndroidpublisherV3::DeobfuscationFile]
        attr_accessor :deobfuscation_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deobfuscation_file = args[:deobfuscation_file] if args.key?(:deobfuscation_file)
        end
      end
      
      # Developer entry from conversation between user and developer.
      class DeveloperComment
        include Google::Apis::Core::Hashable
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970.
        # Corresponds to the JSON property `lastModified`
        # @return [Google::Apis::AndroidpublisherV3::Timestamp]
        attr_accessor :last_modified
      
        # The content of the comment, i.e. reply body.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_modified = args[:last_modified] if args.key?(:last_modified)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Characteristics of the user's device.
      class DeviceMetadata
        include Google::Apis::Core::Hashable
      
        # Device CPU make, e.g. "Qualcomm"
        # Corresponds to the JSON property `cpuMake`
        # @return [String]
        attr_accessor :cpu_make
      
        # Device CPU model, e.g. "MSM8974"
        # Corresponds to the JSON property `cpuModel`
        # @return [String]
        attr_accessor :cpu_model
      
        # Device class (e.g. tablet)
        # Corresponds to the JSON property `deviceClass`
        # @return [String]
        attr_accessor :device_class
      
        # OpenGL version
        # Corresponds to the JSON property `glEsVersion`
        # @return [Fixnum]
        attr_accessor :gl_es_version
      
        # Device manufacturer (e.g. Motorola)
        # Corresponds to the JSON property `manufacturer`
        # @return [String]
        attr_accessor :manufacturer
      
        # Comma separated list of native platforms (e.g. "arm", "arm7")
        # Corresponds to the JSON property `nativePlatform`
        # @return [String]
        attr_accessor :native_platform
      
        # Device model name (e.g. Droid)
        # Corresponds to the JSON property `productName`
        # @return [String]
        attr_accessor :product_name
      
        # Device RAM in Megabytes, e.g. "2048"
        # Corresponds to the JSON property `ramMb`
        # @return [Fixnum]
        attr_accessor :ram_mb
      
        # Screen density in DPI
        # Corresponds to the JSON property `screenDensityDpi`
        # @return [Fixnum]
        attr_accessor :screen_density_dpi
      
        # Screen height in pixels
        # Corresponds to the JSON property `screenHeightPx`
        # @return [Fixnum]
        attr_accessor :screen_height_px
      
        # Screen width in pixels
        # Corresponds to the JSON property `screenWidthPx`
        # @return [Fixnum]
        attr_accessor :screen_width_px
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_make = args[:cpu_make] if args.key?(:cpu_make)
          @cpu_model = args[:cpu_model] if args.key?(:cpu_model)
          @device_class = args[:device_class] if args.key?(:device_class)
          @gl_es_version = args[:gl_es_version] if args.key?(:gl_es_version)
          @manufacturer = args[:manufacturer] if args.key?(:manufacturer)
          @native_platform = args[:native_platform] if args.key?(:native_platform)
          @product_name = args[:product_name] if args.key?(:product_name)
          @ram_mb = args[:ram_mb] if args.key?(:ram_mb)
          @screen_density_dpi = args[:screen_density_dpi] if args.key?(:screen_density_dpi)
          @screen_height_px = args[:screen_height_px] if args.key?(:screen_height_px)
          @screen_width_px = args[:screen_width_px] if args.key?(:screen_width_px)
        end
      end
      
      # The device spec used to generate a system APK.
      class DeviceSpec
        include Google::Apis::Core::Hashable
      
        # Screen dpi.
        # Corresponds to the JSON property `screenDensity`
        # @return [Fixnum]
        attr_accessor :screen_density
      
        # Supported ABI architectures in the order of preference. The values should be
        # the string as reported by the platform, e.g. "armeabi-v7a", "x86_64".
        # Corresponds to the JSON property `supportedAbis`
        # @return [Array<String>]
        attr_accessor :supported_abis
      
        # All installed locales represented as BCP-47 strings, e.g. "en-US".
        # Corresponds to the JSON property `supportedLocales`
        # @return [Array<String>]
        attr_accessor :supported_locales
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @screen_density = args[:screen_density] if args.key?(:screen_density)
          @supported_abis = args[:supported_abis] if args.key?(:supported_abis)
          @supported_locales = args[:supported_locales] if args.key?(:supported_locales)
        end
      end
      
      # An expansion file. The resource for ExpansionFilesService.
      class ExpansionFile
        include Google::Apis::Core::Hashable
      
        # If set, this field indicates that this APK has an expansion file uploaded to
        # it: this APK does not reference another APK's expansion file. The field's
        # value is the size of the uploaded expansion file in bytes.
        # Corresponds to the JSON property `fileSize`
        # @return [Fixnum]
        attr_accessor :file_size
      
        # If set, this APK's expansion file references another APK's expansion file. The
        # file_size field will not be set.
        # Corresponds to the JSON property `referencesVersion`
        # @return [Fixnum]
        attr_accessor :references_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_size = args[:file_size] if args.key?(:file_size)
          @references_version = args[:references_version] if args.key?(:references_version)
        end
      end
      
      # Response for uploading an expansion file.
      class ExpansionFilesUploadResponse
        include Google::Apis::Core::Hashable
      
        # An expansion file. The resource for ExpansionFilesService.
        # Corresponds to the JSON property `expansionFile`
        # @return [Google::Apis::AndroidpublisherV3::ExpansionFile]
        attr_accessor :expansion_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expansion_file = args[:expansion_file] if args.key?(:expansion_file)
        end
      end
      
      # Defines an APK available for this application that is hosted externally and
      # not uploaded to Google Play. This function is only available to organizations
      # using Managed Play whose application is configured to restrict distribution to
      # the organizations.
      class ExternallyHostedApk
        include Google::Apis::Core::Hashable
      
        # The application label.
        # Corresponds to the JSON property `applicationLabel`
        # @return [String]
        attr_accessor :application_label
      
        # A certificate (or array of certificates if a certificate-chain is used) used
        # to sign this APK, represented as a base64 encoded byte array.
        # Corresponds to the JSON property `certificateBase64s`
        # @return [Array<String>]
        attr_accessor :certificate_base64s
      
        # The URL at which the APK is hosted. This must be an https URL.
        # Corresponds to the JSON property `externallyHostedUrl`
        # @return [String]
        attr_accessor :externally_hosted_url
      
        # The sha1 checksum of this APK, represented as a base64 encoded byte array.
        # Corresponds to the JSON property `fileSha1Base64`
        # @return [String]
        attr_accessor :file_sha1_base64
      
        # The sha256 checksum of this APK, represented as a base64 encoded byte array.
        # Corresponds to the JSON property `fileSha256Base64`
        # @return [String]
        attr_accessor :file_sha256_base64
      
        # The file size in bytes of this APK.
        # Corresponds to the JSON property `fileSize`
        # @return [Fixnum]
        attr_accessor :file_size
      
        # The icon image from the APK, as a base64 encoded byte array.
        # Corresponds to the JSON property `iconBase64`
        # @return [String]
        attr_accessor :icon_base64
      
        # The maximum SDK supported by this APK (optional).
        # Corresponds to the JSON property `maximumSdk`
        # @return [Fixnum]
        attr_accessor :maximum_sdk
      
        # The minimum SDK targeted by this APK.
        # Corresponds to the JSON property `minimumSdk`
        # @return [Fixnum]
        attr_accessor :minimum_sdk
      
        # The native code environments supported by this APK (optional).
        # Corresponds to the JSON property `nativeCodes`
        # @return [Array<String>]
        attr_accessor :native_codes
      
        # The package name.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The features required by this APK (optional).
        # Corresponds to the JSON property `usesFeatures`
        # @return [Array<String>]
        attr_accessor :uses_features
      
        # The permissions requested by this APK.
        # Corresponds to the JSON property `usesPermissions`
        # @return [Array<Google::Apis::AndroidpublisherV3::UsesPermission>]
        attr_accessor :uses_permissions
      
        # The version code of this APK.
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        # The version name of this APK.
        # Corresponds to the JSON property `versionName`
        # @return [String]
        attr_accessor :version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_label = args[:application_label] if args.key?(:application_label)
          @certificate_base64s = args[:certificate_base64s] if args.key?(:certificate_base64s)
          @externally_hosted_url = args[:externally_hosted_url] if args.key?(:externally_hosted_url)
          @file_sha1_base64 = args[:file_sha1_base64] if args.key?(:file_sha1_base64)
          @file_sha256_base64 = args[:file_sha256_base64] if args.key?(:file_sha256_base64)
          @file_size = args[:file_size] if args.key?(:file_size)
          @icon_base64 = args[:icon_base64] if args.key?(:icon_base64)
          @maximum_sdk = args[:maximum_sdk] if args.key?(:maximum_sdk)
          @minimum_sdk = args[:minimum_sdk] if args.key?(:minimum_sdk)
          @native_codes = args[:native_codes] if args.key?(:native_codes)
          @package_name = args[:package_name] if args.key?(:package_name)
          @uses_features = args[:uses_features] if args.key?(:uses_features)
          @uses_permissions = args[:uses_permissions] if args.key?(:uses_permissions)
          @version_code = args[:version_code] if args.key?(:version_code)
          @version_name = args[:version_name] if args.key?(:version_name)
        end
      end
      
      # An uploaded image. The resource for ImagesService.
      class Image
        include Google::Apis::Core::Hashable
      
        # A unique id representing this image.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A sha1 hash of the image.
        # Corresponds to the JSON property `sha1`
        # @return [String]
        attr_accessor :sha1
      
        # A sha256 hash of the image.
        # Corresponds to the JSON property `sha256`
        # @return [String]
        attr_accessor :sha256
      
        # A URL that will serve a preview of the image.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @sha1 = args[:sha1] if args.key?(:sha1)
          @sha256 = args[:sha256] if args.key?(:sha256)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Response for deleting all images.
      class ImagesDeleteAllResponse
        include Google::Apis::Core::Hashable
      
        # The deleted images.
        # Corresponds to the JSON property `deleted`
        # @return [Array<Google::Apis::AndroidpublisherV3::Image>]
        attr_accessor :deleted
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] if args.key?(:deleted)
        end
      end
      
      # Response listing all images.
      class ImagesListResponse
        include Google::Apis::Core::Hashable
      
        # All listed Images.
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::AndroidpublisherV3::Image>]
        attr_accessor :images
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @images = args[:images] if args.key?(:images)
        end
      end
      
      # Response for uploading an image.
      class ImagesUploadResponse
        include Google::Apis::Core::Hashable
      
        # An uploaded image. The resource for ImagesService.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::AndroidpublisherV3::Image]
        attr_accessor :image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image = args[:image] if args.key?(:image)
        end
      end
      
      # An in-app product. The resource for InappproductsService.
      class InAppProduct
        include Google::Apis::Core::Hashable
      
        # Default language of the localized data, as defined by BCP-47. e.g. "en-US".
        # Corresponds to the JSON property `defaultLanguage`
        # @return [String]
        attr_accessor :default_language
      
        # Definition of a price, i.e. currency and units.
        # Corresponds to the JSON property `defaultPrice`
        # @return [Google::Apis::AndroidpublisherV3::Price]
        attr_accessor :default_price
      
        # Grace period of the subscription, specified in ISO 8601 format. Allows
        # developers to give their subscribers a grace period when the payment for the
        # new recurrence period is declined. Acceptable values are P0D (zero days), P3D (
        # three days), P7D (seven days), P14D (14 days), and P30D (30 days).
        # Corresponds to the JSON property `gracePeriod`
        # @return [String]
        attr_accessor :grace_period
      
        # List of localized title and description data. Map key is the language of the
        # localized data, as defined by BCP-47, e.g. "en-US".
        # Corresponds to the JSON property `listings`
        # @return [Hash<String,Google::Apis::AndroidpublisherV3::InAppProductListing>]
        attr_accessor :listings
      
        # Package name of the parent app.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Prices per buyer region. None of these can be zero, as in-app products are
        # never free. Map key is region code, as defined by ISO 3166-2.
        # Corresponds to the JSON property `prices`
        # @return [Hash<String,Google::Apis::AndroidpublisherV3::Price>]
        attr_accessor :prices
      
        # The type of the product, e.g. a recurring subscription.
        # Corresponds to the JSON property `purchaseType`
        # @return [String]
        attr_accessor :purchase_type
      
        # Stock-keeping-unit (SKU) of the product, unique within an app.
        # Corresponds to the JSON property `sku`
        # @return [String]
        attr_accessor :sku
      
        # The status of the product, e.g. whether it's active.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Subscription period, specified in ISO 8601 format. Acceptable values are P1W (
        # one week), P1M (one month), P3M (three months), P6M (six months), and P1Y (one
        # year).
        # Corresponds to the JSON property `subscriptionPeriod`
        # @return [String]
        attr_accessor :subscription_period
      
        # Trial period, specified in ISO 8601 format. Acceptable values are anything
        # between P7D (seven days) and P999D (999 days).
        # Corresponds to the JSON property `trialPeriod`
        # @return [String]
        attr_accessor :trial_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_language = args[:default_language] if args.key?(:default_language)
          @default_price = args[:default_price] if args.key?(:default_price)
          @grace_period = args[:grace_period] if args.key?(:grace_period)
          @listings = args[:listings] if args.key?(:listings)
          @package_name = args[:package_name] if args.key?(:package_name)
          @prices = args[:prices] if args.key?(:prices)
          @purchase_type = args[:purchase_type] if args.key?(:purchase_type)
          @sku = args[:sku] if args.key?(:sku)
          @status = args[:status] if args.key?(:status)
          @subscription_period = args[:subscription_period] if args.key?(:subscription_period)
          @trial_period = args[:trial_period] if args.key?(:trial_period)
        end
      end
      
      # Store listing of a single in-app product.
      class InAppProductListing
        include Google::Apis::Core::Hashable
      
        # Localized entitlement benefits for a subscription.
        # Corresponds to the JSON property `benefits`
        # @return [Array<String>]
        attr_accessor :benefits
      
        # Description for the store listing.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Title for the store listing.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @benefits = args[:benefits] if args.key?(:benefits)
          @description = args[:description] if args.key?(:description)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Response listing all in-app products.
      class InappproductsListResponse
        include Google::Apis::Core::Hashable
      
        # All in-app products.
        # Corresponds to the JSON property `inappproduct`
        # @return [Array<Google::Apis::AndroidpublisherV3::InAppProduct>]
        attr_accessor :inappproduct
      
        # The kind of this response ("androidpublisher#inappproductsListResponse").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Information about the current page. List operations that supports paging
        # return only one "page" of results. This protocol buffer message describes the
        # page that has been returned.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::AndroidpublisherV3::PageInfo]
        attr_accessor :page_info
      
        # Pagination information returned by a List operation when token pagination is
        # enabled. List operations that supports paging return only one "page" of
        # results. This protocol buffer message describes the page that has been
        # returned. When using token pagination, clients should use the next/previous
        # token to get another page of the result. The presence or absence of next/
        # previous token indicates whether a next/previous page is available and
        # provides a mean of accessing this page. ListRequest.page_token should be set
        # to either next_page_token or previous_page_token to access another page.
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::AndroidpublisherV3::TokenPagination]
        attr_accessor :token_pagination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inappproduct = args[:inappproduct] if args.key?(:inappproduct)
          @kind = args[:kind] if args.key?(:kind)
          @page_info = args[:page_info] if args.key?(:page_info)
          @token_pagination = args[:token_pagination] if args.key?(:token_pagination)
        end
      end
      
      # An artifact resource which gets created when uploading an APK or Android App
      # Bundle through internal app sharing.
      class InternalAppSharingArtifact
        include Google::Apis::Core::Hashable
      
        # The sha256 fingerprint of the certificate used to sign the generated artifact.
        # Corresponds to the JSON property `certificateFingerprint`
        # @return [String]
        attr_accessor :certificate_fingerprint
      
        # The download URL generated for the uploaded artifact. Users that are
        # authorized to download can follow the link to the Play Store app to install it.
        # Corresponds to the JSON property `downloadUrl`
        # @return [String]
        attr_accessor :download_url
      
        # The sha256 hash of the artifact represented as a lowercase hexadecimal number,
        # matching the output of the sha256sum command.
        # Corresponds to the JSON property `sha256`
        # @return [String]
        attr_accessor :sha256
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_fingerprint = args[:certificate_fingerprint] if args.key?(:certificate_fingerprint)
          @download_url = args[:download_url] if args.key?(:download_url)
          @sha256 = args[:sha256] if args.key?(:sha256)
        end
      end
      
      # Contains the introductory price information for a subscription.
      class IntroductoryPriceInfo
        include Google::Apis::Core::Hashable
      
        # Introductory price of the subscription, not including tax. The currency is the
        # same as price_currency_code. Price is expressed in micro-units, where 1,000,
        # 000 micro-units represents one unit of the currency. For example, if the
        # subscription price is €1.99, price_amount_micros is 1990000.
        # Corresponds to the JSON property `introductoryPriceAmountMicros`
        # @return [Fixnum]
        attr_accessor :introductory_price_amount_micros
      
        # ISO 4217 currency code for the introductory subscription price. For example,
        # if the price is specified in British pounds sterling, price_currency_code is "
        # GBP".
        # Corresponds to the JSON property `introductoryPriceCurrencyCode`
        # @return [String]
        attr_accessor :introductory_price_currency_code
      
        # The number of billing period to offer introductory pricing.
        # Corresponds to the JSON property `introductoryPriceCycles`
        # @return [Fixnum]
        attr_accessor :introductory_price_cycles
      
        # Introductory price period, specified in ISO 8601 format. Common values are (
        # but not limited to) "P1W" (one week), "P1M" (one month), "P3M" (three months),
        # "P6M" (six months), and "P1Y" (one year).
        # Corresponds to the JSON property `introductoryPricePeriod`
        # @return [String]
        attr_accessor :introductory_price_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @introductory_price_amount_micros = args[:introductory_price_amount_micros] if args.key?(:introductory_price_amount_micros)
          @introductory_price_currency_code = args[:introductory_price_currency_code] if args.key?(:introductory_price_currency_code)
          @introductory_price_cycles = args[:introductory_price_cycles] if args.key?(:introductory_price_cycles)
          @introductory_price_period = args[:introductory_price_period] if args.key?(:introductory_price_period)
        end
      end
      
      # A localized store listing. The resource for ListingsService.
      class Listing
        include Google::Apis::Core::Hashable
      
        # Full description of the app.
        # Corresponds to the JSON property `fullDescription`
        # @return [String]
        attr_accessor :full_description
      
        # Language localization code (a BCP-47 language tag; for example, "de-AT" for
        # Austrian German).
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Short description of the app.
        # Corresponds to the JSON property `shortDescription`
        # @return [String]
        attr_accessor :short_description
      
        # Localized title of the app.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # URL of a promotional YouTube video for the app.
        # Corresponds to the JSON property `video`
        # @return [String]
        attr_accessor :video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_description = args[:full_description] if args.key?(:full_description)
          @language = args[:language] if args.key?(:language)
          @short_description = args[:short_description] if args.key?(:short_description)
          @title = args[:title] if args.key?(:title)
          @video = args[:video] if args.key?(:video)
        end
      end
      
      # Response listing all localized listings.
      class ListingsListResponse
        include Google::Apis::Core::Hashable
      
        # The kind of this response ("androidpublisher#listingsListResponse").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # All localized listings.
        # Corresponds to the JSON property `listings`
        # @return [Array<Google::Apis::AndroidpublisherV3::Listing>]
        attr_accessor :listings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @listings = args[:listings] if args.key?(:listings)
        end
      end
      
      # Release notes specification, i.e. language and text.
      class LocalizedText
        include Google::Apis::Core::Hashable
      
        # Language localization code (a BCP-47 language tag; for example, "de-AT" for
        # Austrian German).
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The text in the given language.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language = args[:language] if args.key?(:language)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Information about the current page. List operations that supports paging
      # return only one "page" of results. This protocol buffer message describes the
      # page that has been returned.
      class PageInfo
        include Google::Apis::Core::Hashable
      
        # Maximum number of results returned in one page. ! The number of results
        # included in the API response.
        # Corresponds to the JSON property `resultPerPage`
        # @return [Fixnum]
        attr_accessor :result_per_page
      
        # Index of the first result returned in the current page.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # Total number of results available on the backend ! The total number of results
        # in the result set.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_per_page = args[:result_per_page] if args.key?(:result_per_page)
          @start_index = args[:start_index] if args.key?(:start_index)
          @total_results = args[:total_results] if args.key?(:total_results)
        end
      end
      
      # Definition of a price, i.e. currency and units.
      class Price
        include Google::Apis::Core::Hashable
      
        # 3 letter Currency code, as defined by ISO 4217. See java/com/google/common/
        # money/CurrencyCode.java
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # Price in 1/million of the currency base unit, represented as a string.
        # Corresponds to the JSON property `priceMicros`
        # @return [String]
        attr_accessor :price_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency = args[:currency] if args.key?(:currency)
          @price_micros = args[:price_micros] if args.key?(:price_micros)
        end
      end
      
      # A ProductPurchase resource indicates the status of a user's inapp product
      # purchase.
      class ProductPurchase
        include Google::Apis::Core::Hashable
      
        # The acknowledgement state of the inapp product. Possible values are: 0. Yet to
        # be acknowledged 1. Acknowledged
        # Corresponds to the JSON property `acknowledgementState`
        # @return [Fixnum]
        attr_accessor :acknowledgement_state
      
        # The consumption state of the inapp product. Possible values are: 0. Yet to be
        # consumed 1. Consumed
        # Corresponds to the JSON property `consumptionState`
        # @return [Fixnum]
        attr_accessor :consumption_state
      
        # A developer-specified string that contains supplemental information about an
        # order.
        # Corresponds to the JSON property `developerPayload`
        # @return [String]
        attr_accessor :developer_payload
      
        # This kind represents an inappPurchase object in the androidpublisher service.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An obfuscated version of the id that is uniquely associated with the user's
        # account in your app. Only present if specified using https://developer.android.
        # com/reference/com/android/billingclient/api/BillingFlowParams.Builder#
        # setobfuscatedaccountid when the purchase was made.
        # Corresponds to the JSON property `obfuscatedExternalAccountId`
        # @return [String]
        attr_accessor :obfuscated_external_account_id
      
        # An obfuscated version of the id that is uniquely associated with the user's
        # profile in your app. Only present if specified using https://developer.android.
        # com/reference/com/android/billingclient/api/BillingFlowParams.Builder#
        # setobfuscatedprofileid when the purchase was made.
        # Corresponds to the JSON property `obfuscatedExternalProfileId`
        # @return [String]
        attr_accessor :obfuscated_external_profile_id
      
        # The order id associated with the purchase of the inapp product.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # The inapp product SKU.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The purchase state of the order. Possible values are: 0. Purchased 1. Canceled
        # 2. Pending
        # Corresponds to the JSON property `purchaseState`
        # @return [Fixnum]
        attr_accessor :purchase_state
      
        # The time the product was purchased, in milliseconds since the epoch (Jan 1,
        # 1970).
        # Corresponds to the JSON property `purchaseTimeMillis`
        # @return [Fixnum]
        attr_accessor :purchase_time_millis
      
        # The purchase token generated to identify this purchase.
        # Corresponds to the JSON property `purchaseToken`
        # @return [String]
        attr_accessor :purchase_token
      
        # The type of purchase of the inapp product. This field is only set if this
        # purchase was not made using the standard in-app billing flow. Possible values
        # are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e.
        # purchased using a promo code) 2. Rewarded (i.e. from watching a video ad
        # instead of paying)
        # Corresponds to the JSON property `purchaseType`
        # @return [Fixnum]
        attr_accessor :purchase_type
      
        # The quantity associated with the purchase of the inapp product.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # ISO 3166-1 alpha-2 billing region code of the user at the time the product was
        # granted.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledgement_state = args[:acknowledgement_state] if args.key?(:acknowledgement_state)
          @consumption_state = args[:consumption_state] if args.key?(:consumption_state)
          @developer_payload = args[:developer_payload] if args.key?(:developer_payload)
          @kind = args[:kind] if args.key?(:kind)
          @obfuscated_external_account_id = args[:obfuscated_external_account_id] if args.key?(:obfuscated_external_account_id)
          @obfuscated_external_profile_id = args[:obfuscated_external_profile_id] if args.key?(:obfuscated_external_profile_id)
          @order_id = args[:order_id] if args.key?(:order_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @purchase_state = args[:purchase_state] if args.key?(:purchase_state)
          @purchase_time_millis = args[:purchase_time_millis] if args.key?(:purchase_time_millis)
          @purchase_token = args[:purchase_token] if args.key?(:purchase_token)
          @purchase_type = args[:purchase_type] if args.key?(:purchase_type)
          @quantity = args[:quantity] if args.key?(:quantity)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Request for the product.purchases.acknowledge API.
      class ProductPurchasesAcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # Payload to attach to the purchase.
        # Corresponds to the JSON property `developerPayload`
        # @return [String]
        attr_accessor :developer_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @developer_payload = args[:developer_payload] if args.key?(:developer_payload)
        end
      end
      
      # An Android app review.
      class Review
        include Google::Apis::Core::Hashable
      
        # The name of the user who wrote the review.
        # Corresponds to the JSON property `authorName`
        # @return [String]
        attr_accessor :author_name
      
        # A repeated field containing comments for the review.
        # Corresponds to the JSON property `comments`
        # @return [Array<Google::Apis::AndroidpublisherV3::Comment>]
        attr_accessor :comments
      
        # Unique identifier for this review.
        # Corresponds to the JSON property `reviewId`
        # @return [String]
        attr_accessor :review_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author_name = args[:author_name] if args.key?(:author_name)
          @comments = args[:comments] if args.key?(:comments)
          @review_id = args[:review_id] if args.key?(:review_id)
        end
      end
      
      # The result of replying/updating a reply to review.
      class ReviewReplyResult
        include Google::Apis::Core::Hashable
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970.
        # Corresponds to the JSON property `lastEdited`
        # @return [Google::Apis::AndroidpublisherV3::Timestamp]
        attr_accessor :last_edited
      
        # The reply text that was applied.
        # Corresponds to the JSON property `replyText`
        # @return [String]
        attr_accessor :reply_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_edited = args[:last_edited] if args.key?(:last_edited)
          @reply_text = args[:reply_text] if args.key?(:reply_text)
        end
      end
      
      # Response listing reviews.
      class ReviewsListResponse
        include Google::Apis::Core::Hashable
      
        # Information about the current page. List operations that supports paging
        # return only one "page" of results. This protocol buffer message describes the
        # page that has been returned.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::AndroidpublisherV3::PageInfo]
        attr_accessor :page_info
      
        # List of reviews.
        # Corresponds to the JSON property `reviews`
        # @return [Array<Google::Apis::AndroidpublisherV3::Review>]
        attr_accessor :reviews
      
        # Pagination information returned by a List operation when token pagination is
        # enabled. List operations that supports paging return only one "page" of
        # results. This protocol buffer message describes the page that has been
        # returned. When using token pagination, clients should use the next/previous
        # token to get another page of the result. The presence or absence of next/
        # previous token indicates whether a next/previous page is available and
        # provides a mean of accessing this page. ListRequest.page_token should be set
        # to either next_page_token or previous_page_token to access another page.
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::AndroidpublisherV3::TokenPagination]
        attr_accessor :token_pagination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_info = args[:page_info] if args.key?(:page_info)
          @reviews = args[:reviews] if args.key?(:reviews)
          @token_pagination = args[:token_pagination] if args.key?(:token_pagination)
        end
      end
      
      # Request to reply to review or update existing reply.
      class ReviewsReplyRequest
        include Google::Apis::Core::Hashable
      
        # The text to set as the reply. Replies of more than approximately 350
        # characters will be rejected. HTML tags will be stripped.
        # Corresponds to the JSON property `replyText`
        # @return [String]
        attr_accessor :reply_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reply_text = args[:reply_text] if args.key?(:reply_text)
        end
      end
      
      # Response on status of replying to a review.
      class ReviewsReplyResponse
        include Google::Apis::Core::Hashable
      
        # The result of replying/updating a reply to review.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::AndroidpublisherV3::ReviewReplyResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # Information provided by the user when they complete the subscription
      # cancellation flow (cancellation reason survey).
      class SubscriptionCancelSurveyResult
        include Google::Apis::Core::Hashable
      
        # The cancellation reason the user chose in the survey. Possible values are: 0.
        # Other 1. I don't use this service enough 2. Technical issues 3. Cost-related
        # reasons 4. I found a better app
        # Corresponds to the JSON property `cancelSurveyReason`
        # @return [Fixnum]
        attr_accessor :cancel_survey_reason
      
        # The customized input cancel reason from the user. Only present when
        # cancelReason is 0.
        # Corresponds to the JSON property `userInputCancelReason`
        # @return [String]
        attr_accessor :user_input_cancel_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_survey_reason = args[:cancel_survey_reason] if args.key?(:cancel_survey_reason)
          @user_input_cancel_reason = args[:user_input_cancel_reason] if args.key?(:user_input_cancel_reason)
        end
      end
      
      # A SubscriptionDeferralInfo contains the data needed to defer a subscription
      # purchase to a future expiry time.
      class SubscriptionDeferralInfo
        include Google::Apis::Core::Hashable
      
        # The desired next expiry time to assign to the subscription, in milliseconds
        # since the Epoch. The given time must be later/greater than the current expiry
        # time for the subscription.
        # Corresponds to the JSON property `desiredExpiryTimeMillis`
        # @return [Fixnum]
        attr_accessor :desired_expiry_time_millis
      
        # The expected expiry time for the subscription. If the current expiry time for
        # the subscription is not the value specified here, the deferral will not occur.
        # Corresponds to the JSON property `expectedExpiryTimeMillis`
        # @return [Fixnum]
        attr_accessor :expected_expiry_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desired_expiry_time_millis = args[:desired_expiry_time_millis] if args.key?(:desired_expiry_time_millis)
          @expected_expiry_time_millis = args[:expected_expiry_time_millis] if args.key?(:expected_expiry_time_millis)
        end
      end
      
      # Contains the price change information for a subscription that can be used to
      # control the user journey for the price change in the app. This can be in the
      # form of seeking confirmation from the user or tailoring the experience for a
      # successful conversion.
      class SubscriptionPriceChange
        include Google::Apis::Core::Hashable
      
        # Definition of a price, i.e. currency and units.
        # Corresponds to the JSON property `newPrice`
        # @return [Google::Apis::AndroidpublisherV3::Price]
        attr_accessor :new_price
      
        # The current state of the price change. Possible values are: 0. Outstanding:
        # State for a pending price change waiting for the user to agree. In this state,
        # you can optionally seek confirmation from the user using the In-App API. 1.
        # Accepted: State for an accepted price change that the subscription will renew
        # with unless it's canceled. The price change takes effect on a future date when
        # the subscription renews. Note that the change might not occur when the
        # subscription is renewed next.
        # Corresponds to the JSON property `state`
        # @return [Fixnum]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_price = args[:new_price] if args.key?(:new_price)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A SubscriptionPurchase resource indicates the status of a user's subscription
      # purchase.
      class SubscriptionPurchase
        include Google::Apis::Core::Hashable
      
        # The acknowledgement state of the subscription product. Possible values are: 0.
        # Yet to be acknowledged 1. Acknowledged
        # Corresponds to the JSON property `acknowledgementState`
        # @return [Fixnum]
        attr_accessor :acknowledgement_state
      
        # Whether the subscription will automatically be renewed when it reaches its
        # current expiry time.
        # Corresponds to the JSON property `autoRenewing`
        # @return [Boolean]
        attr_accessor :auto_renewing
        alias_method :auto_renewing?, :auto_renewing
      
        # Time at which the subscription will be automatically resumed, in milliseconds
        # since the Epoch. Only present if the user has requested to pause the
        # subscription.
        # Corresponds to the JSON property `autoResumeTimeMillis`
        # @return [Fixnum]
        attr_accessor :auto_resume_time_millis
      
        # The reason why a subscription was canceled or is not auto-renewing. Possible
        # values are: 0. User canceled the subscription 1. Subscription was canceled by
        # the system, for example because of a billing problem 2. Subscription was
        # replaced with a new subscription 3. Subscription was canceled by the developer
        # Corresponds to the JSON property `cancelReason`
        # @return [Fixnum]
        attr_accessor :cancel_reason
      
        # Information provided by the user when they complete the subscription
        # cancellation flow (cancellation reason survey).
        # Corresponds to the JSON property `cancelSurveyResult`
        # @return [Google::Apis::AndroidpublisherV3::SubscriptionCancelSurveyResult]
        attr_accessor :cancel_survey_result
      
        # ISO 3166-1 alpha-2 billing country/region code of the user at the time the
        # subscription was granted.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # A developer-specified string that contains supplemental information about an
        # order.
        # Corresponds to the JSON property `developerPayload`
        # @return [String]
        attr_accessor :developer_payload
      
        # The email address of the user when the subscription was purchased. Only
        # present for purchases made with 'Subscribe with Google'.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Time at which the subscription will expire, in milliseconds since the Epoch.
        # Corresponds to the JSON property `expiryTimeMillis`
        # @return [Fixnum]
        attr_accessor :expiry_time_millis
      
        # User account identifier in the third-party service. Only present if account
        # linking happened as part of the subscription purchase flow.
        # Corresponds to the JSON property `externalAccountId`
        # @return [String]
        attr_accessor :external_account_id
      
        # The family name of the user when the subscription was purchased. Only present
        # for purchases made with 'Subscribe with Google'.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # The given name of the user when the subscription was purchased. Only present
        # for purchases made with 'Subscribe with Google'.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # Contains the introductory price information for a subscription.
        # Corresponds to the JSON property `introductoryPriceInfo`
        # @return [Google::Apis::AndroidpublisherV3::IntroductoryPriceInfo]
        attr_accessor :introductory_price_info
      
        # This kind represents a subscriptionPurchase object in the androidpublisher
        # service.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The purchase token of the originating purchase if this subscription is one of
        # the following: 0. Re-signup of a canceled but non-lapsed subscription 1.
        # Upgrade/downgrade from a previous subscription For example, suppose a user
        # originally signs up and you receive purchase token X, then the user cancels
        # and goes through the resignup flow (before their subscription lapses) and you
        # receive purchase token Y, and finally the user upgrades their subscription and
        # you receive purchase token Z. If you call this API with purchase token Z, this
        # field will be set to Y. If you call this API with purchase token Y, this field
        # will be set to X. If you call this API with purchase token X, this field will
        # not be set.
        # Corresponds to the JSON property `linkedPurchaseToken`
        # @return [String]
        attr_accessor :linked_purchase_token
      
        # An obfuscated version of the id that is uniquely associated with the user's
        # account in your app. Present for the following purchases: * If account linking
        # happened as part of the subscription purchase flow. * It was specified using
        # https://developer.android.com/reference/com/android/billingclient/api/
        # BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.
        # Corresponds to the JSON property `obfuscatedExternalAccountId`
        # @return [String]
        attr_accessor :obfuscated_external_account_id
      
        # An obfuscated version of the id that is uniquely associated with the user's
        # profile in your app. Only present if specified using https://developer.android.
        # com/reference/com/android/billingclient/api/BillingFlowParams.Builder#
        # setobfuscatedprofileid when the purchase was made.
        # Corresponds to the JSON property `obfuscatedExternalProfileId`
        # @return [String]
        attr_accessor :obfuscated_external_profile_id
      
        # The order id of the latest recurring order associated with the purchase of the
        # subscription.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # The payment state of the subscription. Possible values are: 0. Payment pending
        # 1. Payment received 2. Free trial 3. Pending deferred upgrade/downgrade Not
        # present for canceled, expired subscriptions.
        # Corresponds to the JSON property `paymentState`
        # @return [Fixnum]
        attr_accessor :payment_state
      
        # Price of the subscription, not including tax. Price is expressed in micro-
        # units, where 1,000,000 micro-units represents one unit of the currency. For
        # example, if the subscription price is €1.99, price_amount_micros is 1990000.
        # Corresponds to the JSON property `priceAmountMicros`
        # @return [Fixnum]
        attr_accessor :price_amount_micros
      
        # Contains the price change information for a subscription that can be used to
        # control the user journey for the price change in the app. This can be in the
        # form of seeking confirmation from the user or tailoring the experience for a
        # successful conversion.
        # Corresponds to the JSON property `priceChange`
        # @return [Google::Apis::AndroidpublisherV3::SubscriptionPriceChange]
        attr_accessor :price_change
      
        # ISO 4217 currency code for the subscription price. For example, if the price
        # is specified in British pounds sterling, price_currency_code is "GBP".
        # Corresponds to the JSON property `priceCurrencyCode`
        # @return [String]
        attr_accessor :price_currency_code
      
        # The Google profile id of the user when the subscription was purchased. Only
        # present for purchases made with 'Subscribe with Google'.
        # Corresponds to the JSON property `profileId`
        # @return [String]
        attr_accessor :profile_id
      
        # The profile name of the user when the subscription was purchased. Only present
        # for purchases made with 'Subscribe with Google'.
        # Corresponds to the JSON property `profileName`
        # @return [String]
        attr_accessor :profile_name
      
        # The promotion code applied on this purchase. This field is only set if a
        # vanity code promotion is applied when the subscription was purchased.
        # Corresponds to the JSON property `promotionCode`
        # @return [String]
        attr_accessor :promotion_code
      
        # The type of promotion applied on this purchase. This field is only set if a
        # promotion is applied when the subscription was purchased. Possible values are:
        # 0. One time code 1. Vanity code
        # Corresponds to the JSON property `promotionType`
        # @return [Fixnum]
        attr_accessor :promotion_type
      
        # The type of purchase of the subscription. This field is only set if this
        # purchase was not made using the standard in-app billing flow. Possible values
        # are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e.
        # purchased using a promo code)
        # Corresponds to the JSON property `purchaseType`
        # @return [Fixnum]
        attr_accessor :purchase_type
      
        # Time at which the subscription was granted, in milliseconds since the Epoch.
        # Corresponds to the JSON property `startTimeMillis`
        # @return [Fixnum]
        attr_accessor :start_time_millis
      
        # The time at which the subscription was canceled by the user, in milliseconds
        # since the epoch. Only present if cancelReason is 0.
        # Corresponds to the JSON property `userCancellationTimeMillis`
        # @return [Fixnum]
        attr_accessor :user_cancellation_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledgement_state = args[:acknowledgement_state] if args.key?(:acknowledgement_state)
          @auto_renewing = args[:auto_renewing] if args.key?(:auto_renewing)
          @auto_resume_time_millis = args[:auto_resume_time_millis] if args.key?(:auto_resume_time_millis)
          @cancel_reason = args[:cancel_reason] if args.key?(:cancel_reason)
          @cancel_survey_result = args[:cancel_survey_result] if args.key?(:cancel_survey_result)
          @country_code = args[:country_code] if args.key?(:country_code)
          @developer_payload = args[:developer_payload] if args.key?(:developer_payload)
          @email_address = args[:email_address] if args.key?(:email_address)
          @expiry_time_millis = args[:expiry_time_millis] if args.key?(:expiry_time_millis)
          @external_account_id = args[:external_account_id] if args.key?(:external_account_id)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
          @introductory_price_info = args[:introductory_price_info] if args.key?(:introductory_price_info)
          @kind = args[:kind] if args.key?(:kind)
          @linked_purchase_token = args[:linked_purchase_token] if args.key?(:linked_purchase_token)
          @obfuscated_external_account_id = args[:obfuscated_external_account_id] if args.key?(:obfuscated_external_account_id)
          @obfuscated_external_profile_id = args[:obfuscated_external_profile_id] if args.key?(:obfuscated_external_profile_id)
          @order_id = args[:order_id] if args.key?(:order_id)
          @payment_state = args[:payment_state] if args.key?(:payment_state)
          @price_amount_micros = args[:price_amount_micros] if args.key?(:price_amount_micros)
          @price_change = args[:price_change] if args.key?(:price_change)
          @price_currency_code = args[:price_currency_code] if args.key?(:price_currency_code)
          @profile_id = args[:profile_id] if args.key?(:profile_id)
          @profile_name = args[:profile_name] if args.key?(:profile_name)
          @promotion_code = args[:promotion_code] if args.key?(:promotion_code)
          @promotion_type = args[:promotion_type] if args.key?(:promotion_type)
          @purchase_type = args[:purchase_type] if args.key?(:purchase_type)
          @start_time_millis = args[:start_time_millis] if args.key?(:start_time_millis)
          @user_cancellation_time_millis = args[:user_cancellation_time_millis] if args.key?(:user_cancellation_time_millis)
        end
      end
      
      # Request for the purchases.subscriptions.acknowledge API.
      class SubscriptionPurchasesAcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # Payload to attach to the purchase.
        # Corresponds to the JSON property `developerPayload`
        # @return [String]
        attr_accessor :developer_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @developer_payload = args[:developer_payload] if args.key?(:developer_payload)
        end
      end
      
      # Request for the purchases.subscriptions.defer API.
      class SubscriptionPurchasesDeferRequest
        include Google::Apis::Core::Hashable
      
        # A SubscriptionDeferralInfo contains the data needed to defer a subscription
        # purchase to a future expiry time.
        # Corresponds to the JSON property `deferralInfo`
        # @return [Google::Apis::AndroidpublisherV3::SubscriptionDeferralInfo]
        attr_accessor :deferral_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deferral_info = args[:deferral_info] if args.key?(:deferral_info)
        end
      end
      
      # Response for the purchases.subscriptions.defer API.
      class SubscriptionPurchasesDeferResponse
        include Google::Apis::Core::Hashable
      
        # The new expiry time for the subscription in milliseconds since the Epoch.
        # Corresponds to the JSON property `newExpiryTimeMillis`
        # @return [Fixnum]
        attr_accessor :new_expiry_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_expiry_time_millis = args[:new_expiry_time_millis] if args.key?(:new_expiry_time_millis)
        end
      end
      
      # Response to list previously created system APK variants.
      class SystemApksListResponse
        include Google::Apis::Core::Hashable
      
        # All system APK variants created.
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::AndroidpublisherV3::Variant>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variants = args[:variants] if args.key?(:variants)
        end
      end
      
      # The testers of an app. The resource for TestersService.
      class Testers
        include Google::Apis::Core::Hashable
      
        # All testing Google Groups, as email addresses.
        # Corresponds to the JSON property `googleGroups`
        # @return [Array<String>]
        attr_accessor :google_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_groups = args[:google_groups] if args.key?(:google_groups)
        end
      end
      
      # A Timestamp represents a point in time independent of any time zone or local
      # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
      # resolution. The count is relative to an epoch at UTC midnight on January 1,
      # 1970.
      class Timestamp
        include Google::Apis::Core::Hashable
      
        # Non-negative fractions of a second at nanosecond resolution. Must be from 0 to
        # 999,999,999 inclusive.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Represents seconds of UTC time since Unix epoch.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Pagination information returned by a List operation when token pagination is
      # enabled. List operations that supports paging return only one "page" of
      # results. This protocol buffer message describes the page that has been
      # returned. When using token pagination, clients should use the next/previous
      # token to get another page of the result. The presence or absence of next/
      # previous token indicates whether a next/previous page is available and
      # provides a mean of accessing this page. ListRequest.page_token should be set
      # to either next_page_token or previous_page_token to access another page.
      class TokenPagination
        include Google::Apis::Core::Hashable
      
        # Tokens to pass to the standard list field 'page_token'. Whenever available,
        # tokens are preferred over manipulating start_index.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `previousPageToken`
        # @return [String]
        attr_accessor :previous_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @previous_page_token = args[:previous_page_token] if args.key?(:previous_page_token)
        end
      end
      
      # A track configuration. The resource for TracksService.
      class Track
        include Google::Apis::Core::Hashable
      
        # In a read request, represents all active releases in the track. In an update
        # request, represents desired changes.
        # Corresponds to the JSON property `releases`
        # @return [Array<Google::Apis::AndroidpublisherV3::TrackRelease>]
        attr_accessor :releases
      
        # Identifier of the track.
        # Corresponds to the JSON property `track`
        # @return [String]
        attr_accessor :track
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @releases = args[:releases] if args.key?(:releases)
          @track = args[:track] if args.key?(:track)
        end
      end
      
      # A release within a track.
      class TrackRelease
        include Google::Apis::Core::Hashable
      
        # Country targeting specification.
        # Corresponds to the JSON property `countryTargeting`
        # @return [Google::Apis::AndroidpublisherV3::CountryTargeting]
        attr_accessor :country_targeting
      
        # In-app update priority of the release. All newly added APKs in the release
        # will be considered at this priority. Can take values in the range [0, 5], with
        # 5 the highest priority. Defaults to 0. in_app_update_priority can not be
        # updated once the release is rolled out. See https://developer.android.com/
        # guide/playcore/in-app-updates.
        # Corresponds to the JSON property `inAppUpdatePriority`
        # @return [Fixnum]
        attr_accessor :in_app_update_priority
      
        # The release name. Not required to be unique. If not set, the name is generated
        # from the APK's version_name. If the release contains multiple APKs, the name
        # is generated from the date.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A description of what is new in this release.
        # Corresponds to the JSON property `releaseNotes`
        # @return [Array<Google::Apis::AndroidpublisherV3::LocalizedText>]
        attr_accessor :release_notes
      
        # The status of the release.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Fraction of users who are eligible for a staged release. 0 < fraction < 1. Can
        # only be set when status is "inProgress" or "halted".
        # Corresponds to the JSON property `userFraction`
        # @return [Float]
        attr_accessor :user_fraction
      
        # Version codes of all APKs in the release. Must include version codes to retain
        # from previous releases.
        # Corresponds to the JSON property `versionCodes`
        # @return [Array<Fixnum>]
        attr_accessor :version_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_targeting = args[:country_targeting] if args.key?(:country_targeting)
          @in_app_update_priority = args[:in_app_update_priority] if args.key?(:in_app_update_priority)
          @name = args[:name] if args.key?(:name)
          @release_notes = args[:release_notes] if args.key?(:release_notes)
          @status = args[:status] if args.key?(:status)
          @user_fraction = args[:user_fraction] if args.key?(:user_fraction)
          @version_codes = args[:version_codes] if args.key?(:version_codes)
        end
      end
      
      # Response listing all tracks.
      class TracksListResponse
        include Google::Apis::Core::Hashable
      
        # The kind of this response ("androidpublisher#tracksListResponse").
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # All tracks.
        # Corresponds to the JSON property `tracks`
        # @return [Array<Google::Apis::AndroidpublisherV3::Track>]
        attr_accessor :tracks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @tracks = args[:tracks] if args.key?(:tracks)
        end
      end
      
      # User entry from conversation between user and developer.
      class UserComment
        include Google::Apis::Core::Hashable
      
        # Integer Android SDK version of the user's device at the time the review was
        # written, e.g. 23 is Marshmallow. May be absent.
        # Corresponds to the JSON property `androidOsVersion`
        # @return [Fixnum]
        attr_accessor :android_os_version
      
        # Integer version code of the app as installed at the time the review was
        # written. May be absent.
        # Corresponds to the JSON property `appVersionCode`
        # @return [Fixnum]
        attr_accessor :app_version_code
      
        # String version name of the app as installed at the time the review was written.
        # May be absent.
        # Corresponds to the JSON property `appVersionName`
        # @return [String]
        attr_accessor :app_version_name
      
        # Codename for the reviewer's device, e.g. klte, flounder. May be absent.
        # Corresponds to the JSON property `device`
        # @return [String]
        attr_accessor :device
      
        # Characteristics of the user's device.
        # Corresponds to the JSON property `deviceMetadata`
        # @return [Google::Apis::AndroidpublisherV3::DeviceMetadata]
        attr_accessor :device_metadata
      
        # A Timestamp represents a point in time independent of any time zone or local
        # calendar, encoded as a count of seconds and fractions of seconds at nanosecond
        # resolution. The count is relative to an epoch at UTC midnight on January 1,
        # 1970.
        # Corresponds to the JSON property `lastModified`
        # @return [Google::Apis::AndroidpublisherV3::Timestamp]
        attr_accessor :last_modified
      
        # Untranslated text of the review, where the review was translated. If the
        # review was not translated this is left blank.
        # Corresponds to the JSON property `originalText`
        # @return [String]
        attr_accessor :original_text
      
        # Language code for the reviewer. This is taken from the device settings so is
        # not guaranteed to match the language the review is written in. May be absent.
        # Corresponds to the JSON property `reviewerLanguage`
        # @return [String]
        attr_accessor :reviewer_language
      
        # The star rating associated with the review, from 1 to 5.
        # Corresponds to the JSON property `starRating`
        # @return [Fixnum]
        attr_accessor :star_rating
      
        # The content of the comment, i.e. review body. In some cases users have been
        # able to write a review with separate title and body; in those cases the title
        # and body are concatenated and separated by a tab character.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Number of users who have given this review a thumbs down.
        # Corresponds to the JSON property `thumbsDownCount`
        # @return [Fixnum]
        attr_accessor :thumbs_down_count
      
        # Number of users who have given this review a thumbs up.
        # Corresponds to the JSON property `thumbsUpCount`
        # @return [Fixnum]
        attr_accessor :thumbs_up_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_os_version = args[:android_os_version] if args.key?(:android_os_version)
          @app_version_code = args[:app_version_code] if args.key?(:app_version_code)
          @app_version_name = args[:app_version_name] if args.key?(:app_version_name)
          @device = args[:device] if args.key?(:device)
          @device_metadata = args[:device_metadata] if args.key?(:device_metadata)
          @last_modified = args[:last_modified] if args.key?(:last_modified)
          @original_text = args[:original_text] if args.key?(:original_text)
          @reviewer_language = args[:reviewer_language] if args.key?(:reviewer_language)
          @star_rating = args[:star_rating] if args.key?(:star_rating)
          @text = args[:text] if args.key?(:text)
          @thumbs_down_count = args[:thumbs_down_count] if args.key?(:thumbs_down_count)
          @thumbs_up_count = args[:thumbs_up_count] if args.key?(:thumbs_up_count)
        end
      end
      
      # A permission used by this APK.
      class UsesPermission
        include Google::Apis::Core::Hashable
      
        # Optionally, the maximum SDK version for which the permission is required.
        # Corresponds to the JSON property `maxSdkVersion`
        # @return [Fixnum]
        attr_accessor :max_sdk_version
      
        # The name of the permission requested.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_sdk_version = args[:max_sdk_version] if args.key?(:max_sdk_version)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # APK that is suitable for inclusion in a system image. The resource of
      # SystemApksService.
      class Variant
        include Google::Apis::Core::Hashable
      
        # The device spec used to generate a system APK.
        # Corresponds to the JSON property `deviceSpec`
        # @return [Google::Apis::AndroidpublisherV3::DeviceSpec]
        attr_accessor :device_spec
      
        # Output only. The ID of a previously created system APK variant.
        # Corresponds to the JSON property `variantId`
        # @return [Fixnum]
        attr_accessor :variant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_spec = args[:device_spec] if args.key?(:device_spec)
          @variant_id = args[:variant_id] if args.key?(:variant_id)
        end
      end
      
      # A VoidedPurchase resource indicates a purchase that was either canceled/
      # refunded/charged-back.
      class VoidedPurchase
        include Google::Apis::Core::Hashable
      
        # This kind represents a voided purchase object in the androidpublisher service.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The order id which uniquely identifies a one-time purchase, subscription
        # purchase, or subscription renewal.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # The time at which the purchase was made, in milliseconds since the epoch (Jan
        # 1, 1970).
        # Corresponds to the JSON property `purchaseTimeMillis`
        # @return [Fixnum]
        attr_accessor :purchase_time_millis
      
        # The token which uniquely identifies a one-time purchase or subscription. To
        # uniquely identify subscription renewals use order_id (available starting from
        # version 3 of the API).
        # Corresponds to the JSON property `purchaseToken`
        # @return [String]
        attr_accessor :purchase_token
      
        # The reason why the purchase was voided, possible values are: 0. Other 1.
        # Remorse 2. Not_received 3. Defective 4. Accidental_purchase 5. Fraud 6.
        # Friendly_fraud 7. Chargeback
        # Corresponds to the JSON property `voidedReason`
        # @return [Fixnum]
        attr_accessor :voided_reason
      
        # The initiator of voided purchase, possible values are: 0. User 1. Developer 2.
        # Google
        # Corresponds to the JSON property `voidedSource`
        # @return [Fixnum]
        attr_accessor :voided_source
      
        # The time at which the purchase was canceled/refunded/charged-back, in
        # milliseconds since the epoch (Jan 1, 1970).
        # Corresponds to the JSON property `voidedTimeMillis`
        # @return [Fixnum]
        attr_accessor :voided_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @order_id = args[:order_id] if args.key?(:order_id)
          @purchase_time_millis = args[:purchase_time_millis] if args.key?(:purchase_time_millis)
          @purchase_token = args[:purchase_token] if args.key?(:purchase_token)
          @voided_reason = args[:voided_reason] if args.key?(:voided_reason)
          @voided_source = args[:voided_source] if args.key?(:voided_source)
          @voided_time_millis = args[:voided_time_millis] if args.key?(:voided_time_millis)
        end
      end
      
      # Response for the voidedpurchases.list API.
      class VoidedPurchasesListResponse
        include Google::Apis::Core::Hashable
      
        # Information about the current page. List operations that supports paging
        # return only one "page" of results. This protocol buffer message describes the
        # page that has been returned.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::AndroidpublisherV3::PageInfo]
        attr_accessor :page_info
      
        # Pagination information returned by a List operation when token pagination is
        # enabled. List operations that supports paging return only one "page" of
        # results. This protocol buffer message describes the page that has been
        # returned. When using token pagination, clients should use the next/previous
        # token to get another page of the result. The presence or absence of next/
        # previous token indicates whether a next/previous page is available and
        # provides a mean of accessing this page. ListRequest.page_token should be set
        # to either next_page_token or previous_page_token to access another page.
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::AndroidpublisherV3::TokenPagination]
        attr_accessor :token_pagination
      
        # 
        # Corresponds to the JSON property `voidedPurchases`
        # @return [Array<Google::Apis::AndroidpublisherV3::VoidedPurchase>]
        attr_accessor :voided_purchases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_info = args[:page_info] if args.key?(:page_info)
          @token_pagination = args[:token_pagination] if args.key?(:token_pagination)
          @voided_purchases = args[:voided_purchases] if args.key?(:voided_purchases)
        end
      end
    end
  end
end
