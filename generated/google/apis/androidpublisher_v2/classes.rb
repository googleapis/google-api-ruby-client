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
    module AndroidpublisherV2
      
      # 
      class Apk
        include Google::Apis::Core::Hashable
      
        # Represents the binary payload of an APK.
        # Corresponds to the JSON property `binary`
        # @return [Google::Apis::AndroidpublisherV2::ApkBinary]
        attr_accessor :binary
      
        # The version code of the APK, as specified in the APK's manifest file.
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary = args[:binary] unless args[:binary].nil?
          @version_code = args[:version_code] unless args[:version_code].nil?
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha1 = args[:sha1] unless args[:sha1].nil?
        end
      end
      
      # 
      class ApkListing
        include Google::Apis::Core::Hashable
      
        # The language code, in BCP 47 format (eg "en-US").
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Describe what's new in your APK.
        # Corresponds to the JSON property `recentChanges`
        # @return [String]
        attr_accessor :recent_changes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language = args[:language] unless args[:language].nil?
          @recent_changes = args[:recent_changes] unless args[:recent_changes].nil?
        end
      end
      
      # 
      class ListApkListingsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidpublisher#apkListingsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `listings`
        # @return [Array<Google::Apis::AndroidpublisherV2::ApkListing>]
        attr_accessor :listings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @listings = args[:listings] unless args[:listings].nil?
        end
      end
      
      # 
      class ApksAddExternallyHostedRequest
        include Google::Apis::Core::Hashable
      
        # Defines an APK available for this application that is hosted externally and
        # not uploaded to Google Play. This function is only available to enterprises
        # who are using Google Play for Work, and whos application is restricted to the
        # enterprise private channel
        # Corresponds to the JSON property `externallyHostedApk`
        # @return [Google::Apis::AndroidpublisherV2::ExternallyHostedApk]
        attr_accessor :externally_hosted_apk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @externally_hosted_apk = args[:externally_hosted_apk] unless args[:externally_hosted_apk].nil?
        end
      end
      
      # 
      class ApksAddExternallyHostedResponse
        include Google::Apis::Core::Hashable
      
        # Defines an APK available for this application that is hosted externally and
        # not uploaded to Google Play. This function is only available to enterprises
        # who are using Google Play for Work, and whos application is restricted to the
        # enterprise private channel
        # Corresponds to the JSON property `externallyHostedApk`
        # @return [Google::Apis::AndroidpublisherV2::ExternallyHostedApk]
        attr_accessor :externally_hosted_apk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @externally_hosted_apk = args[:externally_hosted_apk] unless args[:externally_hosted_apk].nil?
        end
      end
      
      # 
      class ListApksResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `apks`
        # @return [Array<Google::Apis::AndroidpublisherV2::Apk>]
        attr_accessor :apks
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidpublisher#apksListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apks = args[:apks] unless args[:apks].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
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
          @contact_email = args[:contact_email] unless args[:contact_email].nil?
          @contact_phone = args[:contact_phone] unless args[:contact_phone].nil?
          @contact_website = args[:contact_website] unless args[:contact_website].nil?
          @default_language = args[:default_language] unless args[:default_language].nil?
        end
      end
      
      # Represents an edit of an app. An edit allows clients to make multiple changes
      # before committing them in one operation.
      class AppEdit
        include Google::Apis::Core::Hashable
      
        # The time at which the edit will expire and will be no longer valid for use in
        # any subsequent API calls (encoded as seconds since the Epoch).
        # Corresponds to the JSON property `expiryTimeSeconds`
        # @return [String]
        attr_accessor :expiry_time_seconds
      
        # The ID of the edit that can be used in subsequent API calls.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiry_time_seconds = args[:expiry_time_seconds] unless args[:expiry_time_seconds].nil?
          @id = args[:id] unless args[:id].nil?
        end
      end
      
      # An Entitlement resource indicates a user's current entitlement to an inapp
      # item or subscription.
      class Entitlement
        include Google::Apis::Core::Hashable
      
        # This kind represents an entitlement object in the androidpublisher service.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The SKU of the product.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The type of the inapp product. Possible values are:
        # - In-app item: "inapp"
        # - Subscription: "subs"
        # Corresponds to the JSON property `productType`
        # @return [String]
        attr_accessor :product_type
      
        # The token which can be verified using the subscriptions or products API.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
          @product_type = args[:product_type] unless args[:product_type].nil?
          @token = args[:token] unless args[:token].nil?
        end
      end
      
      # 
      class ListEntitlementsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::AndroidpublisherV2::PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::AndroidpublisherV2::Entitlement>]
        attr_accessor :resources
      
        # 
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::AndroidpublisherV2::TokenPagination]
        attr_accessor :token_pagination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_info = args[:page_info] unless args[:page_info].nil?
          @resources = args[:resources] unless args[:resources].nil?
          @token_pagination = args[:token_pagination] unless args[:token_pagination].nil?
        end
      end
      
      # 
      class ExpansionFile
        include Google::Apis::Core::Hashable
      
        # If set this field indicates that this APK has an Expansion File uploaded to it:
        # this APK does not reference another APK's Expansion File. The field's value
        # is the size of the uploaded Expansion File in bytes.
        # Corresponds to the JSON property `fileSize`
        # @return [String]
        attr_accessor :file_size
      
        # If set this APK's Expansion File references another APK's Expansion File. The
        # file_size field will not be set.
        # Corresponds to the JSON property `referencesVersion`
        # @return [Fixnum]
        attr_accessor :references_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_size = args[:file_size] unless args[:file_size].nil?
          @references_version = args[:references_version] unless args[:references_version].nil?
        end
      end
      
      # 
      class UploadExpansionFilesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `expansionFile`
        # @return [Google::Apis::AndroidpublisherV2::ExpansionFile]
        attr_accessor :expansion_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expansion_file = args[:expansion_file] unless args[:expansion_file].nil?
        end
      end
      
      # Defines an APK available for this application that is hosted externally and
      # not uploaded to Google Play. This function is only available to enterprises
      # who are using Google Play for Work, and whos application is restricted to the
      # enterprise private channel
      class ExternallyHostedApk
        include Google::Apis::Core::Hashable
      
        # The application label.
        # Corresponds to the JSON property `applicationLabel`
        # @return [String]
        attr_accessor :application_label
      
        # A certificate (or array of certificates if a certificate-chain is used) used
        # to signed this APK, represented as a base64 encoded byte array.
        # Corresponds to the JSON property `certificateBase64s`
        # @return [Array<String>]
        attr_accessor :certificate_base64s
      
        # The URL at which the APK is hosted. This must be an https URL.
        # Corresponds to the JSON property `externallyHostedUrl`
        # @return [String]
        attr_accessor :externally_hosted_url
      
        # The SHA1 checksum of this APK, represented as a base64 encoded byte array.
        # Corresponds to the JSON property `fileSha1Base64`
        # @return [String]
        attr_accessor :file_sha1_base64
      
        # The SHA256 checksum of this APK, represented as a base64 encoded byte array.
        # Corresponds to the JSON property `fileSha256Base64`
        # @return [String]
        attr_accessor :file_sha256_base64
      
        # The file size in bytes of this APK.
        # Corresponds to the JSON property `fileSize`
        # @return [String]
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
        # @return [Array<Google::Apis::AndroidpublisherV2::ExternallyHostedApkUsesPermission>]
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
          @application_label = args[:application_label] unless args[:application_label].nil?
          @certificate_base64s = args[:certificate_base64s] unless args[:certificate_base64s].nil?
          @externally_hosted_url = args[:externally_hosted_url] unless args[:externally_hosted_url].nil?
          @file_sha1_base64 = args[:file_sha1_base64] unless args[:file_sha1_base64].nil?
          @file_sha256_base64 = args[:file_sha256_base64] unless args[:file_sha256_base64].nil?
          @file_size = args[:file_size] unless args[:file_size].nil?
          @icon_base64 = args[:icon_base64] unless args[:icon_base64].nil?
          @maximum_sdk = args[:maximum_sdk] unless args[:maximum_sdk].nil?
          @minimum_sdk = args[:minimum_sdk] unless args[:minimum_sdk].nil?
          @native_codes = args[:native_codes] unless args[:native_codes].nil?
          @package_name = args[:package_name] unless args[:package_name].nil?
          @uses_features = args[:uses_features] unless args[:uses_features].nil?
          @uses_permissions = args[:uses_permissions] unless args[:uses_permissions].nil?
          @version_code = args[:version_code] unless args[:version_code].nil?
          @version_name = args[:version_name] unless args[:version_name].nil?
        end
      end
      
      # A permission used by this APK.
      class ExternallyHostedApkUsesPermission
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
          @max_sdk_version = args[:max_sdk_version] unless args[:max_sdk_version].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # 
      class Image
        include Google::Apis::Core::Hashable
      
        # A unique id representing this image.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A sha1 hash of the image that was uploaded.
        # Corresponds to the JSON property `sha1`
        # @return [String]
        attr_accessor :sha1
      
        # A URL that will serve a preview of the image.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @sha1 = args[:sha1] unless args[:sha1].nil?
          @url = args[:url] unless args[:url].nil?
        end
      end
      
      # 
      class ImagesDeleteAllResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deleted`
        # @return [Array<Google::Apis::AndroidpublisherV2::Image>]
        attr_accessor :deleted
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] unless args[:deleted].nil?
        end
      end
      
      # 
      class ListImagesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::AndroidpublisherV2::Image>]
        attr_accessor :images
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @images = args[:images] unless args[:images].nil?
        end
      end
      
      # 
      class UploadImagesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::AndroidpublisherV2::Image]
        attr_accessor :image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image = args[:image] unless args[:image].nil?
        end
      end
      
      # 
      class InAppProduct
        include Google::Apis::Core::Hashable
      
        # The default language of the localized data, as defined by BCP 47. e.g. "en-US",
        # "en-GB".
        # Corresponds to the JSON property `defaultLanguage`
        # @return [String]
        attr_accessor :default_language
      
        # Default price cannot be zero. In-app products can never be free. Default price
        # is always in the developer's Checkout merchant currency.
        # Corresponds to the JSON property `defaultPrice`
        # @return [Google::Apis::AndroidpublisherV2::Price]
        attr_accessor :default_price
      
        # List of localized title and description data.
        # Corresponds to the JSON property `listings`
        # @return [Hash<String,Google::Apis::AndroidpublisherV2::InAppProductListing>]
        attr_accessor :listings
      
        # The package name of the parent app.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Prices per buyer region. None of these prices should be zero. In-app products
        # can never be free.
        # Corresponds to the JSON property `prices`
        # @return [Hash<String,Google::Apis::AndroidpublisherV2::Price>]
        attr_accessor :prices
      
        # Purchase type enum value. Unmodifiable after creation.
        # Corresponds to the JSON property `purchaseType`
        # @return [String]
        attr_accessor :purchase_type
      
        # Definition of a season for a seasonal subscription. Can be defined only for
        # yearly subscriptions.
        # Corresponds to the JSON property `season`
        # @return [Google::Apis::AndroidpublisherV2::Season]
        attr_accessor :season
      
        # The stock-keeping-unit (SKU) of the product, unique within an app.
        # Corresponds to the JSON property `sku`
        # @return [String]
        attr_accessor :sku
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Subscription period, specified in ISO 8601 format. Acceptable values are "P1W"
        # (one week), "P1M" (one month), "P3M" (three months), "P6M" (six months), and "
        # P1Y" (one year).
        # Corresponds to the JSON property `subscriptionPeriod`
        # @return [String]
        attr_accessor :subscription_period
      
        # Trial period, specified in ISO 8601 format. Acceptable values are anything
        # between "P7D" (seven days) and "P999D" (999 days). Seasonal subscriptions
        # cannot have a trial period.
        # Corresponds to the JSON property `trialPeriod`
        # @return [String]
        attr_accessor :trial_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_language = args[:default_language] unless args[:default_language].nil?
          @default_price = args[:default_price] unless args[:default_price].nil?
          @listings = args[:listings] unless args[:listings].nil?
          @package_name = args[:package_name] unless args[:package_name].nil?
          @prices = args[:prices] unless args[:prices].nil?
          @purchase_type = args[:purchase_type] unless args[:purchase_type].nil?
          @season = args[:season] unless args[:season].nil?
          @sku = args[:sku] unless args[:sku].nil?
          @status = args[:status] unless args[:status].nil?
          @subscription_period = args[:subscription_period] unless args[:subscription_period].nil?
          @trial_period = args[:trial_period] unless args[:trial_period].nil?
        end
      end
      
      # 
      class InAppProductListing
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @title = args[:title] unless args[:title].nil?
        end
      end
      
      # 
      class InAppProductsBatchRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entrys`
        # @return [Array<Google::Apis::AndroidpublisherV2::InAppProductsBatchRequestEntry>]
        attr_accessor :entrys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entrys = args[:entrys] unless args[:entrys].nil?
        end
      end
      
      # 
      class InAppProductsBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # 
        # Corresponds to the JSON property `inappproductsinsertrequest`
        # @return [Google::Apis::AndroidpublisherV2::InsertInAppProductsRequest]
        attr_accessor :inappproductsinsertrequest
      
        # 
        # Corresponds to the JSON property `inappproductsupdaterequest`
        # @return [Google::Apis::AndroidpublisherV2::UpdateInAppProductsRequest]
        attr_accessor :inappproductsupdaterequest
      
        # 
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @inappproductsinsertrequest = args[:inappproductsinsertrequest] unless args[:inappproductsinsertrequest].nil?
          @inappproductsupdaterequest = args[:inappproductsupdaterequest] unless args[:inappproductsupdaterequest].nil?
          @method_name = args[:method_name] unless args[:method_name].nil?
        end
      end
      
      # 
      class InAppProductsBatchResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entrys`
        # @return [Array<Google::Apis::AndroidpublisherV2::InAppProductsBatchResponseEntry>]
        attr_accessor :entrys
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidpublisher#inappproductsBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entrys = args[:entrys] unless args[:entrys].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class InAppProductsBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # 
        # Corresponds to the JSON property `inappproductsinsertresponse`
        # @return [Google::Apis::AndroidpublisherV2::InsertInAppProductsResponse]
        attr_accessor :inappproductsinsertresponse
      
        # 
        # Corresponds to the JSON property `inappproductsupdateresponse`
        # @return [Google::Apis::AndroidpublisherV2::UpdateInAppProductsResponse]
        attr_accessor :inappproductsupdateresponse
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] unless args[:batch_id].nil?
          @inappproductsinsertresponse = args[:inappproductsinsertresponse] unless args[:inappproductsinsertresponse].nil?
          @inappproductsupdateresponse = args[:inappproductsupdateresponse] unless args[:inappproductsupdateresponse].nil?
        end
      end
      
      # 
      class InsertInAppProductsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inappproduct`
        # @return [Google::Apis::AndroidpublisherV2::InAppProduct]
        attr_accessor :inappproduct
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inappproduct = args[:inappproduct] unless args[:inappproduct].nil?
        end
      end
      
      # 
      class InsertInAppProductsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inappproduct`
        # @return [Google::Apis::AndroidpublisherV2::InAppProduct]
        attr_accessor :inappproduct
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inappproduct = args[:inappproduct] unless args[:inappproduct].nil?
        end
      end
      
      # 
      class ListInAppProductsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inappproduct`
        # @return [Array<Google::Apis::AndroidpublisherV2::InAppProduct>]
        attr_accessor :inappproduct
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidpublisher#inappproductsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::AndroidpublisherV2::PageInfo]
        attr_accessor :page_info
      
        # 
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::AndroidpublisherV2::TokenPagination]
        attr_accessor :token_pagination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inappproduct = args[:inappproduct] unless args[:inappproduct].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @page_info = args[:page_info] unless args[:page_info].nil?
          @token_pagination = args[:token_pagination] unless args[:token_pagination].nil?
        end
      end
      
      # 
      class UpdateInAppProductsRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inappproduct`
        # @return [Google::Apis::AndroidpublisherV2::InAppProduct]
        attr_accessor :inappproduct
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inappproduct = args[:inappproduct] unless args[:inappproduct].nil?
        end
      end
      
      # 
      class UpdateInAppProductsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `inappproduct`
        # @return [Google::Apis::AndroidpublisherV2::InAppProduct]
        attr_accessor :inappproduct
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inappproduct = args[:inappproduct] unless args[:inappproduct].nil?
        end
      end
      
      # 
      class Listing
        include Google::Apis::Core::Hashable
      
        # Full description of the app; this may be up to 4000 characters in length.
        # Corresponds to the JSON property `fullDescription`
        # @return [String]
        attr_accessor :full_description
      
        # Language localization code (for example, "de-AT" for Austrian German).
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Short description of the app (previously known as promo text); this may be up
        # to 80 characters in length.
        # Corresponds to the JSON property `shortDescription`
        # @return [String]
        attr_accessor :short_description
      
        # App's localized title.
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
          @full_description = args[:full_description] unless args[:full_description].nil?
          @language = args[:language] unless args[:language].nil?
          @short_description = args[:short_description] unless args[:short_description].nil?
          @title = args[:title] unless args[:title].nil?
          @video = args[:video] unless args[:video].nil?
        end
      end
      
      # 
      class ListListingsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidpublisher#listingsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `listings`
        # @return [Array<Google::Apis::AndroidpublisherV2::Listing>]
        attr_accessor :listings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @listings = args[:listings] unless args[:listings].nil?
        end
      end
      
      # 
      class MonthDay
        include Google::Apis::Core::Hashable
      
        # Day of a month, value in [1, 31] range. Valid range depends on the specified
        # month.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. e.g. 1 = JAN, 2 = FEB etc.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] unless args[:day].nil?
          @month = args[:month] unless args[:month].nil?
        end
      end
      
      # 
      class PageInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resultPerPage`
        # @return [Fixnum]
        attr_accessor :result_per_page
      
        # 
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # 
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_per_page = args[:result_per_page] unless args[:result_per_page].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
        end
      end
      
      # 
      class Price
        include Google::Apis::Core::Hashable
      
        # 3 letter Currency code, as defined by ISO 4217.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The price in millionths of the currency base unit represented as a string.
        # Corresponds to the JSON property `priceMicros`
        # @return [String]
        attr_accessor :price_micros
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency = args[:currency] unless args[:currency].nil?
          @price_micros = args[:price_micros] unless args[:price_micros].nil?
        end
      end
      
      # A ProductPurchase resource indicates the status of a user's inapp product
      # purchase.
      class ProductPurchase
        include Google::Apis::Core::Hashable
      
        # The consumption state of the inapp product. Possible values are:
        # - Yet to be consumed
        # - Consumed
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
      
        # The purchase state of the order. Possible values are:
        # - Purchased
        # - Cancelled
        # Corresponds to the JSON property `purchaseState`
        # @return [Fixnum]
        attr_accessor :purchase_state
      
        # The time the product was purchased, in milliseconds since the epoch (Jan 1,
        # 1970).
        # Corresponds to the JSON property `purchaseTimeMillis`
        # @return [String]
        attr_accessor :purchase_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumption_state = args[:consumption_state] unless args[:consumption_state].nil?
          @developer_payload = args[:developer_payload] unless args[:developer_payload].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @purchase_state = args[:purchase_state] unless args[:purchase_state].nil?
          @purchase_time_millis = args[:purchase_time_millis] unless args[:purchase_time_millis].nil?
        end
      end
      
      # 
      class Prorate
        include Google::Apis::Core::Hashable
      
        # Default price cannot be zero and must be less than the full subscription price.
        # Default price is always in the developer's Checkout merchant currency.
        # Targeted countries have their prices set automatically based on the
        # default_price.
        # Corresponds to the JSON property `defaultPrice`
        # @return [Google::Apis::AndroidpublisherV2::Price]
        attr_accessor :default_price
      
        # Defines the first day on which the price takes effect.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::AndroidpublisherV2::MonthDay]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_price = args[:default_price] unless args[:default_price].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # 
      class Season
        include Google::Apis::Core::Hashable
      
        # Inclusive end date of the recurrence period.
        # Corresponds to the JSON property `end`
        # @return [Google::Apis::AndroidpublisherV2::MonthDay]
        attr_accessor :end
      
        # Optionally present list of prorations for the season. Each proration is a one-
        # off discounted entry into a subscription. Each proration contains the first
        # date on which the discount is available and the new pricing information.
        # Corresponds to the JSON property `prorations`
        # @return [Array<Google::Apis::AndroidpublisherV2::Prorate>]
        attr_accessor :prorations
      
        # Inclusive start date of the recurrence period.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::AndroidpublisherV2::MonthDay]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @prorations = args[:prorations] unless args[:prorations].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # A SubscriptionDeferralInfo contains the data needed to defer a subscription
      # purchase to a future expiry time.
      class SubscriptionDeferralInfo
        include Google::Apis::Core::Hashable
      
        # The desired next expiry time for the subscription in milliseconds since Epoch.
        # The given time must be after the current expiry time for the subscription.
        # Corresponds to the JSON property `desiredExpiryTimeMillis`
        # @return [String]
        attr_accessor :desired_expiry_time_millis
      
        # The expected expiry time for the subscription. If the current expiry time for
        # the subscription is not the value specified here, the deferral will not occur.
        # Corresponds to the JSON property `expectedExpiryTimeMillis`
        # @return [String]
        attr_accessor :expected_expiry_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desired_expiry_time_millis = args[:desired_expiry_time_millis] unless args[:desired_expiry_time_millis].nil?
          @expected_expiry_time_millis = args[:expected_expiry_time_millis] unless args[:expected_expiry_time_millis].nil?
        end
      end
      
      # A SubscriptionPurchase resource indicates the status of a user's subscription
      # purchase.
      class SubscriptionPurchase
        include Google::Apis::Core::Hashable
      
        # Whether the subscription will automatically be renewed when it reaches its
        # current expiry time.
        # Corresponds to the JSON property `autoRenewing`
        # @return [Boolean]
        attr_accessor :auto_renewing
        alias_method :auto_renewing?, :auto_renewing
      
        # Time at which the subscription will expire, in milliseconds since Epoch.
        # Corresponds to the JSON property `expiryTimeMillis`
        # @return [String]
        attr_accessor :expiry_time_millis
      
        # This kind represents a subscriptionPurchase object in the androidpublisher
        # service.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Time at which the subscription was granted, in milliseconds since Epoch.
        # Corresponds to the JSON property `startTimeMillis`
        # @return [String]
        attr_accessor :start_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_renewing = args[:auto_renewing] unless args[:auto_renewing].nil?
          @expiry_time_millis = args[:expiry_time_millis] unless args[:expiry_time_millis].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @start_time_millis = args[:start_time_millis] unless args[:start_time_millis].nil?
        end
      end
      
      # 
      class DeferSubscriptionPurchasesRequest
        include Google::Apis::Core::Hashable
      
        # A SubscriptionDeferralInfo contains the data needed to defer a subscription
        # purchase to a future expiry time.
        # Corresponds to the JSON property `deferralInfo`
        # @return [Google::Apis::AndroidpublisherV2::SubscriptionDeferralInfo]
        attr_accessor :deferral_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deferral_info = args[:deferral_info] unless args[:deferral_info].nil?
        end
      end
      
      # 
      class DeferSubscriptionPurchasesResponse
        include Google::Apis::Core::Hashable
      
        # The new expiry time for the subscription in milliseconds since the Epoch.
        # Corresponds to the JSON property `newExpiryTimeMillis`
        # @return [String]
        attr_accessor :new_expiry_time_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_expiry_time_millis = args[:new_expiry_time_millis] unless args[:new_expiry_time_millis].nil?
        end
      end
      
      # 
      class Testers
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `googleGroups`
        # @return [Array<String>]
        attr_accessor :google_groups
      
        # 
        # Corresponds to the JSON property `googlePlusCommunities`
        # @return [Array<String>]
        attr_accessor :google_plus_communities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_groups = args[:google_groups] unless args[:google_groups].nil?
          @google_plus_communities = args[:google_plus_communities] unless args[:google_plus_communities].nil?
        end
      end
      
      # 
      class TokenPagination
        include Google::Apis::Core::Hashable
      
        # 
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
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @previous_page_token = args[:previous_page_token] unless args[:previous_page_token].nil?
        end
      end
      
      # 
      class Track
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `track`
        # @return [String]
        attr_accessor :track
      
        # 
        # Corresponds to the JSON property `userFraction`
        # @return [Float]
        attr_accessor :user_fraction
      
        # 
        # Corresponds to the JSON property `versionCodes`
        # @return [Array<Fixnum>]
        attr_accessor :version_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @track = args[:track] unless args[:track].nil?
          @user_fraction = args[:user_fraction] unless args[:user_fraction].nil?
          @version_codes = args[:version_codes] unless args[:version_codes].nil?
        end
      end
      
      # 
      class ListTracksResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # androidpublisher#tracksListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `tracks`
        # @return [Array<Google::Apis::AndroidpublisherV2::Track>]
        attr_accessor :tracks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @tracks = args[:tracks] unless args[:tracks].nil?
        end
      end
    end
  end
end
