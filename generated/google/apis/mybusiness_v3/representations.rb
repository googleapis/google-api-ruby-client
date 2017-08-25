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
    module MybusinessV3
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdWordsLocationExtensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Admin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssociateLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeValueMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BusinessHours
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Category
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClearLocationAssociationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Duplicate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindMatchingLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindMatchingLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleUpdatedLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountAdminsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationAdminsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationAttributeMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReviewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchedLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Photos
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlaceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Places
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PointRadius
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Review
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReviewReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reviewer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAreaBusiness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpecialHourPeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpecialHours
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_name, as: 'accountName'
          property :name, as: 'name'
          property :role, as: 'role'
          property :state, as: 'state', class: Google::Apis::MybusinessV3::AccountState, decorator: Google::Apis::MybusinessV3::AccountState::Representation
      
          property :type, as: 'type'
        end
      end
      
      class AccountState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
        end
      end
      
      class AdWordsLocationExtensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_phone, as: 'adPhone'
        end
      end
      
      class Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :country, as: 'country'
          property :locality, as: 'locality'
          property :postal_code, as: 'postalCode'
          property :sub_locality, as: 'subLocality'
        end
      end
      
      class Admin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_name, as: 'adminName'
          property :name, as: 'name'
          property :pending_invitation, as: 'pendingInvitation'
          property :role, as: 'role'
        end
      end
      
      class AssociateLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :place_id, as: 'placeId'
        end
      end
      
      class Attribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_id, as: 'attributeId'
          property :value_type, as: 'valueType'
          collection :values, as: 'values'
        end
      end
      
      class AttributeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_id, as: 'attributeId'
          property :display_name, as: 'displayName'
          property :group_display_name, as: 'groupDisplayName'
          property :is_repeatable, as: 'isRepeatable'
          collection :value_metadata, as: 'valueMetadata', class: Google::Apis::MybusinessV3::AttributeValueMetadata, decorator: Google::Apis::MybusinessV3::AttributeValueMetadata::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class AttributeValueMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :value, as: 'value'
        end
      end
      
      class BatchGetLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location_names, as: 'locationNames'
        end
      end
      
      class BatchGetLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MybusinessV3::Location, decorator: Google::Apis::MybusinessV3::Location::Representation
      
        end
      end
      
      class BusinessHours
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :periods, as: 'periods', class: Google::Apis::MybusinessV3::TimePeriod, decorator: Google::Apis::MybusinessV3::TimePeriod::Representation
      
        end
      end
      
      class Category
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_id, as: 'categoryId'
          property :name, as: 'name'
        end
      end
      
      class ClearLocationAssociationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class Duplicate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_name, as: 'locationName'
          property :ownership, as: 'ownership'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FindMatchingLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :max_cache_duration, as: 'maxCacheDuration'
          property :num_results, as: 'numResults'
        end
      end
      
      class FindMatchingLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_time, as: 'matchTime'
          collection :matched_locations, as: 'matchedLocations', class: Google::Apis::MybusinessV3::MatchedLocation, decorator: Google::Apis::MybusinessV3::MatchedLocation::Representation
      
        end
      end
      
      class GoogleUpdatedLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diff_mask, as: 'diffMask'
          property :location, as: 'location', class: Google::Apis::MybusinessV3::Location, decorator: Google::Apis::MybusinessV3::Location::Representation
      
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class ListAccountAdminsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admins, as: 'admins', class: Google::Apis::MybusinessV3::Admin, decorator: Google::Apis::MybusinessV3::Admin::Representation
      
        end
      end
      
      class ListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::MybusinessV3::Account, decorator: Google::Apis::MybusinessV3::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationAdminsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admins, as: 'admins', class: Google::Apis::MybusinessV3::Admin, decorator: Google::Apis::MybusinessV3::Admin::Representation
      
        end
      end
      
      class ListLocationAttributeMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes', class: Google::Apis::MybusinessV3::AttributeMetadata, decorator: Google::Apis::MybusinessV3::AttributeMetadata::Representation
      
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MybusinessV3::Location, decorator: Google::Apis::MybusinessV3::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListReviewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_rating, as: 'averageRating'
          property :next_page_token, as: 'nextPageToken'
          collection :reviews, as: 'reviews', class: Google::Apis::MybusinessV3::Review, decorator: Google::Apis::MybusinessV3::Review::Representation
      
          property :total_review_count, as: 'totalReviewCount'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_words_location_extensions, as: 'adWordsLocationExtensions', class: Google::Apis::MybusinessV3::AdWordsLocationExtensions, decorator: Google::Apis::MybusinessV3::AdWordsLocationExtensions::Representation
      
          collection :additional_categories, as: 'additionalCategories', class: Google::Apis::MybusinessV3::Category, decorator: Google::Apis::MybusinessV3::Category::Representation
      
          collection :additional_phones, as: 'additionalPhones'
          property :address, as: 'address', class: Google::Apis::MybusinessV3::Address, decorator: Google::Apis::MybusinessV3::Address::Representation
      
          collection :attributes, as: 'attributes', class: Google::Apis::MybusinessV3::Attribute, decorator: Google::Apis::MybusinessV3::Attribute::Representation
      
          collection :labels, as: 'labels'
          property :latlng, as: 'latlng', class: Google::Apis::MybusinessV3::LatLng, decorator: Google::Apis::MybusinessV3::LatLng::Representation
      
          property :location_key, as: 'locationKey', class: Google::Apis::MybusinessV3::LocationKey, decorator: Google::Apis::MybusinessV3::LocationKey::Representation
      
          property :location_name, as: 'locationName'
          property :location_state, as: 'locationState', class: Google::Apis::MybusinessV3::LocationState, decorator: Google::Apis::MybusinessV3::LocationState::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::MybusinessV3::Metadata, decorator: Google::Apis::MybusinessV3::Metadata::Representation
      
          property :name, as: 'name'
          property :open_info, as: 'openInfo', class: Google::Apis::MybusinessV3::OpenInfo, decorator: Google::Apis::MybusinessV3::OpenInfo::Representation
      
          property :photos, as: 'photos', class: Google::Apis::MybusinessV3::Photos, decorator: Google::Apis::MybusinessV3::Photos::Representation
      
          property :primary_category, as: 'primaryCategory', class: Google::Apis::MybusinessV3::Category, decorator: Google::Apis::MybusinessV3::Category::Representation
      
          property :primary_phone, as: 'primaryPhone'
          property :regular_hours, as: 'regularHours', class: Google::Apis::MybusinessV3::BusinessHours, decorator: Google::Apis::MybusinessV3::BusinessHours::Representation
      
          property :service_area, as: 'serviceArea', class: Google::Apis::MybusinessV3::ServiceAreaBusiness, decorator: Google::Apis::MybusinessV3::ServiceAreaBusiness::Representation
      
          property :special_hours, as: 'specialHours', class: Google::Apis::MybusinessV3::SpecialHours, decorator: Google::Apis::MybusinessV3::SpecialHours::Representation
      
          property :store_code, as: 'storeCode'
          property :website_url, as: 'websiteUrl'
        end
      end
      
      class LocationKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_no_place_id, as: 'explicitNoPlaceId'
          property :place_id, as: 'placeId'
          property :plus_page_id, as: 'plusPageId'
        end
      end
      
      class LocationState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_update, as: 'canUpdate'
          property :is_duplicate, as: 'isDuplicate'
          property :is_google_updated, as: 'isGoogleUpdated'
          property :is_suspended, as: 'isSuspended'
          property :is_verified, as: 'isVerified'
          property :needs_reverification, as: 'needsReverification'
        end
      end
      
      class MatchedLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_exact_match, as: 'isExactMatch'
          property :location, as: 'location', class: Google::Apis::MybusinessV3::Location, decorator: Google::Apis::MybusinessV3::Location::Representation
      
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duplicate, as: 'duplicate', class: Google::Apis::MybusinessV3::Duplicate, decorator: Google::Apis::MybusinessV3::Duplicate::Representation
      
        end
      end
      
      class OpenInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
        end
      end
      
      class Photos
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_photo_urls, as: 'additionalPhotoUrls'
          collection :common_areas_photo_urls, as: 'commonAreasPhotoUrls'
          property :cover_photo_url, as: 'coverPhotoUrl'
          collection :exterior_photo_urls, as: 'exteriorPhotoUrls'
          collection :food_and_drink_photo_urls, as: 'foodAndDrinkPhotoUrls'
          collection :interior_photo_urls, as: 'interiorPhotoUrls'
          property :logo_photo_url, as: 'logoPhotoUrl'
          collection :menu_photo_urls, as: 'menuPhotoUrls'
          collection :photos_at_work_urls, as: 'photosAtWorkUrls'
          property :preferred_photo, as: 'preferredPhoto'
          collection :product_photo_urls, as: 'productPhotoUrls'
          property :profile_photo_url, as: 'profilePhotoUrl'
          collection :rooms_photo_urls, as: 'roomsPhotoUrls'
          collection :team_photo_urls, as: 'teamPhotoUrls'
        end
      end
      
      class PlaceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :place_id, as: 'placeId'
        end
      end
      
      class Places
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :place_infos, as: 'placeInfos', class: Google::Apis::MybusinessV3::PlaceInfo, decorator: Google::Apis::MybusinessV3::PlaceInfo::Representation
      
        end
      end
      
      class PointRadius
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latlng, as: 'latlng', class: Google::Apis::MybusinessV3::LatLng, decorator: Google::Apis::MybusinessV3::LatLng::Representation
      
          property :radius_km, as: 'radiusKm'
        end
      end
      
      class Review
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment, as: 'comment'
          property :create_time, as: 'createTime'
          property :review_id, as: 'reviewId'
          property :review_reply, as: 'reviewReply', class: Google::Apis::MybusinessV3::ReviewReply, decorator: Google::Apis::MybusinessV3::ReviewReply::Representation
      
          property :reviewer, as: 'reviewer', class: Google::Apis::MybusinessV3::Reviewer, decorator: Google::Apis::MybusinessV3::Reviewer::Representation
      
          property :star_rating, as: 'starRating'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ReviewReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment, as: 'comment'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Reviewer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :is_anonymous, as: 'isAnonymous'
        end
      end
      
      class ServiceAreaBusiness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_type, as: 'businessType'
          property :places, as: 'places', class: Google::Apis::MybusinessV3::Places, decorator: Google::Apis::MybusinessV3::Places::Representation
      
          property :radius, as: 'radius', class: Google::Apis::MybusinessV3::PointRadius, decorator: Google::Apis::MybusinessV3::PointRadius::Representation
      
        end
      end
      
      class SpecialHourPeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :close_time, as: 'closeTime'
          property :end_date, as: 'endDate', class: Google::Apis::MybusinessV3::Date, decorator: Google::Apis::MybusinessV3::Date::Representation
      
          property :is_closed, as: 'isClosed'
          property :open_time, as: 'openTime'
          property :start_date, as: 'startDate', class: Google::Apis::MybusinessV3::Date, decorator: Google::Apis::MybusinessV3::Date::Representation
      
        end
      end
      
      class SpecialHours
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :special_hour_periods, as: 'specialHourPeriods', class: Google::Apis::MybusinessV3::SpecialHourPeriod, decorator: Google::Apis::MybusinessV3::SpecialHourPeriod::Representation
      
        end
      end
      
      class TimePeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :close_day, as: 'closeDay'
          property :close_time, as: 'closeTime'
          property :open_day, as: 'openDay'
          property :open_time, as: 'openTime'
        end
      end
      
      class TransferLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :to_account, as: 'toAccount'
        end
      end
    end
  end
end
