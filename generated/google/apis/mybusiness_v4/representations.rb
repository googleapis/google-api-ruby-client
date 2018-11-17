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
    module MybusinessV4
      
      class AcceptInvitationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
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
      
      class AddressInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddressVerificationData
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
      
      class Attribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasicMetricsRequest
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
      
      class CallToAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Category
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Chain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChainName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChainUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClearLocationAssociationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteVerificationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteVerificationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeclineInvitationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionalMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dimensions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DrivingDirectionMetricsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Duplicate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmailInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmailVerificationData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchVerificationOptionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchVerificationOptionsResponse
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
      
      class GenerateAccountNumberRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleUpdatedLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Invitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Item
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Label
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
      
      class ListAttributeMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBusinessCategoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomerMediaItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListInvitationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocalPostsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationAdminsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMediaItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReviewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVerificationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalPost
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalPostEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalPostMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalPostOffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalPostProduct
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationAssociation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationDrivingDirectionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetrics
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
      
      class MediaInsights
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaItemDataRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Notifications
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrganizationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhoneInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhoneVerificationData
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
      
      class PostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PriceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Profile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelationshipData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepeatedEnumAttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportLocalPostInsightsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportLocalPostInsightsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportLocationInsightsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportLocationInsightsResponse
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
      
      class SearchChainsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchGoogleLocationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchGoogleLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Section
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
      
      class StartUploadMediaItemDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimePeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TopDirectionSources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlAttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Verification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerificationOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyLocationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcceptInvitationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_name, as: 'accountName'
          property :account_number, as: 'accountNumber'
          property :name, as: 'name'
          property :organization_info, as: 'organizationInfo', class: Google::Apis::MybusinessV4::OrganizationInfo, decorator: Google::Apis::MybusinessV4::OrganizationInfo::Representation
      
          property :permission_level, as: 'permissionLevel'
          property :profile_photo_url, as: 'profilePhotoUrl'
          property :role, as: 'role'
          property :state, as: 'state', class: Google::Apis::MybusinessV4::AccountState, decorator: Google::Apis::MybusinessV4::AccountState::Representation
      
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
      
      class AddressInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mailer_contact_name, as: 'mailerContactName'
        end
      end
      
      class AddressVerificationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::MybusinessV4::PostalAddress, decorator: Google::Apis::MybusinessV4::PostalAddress::Representation
      
          property :business_name, as: 'businessName'
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
          property :repeated_enum_value, as: 'repeatedEnumValue', class: Google::Apis::MybusinessV4::RepeatedEnumAttributeValue, decorator: Google::Apis::MybusinessV4::RepeatedEnumAttributeValue::Representation
      
          collection :url_values, as: 'urlValues', class: Google::Apis::MybusinessV4::UrlAttributeValue, decorator: Google::Apis::MybusinessV4::UrlAttributeValue::Representation
      
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
          property :is_deprecated, as: 'isDeprecated'
          property :is_repeatable, as: 'isRepeatable'
          collection :value_metadata, as: 'valueMetadata', class: Google::Apis::MybusinessV4::AttributeValueMetadata, decorator: Google::Apis::MybusinessV4::AttributeValueMetadata::Representation
      
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
      
      class Attribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :profile_name, as: 'profileName'
          property :profile_photo_url, as: 'profilePhotoUrl'
          property :profile_url, as: 'profileUrl'
          property :takedown_url, as: 'takedownUrl'
        end
      end
      
      class BasicMetricsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metric_requests, as: 'metricRequests', class: Google::Apis::MybusinessV4::MetricRequest, decorator: Google::Apis::MybusinessV4::MetricRequest::Representation
      
          property :time_range, as: 'timeRange', class: Google::Apis::MybusinessV4::TimeRange, decorator: Google::Apis::MybusinessV4::TimeRange::Representation
      
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
          collection :locations, as: 'locations', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
        end
      end
      
      class BusinessHours
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :periods, as: 'periods', class: Google::Apis::MybusinessV4::TimePeriod, decorator: Google::Apis::MybusinessV4::TimePeriod::Representation
      
        end
      end
      
      class CallToAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_type, as: 'actionType'
          property :url, as: 'url'
        end
      end
      
      class Category
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_id, as: 'categoryId'
          property :display_name, as: 'displayName'
        end
      end
      
      class Chain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chain_names, as: 'chainNames', class: Google::Apis::MybusinessV4::ChainName, decorator: Google::Apis::MybusinessV4::ChainName::Representation
      
          property :location_count, as: 'locationCount'
          property :name, as: 'name'
          collection :websites, as: 'websites', class: Google::Apis::MybusinessV4::ChainUrl, decorator: Google::Apis::MybusinessV4::ChainUrl::Representation
      
        end
      end
      
      class ChainName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
        end
      end
      
      class ChainUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class ClearLocationAssociationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CompleteVerificationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pin, as: 'pin'
        end
      end
      
      class CompleteVerificationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verification, as: 'verification', class: Google::Apis::MybusinessV4::Verification, decorator: Google::Apis::MybusinessV4::Verification::Representation
      
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
      
      class DeclineInvitationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DimensionalMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_option, as: 'metricOption'
          property :time_dimension, as: 'timeDimension', class: Google::Apis::MybusinessV4::TimeDimension, decorator: Google::Apis::MybusinessV4::TimeDimension::Representation
      
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class Dimensions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height_pixels, as: 'heightPixels'
          property :width_pixels, as: 'widthPixels'
        end
      end
      
      class DrivingDirectionMetricsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :num_days, as: 'numDays'
        end
      end
      
      class Duplicate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access, as: 'access'
          property :location_name, as: 'locationName'
          property :place_id, as: 'placeId'
        end
      end
      
      class EmailInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
        end
      end
      
      class EmailVerificationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_name, as: 'domainName'
          property :is_user_name_editable, as: 'isUserNameEditable'
          property :user_name, as: 'userName'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchVerificationOptionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
        end
      end
      
      class FetchVerificationOptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :options, as: 'options', class: Google::Apis::MybusinessV4::VerificationOption, decorator: Google::Apis::MybusinessV4::VerificationOption::Representation
      
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
          collection :matched_locations, as: 'matchedLocations', class: Google::Apis::MybusinessV4::MatchedLocation, decorator: Google::Apis::MybusinessV4::MatchedLocation::Representation
      
        end
      end
      
      class GenerateAccountNumberRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
          property :name, as: 'name'
          property :request_admin_rights_url, as: 'requestAdminRightsUrl'
        end
      end
      
      class GoogleUpdatedLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diff_mask, as: 'diffMask'
          property :location, as: 'location', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
        end
      end
      
      class Invitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :role, as: 'role'
          property :target_account, as: 'targetAccount', class: Google::Apis::MybusinessV4::Account, decorator: Google::Apis::MybusinessV4::Account::Representation
      
          property :target_location, as: 'targetLocation', class: Google::Apis::MybusinessV4::TargetLocation, decorator: Google::Apis::MybusinessV4::TargetLocation::Representation
      
        end
      end
      
      class Item
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::Label, decorator: Google::Apis::MybusinessV4::Label::Representation
      
          property :price, as: 'price', class: Google::Apis::MybusinessV4::Money, decorator: Google::Apis::MybusinessV4::Money::Representation
      
        end
      end
      
      class Label
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
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
          collection :admins, as: 'admins', class: Google::Apis::MybusinessV4::Admin, decorator: Google::Apis::MybusinessV4::Admin::Representation
      
        end
      end
      
      class ListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::MybusinessV4::Account, decorator: Google::Apis::MybusinessV4::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAttributeMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes', class: Google::Apis::MybusinessV4::AttributeMetadata, decorator: Google::Apis::MybusinessV4::AttributeMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListBusinessCategoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::MybusinessV4::Category, decorator: Google::Apis::MybusinessV4::Category::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_category_count, as: 'totalCategoryCount'
        end
      end
      
      class ListCustomerMediaItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_items, as: 'mediaItems', class: Google::Apis::MybusinessV4::MediaItem, decorator: Google::Apis::MybusinessV4::MediaItem::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_media_item_count, as: 'totalMediaItemCount'
        end
      end
      
      class ListInvitationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :invitations, as: 'invitations', class: Google::Apis::MybusinessV4::Invitation, decorator: Google::Apis::MybusinessV4::Invitation::Representation
      
        end
      end
      
      class ListLocalPostsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :local_posts, as: 'localPosts', class: Google::Apis::MybusinessV4::LocalPost, decorator: Google::Apis::MybusinessV4::LocalPost::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationAdminsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admins, as: 'admins', class: Google::Apis::MybusinessV4::Admin, decorator: Google::Apis::MybusinessV4::Admin::Representation
      
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListMediaItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_items, as: 'mediaItems', class: Google::Apis::MybusinessV4::MediaItem, decorator: Google::Apis::MybusinessV4::MediaItem::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_media_item_count, as: 'totalMediaItemCount'
        end
      end
      
      class ListReviewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_rating, as: 'averageRating'
          property :next_page_token, as: 'nextPageToken'
          collection :reviews, as: 'reviews', class: Google::Apis::MybusinessV4::Review, decorator: Google::Apis::MybusinessV4::Review::Representation
      
          property :total_review_count, as: 'totalReviewCount'
        end
      end
      
      class ListVerificationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :verifications, as: 'verifications', class: Google::Apis::MybusinessV4::Verification, decorator: Google::Apis::MybusinessV4::Verification::Representation
      
        end
      end
      
      class LocalPost
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :call_to_action, as: 'callToAction', class: Google::Apis::MybusinessV4::CallToAction, decorator: Google::Apis::MybusinessV4::CallToAction::Representation
      
          property :create_time, as: 'createTime'
          property :event, as: 'event', class: Google::Apis::MybusinessV4::LocalPostEvent, decorator: Google::Apis::MybusinessV4::LocalPostEvent::Representation
      
          property :language_code, as: 'languageCode'
          collection :media, as: 'media', class: Google::Apis::MybusinessV4::MediaItem, decorator: Google::Apis::MybusinessV4::MediaItem::Representation
      
          property :name, as: 'name'
          property :offer, as: 'offer', class: Google::Apis::MybusinessV4::LocalPostOffer, decorator: Google::Apis::MybusinessV4::LocalPostOffer::Representation
      
          property :product, as: 'product', class: Google::Apis::MybusinessV4::LocalPostProduct, decorator: Google::Apis::MybusinessV4::LocalPostProduct::Representation
      
          property :search_url, as: 'searchUrl'
          property :state, as: 'state'
          property :summary, as: 'summary'
          property :topic_type, as: 'topicType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class LocalPostEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schedule, as: 'schedule', class: Google::Apis::MybusinessV4::TimeInterval, decorator: Google::Apis::MybusinessV4::TimeInterval::Representation
      
          property :title, as: 'title'
        end
      end
      
      class LocalPostMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_post_name, as: 'localPostName'
          collection :metric_values, as: 'metricValues', class: Google::Apis::MybusinessV4::MetricValue, decorator: Google::Apis::MybusinessV4::MetricValue::Representation
      
        end
      end
      
      class LocalPostOffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coupon_code, as: 'couponCode'
          property :redeem_online_url, as: 'redeemOnlineUrl'
          property :terms_conditions, as: 'termsConditions'
        end
      end
      
      class LocalPostProduct
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lower_price, as: 'lowerPrice', class: Google::Apis::MybusinessV4::Money, decorator: Google::Apis::MybusinessV4::Money::Representation
      
          property :product_name, as: 'productName'
          property :upper_price, as: 'upperPrice', class: Google::Apis::MybusinessV4::Money, decorator: Google::Apis::MybusinessV4::Money::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ad_words_location_extensions, as: 'adWordsLocationExtensions', class: Google::Apis::MybusinessV4::AdWordsLocationExtensions, decorator: Google::Apis::MybusinessV4::AdWordsLocationExtensions::Representation
      
          collection :additional_categories, as: 'additionalCategories', class: Google::Apis::MybusinessV4::Category, decorator: Google::Apis::MybusinessV4::Category::Representation
      
          collection :additional_phones, as: 'additionalPhones'
          property :address, as: 'address', class: Google::Apis::MybusinessV4::PostalAddress, decorator: Google::Apis::MybusinessV4::PostalAddress::Representation
      
          collection :attributes, as: 'attributes', class: Google::Apis::MybusinessV4::Attribute, decorator: Google::Apis::MybusinessV4::Attribute::Representation
      
          collection :labels, as: 'labels'
          property :language_code, as: 'languageCode'
          property :latlng, as: 'latlng', class: Google::Apis::MybusinessV4::LatLng, decorator: Google::Apis::MybusinessV4::LatLng::Representation
      
          property :location_key, as: 'locationKey', class: Google::Apis::MybusinessV4::LocationKey, decorator: Google::Apis::MybusinessV4::LocationKey::Representation
      
          property :location_name, as: 'locationName'
          property :location_state, as: 'locationState', class: Google::Apis::MybusinessV4::LocationState, decorator: Google::Apis::MybusinessV4::LocationState::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::MybusinessV4::Metadata, decorator: Google::Apis::MybusinessV4::Metadata::Representation
      
          property :name, as: 'name'
          property :open_info, as: 'openInfo', class: Google::Apis::MybusinessV4::OpenInfo, decorator: Google::Apis::MybusinessV4::OpenInfo::Representation
      
          collection :price_lists, as: 'priceLists', class: Google::Apis::MybusinessV4::PriceList, decorator: Google::Apis::MybusinessV4::PriceList::Representation
      
          property :primary_category, as: 'primaryCategory', class: Google::Apis::MybusinessV4::Category, decorator: Google::Apis::MybusinessV4::Category::Representation
      
          property :primary_phone, as: 'primaryPhone'
          property :profile, as: 'profile', class: Google::Apis::MybusinessV4::Profile, decorator: Google::Apis::MybusinessV4::Profile::Representation
      
          property :regular_hours, as: 'regularHours', class: Google::Apis::MybusinessV4::BusinessHours, decorator: Google::Apis::MybusinessV4::BusinessHours::Representation
      
          property :relationship_data, as: 'relationshipData', class: Google::Apis::MybusinessV4::RelationshipData, decorator: Google::Apis::MybusinessV4::RelationshipData::Representation
      
          property :service_area, as: 'serviceArea', class: Google::Apis::MybusinessV4::ServiceAreaBusiness, decorator: Google::Apis::MybusinessV4::ServiceAreaBusiness::Representation
      
          property :special_hours, as: 'specialHours', class: Google::Apis::MybusinessV4::SpecialHours, decorator: Google::Apis::MybusinessV4::SpecialHours::Representation
      
          property :store_code, as: 'storeCode'
          property :website_url, as: 'websiteUrl'
        end
      end
      
      class LocationAssociation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :price_list_item_id, as: 'priceListItemId'
        end
      end
      
      class LocationDrivingDirectionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_name, as: 'locationName'
          property :time_zone, as: 'timeZone'
          collection :top_direction_sources, as: 'topDirectionSources', class: Google::Apis::MybusinessV4::TopDirectionSources, decorator: Google::Apis::MybusinessV4::TopDirectionSources::Representation
      
        end
      end
      
      class LocationKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_no_place_id, as: 'explicitNoPlaceId'
          property :place_id, as: 'placeId'
          property :plus_page_id, as: 'plusPageId'
          property :request_id, as: 'requestId'
        end
      end
      
      class LocationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_name, as: 'locationName'
          collection :metric_values, as: 'metricValues', class: Google::Apis::MybusinessV4::MetricValue, decorator: Google::Apis::MybusinessV4::MetricValue::Representation
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      class LocationState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_update, as: 'canUpdate'
          property :has_pending_verification, as: 'hasPendingVerification'
          property :is_disabled, as: 'isDisabled'
          property :is_disconnected, as: 'isDisconnected'
          property :is_duplicate, as: 'isDuplicate'
          property :is_google_updated, as: 'isGoogleUpdated'
          property :is_local_post_api_disabled, as: 'isLocalPostApiDisabled'
          property :is_pending_review, as: 'isPendingReview'
          property :is_published, as: 'isPublished'
          property :is_suspended, as: 'isSuspended'
          property :is_verified, as: 'isVerified'
          property :needs_reverification, as: 'needsReverification'
        end
      end
      
      class MatchedLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_exact_match, as: 'isExactMatch'
          property :location, as: 'location', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
        end
      end
      
      class MediaInsights
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :view_count, :numeric_string => true, as: 'viewCount'
        end
      end
      
      class MediaItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution, as: 'attribution', class: Google::Apis::MybusinessV4::Attribution, decorator: Google::Apis::MybusinessV4::Attribution::Representation
      
          property :create_time, as: 'createTime'
          property :data_ref, as: 'dataRef', class: Google::Apis::MybusinessV4::MediaItemDataRef, decorator: Google::Apis::MybusinessV4::MediaItemDataRef::Representation
      
          property :dimensions, as: 'dimensions', class: Google::Apis::MybusinessV4::Dimensions, decorator: Google::Apis::MybusinessV4::Dimensions::Representation
      
          property :google_url, as: 'googleUrl'
          property :insights, as: 'insights', class: Google::Apis::MybusinessV4::MediaInsights, decorator: Google::Apis::MybusinessV4::MediaInsights::Representation
      
          property :location_association, as: 'locationAssociation', class: Google::Apis::MybusinessV4::LocationAssociation, decorator: Google::Apis::MybusinessV4::LocationAssociation::Representation
      
          property :media_format, as: 'mediaFormat'
          property :name, as: 'name'
          property :source_url, as: 'sourceUrl'
          property :thumbnail_url, as: 'thumbnailUrl'
        end
      end
      
      class MediaItemDataRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duplicate, as: 'duplicate', class: Google::Apis::MybusinessV4::Duplicate, decorator: Google::Apis::MybusinessV4::Duplicate::Representation
      
          property :maps_url, as: 'mapsUrl'
          property :new_review_url, as: 'newReviewUrl'
        end
      end
      
      class MetricRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric, as: 'metric'
          collection :options, as: 'options'
        end
      end
      
      class MetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensional_values, as: 'dimensionalValues', class: Google::Apis::MybusinessV4::DimensionalMetricValue, decorator: Google::Apis::MybusinessV4::DimensionalMetricValue::Representation
      
          property :metric, as: 'metric'
          property :total_value, as: 'totalValue', class: Google::Apis::MybusinessV4::DimensionalMetricValue, decorator: Google::Apis::MybusinessV4::DimensionalMetricValue::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class Notifications
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :notification_types, as: 'notificationTypes'
          property :topic_name, as: 'topicName'
        end
      end
      
      class OpenInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_reopen, as: 'canReopen'
          property :opening_date, as: 'openingDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
          property :status, as: 'status'
        end
      end
      
      class OrganizationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
          property :postal_address, as: 'postalAddress', class: Google::Apis::MybusinessV4::PostalAddress, decorator: Google::Apis::MybusinessV4::PostalAddress::Representation
      
          property :registered_domain, as: 'registeredDomain'
        end
      end
      
      class PhoneInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class PhoneVerificationData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_number, as: 'phoneNumber'
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
          collection :place_infos, as: 'placeInfos', class: Google::Apis::MybusinessV4::PlaceInfo, decorator: Google::Apis::MybusinessV4::PlaceInfo::Representation
      
        end
      end
      
      class PointRadius
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latlng, as: 'latlng', class: Google::Apis::MybusinessV4::LatLng, decorator: Google::Apis::MybusinessV4::LatLng::Representation
      
          property :radius_km, as: 'radiusKm'
        end
      end
      
      class PostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :language_code, as: 'languageCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :postal_code, as: 'postalCode'
          collection :recipients, as: 'recipients'
          property :region_code, as: 'regionCode'
          property :revision, as: 'revision'
          property :sorting_code, as: 'sortingCode'
          property :sublocality, as: 'sublocality'
        end
      end
      
      class PriceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::Label, decorator: Google::Apis::MybusinessV4::Label::Representation
      
          property :price_list_id, as: 'priceListId'
          collection :sections, as: 'sections', class: Google::Apis::MybusinessV4::Section, decorator: Google::Apis::MybusinessV4::Section::Representation
      
          property :source_url, as: 'sourceUrl'
        end
      end
      
      class Profile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
        end
      end
      
      class RegionCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :label, as: 'label'
          property :latlng, as: 'latlng', class: Google::Apis::MybusinessV4::LatLng, decorator: Google::Apis::MybusinessV4::LatLng::Representation
      
        end
      end
      
      class RelationshipData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent_chain, as: 'parentChain'
        end
      end
      
      class RepeatedEnumAttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :set_values, as: 'setValues'
          collection :unset_values, as: 'unsetValues'
        end
      end
      
      class ReportLocalPostInsightsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_request, as: 'basicRequest', class: Google::Apis::MybusinessV4::BasicMetricsRequest, decorator: Google::Apis::MybusinessV4::BasicMetricsRequest::Representation
      
          collection :local_post_names, as: 'localPostNames'
        end
      end
      
      class ReportLocalPostInsightsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :local_post_metrics, as: 'localPostMetrics', class: Google::Apis::MybusinessV4::LocalPostMetrics, decorator: Google::Apis::MybusinessV4::LocalPostMetrics::Representation
      
          property :name, as: 'name'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class ReportLocationInsightsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_request, as: 'basicRequest', class: Google::Apis::MybusinessV4::BasicMetricsRequest, decorator: Google::Apis::MybusinessV4::BasicMetricsRequest::Representation
      
          property :driving_directions_request, as: 'drivingDirectionsRequest', class: Google::Apis::MybusinessV4::DrivingDirectionMetricsRequest, decorator: Google::Apis::MybusinessV4::DrivingDirectionMetricsRequest::Representation
      
          collection :location_names, as: 'locationNames'
        end
      end
      
      class ReportLocationInsightsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location_driving_direction_metrics, as: 'locationDrivingDirectionMetrics', class: Google::Apis::MybusinessV4::LocationDrivingDirectionMetrics, decorator: Google::Apis::MybusinessV4::LocationDrivingDirectionMetrics::Representation
      
          collection :location_metrics, as: 'locationMetrics', class: Google::Apis::MybusinessV4::LocationMetrics, decorator: Google::Apis::MybusinessV4::LocationMetrics::Representation
      
        end
      end
      
      class Review
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment, as: 'comment'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :review_id, as: 'reviewId'
          property :review_reply, as: 'reviewReply', class: Google::Apis::MybusinessV4::ReviewReply, decorator: Google::Apis::MybusinessV4::ReviewReply::Representation
      
          property :reviewer, as: 'reviewer', class: Google::Apis::MybusinessV4::Reviewer, decorator: Google::Apis::MybusinessV4::Reviewer::Representation
      
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
          property :profile_photo_url, as: 'profilePhotoUrl'
        end
      end
      
      class SearchChainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chains, as: 'chains', class: Google::Apis::MybusinessV4::Chain, decorator: Google::Apis::MybusinessV4::Chain::Representation
      
        end
      end
      
      class SearchGoogleLocationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::MybusinessV4::Location, decorator: Google::Apis::MybusinessV4::Location::Representation
      
          property :query, as: 'query'
          property :result_count, as: 'resultCount'
        end
      end
      
      class SearchGoogleLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_locations, as: 'googleLocations', class: Google::Apis::MybusinessV4::GoogleLocation, decorator: Google::Apis::MybusinessV4::GoogleLocation::Representation
      
        end
      end
      
      class Section
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::MybusinessV4::Item, decorator: Google::Apis::MybusinessV4::Item::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::MybusinessV4::Label, decorator: Google::Apis::MybusinessV4::Label::Representation
      
          property :section_id, as: 'sectionId'
        end
      end
      
      class ServiceAreaBusiness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_type, as: 'businessType'
          property :places, as: 'places', class: Google::Apis::MybusinessV4::Places, decorator: Google::Apis::MybusinessV4::Places::Representation
      
          property :radius, as: 'radius', class: Google::Apis::MybusinessV4::PointRadius, decorator: Google::Apis::MybusinessV4::PointRadius::Representation
      
        end
      end
      
      class SpecialHourPeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :close_time, as: 'closeTime'
          property :end_date, as: 'endDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
          property :is_closed, as: 'isClosed'
          property :open_time, as: 'openTime'
          property :start_date, as: 'startDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
        end
      end
      
      class SpecialHours
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :special_hour_periods, as: 'specialHourPeriods', class: Google::Apis::MybusinessV4::SpecialHourPeriod, decorator: Google::Apis::MybusinessV4::SpecialHourPeriod::Representation
      
        end
      end
      
      class StartUploadMediaItemDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TargetLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_address, as: 'locationAddress'
          property :location_name, as: 'locationName'
        end
      end
      
      class TimeDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :time_of_day, as: 'timeOfDay', class: Google::Apis::MybusinessV4::TimeOfDay, decorator: Google::Apis::MybusinessV4::TimeOfDay::Representation
      
          property :time_range, as: 'timeRange', class: Google::Apis::MybusinessV4::TimeRange, decorator: Google::Apis::MybusinessV4::TimeRange::Representation
      
        end
      end
      
      class TimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
          property :end_time, as: 'endTime', class: Google::Apis::MybusinessV4::TimeOfDay, decorator: Google::Apis::MybusinessV4::TimeOfDay::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::MybusinessV4::Date, decorator: Google::Apis::MybusinessV4::Date::Representation
      
          property :start_time, as: 'startTime', class: Google::Apis::MybusinessV4::TimeOfDay, decorator: Google::Apis::MybusinessV4::TimeOfDay::Representation
      
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
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
      
      class TimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class TopDirectionSources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_count, as: 'dayCount'
          collection :region_counts, as: 'regionCounts', class: Google::Apis::MybusinessV4::RegionCount, decorator: Google::Apis::MybusinessV4::RegionCount::Representation
      
        end
      end
      
      class TransferLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :to_account, as: 'toAccount'
        end
      end
      
      class UrlAttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class Verification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :method_prop, as: 'method'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class VerificationOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_data, as: 'addressData', class: Google::Apis::MybusinessV4::AddressVerificationData, decorator: Google::Apis::MybusinessV4::AddressVerificationData::Representation
      
          property :email_data, as: 'emailData', class: Google::Apis::MybusinessV4::EmailVerificationData, decorator: Google::Apis::MybusinessV4::EmailVerificationData::Representation
      
          property :phone_data, as: 'phoneData', class: Google::Apis::MybusinessV4::PhoneVerificationData, decorator: Google::Apis::MybusinessV4::PhoneVerificationData::Representation
      
          property :verification_method, as: 'verificationMethod'
        end
      end
      
      class VerifyLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_input, as: 'addressInput', class: Google::Apis::MybusinessV4::AddressInput, decorator: Google::Apis::MybusinessV4::AddressInput::Representation
      
          property :email_input, as: 'emailInput', class: Google::Apis::MybusinessV4::EmailInput, decorator: Google::Apis::MybusinessV4::EmailInput::Representation
      
          property :language_code, as: 'languageCode'
          property :method_prop, as: 'method'
          property :phone_input, as: 'phoneInput', class: Google::Apis::MybusinessV4::PhoneInput, decorator: Google::Apis::MybusinessV4::PhoneInput::Representation
      
        end
      end
      
      class VerifyLocationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verification, as: 'verification', class: Google::Apis::MybusinessV4::Verification, decorator: Google::Apis::MybusinessV4::Verification::Representation
      
        end
      end
    end
  end
end
