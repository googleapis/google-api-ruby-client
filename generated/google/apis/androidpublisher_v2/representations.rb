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
      
      class Apk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ApkBinary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ApkListing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListApkListingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ApksAddExternallyHostedRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ApksAddExternallyHostedResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListApksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AppDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AppEdit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ExpansionFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UploadExpansionFilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ExternallyHostedApk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ExternallyHostedApkUsesPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ImagesDeleteAllResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListImagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UploadImagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InAppProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InAppProductListing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InAppProductsBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InAppProductsBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InAppProductsBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InAppProductsBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InsertInAppProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InsertInAppProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListInAppProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UpdateInAppProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class UpdateInAppProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Listing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListListingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MonthDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProductPurchase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Season
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SubscriptionDeferralInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SubscriptionPurchase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DeferSubscriptionPurchasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DeferSubscriptionPurchasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Testers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TokenPagination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Track
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTracksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class Apk
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary, as: 'binary', class: Google::Apis::AndroidpublisherV2::ApkBinary, decorator: Google::Apis::AndroidpublisherV2::ApkBinary::Representation
      
          property :version_code, as: 'versionCode'
        end
      end
      
      # @private
      class ApkBinary
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha1, as: 'sha1'
        end
      end
      
      # @private
      class ApkListing
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language, as: 'language'
          property :recent_changes, as: 'recentChanges'
        end
      end
      
      # @private
      class ListApkListingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :listings, as: 'listings', class: Google::Apis::AndroidpublisherV2::ApkListing, decorator: Google::Apis::AndroidpublisherV2::ApkListing::Representation
      
        end
      end
      
      # @private
      class ApksAddExternallyHostedRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :externally_hosted_apk, as: 'externallyHostedApk', class: Google::Apis::AndroidpublisherV2::ExternallyHostedApk, decorator: Google::Apis::AndroidpublisherV2::ExternallyHostedApk::Representation
      
        end
      end
      
      # @private
      class ApksAddExternallyHostedResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :externally_hosted_apk, as: 'externallyHostedApk', class: Google::Apis::AndroidpublisherV2::ExternallyHostedApk, decorator: Google::Apis::AndroidpublisherV2::ExternallyHostedApk::Representation
      
        end
      end
      
      # @private
      class ListApksResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apks, as: 'apks', class: Google::Apis::AndroidpublisherV2::Apk, decorator: Google::Apis::AndroidpublisherV2::Apk::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class AppDetails
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_email, as: 'contactEmail'
          property :contact_phone, as: 'contactPhone'
          property :contact_website, as: 'contactWebsite'
          property :default_language, as: 'defaultLanguage'
        end
      end
      
      # @private
      class AppEdit
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiry_time_seconds, as: 'expiryTimeSeconds'
          property :id, as: 'id'
        end
      end
      
      # @private
      class Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :product_id, as: 'productId'
          property :product_type, as: 'productType'
          property :token, as: 'token'
        end
      end
      
      # @private
      class ListEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_info, as: 'pageInfo', class: Google::Apis::AndroidpublisherV2::PageInfo, decorator: Google::Apis::AndroidpublisherV2::PageInfo::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::AndroidpublisherV2::Entitlement, decorator: Google::Apis::AndroidpublisherV2::Entitlement::Representation
      
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::AndroidpublisherV2::TokenPagination, decorator: Google::Apis::AndroidpublisherV2::TokenPagination::Representation
      
        end
      end
      
      # @private
      class ExpansionFile
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_size, as: 'fileSize'
          property :references_version, as: 'referencesVersion'
        end
      end
      
      # @private
      class UploadExpansionFilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expansion_file, as: 'expansionFile', class: Google::Apis::AndroidpublisherV2::ExpansionFile, decorator: Google::Apis::AndroidpublisherV2::ExpansionFile::Representation
      
        end
      end
      
      # @private
      class ExternallyHostedApk
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_label, as: 'applicationLabel'
          collection :certificate_base64s, as: 'certificateBase64s'
          property :externally_hosted_url, as: 'externallyHostedUrl'
          property :file_sha1_base64, as: 'fileSha1Base64'
          property :file_sha256_base64, as: 'fileSha256Base64'
          property :file_size, as: 'fileSize'
          property :icon_base64, as: 'iconBase64'
          property :maximum_sdk, as: 'maximumSdk'
          property :minimum_sdk, as: 'minimumSdk'
          collection :native_codes, as: 'nativeCodes'
          property :package_name, as: 'packageName'
          collection :uses_features, as: 'usesFeatures'
          collection :uses_permissions, as: 'usesPermissions', class: Google::Apis::AndroidpublisherV2::ExternallyHostedApkUsesPermission, decorator: Google::Apis::AndroidpublisherV2::ExternallyHostedApkUsesPermission::Representation
      
          property :version_code, as: 'versionCode'
          property :version_name, as: 'versionName'
        end
      end
      
      # @private
      class ExternallyHostedApkUsesPermission
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_sdk_version, as: 'maxSdkVersion'
          property :name, as: 'name'
        end
      end
      
      # @private
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :sha1, as: 'sha1'
          property :url, as: 'url'
        end
      end
      
      # @private
      class ImagesDeleteAllResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deleted, as: 'deleted', class: Google::Apis::AndroidpublisherV2::Image, decorator: Google::Apis::AndroidpublisherV2::Image::Representation
      
        end
      end
      
      # @private
      class ListImagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :images, as: 'images', class: Google::Apis::AndroidpublisherV2::Image, decorator: Google::Apis::AndroidpublisherV2::Image::Representation
      
        end
      end
      
      # @private
      class UploadImagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image', class: Google::Apis::AndroidpublisherV2::Image, decorator: Google::Apis::AndroidpublisherV2::Image::Representation
      
        end
      end
      
      # @private
      class InAppProduct
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_language, as: 'defaultLanguage'
          property :default_price, as: 'defaultPrice', class: Google::Apis::AndroidpublisherV2::Price, decorator: Google::Apis::AndroidpublisherV2::Price::Representation
      
          hash :listings, as: 'listings', class: Google::Apis::AndroidpublisherV2::InAppProductListing, decorator: Google::Apis::AndroidpublisherV2::InAppProductListing::Representation
      
          property :package_name, as: 'packageName'
          hash :prices, as: 'prices', class: Google::Apis::AndroidpublisherV2::Price, decorator: Google::Apis::AndroidpublisherV2::Price::Representation
      
          property :purchase_type, as: 'purchaseType'
          property :season, as: 'season', class: Google::Apis::AndroidpublisherV2::Season, decorator: Google::Apis::AndroidpublisherV2::Season::Representation
      
          property :sku, as: 'sku'
          property :status, as: 'status'
          property :subscription_period, as: 'subscriptionPeriod'
          property :trial_period, as: 'trialPeriod'
        end
      end
      
      # @private
      class InAppProductListing
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :title, as: 'title'
        end
      end
      
      # @private
      class InAppProductsBatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entrys, as: 'entrys', class: Google::Apis::AndroidpublisherV2::InAppProductsBatchRequestEntry, decorator: Google::Apis::AndroidpublisherV2::InAppProductsBatchRequestEntry::Representation
      
        end
      end
      
      # @private
      class InAppProductsBatchRequestEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :inappproductsinsertrequest, as: 'inappproductsinsertrequest', class: Google::Apis::AndroidpublisherV2::InsertInAppProductsRequest, decorator: Google::Apis::AndroidpublisherV2::InsertInAppProductsRequest::Representation
      
          property :inappproductsupdaterequest, as: 'inappproductsupdaterequest', class: Google::Apis::AndroidpublisherV2::UpdateInAppProductsRequest, decorator: Google::Apis::AndroidpublisherV2::UpdateInAppProductsRequest::Representation
      
          property :method_name, as: 'methodName'
        end
      end
      
      # @private
      class InAppProductsBatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entrys, as: 'entrys', class: Google::Apis::AndroidpublisherV2::InAppProductsBatchResponseEntry, decorator: Google::Apis::AndroidpublisherV2::InAppProductsBatchResponseEntry::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class InAppProductsBatchResponseEntry
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_id, as: 'batchId'
          property :inappproductsinsertresponse, as: 'inappproductsinsertresponse', class: Google::Apis::AndroidpublisherV2::InsertInAppProductsResponse, decorator: Google::Apis::AndroidpublisherV2::InsertInAppProductsResponse::Representation
      
          property :inappproductsupdateresponse, as: 'inappproductsupdateresponse', class: Google::Apis::AndroidpublisherV2::UpdateInAppProductsResponse, decorator: Google::Apis::AndroidpublisherV2::UpdateInAppProductsResponse::Representation
      
        end
      end
      
      # @private
      class InsertInAppProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProduct::Representation
      
        end
      end
      
      # @private
      class InsertInAppProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProduct::Representation
      
        end
      end
      
      # @private
      class ListInAppProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProduct::Representation
      
          property :kind, as: 'kind'
          property :page_info, as: 'pageInfo', class: Google::Apis::AndroidpublisherV2::PageInfo, decorator: Google::Apis::AndroidpublisherV2::PageInfo::Representation
      
          property :token_pagination, as: 'tokenPagination', class: Google::Apis::AndroidpublisherV2::TokenPagination, decorator: Google::Apis::AndroidpublisherV2::TokenPagination::Representation
      
        end
      end
      
      # @private
      class UpdateInAppProductsRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProduct::Representation
      
        end
      end
      
      # @private
      class UpdateInAppProductsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProduct::Representation
      
        end
      end
      
      # @private
      class Listing
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_description, as: 'fullDescription'
          property :language, as: 'language'
          property :short_description, as: 'shortDescription'
          property :title, as: 'title'
          property :video, as: 'video'
        end
      end
      
      # @private
      class ListListingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :listings, as: 'listings', class: Google::Apis::AndroidpublisherV2::Listing, decorator: Google::Apis::AndroidpublisherV2::Listing::Representation
      
        end
      end
      
      # @private
      class MonthDay
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
        end
      end
      
      # @private
      class PageInfo
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result_per_page, as: 'resultPerPage'
          property :start_index, as: 'startIndex'
          property :total_results, as: 'totalResults'
        end
      end
      
      # @private
      class Price
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency, as: 'currency'
          property :price_micros, as: 'priceMicros'
        end
      end
      
      # @private
      class ProductPurchase
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumption_state, as: 'consumptionState'
          property :developer_payload, as: 'developerPayload'
          property :kind, as: 'kind'
          property :purchase_state, as: 'purchaseState'
          property :purchase_time_millis, as: 'purchaseTimeMillis'
        end
      end
      
      # @private
      class Season
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end', class: Google::Apis::AndroidpublisherV2::MonthDay, decorator: Google::Apis::AndroidpublisherV2::MonthDay::Representation
      
          property :start, as: 'start', class: Google::Apis::AndroidpublisherV2::MonthDay, decorator: Google::Apis::AndroidpublisherV2::MonthDay::Representation
      
        end
      end
      
      # @private
      class SubscriptionDeferralInfo
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_expiry_time_millis, as: 'desiredExpiryTimeMillis'
          property :expected_expiry_time_millis, as: 'expectedExpiryTimeMillis'
        end
      end
      
      # @private
      class SubscriptionPurchase
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_renewing, as: 'autoRenewing'
          property :expiry_time_millis, as: 'expiryTimeMillis'
          property :kind, as: 'kind'
          property :start_time_millis, as: 'startTimeMillis'
        end
      end
      
      # @private
      class DeferSubscriptionPurchasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deferral_info, as: 'deferralInfo', class: Google::Apis::AndroidpublisherV2::SubscriptionDeferralInfo, decorator: Google::Apis::AndroidpublisherV2::SubscriptionDeferralInfo::Representation
      
        end
      end
      
      # @private
      class DeferSubscriptionPurchasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_expiry_time_millis, as: 'newExpiryTimeMillis'
        end
      end
      
      # @private
      class Testers
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_groups, as: 'googleGroups'
          collection :google_plus_communities, as: 'googlePlusCommunities'
        end
      end
      
      # @private
      class TokenPagination
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :previous_page_token, as: 'previousPageToken'
        end
      end
      
      # @private
      class Track
        class Representation < Google::Apis::Core::JsonRepresentation
          property :track, as: 'track'
          property :user_fraction, as: 'userFraction'
          collection :version_codes, as: 'versionCodes'
        end
      end
      
      # @private
      class ListTracksResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :tracks, as: 'tracks', class: Google::Apis::AndroidpublisherV2::Track, decorator: Google::Apis::AndroidpublisherV2::Track::Representation
      
        end
      end
    end
  end
end
