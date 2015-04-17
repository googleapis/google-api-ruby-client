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
      class ApkRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ApkBinaryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ApkListingRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ApkListingsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ApksAddExternallyHostedRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ApksAddExternallyHostedResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ApksListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AppDetailsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AppEditRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ExpansionFileRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ExpansionFilesUploadResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ExternallyHostedApkRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ExternallyHostedApkUsesPermissionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ImageRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ImagesDeleteAllResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ImagesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ImagesUploadResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InAppProductRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InAppProductListingRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InappproductsBatchRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InappproductsBatchRequestEntryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InappproductsBatchResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InappproductsBatchResponseEntryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InappproductsInsertRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InappproductsInsertResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InappproductsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InappproductsUpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class InappproductsUpdateResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListingRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListingsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MonthDayRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PageInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PriceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ProductPurchaseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SeasonRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SubscriptionDeferralInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SubscriptionPurchaseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SubscriptionPurchasesDeferRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class SubscriptionPurchasesDeferResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TestersRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TokenPaginationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TrackRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TracksListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class ApkRepresentation < Google::Apis::Core::JsonRepresentation
        property :binary, as: 'binary', class: Google::Apis::AndroidpublisherV2::ApkBinary, decorator: Google::Apis::AndroidpublisherV2::ApkBinaryRepresentation
        
        property :version_code, as: 'versionCode'
      end

      # @private
      class ApkBinaryRepresentation < Google::Apis::Core::JsonRepresentation
        property :sha1, as: 'sha1'
      end

      # @private
      class ApkListingRepresentation < Google::Apis::Core::JsonRepresentation
        property :language, as: 'language'
        property :recent_changes, as: 'recentChanges'
      end

      # @private
      class ApkListingsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :listings, as: 'listings', class: Google::Apis::AndroidpublisherV2::ApkListing, decorator: Google::Apis::AndroidpublisherV2::ApkListingRepresentation
      end

      # @private
      class ApksAddExternallyHostedRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :externally_hosted_apk, as: 'externallyHostedApk', class: Google::Apis::AndroidpublisherV2::ExternallyHostedApk, decorator: Google::Apis::AndroidpublisherV2::ExternallyHostedApkRepresentation
      end

      # @private
      class ApksAddExternallyHostedResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :externally_hosted_apk, as: 'externallyHostedApk', class: Google::Apis::AndroidpublisherV2::ExternallyHostedApk, decorator: Google::Apis::AndroidpublisherV2::ExternallyHostedApkRepresentation
      end

      # @private
      class ApksListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :apks, as: 'apks', class: Google::Apis::AndroidpublisherV2::Apk, decorator: Google::Apis::AndroidpublisherV2::ApkRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class AppDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        property :contact_email, as: 'contactEmail'
        property :contact_phone, as: 'contactPhone'
        property :contact_website, as: 'contactWebsite'
        property :default_language, as: 'defaultLanguage'
      end

      # @private
      class AppEditRepresentation < Google::Apis::Core::JsonRepresentation
        property :expiry_time_seconds, as: 'expiryTimeSeconds'
        property :id, as: 'id'
      end

      # @private
      class ExpansionFileRepresentation < Google::Apis::Core::JsonRepresentation
        property :file_size, as: 'fileSize'
        property :references_version, as: 'referencesVersion'
      end

      # @private
      class ExpansionFilesUploadResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :expansion_file, as: 'expansionFile', class: Google::Apis::AndroidpublisherV2::ExpansionFile, decorator: Google::Apis::AndroidpublisherV2::ExpansionFileRepresentation
      end

      # @private
      class ExternallyHostedApkRepresentation < Google::Apis::Core::JsonRepresentation
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
        
        collection :uses_permissions, as: 'usesPermissions', class: Google::Apis::AndroidpublisherV2::ExternallyHostedApkUsesPermission, decorator: Google::Apis::AndroidpublisherV2::ExternallyHostedApkUsesPermissionRepresentation
        
        
        property :version_code, as: 'versionCode'
        property :version_name, as: 'versionName'
      end

      # @private
      class ExternallyHostedApkUsesPermissionRepresentation < Google::Apis::Core::JsonRepresentation
        property :max_sdk_version, as: 'maxSdkVersion'
        property :name, as: 'name'
      end

      # @private
      class ImageRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :sha1, as: 'sha1'
        property :url, as: 'url'
      end

      # @private
      class ImagesDeleteAllResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :deleted, as: 'deleted', class: Google::Apis::AndroidpublisherV2::Image, decorator: Google::Apis::AndroidpublisherV2::ImageRepresentation
      end

      # @private
      class ImagesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :images, as: 'images', class: Google::Apis::AndroidpublisherV2::Image, decorator: Google::Apis::AndroidpublisherV2::ImageRepresentation
      end

      # @private
      class ImagesUploadResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :image, as: 'image', class: Google::Apis::AndroidpublisherV2::Image, decorator: Google::Apis::AndroidpublisherV2::ImageRepresentation
      end

      # @private
      class InAppProductRepresentation < Google::Apis::Core::JsonRepresentation
        property :default_language, as: 'defaultLanguage'
        property :default_price, as: 'defaultPrice', class: Google::Apis::AndroidpublisherV2::Price, decorator: Google::Apis::AndroidpublisherV2::PriceRepresentation
        
        hash :listings, as: 'listings', class: Google::Apis::AndroidpublisherV2::InAppProductListing, decorator: Google::Apis::AndroidpublisherV2::InAppProductListingRepresentation
        
        
        property :package_name, as: 'packageName'
        hash :prices, as: 'prices', class: Google::Apis::AndroidpublisherV2::Price, decorator: Google::Apis::AndroidpublisherV2::PriceRepresentation
        
        
        property :purchase_type, as: 'purchaseType'
        property :season, as: 'season', class: Google::Apis::AndroidpublisherV2::Season, decorator: Google::Apis::AndroidpublisherV2::SeasonRepresentation
        
        property :sku, as: 'sku'
        property :status, as: 'status'
        property :subscription_period, as: 'subscriptionPeriod'
        property :trial_period, as: 'trialPeriod'
      end

      # @private
      class InAppProductListingRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :title, as: 'title'
      end

      # @private
      class InappproductsBatchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :entrys, as: 'entrys', class: Google::Apis::AndroidpublisherV2::InappproductsBatchRequestEntry, decorator: Google::Apis::AndroidpublisherV2::InappproductsBatchRequestEntryRepresentation
      end

      # @private
      class InappproductsBatchRequestEntryRepresentation < Google::Apis::Core::JsonRepresentation
        property :batch_id, as: 'batchId'
        property :inappproductsinsertrequest, as: 'inappproductsinsertrequest', class: Google::Apis::AndroidpublisherV2::InappproductsInsertRequest, decorator: Google::Apis::AndroidpublisherV2::InappproductsInsertRequestRepresentation
        
        property :inappproductsupdaterequest, as: 'inappproductsupdaterequest', class: Google::Apis::AndroidpublisherV2::InappproductsUpdateRequest, decorator: Google::Apis::AndroidpublisherV2::InappproductsUpdateRequestRepresentation
        
        property :method_name, as: 'methodName'
      end

      # @private
      class InappproductsBatchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :entrys, as: 'entrys', class: Google::Apis::AndroidpublisherV2::InappproductsBatchResponseEntry, decorator: Google::Apis::AndroidpublisherV2::InappproductsBatchResponseEntryRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class InappproductsBatchResponseEntryRepresentation < Google::Apis::Core::JsonRepresentation
        property :batch_id, as: 'batchId'
        property :inappproductsinsertresponse, as: 'inappproductsinsertresponse', class: Google::Apis::AndroidpublisherV2::InappproductsInsertResponse, decorator: Google::Apis::AndroidpublisherV2::InappproductsInsertResponseRepresentation
        
        property :inappproductsupdateresponse, as: 'inappproductsupdateresponse', class: Google::Apis::AndroidpublisherV2::InappproductsUpdateResponse, decorator: Google::Apis::AndroidpublisherV2::InappproductsUpdateResponseRepresentation
      end

      # @private
      class InappproductsInsertRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProductRepresentation
      end

      # @private
      class InappproductsInsertResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProductRepresentation
      end

      # @private
      class InappproductsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProductRepresentation
        
        
        property :kind, as: 'kind'
        property :page_info, as: 'pageInfo', class: Google::Apis::AndroidpublisherV2::PageInfo, decorator: Google::Apis::AndroidpublisherV2::PageInfoRepresentation
        
        property :token_pagination, as: 'tokenPagination', class: Google::Apis::AndroidpublisherV2::TokenPagination, decorator: Google::Apis::AndroidpublisherV2::TokenPaginationRepresentation
      end

      # @private
      class InappproductsUpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProductRepresentation
      end

      # @private
      class InappproductsUpdateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :inappproduct, as: 'inappproduct', class: Google::Apis::AndroidpublisherV2::InAppProduct, decorator: Google::Apis::AndroidpublisherV2::InAppProductRepresentation
      end

      # @private
      class ListingRepresentation < Google::Apis::Core::JsonRepresentation
        property :full_description, as: 'fullDescription'
        property :language, as: 'language'
        property :short_description, as: 'shortDescription'
        property :title, as: 'title'
        property :video, as: 'video'
      end

      # @private
      class ListingsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :listings, as: 'listings', class: Google::Apis::AndroidpublisherV2::Listing, decorator: Google::Apis::AndroidpublisherV2::ListingRepresentation
      end

      # @private
      class MonthDayRepresentation < Google::Apis::Core::JsonRepresentation
        property :day, as: 'day'
        property :month, as: 'month'
      end

      # @private
      class PageInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :result_per_page, as: 'resultPerPage'
        property :start_index, as: 'startIndex'
        property :total_results, as: 'totalResults'
      end

      # @private
      class PriceRepresentation < Google::Apis::Core::JsonRepresentation
        property :currency, as: 'currency'
        property :price_micros, as: 'priceMicros'
      end

      # @private
      class ProductPurchaseRepresentation < Google::Apis::Core::JsonRepresentation
        property :consumption_state, as: 'consumptionState'
        property :developer_payload, as: 'developerPayload'
        property :kind, as: 'kind'
        property :purchase_state, as: 'purchaseState'
        property :purchase_time_millis, as: 'purchaseTimeMillis'
      end

      # @private
      class SeasonRepresentation < Google::Apis::Core::JsonRepresentation
        property :end, as: 'end', class: Google::Apis::AndroidpublisherV2::MonthDay, decorator: Google::Apis::AndroidpublisherV2::MonthDayRepresentation
        
        property :start, as: 'start', class: Google::Apis::AndroidpublisherV2::MonthDay, decorator: Google::Apis::AndroidpublisherV2::MonthDayRepresentation
      end

      # @private
      class SubscriptionDeferralInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :desired_expiry_time_millis, as: 'desiredExpiryTimeMillis'
        property :expected_expiry_time_millis, as: 'expectedExpiryTimeMillis'
      end

      # @private
      class SubscriptionPurchaseRepresentation < Google::Apis::Core::JsonRepresentation
        property :auto_renewing, as: 'autoRenewing'
        property :expiry_time_millis, as: 'expiryTimeMillis'
        property :kind, as: 'kind'
        property :start_time_millis, as: 'startTimeMillis'
      end

      # @private
      class SubscriptionPurchasesDeferRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :deferral_info, as: 'deferralInfo', class: Google::Apis::AndroidpublisherV2::SubscriptionDeferralInfo, decorator: Google::Apis::AndroidpublisherV2::SubscriptionDeferralInfoRepresentation
      end

      # @private
      class SubscriptionPurchasesDeferResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :new_expiry_time_millis, as: 'newExpiryTimeMillis'
      end

      # @private
      class TestersRepresentation < Google::Apis::Core::JsonRepresentation
        collection :google_groups, as: 'googleGroups'
        
        collection :google_plus_communities, as: 'googlePlusCommunities'
      end

      # @private
      class TokenPaginationRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        property :previous_page_token, as: 'previousPageToken'
      end

      # @private
      class TrackRepresentation < Google::Apis::Core::JsonRepresentation
        property :track, as: 'track'
        property :user_fraction, as: 'userFraction'
        collection :version_codes, as: 'versionCodes'
      end

      # @private
      class TracksListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :tracks, as: 'tracks', class: Google::Apis::AndroidpublisherV2::Track, decorator: Google::Apis::AndroidpublisherV2::TrackRepresentation
      end
    end
  end
end
