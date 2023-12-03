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
    module WalletobjectsV1
      
      class ActivationOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AirportInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppLinkData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppLinkDataAppLinkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppLinkDataAppLinkInfoAppTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticationKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Barcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BarcodeSectionDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Blobstore2Info
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BoardingAndSeatingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BoardingAndSeatingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CallbackOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardBarcodeSectionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardRowOneItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardRowTemplateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardRowThreeItems
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardRowTwoItems
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardTemplateOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClassTemplateInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContentTypeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetailsItemInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetailsTemplateOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffChecksumsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffDownloadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffUploadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffUploadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiffVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoverableProgram
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoverableProgramMerchantSigninInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoverableProgramMerchantSignupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DownloadParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventDateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventReservationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventSeat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTicketClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTicketClassAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTicketClassListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTicketObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTicketObjectAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventTicketObjectListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventVenue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExpiryNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirstRowOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightCarrier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightClassAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightClassListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightObjectAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightObjectListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FrequentFlyerInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenericClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenericClassListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenericObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenericObjectListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GiftCardClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GiftCardClassAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GiftCardClassListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GiftCardObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GiftCardObjectAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GiftCardObjectListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroupingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageModuleData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InfoModuleData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Issuer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssuerContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssuerListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssuerToUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JwtInsertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JwtResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelValueRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLongPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinksModuleData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTemplateOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocalizedString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyClassAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyClassListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyObjectAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyObjectListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyPoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoyaltyPointsBalance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Media
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyLinkedOfferObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyLinkedOfferObjectsRequest
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
      
      class ObjectIdProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OfferClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OfferClassAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OfferClassListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OfferObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OfferObjectAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OfferObjectListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pagination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PassConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Permission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Permissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PurchaseDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Review
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RotatingBarcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RotatingBarcodeTotpDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RotatingBarcodeTotpDetailsTotpParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RotatingBarcodeValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityAnimation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetPassUpdateNoticeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetPassUpdateNoticeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignUpInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SmartTap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SmartTapMerchantData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TemplateItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextModuleData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TicketCost
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TicketLeg
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TicketRestrictions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TicketSeat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitClassAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitClassListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitObjectAddMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitObjectListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitObjectUploadRotatingBarcodeValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransitObjectUploadRotatingBarcodeValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TranslatedString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpcomingNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadPrivateDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadPrivateDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadPrivateImageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadPrivateImageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Uri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivationOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_url, as: 'activationUrl'
          property :allow_reactivation, as: 'allowReactivation'
        end
      end
      
      class ActivationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class AddMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
        end
      end
      
      class AirportInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :airport_iata_code, as: 'airportIataCode'
          property :airport_name_override, as: 'airportNameOverride', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :gate, as: 'gate'
          property :kind, as: 'kind'
          property :terminal, as: 'terminal'
        end
      end
      
      class AppLinkData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_app_link_info, as: 'androidAppLinkInfo', class: Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfo, decorator: Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfo::Representation
      
          property :ios_app_link_info, as: 'iosAppLinkInfo', class: Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfo, decorator: Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfo::Representation
      
          property :web_app_link_info, as: 'webAppLinkInfo', class: Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfo, decorator: Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfo::Representation
      
        end
      end
      
      class AppLinkDataAppLinkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_logo_image, as: 'appLogoImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :app_target, as: 'appTarget', class: Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfoAppTarget, decorator: Google::Apis::WalletobjectsV1::AppLinkDataAppLinkInfoAppTarget::Representation
      
          property :description, as: 'description', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :title, as: 'title', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
        end
      end
      
      class AppLinkDataAppLinkInfoAppTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_uri, as: 'targetUri', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
        end
      end
      
      class AuthenticationKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :public_key_pem, as: 'publicKeyPem'
        end
      end
      
      class Barcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_text, as: 'alternateText'
          property :kind, as: 'kind'
          property :render_encoding, as: 'renderEncoding'
          property :show_code_text, as: 'showCodeText', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class BarcodeSectionDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_selector, as: 'fieldSelector', class: Google::Apis::WalletobjectsV1::FieldSelector, decorator: Google::Apis::WalletobjectsV1::FieldSelector::Representation
      
        end
      end
      
      class Blobstore2Info
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_generation, :numeric_string => true, as: 'blobGeneration'
          property :blob_id, as: 'blobId'
          property :download_read_handle, :base64 => true, as: 'downloadReadHandle'
          property :read_token, as: 'readToken'
          property :upload_metadata_container, :base64 => true, as: 'uploadMetadataContainer'
        end
      end
      
      class BoardingAndSeatingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boarding_door, as: 'boardingDoor'
          property :boarding_group, as: 'boardingGroup'
          property :boarding_position, as: 'boardingPosition'
          property :boarding_privilege_image, as: 'boardingPrivilegeImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :kind, as: 'kind'
          property :seat_assignment, as: 'seatAssignment', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :seat_class, as: 'seatClass'
          property :seat_number, as: 'seatNumber'
          property :sequence_number, as: 'sequenceNumber'
        end
      end
      
      class BoardingAndSeatingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boarding_policy, as: 'boardingPolicy'
          property :kind, as: 'kind'
          property :seat_class_policy, as: 'seatClassPolicy'
        end
      end
      
      class CallbackOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_request_url, as: 'updateRequestUrl'
          property :url, as: 'url'
        end
      end
      
      class CardBarcodeSectionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_bottom_detail, as: 'firstBottomDetail', class: Google::Apis::WalletobjectsV1::BarcodeSectionDetail, decorator: Google::Apis::WalletobjectsV1::BarcodeSectionDetail::Representation
      
          property :first_top_detail, as: 'firstTopDetail', class: Google::Apis::WalletobjectsV1::BarcodeSectionDetail, decorator: Google::Apis::WalletobjectsV1::BarcodeSectionDetail::Representation
      
          property :second_top_detail, as: 'secondTopDetail', class: Google::Apis::WalletobjectsV1::BarcodeSectionDetail, decorator: Google::Apis::WalletobjectsV1::BarcodeSectionDetail::Representation
      
        end
      end
      
      class CardRowOneItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item, as: 'item', class: Google::Apis::WalletobjectsV1::TemplateItem, decorator: Google::Apis::WalletobjectsV1::TemplateItem::Representation
      
        end
      end
      
      class CardRowTemplateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :one_item, as: 'oneItem', class: Google::Apis::WalletobjectsV1::CardRowOneItem, decorator: Google::Apis::WalletobjectsV1::CardRowOneItem::Representation
      
          property :three_items, as: 'threeItems', class: Google::Apis::WalletobjectsV1::CardRowThreeItems, decorator: Google::Apis::WalletobjectsV1::CardRowThreeItems::Representation
      
          property :two_items, as: 'twoItems', class: Google::Apis::WalletobjectsV1::CardRowTwoItems, decorator: Google::Apis::WalletobjectsV1::CardRowTwoItems::Representation
      
        end
      end
      
      class CardRowThreeItems
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_item, as: 'endItem', class: Google::Apis::WalletobjectsV1::TemplateItem, decorator: Google::Apis::WalletobjectsV1::TemplateItem::Representation
      
          property :middle_item, as: 'middleItem', class: Google::Apis::WalletobjectsV1::TemplateItem, decorator: Google::Apis::WalletobjectsV1::TemplateItem::Representation
      
          property :start_item, as: 'startItem', class: Google::Apis::WalletobjectsV1::TemplateItem, decorator: Google::Apis::WalletobjectsV1::TemplateItem::Representation
      
        end
      end
      
      class CardRowTwoItems
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_item, as: 'endItem', class: Google::Apis::WalletobjectsV1::TemplateItem, decorator: Google::Apis::WalletobjectsV1::TemplateItem::Representation
      
          property :start_item, as: 'startItem', class: Google::Apis::WalletobjectsV1::TemplateItem, decorator: Google::Apis::WalletobjectsV1::TemplateItem::Representation
      
        end
      end
      
      class CardTemplateOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_row_template_infos, as: 'cardRowTemplateInfos', class: Google::Apis::WalletobjectsV1::CardRowTemplateInfo, decorator: Google::Apis::WalletobjectsV1::CardRowTemplateInfo::Representation
      
        end
      end
      
      class ClassTemplateInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :card_barcode_section_details, as: 'cardBarcodeSectionDetails', class: Google::Apis::WalletobjectsV1::CardBarcodeSectionDetails, decorator: Google::Apis::WalletobjectsV1::CardBarcodeSectionDetails::Representation
      
          property :card_template_override, as: 'cardTemplateOverride', class: Google::Apis::WalletobjectsV1::CardTemplateOverride, decorator: Google::Apis::WalletobjectsV1::CardTemplateOverride::Representation
      
          property :details_template_override, as: 'detailsTemplateOverride', class: Google::Apis::WalletobjectsV1::DetailsTemplateOverride, decorator: Google::Apis::WalletobjectsV1::DetailsTemplateOverride::Representation
      
          property :list_template_override, as: 'listTemplateOverride', class: Google::Apis::WalletobjectsV1::ListTemplateOverride, decorator: Google::Apis::WalletobjectsV1::ListTemplateOverride::Representation
      
        end
      end
      
      class CompositeMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::WalletobjectsV1::Blobstore2Info, decorator: Google::Apis::WalletobjectsV1::Blobstore2Info::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :inline, :base64 => true, as: 'inline'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :object_id_prop, as: 'objectId', class: Google::Apis::WalletobjectsV1::ObjectIdProp, decorator: Google::Apis::WalletobjectsV1::ObjectIdProp::Representation
      
          property :path, as: 'path'
          property :reference_type, as: 'referenceType'
          property :sha1_hash, :base64 => true, as: 'sha1Hash'
        end
      end
      
      class ContentTypeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :best_guess, as: 'bestGuess'
          property :from_bytes, as: 'fromBytes'
          property :from_file_name, as: 'fromFileName'
          property :from_header, as: 'fromHeader'
          property :from_url_path, as: 'fromUrlPath'
        end
      end
      
      class DateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date'
        end
      end
      
      class DetailsItemInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item, as: 'item', class: Google::Apis::WalletobjectsV1::TemplateItem, decorator: Google::Apis::WalletobjectsV1::TemplateItem::Representation
      
        end
      end
      
      class DetailsTemplateOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :details_item_infos, as: 'detailsItemInfos', class: Google::Apis::WalletobjectsV1::DetailsItemInfo, decorator: Google::Apis::WalletobjectsV1::DetailsItemInfo::Representation
      
        end
      end
      
      class DeviceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_token, as: 'deviceToken'
        end
      end
      
      class DiffChecksumsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_location, as: 'checksumsLocation', class: Google::Apis::WalletobjectsV1::CompositeMedia, decorator: Google::Apis::WalletobjectsV1::CompositeMedia::Representation
      
          property :chunk_size_bytes, :numeric_string => true, as: 'chunkSizeBytes'
          property :object_location, as: 'objectLocation', class: Google::Apis::WalletobjectsV1::CompositeMedia, decorator: Google::Apis::WalletobjectsV1::CompositeMedia::Representation
      
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DiffDownloadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_location, as: 'objectLocation', class: Google::Apis::WalletobjectsV1::CompositeMedia, decorator: Google::Apis::WalletobjectsV1::CompositeMedia::Representation
      
        end
      end
      
      class DiffUploadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_info, as: 'checksumsInfo', class: Google::Apis::WalletobjectsV1::CompositeMedia, decorator: Google::Apis::WalletobjectsV1::CompositeMedia::Representation
      
          property :object_info, as: 'objectInfo', class: Google::Apis::WalletobjectsV1::CompositeMedia, decorator: Google::Apis::WalletobjectsV1::CompositeMedia::Representation
      
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DiffUploadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_version, as: 'objectVersion'
          property :original_object, as: 'originalObject', class: Google::Apis::WalletobjectsV1::CompositeMedia, decorator: Google::Apis::WalletobjectsV1::CompositeMedia::Representation
      
        end
      end
      
      class DiffVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class DiscoverableProgram
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merchant_signin_info, as: 'merchantSigninInfo', class: Google::Apis::WalletobjectsV1::DiscoverableProgramMerchantSigninInfo, decorator: Google::Apis::WalletobjectsV1::DiscoverableProgramMerchantSigninInfo::Representation
      
          property :merchant_signup_info, as: 'merchantSignupInfo', class: Google::Apis::WalletobjectsV1::DiscoverableProgramMerchantSignupInfo, decorator: Google::Apis::WalletobjectsV1::DiscoverableProgramMerchantSignupInfo::Representation
      
          property :state, as: 'state'
        end
      end
      
      class DiscoverableProgramMerchantSigninInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :signin_website, as: 'signinWebsite', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
        end
      end
      
      class DiscoverableProgramMerchantSignupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :signup_shared_datas, as: 'signupSharedDatas'
          property :signup_website, as: 'signupWebsite', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
        end
      end
      
      class DownloadParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_gzip_compression, as: 'allowGzipCompression'
          property :ignore_range, as: 'ignoreRange'
        end
      end
      
      class EventDateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_doors_open_label, as: 'customDoorsOpenLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :doors_open, as: 'doorsOpen'
          property :doors_open_label, as: 'doorsOpenLabel'
          property :end, as: 'end'
          property :kind, as: 'kind'
          property :start, as: 'start'
        end
      end
      
      class EventReservationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confirmation_code, as: 'confirmationCode'
          property :kind, as: 'kind'
        end
      end
      
      class EventSeat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gate, as: 'gate', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :kind, as: 'kind'
          property :row, as: 'row', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :seat, as: 'seat', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :section, as: 'section', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
        end
      end
      
      class EventTicketClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_multiple_users_per_object, as: 'allowMultipleUsersPerObject'
          property :callback_options, as: 'callbackOptions', class: Google::Apis::WalletobjectsV1::CallbackOptions, decorator: Google::Apis::WalletobjectsV1::CallbackOptions::Representation
      
          property :class_template_info, as: 'classTemplateInfo', class: Google::Apis::WalletobjectsV1::ClassTemplateInfo, decorator: Google::Apis::WalletobjectsV1::ClassTemplateInfo::Representation
      
          property :confirmation_code_label, as: 'confirmationCodeLabel'
          property :country_code, as: 'countryCode'
          property :custom_confirmation_code_label, as: 'customConfirmationCodeLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_gate_label, as: 'customGateLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_row_label, as: 'customRowLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_seat_label, as: 'customSeatLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_section_label, as: 'customSectionLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :date_time, as: 'dateTime', class: Google::Apis::WalletobjectsV1::EventDateTime, decorator: Google::Apis::WalletobjectsV1::EventDateTime::Representation
      
          property :enable_smart_tap, as: 'enableSmartTap'
          property :event_id, as: 'eventId'
          property :event_name, as: 'eventName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :fine_print, as: 'finePrint', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :gate_label, as: 'gateLabel'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :homepage_uri, as: 'homepageUri', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :issuer_name, as: 'issuerName'
          property :kind, as: 'kind'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          property :localized_issuer_name, as: 'localizedIssuerName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          property :logo, as: 'logo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :multiple_devices_and_holders_allowed_status, as: 'multipleDevicesAndHoldersAllowedStatus'
          collection :redemption_issuers, as: 'redemptionIssuers'
          property :review, as: 'review', class: Google::Apis::WalletobjectsV1::Review, decorator: Google::Apis::WalletobjectsV1::Review::Representation
      
          property :review_status, as: 'reviewStatus'
          property :row_label, as: 'rowLabel'
          property :seat_label, as: 'seatLabel'
          property :section_label, as: 'sectionLabel'
          property :security_animation, as: 'securityAnimation', class: Google::Apis::WalletobjectsV1::SecurityAnimation, decorator: Google::Apis::WalletobjectsV1::SecurityAnimation::Representation
      
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :venue, as: 'venue', class: Google::Apis::WalletobjectsV1::EventVenue, decorator: Google::Apis::WalletobjectsV1::EventVenue::Representation
      
          property :version, :numeric_string => true, as: 'version'
          property :view_unlock_requirement, as: 'viewUnlockRequirement'
          property :wide_logo, as: 'wideLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :word_mark, as: 'wordMark', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
        end
      end
      
      class EventTicketClassAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::EventTicketClass, decorator: Google::Apis::WalletobjectsV1::EventTicketClass::Representation
      
        end
      end
      
      class EventTicketClassListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::EventTicketClass, decorator: Google::Apis::WalletobjectsV1::EventTicketClass::Representation
      
        end
      end
      
      class EventTicketObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_link_data, as: 'appLinkData', class: Google::Apis::WalletobjectsV1::AppLinkData, decorator: Google::Apis::WalletobjectsV1::AppLinkData::Representation
      
          property :barcode, as: 'barcode', class: Google::Apis::WalletobjectsV1::Barcode, decorator: Google::Apis::WalletobjectsV1::Barcode::Representation
      
          property :class_id, as: 'classId'
          property :class_reference, as: 'classReference', class: Google::Apis::WalletobjectsV1::EventTicketClass, decorator: Google::Apis::WalletobjectsV1::EventTicketClass::Representation
      
          property :disable_expiration_notification, as: 'disableExpirationNotification'
          property :face_value, as: 'faceValue', class: Google::Apis::WalletobjectsV1::Money, decorator: Google::Apis::WalletobjectsV1::Money::Representation
      
          property :grouping_info, as: 'groupingInfo', class: Google::Apis::WalletobjectsV1::GroupingInfo, decorator: Google::Apis::WalletobjectsV1::GroupingInfo::Representation
      
          property :has_linked_device, as: 'hasLinkedDevice'
          property :has_users, as: 'hasUsers'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :kind, as: 'kind'
          collection :linked_offer_ids, as: 'linkedOfferIds'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :pass_constraints, as: 'passConstraints', class: Google::Apis::WalletobjectsV1::PassConstraints, decorator: Google::Apis::WalletobjectsV1::PassConstraints::Representation
      
          property :reservation_info, as: 'reservationInfo', class: Google::Apis::WalletobjectsV1::EventReservationInfo, decorator: Google::Apis::WalletobjectsV1::EventReservationInfo::Representation
      
          property :rotating_barcode, as: 'rotatingBarcode', class: Google::Apis::WalletobjectsV1::RotatingBarcode, decorator: Google::Apis::WalletobjectsV1::RotatingBarcode::Representation
      
          property :seat_info, as: 'seatInfo', class: Google::Apis::WalletobjectsV1::EventSeat, decorator: Google::Apis::WalletobjectsV1::EventSeat::Representation
      
          property :smart_tap_redemption_value, as: 'smartTapRedemptionValue'
          property :state, as: 'state'
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :ticket_holder_name, as: 'ticketHolderName'
          property :ticket_number, as: 'ticketNumber'
          property :ticket_type, as: 'ticketType', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :valid_time_interval, as: 'validTimeInterval', class: Google::Apis::WalletobjectsV1::TimeInterval, decorator: Google::Apis::WalletobjectsV1::TimeInterval::Representation
      
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class EventTicketObjectAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::EventTicketObject, decorator: Google::Apis::WalletobjectsV1::EventTicketObject::Representation
      
        end
      end
      
      class EventTicketObjectListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::EventTicketObject, decorator: Google::Apis::WalletobjectsV1::EventTicketObject::Representation
      
        end
      end
      
      class EventVenue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
        end
      end
      
      class ExpiryNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_notification, as: 'enableNotification'
        end
      end
      
      class FieldReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_format, as: 'dateFormat'
          property :field_path, as: 'fieldPath'
        end
      end
      
      class FieldSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::WalletobjectsV1::FieldReference, decorator: Google::Apis::WalletobjectsV1::FieldReference::Representation
      
        end
      end
      
      class FirstRowOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_option, as: 'fieldOption', class: Google::Apis::WalletobjectsV1::FieldSelector, decorator: Google::Apis::WalletobjectsV1::FieldSelector::Representation
      
          property :transit_option, as: 'transitOption'
        end
      end
      
      class FlightCarrier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :airline_alliance_logo, as: 'airlineAllianceLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :airline_logo, as: 'airlineLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :airline_name, as: 'airlineName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :carrier_iata_code, as: 'carrierIataCode'
          property :carrier_icao_code, as: 'carrierIcaoCode'
          property :kind, as: 'kind'
          property :wide_airline_logo, as: 'wideAirlineLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
        end
      end
      
      class FlightClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_multiple_users_per_object, as: 'allowMultipleUsersPerObject'
          property :boarding_and_seating_policy, as: 'boardingAndSeatingPolicy', class: Google::Apis::WalletobjectsV1::BoardingAndSeatingPolicy, decorator: Google::Apis::WalletobjectsV1::BoardingAndSeatingPolicy::Representation
      
          property :callback_options, as: 'callbackOptions', class: Google::Apis::WalletobjectsV1::CallbackOptions, decorator: Google::Apis::WalletobjectsV1::CallbackOptions::Representation
      
          property :class_template_info, as: 'classTemplateInfo', class: Google::Apis::WalletobjectsV1::ClassTemplateInfo, decorator: Google::Apis::WalletobjectsV1::ClassTemplateInfo::Representation
      
          property :country_code, as: 'countryCode'
          property :destination, as: 'destination', class: Google::Apis::WalletobjectsV1::AirportInfo, decorator: Google::Apis::WalletobjectsV1::AirportInfo::Representation
      
          property :enable_smart_tap, as: 'enableSmartTap'
          property :flight_header, as: 'flightHeader', class: Google::Apis::WalletobjectsV1::FlightHeader, decorator: Google::Apis::WalletobjectsV1::FlightHeader::Representation
      
          property :flight_status, as: 'flightStatus'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :homepage_uri, as: 'homepageUri', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :issuer_name, as: 'issuerName'
          property :kind, as: 'kind'
          property :language_override, as: 'languageOverride'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          property :local_boarding_date_time, as: 'localBoardingDateTime'
          property :local_estimated_or_actual_arrival_date_time, as: 'localEstimatedOrActualArrivalDateTime'
          property :local_estimated_or_actual_departure_date_time, as: 'localEstimatedOrActualDepartureDateTime'
          property :local_gate_closing_date_time, as: 'localGateClosingDateTime'
          property :local_scheduled_arrival_date_time, as: 'localScheduledArrivalDateTime'
          property :local_scheduled_departure_date_time, as: 'localScheduledDepartureDateTime'
          property :localized_issuer_name, as: 'localizedIssuerName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :multiple_devices_and_holders_allowed_status, as: 'multipleDevicesAndHoldersAllowedStatus'
          property :origin, as: 'origin', class: Google::Apis::WalletobjectsV1::AirportInfo, decorator: Google::Apis::WalletobjectsV1::AirportInfo::Representation
      
          collection :redemption_issuers, as: 'redemptionIssuers'
          property :review, as: 'review', class: Google::Apis::WalletobjectsV1::Review, decorator: Google::Apis::WalletobjectsV1::Review::Representation
      
          property :review_status, as: 'reviewStatus'
          property :security_animation, as: 'securityAnimation', class: Google::Apis::WalletobjectsV1::SecurityAnimation, decorator: Google::Apis::WalletobjectsV1::SecurityAnimation::Representation
      
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :version, :numeric_string => true, as: 'version'
          property :view_unlock_requirement, as: 'viewUnlockRequirement'
          property :word_mark, as: 'wordMark', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
        end
      end
      
      class FlightClassAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::FlightClass, decorator: Google::Apis::WalletobjectsV1::FlightClass::Representation
      
        end
      end
      
      class FlightClassListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::FlightClass, decorator: Google::Apis::WalletobjectsV1::FlightClass::Representation
      
        end
      end
      
      class FlightHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :carrier, as: 'carrier', class: Google::Apis::WalletobjectsV1::FlightCarrier, decorator: Google::Apis::WalletobjectsV1::FlightCarrier::Representation
      
          property :flight_number, as: 'flightNumber'
          property :flight_number_display_override, as: 'flightNumberDisplayOverride'
          property :kind, as: 'kind'
          property :operating_carrier, as: 'operatingCarrier', class: Google::Apis::WalletobjectsV1::FlightCarrier, decorator: Google::Apis::WalletobjectsV1::FlightCarrier::Representation
      
          property :operating_flight_number, as: 'operatingFlightNumber'
        end
      end
      
      class FlightObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_link_data, as: 'appLinkData', class: Google::Apis::WalletobjectsV1::AppLinkData, decorator: Google::Apis::WalletobjectsV1::AppLinkData::Representation
      
          property :barcode, as: 'barcode', class: Google::Apis::WalletobjectsV1::Barcode, decorator: Google::Apis::WalletobjectsV1::Barcode::Representation
      
          property :boarding_and_seating_info, as: 'boardingAndSeatingInfo', class: Google::Apis::WalletobjectsV1::BoardingAndSeatingInfo, decorator: Google::Apis::WalletobjectsV1::BoardingAndSeatingInfo::Representation
      
          property :class_id, as: 'classId'
          property :class_reference, as: 'classReference', class: Google::Apis::WalletobjectsV1::FlightClass, decorator: Google::Apis::WalletobjectsV1::FlightClass::Representation
      
          property :disable_expiration_notification, as: 'disableExpirationNotification'
          property :grouping_info, as: 'groupingInfo', class: Google::Apis::WalletobjectsV1::GroupingInfo, decorator: Google::Apis::WalletobjectsV1::GroupingInfo::Representation
      
          property :has_linked_device, as: 'hasLinkedDevice'
          property :has_users, as: 'hasUsers'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :kind, as: 'kind'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :pass_constraints, as: 'passConstraints', class: Google::Apis::WalletobjectsV1::PassConstraints, decorator: Google::Apis::WalletobjectsV1::PassConstraints::Representation
      
          property :passenger_name, as: 'passengerName'
          property :reservation_info, as: 'reservationInfo', class: Google::Apis::WalletobjectsV1::ReservationInfo, decorator: Google::Apis::WalletobjectsV1::ReservationInfo::Representation
      
          property :rotating_barcode, as: 'rotatingBarcode', class: Google::Apis::WalletobjectsV1::RotatingBarcode, decorator: Google::Apis::WalletobjectsV1::RotatingBarcode::Representation
      
          property :security_program_logo, as: 'securityProgramLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :smart_tap_redemption_value, as: 'smartTapRedemptionValue'
          property :state, as: 'state'
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :valid_time_interval, as: 'validTimeInterval', class: Google::Apis::WalletobjectsV1::TimeInterval, decorator: Google::Apis::WalletobjectsV1::TimeInterval::Representation
      
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class FlightObjectAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::FlightObject, decorator: Google::Apis::WalletobjectsV1::FlightObject::Representation
      
        end
      end
      
      class FlightObjectListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::FlightObject, decorator: Google::Apis::WalletobjectsV1::FlightObject::Representation
      
        end
      end
      
      class FrequentFlyerInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequent_flyer_number, as: 'frequentFlyerNumber'
          property :frequent_flyer_program_name, as: 'frequentFlyerProgramName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class GenericClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :callback_options, as: 'callbackOptions', class: Google::Apis::WalletobjectsV1::CallbackOptions, decorator: Google::Apis::WalletobjectsV1::CallbackOptions::Representation
      
          property :class_template_info, as: 'classTemplateInfo', class: Google::Apis::WalletobjectsV1::ClassTemplateInfo, decorator: Google::Apis::WalletobjectsV1::ClassTemplateInfo::Representation
      
          property :enable_smart_tap, as: 'enableSmartTap'
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          property :multiple_devices_and_holders_allowed_status, as: 'multipleDevicesAndHoldersAllowedStatus'
          collection :redemption_issuers, as: 'redemptionIssuers'
          property :security_animation, as: 'securityAnimation', class: Google::Apis::WalletobjectsV1::SecurityAnimation, decorator: Google::Apis::WalletobjectsV1::SecurityAnimation::Representation
      
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :view_unlock_requirement, as: 'viewUnlockRequirement'
        end
      end
      
      class GenericClassListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::GenericClass, decorator: Google::Apis::WalletobjectsV1::GenericClass::Representation
      
        end
      end
      
      class GenericObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_link_data, as: 'appLinkData', class: Google::Apis::WalletobjectsV1::AppLinkData, decorator: Google::Apis::WalletobjectsV1::AppLinkData::Representation
      
          property :barcode, as: 'barcode', class: Google::Apis::WalletobjectsV1::Barcode, decorator: Google::Apis::WalletobjectsV1::Barcode::Representation
      
          property :card_title, as: 'cardTitle', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :class_id, as: 'classId'
          property :generic_type, as: 'genericType'
          property :grouping_info, as: 'groupingInfo', class: Google::Apis::WalletobjectsV1::GroupingInfo, decorator: Google::Apis::WalletobjectsV1::GroupingInfo::Representation
      
          property :has_users, as: 'hasUsers'
          property :header, as: 'header', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          property :logo, as: 'logo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :notifications, as: 'notifications', class: Google::Apis::WalletobjectsV1::Notifications, decorator: Google::Apis::WalletobjectsV1::Notifications::Representation
      
          property :pass_constraints, as: 'passConstraints', class: Google::Apis::WalletobjectsV1::PassConstraints, decorator: Google::Apis::WalletobjectsV1::PassConstraints::Representation
      
          property :rotating_barcode, as: 'rotatingBarcode', class: Google::Apis::WalletobjectsV1::RotatingBarcode, decorator: Google::Apis::WalletobjectsV1::RotatingBarcode::Representation
      
          property :smart_tap_redemption_value, as: 'smartTapRedemptionValue'
          property :state, as: 'state'
          property :subheader, as: 'subheader', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :valid_time_interval, as: 'validTimeInterval', class: Google::Apis::WalletobjectsV1::TimeInterval, decorator: Google::Apis::WalletobjectsV1::TimeInterval::Representation
      
          property :wide_logo, as: 'wideLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
        end
      end
      
      class GenericObjectListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::GenericObject, decorator: Google::Apis::WalletobjectsV1::GenericObject::Representation
      
        end
      end
      
      class GiftCardClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_barcode_redemption, as: 'allowBarcodeRedemption'
          property :allow_multiple_users_per_object, as: 'allowMultipleUsersPerObject'
          property :callback_options, as: 'callbackOptions', class: Google::Apis::WalletobjectsV1::CallbackOptions, decorator: Google::Apis::WalletobjectsV1::CallbackOptions::Representation
      
          property :card_number_label, as: 'cardNumberLabel'
          property :class_template_info, as: 'classTemplateInfo', class: Google::Apis::WalletobjectsV1::ClassTemplateInfo, decorator: Google::Apis::WalletobjectsV1::ClassTemplateInfo::Representation
      
          property :country_code, as: 'countryCode'
          property :enable_smart_tap, as: 'enableSmartTap'
          property :event_number_label, as: 'eventNumberLabel'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :homepage_uri, as: 'homepageUri', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :issuer_name, as: 'issuerName'
          property :kind, as: 'kind'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          property :localized_card_number_label, as: 'localizedCardNumberLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_event_number_label, as: 'localizedEventNumberLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_issuer_name, as: 'localizedIssuerName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_merchant_name, as: 'localizedMerchantName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_pin_label, as: 'localizedPinLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          property :merchant_name, as: 'merchantName'
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :multiple_devices_and_holders_allowed_status, as: 'multipleDevicesAndHoldersAllowedStatus'
          property :pin_label, as: 'pinLabel'
          property :program_logo, as: 'programLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          collection :redemption_issuers, as: 'redemptionIssuers'
          property :review, as: 'review', class: Google::Apis::WalletobjectsV1::Review, decorator: Google::Apis::WalletobjectsV1::Review::Representation
      
          property :review_status, as: 'reviewStatus'
          property :security_animation, as: 'securityAnimation', class: Google::Apis::WalletobjectsV1::SecurityAnimation, decorator: Google::Apis::WalletobjectsV1::SecurityAnimation::Representation
      
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :version, :numeric_string => true, as: 'version'
          property :view_unlock_requirement, as: 'viewUnlockRequirement'
          property :wide_program_logo, as: 'wideProgramLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :word_mark, as: 'wordMark', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
        end
      end
      
      class GiftCardClassAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::GiftCardClass, decorator: Google::Apis::WalletobjectsV1::GiftCardClass::Representation
      
        end
      end
      
      class GiftCardClassListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::GiftCardClass, decorator: Google::Apis::WalletobjectsV1::GiftCardClass::Representation
      
        end
      end
      
      class GiftCardObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_link_data, as: 'appLinkData', class: Google::Apis::WalletobjectsV1::AppLinkData, decorator: Google::Apis::WalletobjectsV1::AppLinkData::Representation
      
          property :balance, as: 'balance', class: Google::Apis::WalletobjectsV1::Money, decorator: Google::Apis::WalletobjectsV1::Money::Representation
      
          property :balance_update_time, as: 'balanceUpdateTime', class: Google::Apis::WalletobjectsV1::DateTime, decorator: Google::Apis::WalletobjectsV1::DateTime::Representation
      
          property :barcode, as: 'barcode', class: Google::Apis::WalletobjectsV1::Barcode, decorator: Google::Apis::WalletobjectsV1::Barcode::Representation
      
          property :card_number, as: 'cardNumber'
          property :class_id, as: 'classId'
          property :class_reference, as: 'classReference', class: Google::Apis::WalletobjectsV1::GiftCardClass, decorator: Google::Apis::WalletobjectsV1::GiftCardClass::Representation
      
          property :disable_expiration_notification, as: 'disableExpirationNotification'
          property :event_number, as: 'eventNumber'
          property :grouping_info, as: 'groupingInfo', class: Google::Apis::WalletobjectsV1::GroupingInfo, decorator: Google::Apis::WalletobjectsV1::GroupingInfo::Representation
      
          property :has_linked_device, as: 'hasLinkedDevice'
          property :has_users, as: 'hasUsers'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :kind, as: 'kind'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :pass_constraints, as: 'passConstraints', class: Google::Apis::WalletobjectsV1::PassConstraints, decorator: Google::Apis::WalletobjectsV1::PassConstraints::Representation
      
          property :pin, as: 'pin'
          property :rotating_barcode, as: 'rotatingBarcode', class: Google::Apis::WalletobjectsV1::RotatingBarcode, decorator: Google::Apis::WalletobjectsV1::RotatingBarcode::Representation
      
          property :smart_tap_redemption_value, as: 'smartTapRedemptionValue'
          property :state, as: 'state'
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :valid_time_interval, as: 'validTimeInterval', class: Google::Apis::WalletobjectsV1::TimeInterval, decorator: Google::Apis::WalletobjectsV1::TimeInterval::Representation
      
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class GiftCardObjectAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::GiftCardObject, decorator: Google::Apis::WalletobjectsV1::GiftCardObject::Representation
      
        end
      end
      
      class GiftCardObjectListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::GiftCardObject, decorator: Google::Apis::WalletobjectsV1::GiftCardObject::Representation
      
        end
      end
      
      class GroupingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grouping_id, as: 'groupingId'
          property :sort_index, as: 'sortIndex'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_description, as: 'contentDescription', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :kind, as: 'kind'
          property :source_uri, as: 'sourceUri', class: Google::Apis::WalletobjectsV1::ImageUri, decorator: Google::Apis::WalletobjectsV1::ImageUri::Representation
      
        end
      end
      
      class ImageModuleData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :main_image, as: 'mainImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
        end
      end
      
      class ImageUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :localized_description, as: 'localizedDescription', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class InfoModuleData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_value_rows, as: 'labelValueRows', class: Google::Apis::WalletobjectsV1::LabelValueRow, decorator: Google::Apis::WalletobjectsV1::LabelValueRow::Representation
      
          property :show_last_update_time, as: 'showLastUpdateTime'
        end
      end
      
      class Issuer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_info, as: 'contactInfo', class: Google::Apis::WalletobjectsV1::IssuerContactInfo, decorator: Google::Apis::WalletobjectsV1::IssuerContactInfo::Representation
      
          property :homepage_url, as: 'homepageUrl'
          property :issuer_id, :numeric_string => true, as: 'issuerId'
          property :name, as: 'name'
          property :smart_tap_merchant_data, as: 'smartTapMerchantData', class: Google::Apis::WalletobjectsV1::SmartTapMerchantData, decorator: Google::Apis::WalletobjectsV1::SmartTapMerchantData::Representation
      
        end
      end
      
      class IssuerContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alerts_emails, as: 'alertsEmails'
          property :email, as: 'email'
          property :name, as: 'name'
          property :phone, as: 'phone'
        end
      end
      
      class IssuerListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::Issuer, decorator: Google::Apis::WalletobjectsV1::Issuer::Representation
      
        end
      end
      
      class IssuerToUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :sign_up_info, as: 'signUpInfo', class: Google::Apis::WalletobjectsV1::SignUpInfo, decorator: Google::Apis::WalletobjectsV1::SignUpInfo::Representation
      
          property :url, as: 'url'
          property :value, as: 'value'
        end
      end
      
      class JwtInsertResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::Resources, decorator: Google::Apis::WalletobjectsV1::Resources::Representation
      
          property :save_uri, as: 'saveUri'
        end
      end
      
      class JwtResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :jwt, as: 'jwt'
        end
      end
      
      class LabelValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :localized_label, as: 'localizedLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_value, as: 'localizedValue', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :value, as: 'value'
        end
      end
      
      class LabelValueRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::WalletobjectsV1::LabelValue, decorator: Google::Apis::WalletobjectsV1::LabelValue::Representation
      
        end
      end
      
      class LatLongPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class LinksModuleData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uris, as: 'uris', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
        end
      end
      
      class ListTemplateOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_row_option, as: 'firstRowOption', class: Google::Apis::WalletobjectsV1::FirstRowOption, decorator: Google::Apis::WalletobjectsV1::FirstRowOption::Representation
      
          property :second_row_option, as: 'secondRowOption', class: Google::Apis::WalletobjectsV1::FieldSelector, decorator: Google::Apis::WalletobjectsV1::FieldSelector::Representation
      
          property :third_row_option, as: 'thirdRowOption', class: Google::Apis::WalletobjectsV1::FieldSelector, decorator: Google::Apis::WalletobjectsV1::FieldSelector::Representation
      
        end
      end
      
      class LocalizedString
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue', class: Google::Apis::WalletobjectsV1::TranslatedString, decorator: Google::Apis::WalletobjectsV1::TranslatedString::Representation
      
          property :kind, as: 'kind'
          collection :translated_values, as: 'translatedValues', class: Google::Apis::WalletobjectsV1::TranslatedString, decorator: Google::Apis::WalletobjectsV1::TranslatedString::Representation
      
        end
      end
      
      class LoyaltyClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id_label, as: 'accountIdLabel'
          property :account_name_label, as: 'accountNameLabel'
          property :allow_multiple_users_per_object, as: 'allowMultipleUsersPerObject'
          property :callback_options, as: 'callbackOptions', class: Google::Apis::WalletobjectsV1::CallbackOptions, decorator: Google::Apis::WalletobjectsV1::CallbackOptions::Representation
      
          property :class_template_info, as: 'classTemplateInfo', class: Google::Apis::WalletobjectsV1::ClassTemplateInfo, decorator: Google::Apis::WalletobjectsV1::ClassTemplateInfo::Representation
      
          property :country_code, as: 'countryCode'
          property :discoverable_program, as: 'discoverableProgram', class: Google::Apis::WalletobjectsV1::DiscoverableProgram, decorator: Google::Apis::WalletobjectsV1::DiscoverableProgram::Representation
      
          property :enable_smart_tap, as: 'enableSmartTap'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :homepage_uri, as: 'homepageUri', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :issuer_name, as: 'issuerName'
          property :kind, as: 'kind'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          property :localized_account_id_label, as: 'localizedAccountIdLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_account_name_label, as: 'localizedAccountNameLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_issuer_name, as: 'localizedIssuerName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_program_name, as: 'localizedProgramName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_rewards_tier, as: 'localizedRewardsTier', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_rewards_tier_label, as: 'localizedRewardsTierLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_secondary_rewards_tier, as: 'localizedSecondaryRewardsTier', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_secondary_rewards_tier_label, as: 'localizedSecondaryRewardsTierLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :multiple_devices_and_holders_allowed_status, as: 'multipleDevicesAndHoldersAllowedStatus'
          property :program_logo, as: 'programLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :program_name, as: 'programName'
          collection :redemption_issuers, as: 'redemptionIssuers'
          property :review, as: 'review', class: Google::Apis::WalletobjectsV1::Review, decorator: Google::Apis::WalletobjectsV1::Review::Representation
      
          property :review_status, as: 'reviewStatus'
          property :rewards_tier, as: 'rewardsTier'
          property :rewards_tier_label, as: 'rewardsTierLabel'
          property :secondary_rewards_tier, as: 'secondaryRewardsTier'
          property :secondary_rewards_tier_label, as: 'secondaryRewardsTierLabel'
          property :security_animation, as: 'securityAnimation', class: Google::Apis::WalletobjectsV1::SecurityAnimation, decorator: Google::Apis::WalletobjectsV1::SecurityAnimation::Representation
      
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :version, :numeric_string => true, as: 'version'
          property :view_unlock_requirement, as: 'viewUnlockRequirement'
          property :wide_program_logo, as: 'wideProgramLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :word_mark, as: 'wordMark', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
        end
      end
      
      class LoyaltyClassAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::LoyaltyClass, decorator: Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
      
        end
      end
      
      class LoyaltyClassListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::LoyaltyClass, decorator: Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
      
        end
      end
      
      class LoyaltyObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :account_name, as: 'accountName'
          property :app_link_data, as: 'appLinkData', class: Google::Apis::WalletobjectsV1::AppLinkData, decorator: Google::Apis::WalletobjectsV1::AppLinkData::Representation
      
          property :barcode, as: 'barcode', class: Google::Apis::WalletobjectsV1::Barcode, decorator: Google::Apis::WalletobjectsV1::Barcode::Representation
      
          property :class_id, as: 'classId'
          property :class_reference, as: 'classReference', class: Google::Apis::WalletobjectsV1::LoyaltyClass, decorator: Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
      
          property :disable_expiration_notification, as: 'disableExpirationNotification'
          property :grouping_info, as: 'groupingInfo', class: Google::Apis::WalletobjectsV1::GroupingInfo, decorator: Google::Apis::WalletobjectsV1::GroupingInfo::Representation
      
          property :has_linked_device, as: 'hasLinkedDevice'
          property :has_users, as: 'hasUsers'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :kind, as: 'kind'
          collection :linked_offer_ids, as: 'linkedOfferIds'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          property :loyalty_points, as: 'loyaltyPoints', class: Google::Apis::WalletobjectsV1::LoyaltyPoints, decorator: Google::Apis::WalletobjectsV1::LoyaltyPoints::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :pass_constraints, as: 'passConstraints', class: Google::Apis::WalletobjectsV1::PassConstraints, decorator: Google::Apis::WalletobjectsV1::PassConstraints::Representation
      
          property :rotating_barcode, as: 'rotatingBarcode', class: Google::Apis::WalletobjectsV1::RotatingBarcode, decorator: Google::Apis::WalletobjectsV1::RotatingBarcode::Representation
      
          property :secondary_loyalty_points, as: 'secondaryLoyaltyPoints', class: Google::Apis::WalletobjectsV1::LoyaltyPoints, decorator: Google::Apis::WalletobjectsV1::LoyaltyPoints::Representation
      
          property :smart_tap_redemption_value, as: 'smartTapRedemptionValue'
          property :state, as: 'state'
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :valid_time_interval, as: 'validTimeInterval', class: Google::Apis::WalletobjectsV1::TimeInterval, decorator: Google::Apis::WalletobjectsV1::TimeInterval::Representation
      
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class LoyaltyObjectAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::LoyaltyObject, decorator: Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
      
        end
      end
      
      class LoyaltyObjectListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::LoyaltyObject, decorator: Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
      
        end
      end
      
      class LoyaltyPoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :balance, as: 'balance', class: Google::Apis::WalletobjectsV1::LoyaltyPointsBalance, decorator: Google::Apis::WalletobjectsV1::LoyaltyPointsBalance::Representation
      
          property :label, as: 'label'
          property :localized_label, as: 'localizedLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
        end
      end
      
      class LoyaltyPointsBalance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double, as: 'double'
          property :int, as: 'int'
          property :money, as: 'money', class: Google::Apis::WalletobjectsV1::Money, decorator: Google::Apis::WalletobjectsV1::Money::Representation
      
          property :string, as: 'string'
        end
      end
      
      class Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :bigstore_object_ref, :base64 => true, as: 'bigstoreObjectRef'
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::WalletobjectsV1::Blobstore2Info, decorator: Google::Apis::WalletobjectsV1::Blobstore2Info::Representation
      
          collection :composite_media, as: 'compositeMedia', class: Google::Apis::WalletobjectsV1::CompositeMedia, decorator: Google::Apis::WalletobjectsV1::CompositeMedia::Representation
      
          property :content_type, as: 'contentType'
          property :content_type_info, as: 'contentTypeInfo', class: Google::Apis::WalletobjectsV1::ContentTypeInfo, decorator: Google::Apis::WalletobjectsV1::ContentTypeInfo::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :diff_checksums_response, as: 'diffChecksumsResponse', class: Google::Apis::WalletobjectsV1::DiffChecksumsResponse, decorator: Google::Apis::WalletobjectsV1::DiffChecksumsResponse::Representation
      
          property :diff_download_response, as: 'diffDownloadResponse', class: Google::Apis::WalletobjectsV1::DiffDownloadResponse, decorator: Google::Apis::WalletobjectsV1::DiffDownloadResponse::Representation
      
          property :diff_upload_request, as: 'diffUploadRequest', class: Google::Apis::WalletobjectsV1::DiffUploadRequest, decorator: Google::Apis::WalletobjectsV1::DiffUploadRequest::Representation
      
          property :diff_upload_response, as: 'diffUploadResponse', class: Google::Apis::WalletobjectsV1::DiffUploadResponse, decorator: Google::Apis::WalletobjectsV1::DiffUploadResponse::Representation
      
          property :diff_version_response, as: 'diffVersionResponse', class: Google::Apis::WalletobjectsV1::DiffVersionResponse, decorator: Google::Apis::WalletobjectsV1::DiffVersionResponse::Representation
      
          property :download_parameters, as: 'downloadParameters', class: Google::Apis::WalletobjectsV1::DownloadParameters, decorator: Google::Apis::WalletobjectsV1::DownloadParameters::Representation
      
          property :filename, as: 'filename'
          property :hash_prop, as: 'hash'
          property :hash_verified, as: 'hashVerified'
          property :inline, :base64 => true, as: 'inline'
          property :is_potential_retry, as: 'isPotentialRetry'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :media_id, :base64 => true, as: 'mediaId'
          property :object_id_prop, as: 'objectId', class: Google::Apis::WalletobjectsV1::ObjectIdProp, decorator: Google::Apis::WalletobjectsV1::ObjectIdProp::Representation
      
          property :path, as: 'path'
          property :reference_type, as: 'referenceType'
          property :sha1_hash, :base64 => true, as: 'sha1Hash'
          property :sha256_hash, :base64 => true, as: 'sha256Hash'
          property :timestamp, :numeric_string => true, as: 'timestamp'
          property :token, as: 'token'
        end
      end
      
      class MediaRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_bytes, :numeric_string => true, as: 'currentBytes'
          property :custom_data, as: 'customData'
          property :diff_object_version, as: 'diffObjectVersion'
          property :final_status, as: 'finalStatus'
          property :notification_type, as: 'notificationType'
          property :request_id, as: 'requestId'
          property :request_received_params_serving_info, :base64 => true, as: 'requestReceivedParamsServingInfo'
          property :total_bytes, :numeric_string => true, as: 'totalBytes'
          property :total_bytes_is_estimated, as: 'totalBytesIsEstimated'
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :display_interval, as: 'displayInterval', class: Google::Apis::WalletobjectsV1::TimeInterval, decorator: Google::Apis::WalletobjectsV1::TimeInterval::Representation
      
          property :header, as: 'header'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :localized_body, as: 'localizedBody', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_header, as: 'localizedHeader', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :message_type, as: 'messageType'
        end
      end
      
      class ModifyLinkedOfferObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_linked_offer_object_ids, as: 'addLinkedOfferObjectIds'
          collection :remove_linked_offer_object_ids, as: 'removeLinkedOfferObjectIds'
        end
      end
      
      class ModifyLinkedOfferObjectsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linked_offer_object_ids, as: 'linkedOfferObjectIds', class: Google::Apis::WalletobjectsV1::ModifyLinkedOfferObjects, decorator: Google::Apis::WalletobjectsV1::ModifyLinkedOfferObjects::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :kind, as: 'kind'
          property :micros, :numeric_string => true, as: 'micros'
        end
      end
      
      class Notifications
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiry_notification, as: 'expiryNotification', class: Google::Apis::WalletobjectsV1::ExpiryNotification, decorator: Google::Apis::WalletobjectsV1::ExpiryNotification::Representation
      
          property :upcoming_notification, as: 'upcomingNotification', class: Google::Apis::WalletobjectsV1::UpcomingNotification, decorator: Google::Apis::WalletobjectsV1::UpcomingNotification::Representation
      
        end
      end
      
      class ObjectIdProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :generation, :numeric_string => true, as: 'generation'
          property :object_name, as: 'objectName'
        end
      end
      
      class OfferClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_multiple_users_per_object, as: 'allowMultipleUsersPerObject'
          property :callback_options, as: 'callbackOptions', class: Google::Apis::WalletobjectsV1::CallbackOptions, decorator: Google::Apis::WalletobjectsV1::CallbackOptions::Representation
      
          property :class_template_info, as: 'classTemplateInfo', class: Google::Apis::WalletobjectsV1::ClassTemplateInfo, decorator: Google::Apis::WalletobjectsV1::ClassTemplateInfo::Representation
      
          property :country_code, as: 'countryCode'
          property :details, as: 'details'
          property :enable_smart_tap, as: 'enableSmartTap'
          property :fine_print, as: 'finePrint'
          property :help_uri, as: 'helpUri', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :homepage_uri, as: 'homepageUri', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :issuer_name, as: 'issuerName'
          property :kind, as: 'kind'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          property :localized_details, as: 'localizedDetails', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_fine_print, as: 'localizedFinePrint', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_issuer_name, as: 'localizedIssuerName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_provider, as: 'localizedProvider', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_short_title, as: 'localizedShortTitle', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_title, as: 'localizedTitle', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :multiple_devices_and_holders_allowed_status, as: 'multipleDevicesAndHoldersAllowedStatus'
          property :provider, as: 'provider'
          property :redemption_channel, as: 'redemptionChannel'
          collection :redemption_issuers, as: 'redemptionIssuers'
          property :review, as: 'review', class: Google::Apis::WalletobjectsV1::Review, decorator: Google::Apis::WalletobjectsV1::Review::Representation
      
          property :review_status, as: 'reviewStatus'
          property :security_animation, as: 'securityAnimation', class: Google::Apis::WalletobjectsV1::SecurityAnimation, decorator: Google::Apis::WalletobjectsV1::SecurityAnimation::Representation
      
          property :short_title, as: 'shortTitle'
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :title, as: 'title'
          property :title_image, as: 'titleImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :version, :numeric_string => true, as: 'version'
          property :view_unlock_requirement, as: 'viewUnlockRequirement'
          property :wide_title_image, as: 'wideTitleImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :word_mark, as: 'wordMark', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
        end
      end
      
      class OfferClassAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::OfferClass, decorator: Google::Apis::WalletobjectsV1::OfferClass::Representation
      
        end
      end
      
      class OfferClassListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::OfferClass, decorator: Google::Apis::WalletobjectsV1::OfferClass::Representation
      
        end
      end
      
      class OfferObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_link_data, as: 'appLinkData', class: Google::Apis::WalletobjectsV1::AppLinkData, decorator: Google::Apis::WalletobjectsV1::AppLinkData::Representation
      
          property :barcode, as: 'barcode', class: Google::Apis::WalletobjectsV1::Barcode, decorator: Google::Apis::WalletobjectsV1::Barcode::Representation
      
          property :class_id, as: 'classId'
          property :class_reference, as: 'classReference', class: Google::Apis::WalletobjectsV1::OfferClass, decorator: Google::Apis::WalletobjectsV1::OfferClass::Representation
      
          property :disable_expiration_notification, as: 'disableExpirationNotification'
          property :grouping_info, as: 'groupingInfo', class: Google::Apis::WalletobjectsV1::GroupingInfo, decorator: Google::Apis::WalletobjectsV1::GroupingInfo::Representation
      
          property :has_linked_device, as: 'hasLinkedDevice'
          property :has_users, as: 'hasUsers'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :kind, as: 'kind'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :pass_constraints, as: 'passConstraints', class: Google::Apis::WalletobjectsV1::PassConstraints, decorator: Google::Apis::WalletobjectsV1::PassConstraints::Representation
      
          property :rotating_barcode, as: 'rotatingBarcode', class: Google::Apis::WalletobjectsV1::RotatingBarcode, decorator: Google::Apis::WalletobjectsV1::RotatingBarcode::Representation
      
          property :smart_tap_redemption_value, as: 'smartTapRedemptionValue'
          property :state, as: 'state'
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :valid_time_interval, as: 'validTimeInterval', class: Google::Apis::WalletobjectsV1::TimeInterval, decorator: Google::Apis::WalletobjectsV1::TimeInterval::Representation
      
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class OfferObjectAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::OfferObject, decorator: Google::Apis::WalletobjectsV1::OfferObject::Representation
      
        end
      end
      
      class OfferObjectListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::OfferObject, decorator: Google::Apis::WalletobjectsV1::OfferObject::Representation
      
        end
      end
      
      class Pagination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :results_per_page, as: 'resultsPerPage'
        end
      end
      
      class PassConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nfc_constraint, as: 'nfcConstraint'
          property :screenshot_eligibility, as: 'screenshotEligibility'
        end
      end
      
      class Permission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :role, as: 'role'
        end
      end
      
      class Permissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issuer_id, :numeric_string => true, as: 'issuerId'
          collection :permissions, as: 'permissions', class: Google::Apis::WalletobjectsV1::Permission, decorator: Google::Apis::WalletobjectsV1::Permission::Representation
      
        end
      end
      
      class PrivateText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :header, as: 'header', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
        end
      end
      
      class PrivateUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class PurchaseDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :confirmation_code, as: 'confirmationCode'
          property :purchase_date_time, as: 'purchaseDateTime'
          property :purchase_receipt_number, as: 'purchaseReceiptNumber'
          property :ticket_cost, as: 'ticketCost', class: Google::Apis::WalletobjectsV1::TicketCost, decorator: Google::Apis::WalletobjectsV1::TicketCost::Representation
      
        end
      end
      
      class ReservationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confirmation_code, as: 'confirmationCode'
          property :eticket_number, as: 'eticketNumber'
          property :frequent_flyer_info, as: 'frequentFlyerInfo', class: Google::Apis::WalletobjectsV1::FrequentFlyerInfo, decorator: Google::Apis::WalletobjectsV1::FrequentFlyerInfo::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class Resources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :event_ticket_classes, as: 'eventTicketClasses', class: Google::Apis::WalletobjectsV1::EventTicketClass, decorator: Google::Apis::WalletobjectsV1::EventTicketClass::Representation
      
          collection :event_ticket_objects, as: 'eventTicketObjects', class: Google::Apis::WalletobjectsV1::EventTicketObject, decorator: Google::Apis::WalletobjectsV1::EventTicketObject::Representation
      
          collection :flight_classes, as: 'flightClasses', class: Google::Apis::WalletobjectsV1::FlightClass, decorator: Google::Apis::WalletobjectsV1::FlightClass::Representation
      
          collection :flight_objects, as: 'flightObjects', class: Google::Apis::WalletobjectsV1::FlightObject, decorator: Google::Apis::WalletobjectsV1::FlightObject::Representation
      
          collection :gift_card_classes, as: 'giftCardClasses', class: Google::Apis::WalletobjectsV1::GiftCardClass, decorator: Google::Apis::WalletobjectsV1::GiftCardClass::Representation
      
          collection :gift_card_objects, as: 'giftCardObjects', class: Google::Apis::WalletobjectsV1::GiftCardObject, decorator: Google::Apis::WalletobjectsV1::GiftCardObject::Representation
      
          collection :loyalty_classes, as: 'loyaltyClasses', class: Google::Apis::WalletobjectsV1::LoyaltyClass, decorator: Google::Apis::WalletobjectsV1::LoyaltyClass::Representation
      
          collection :loyalty_objects, as: 'loyaltyObjects', class: Google::Apis::WalletobjectsV1::LoyaltyObject, decorator: Google::Apis::WalletobjectsV1::LoyaltyObject::Representation
      
          collection :offer_classes, as: 'offerClasses', class: Google::Apis::WalletobjectsV1::OfferClass, decorator: Google::Apis::WalletobjectsV1::OfferClass::Representation
      
          collection :offer_objects, as: 'offerObjects', class: Google::Apis::WalletobjectsV1::OfferObject, decorator: Google::Apis::WalletobjectsV1::OfferObject::Representation
      
          collection :transit_classes, as: 'transitClasses', class: Google::Apis::WalletobjectsV1::TransitClass, decorator: Google::Apis::WalletobjectsV1::TransitClass::Representation
      
          collection :transit_objects, as: 'transitObjects', class: Google::Apis::WalletobjectsV1::TransitObject, decorator: Google::Apis::WalletobjectsV1::TransitObject::Representation
      
        end
      end
      
      class Review
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comments, as: 'comments'
        end
      end
      
      class RotatingBarcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternate_text, as: 'alternateText'
          property :initial_rotating_barcode_values, as: 'initialRotatingBarcodeValues', class: Google::Apis::WalletobjectsV1::RotatingBarcodeValues, decorator: Google::Apis::WalletobjectsV1::RotatingBarcodeValues::Representation
      
          property :render_encoding, as: 'renderEncoding'
          property :show_code_text, as: 'showCodeText', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :totp_details, as: 'totpDetails', class: Google::Apis::WalletobjectsV1::RotatingBarcodeTotpDetails, decorator: Google::Apis::WalletobjectsV1::RotatingBarcodeTotpDetails::Representation
      
          property :type, as: 'type'
          property :value_pattern, as: 'valuePattern'
        end
      end
      
      class RotatingBarcodeTotpDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          collection :parameters, as: 'parameters', class: Google::Apis::WalletobjectsV1::RotatingBarcodeTotpDetailsTotpParameters, decorator: Google::Apis::WalletobjectsV1::RotatingBarcodeTotpDetailsTotpParameters::Representation
      
          property :period_millis, :numeric_string => true, as: 'periodMillis'
        end
      end
      
      class RotatingBarcodeTotpDetailsTotpParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value_length, as: 'valueLength'
        end
      end
      
      class RotatingBarcodeValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :period_millis, :numeric_string => true, as: 'periodMillis'
          property :start_date_time, as: 'startDateTime'
          collection :values, as: 'values'
        end
      end
      
      class SecurityAnimation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :animation_type, as: 'animationType'
        end
      end
      
      class SetPassUpdateNoticeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetPassUpdateNoticeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SignUpInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :class_id, as: 'classId'
        end
      end
      
      class SmartTap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :infos, as: 'infos', class: Google::Apis::WalletobjectsV1::IssuerToUserInfo, decorator: Google::Apis::WalletobjectsV1::IssuerToUserInfo::Representation
      
          property :kind, as: 'kind'
          property :merchant_id, :numeric_string => true, as: 'merchantId'
        end
      end
      
      class SmartTapMerchantData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authentication_keys, as: 'authenticationKeys', class: Google::Apis::WalletobjectsV1::AuthenticationKey, decorator: Google::Apis::WalletobjectsV1::AuthenticationKey::Representation
      
          property :smart_tap_merchant_id, :numeric_string => true, as: 'smartTapMerchantId'
        end
      end
      
      class TemplateItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_value, as: 'firstValue', class: Google::Apis::WalletobjectsV1::FieldSelector, decorator: Google::Apis::WalletobjectsV1::FieldSelector::Representation
      
          property :predefined_item, as: 'predefinedItem'
          property :second_value, as: 'secondValue', class: Google::Apis::WalletobjectsV1::FieldSelector, decorator: Google::Apis::WalletobjectsV1::FieldSelector::Representation
      
        end
      end
      
      class TextModuleData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :header, as: 'header'
          property :id, as: 'id'
          property :localized_body, as: 'localizedBody', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :localized_header, as: 'localizedHeader', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
        end
      end
      
      class TicketCost
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discount_message, as: 'discountMessage', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :face_value, as: 'faceValue', class: Google::Apis::WalletobjectsV1::Money, decorator: Google::Apis::WalletobjectsV1::Money::Representation
      
          property :purchase_price, as: 'purchasePrice', class: Google::Apis::WalletobjectsV1::Money, decorator: Google::Apis::WalletobjectsV1::Money::Representation
      
        end
      end
      
      class TicketLeg
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arrival_date_time, as: 'arrivalDateTime'
          property :carriage, as: 'carriage'
          property :departure_date_time, as: 'departureDateTime'
          property :destination_name, as: 'destinationName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :destination_station_code, as: 'destinationStationCode'
          property :fare_name, as: 'fareName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :origin_name, as: 'originName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :origin_station_code, as: 'originStationCode'
          property :platform, as: 'platform'
          property :ticket_seat, as: 'ticketSeat', class: Google::Apis::WalletobjectsV1::TicketSeat, decorator: Google::Apis::WalletobjectsV1::TicketSeat::Representation
      
          collection :ticket_seats, as: 'ticketSeats', class: Google::Apis::WalletobjectsV1::TicketSeat, decorator: Google::Apis::WalletobjectsV1::TicketSeat::Representation
      
          property :transit_operator_name, as: 'transitOperatorName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :transit_terminus_name, as: 'transitTerminusName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :zone, as: 'zone'
        end
      end
      
      class TicketRestrictions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :other_restrictions, as: 'otherRestrictions', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :route_restrictions, as: 'routeRestrictions', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :route_restrictions_details, as: 'routeRestrictionsDetails', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :time_restrictions, as: 'timeRestrictions', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
        end
      end
      
      class TicketSeat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coach, as: 'coach'
          property :custom_fare_class, as: 'customFareClass', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :fare_class, as: 'fareClass'
          property :seat, as: 'seat'
          property :seat_assignment, as: 'seatAssignment', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
        end
      end
      
      class TimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end', class: Google::Apis::WalletobjectsV1::DateTime, decorator: Google::Apis::WalletobjectsV1::DateTime::Representation
      
          property :kind, as: 'kind'
          property :start, as: 'start', class: Google::Apis::WalletobjectsV1::DateTime, decorator: Google::Apis::WalletobjectsV1::DateTime::Representation
      
        end
      end
      
      class TransitClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_options, as: 'activationOptions', class: Google::Apis::WalletobjectsV1::ActivationOptions, decorator: Google::Apis::WalletobjectsV1::ActivationOptions::Representation
      
          property :allow_multiple_users_per_object, as: 'allowMultipleUsersPerObject'
          property :callback_options, as: 'callbackOptions', class: Google::Apis::WalletobjectsV1::CallbackOptions, decorator: Google::Apis::WalletobjectsV1::CallbackOptions::Representation
      
          property :class_template_info, as: 'classTemplateInfo', class: Google::Apis::WalletobjectsV1::ClassTemplateInfo, decorator: Google::Apis::WalletobjectsV1::ClassTemplateInfo::Representation
      
          property :country_code, as: 'countryCode'
          property :custom_carriage_label, as: 'customCarriageLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_coach_label, as: 'customCoachLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_concession_category_label, as: 'customConcessionCategoryLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_confirmation_code_label, as: 'customConfirmationCodeLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_discount_message_label, as: 'customDiscountMessageLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_fare_class_label, as: 'customFareClassLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_fare_name_label, as: 'customFareNameLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_other_restrictions_label, as: 'customOtherRestrictionsLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_platform_label, as: 'customPlatformLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_purchase_face_value_label, as: 'customPurchaseFaceValueLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_purchase_price_label, as: 'customPurchasePriceLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_purchase_receipt_number_label, as: 'customPurchaseReceiptNumberLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_route_restrictions_details_label, as: 'customRouteRestrictionsDetailsLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_route_restrictions_label, as: 'customRouteRestrictionsLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_seat_label, as: 'customSeatLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_ticket_number_label, as: 'customTicketNumberLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_time_restrictions_label, as: 'customTimeRestrictionsLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_transit_terminus_name_label, as: 'customTransitTerminusNameLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_zone_label, as: 'customZoneLabel', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :enable_single_leg_itinerary, as: 'enableSingleLegItinerary'
          property :enable_smart_tap, as: 'enableSmartTap'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :homepage_uri, as: 'homepageUri', class: Google::Apis::WalletobjectsV1::Uri, decorator: Google::Apis::WalletobjectsV1::Uri::Representation
      
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :issuer_name, as: 'issuerName'
          property :language_override, as: 'languageOverride'
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          property :localized_issuer_name, as: 'localizedIssuerName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          property :logo, as: 'logo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :multiple_devices_and_holders_allowed_status, as: 'multipleDevicesAndHoldersAllowedStatus'
          collection :redemption_issuers, as: 'redemptionIssuers'
          property :review, as: 'review', class: Google::Apis::WalletobjectsV1::Review, decorator: Google::Apis::WalletobjectsV1::Review::Representation
      
          property :review_status, as: 'reviewStatus'
          property :security_animation, as: 'securityAnimation', class: Google::Apis::WalletobjectsV1::SecurityAnimation, decorator: Google::Apis::WalletobjectsV1::SecurityAnimation::Representation
      
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :transit_operator_name, as: 'transitOperatorName', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :transit_type, as: 'transitType'
          property :version, :numeric_string => true, as: 'version'
          property :view_unlock_requirement, as: 'viewUnlockRequirement'
          property :watermark, as: 'watermark', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :wide_logo, as: 'wideLogo', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :word_mark, as: 'wordMark', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
        end
      end
      
      class TransitClassAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::TransitClass, decorator: Google::Apis::WalletobjectsV1::TransitClass::Representation
      
        end
      end
      
      class TransitClassListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::TransitClass, decorator: Google::Apis::WalletobjectsV1::TransitClass::Representation
      
        end
      end
      
      class TransitObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_status, as: 'activationStatus', class: Google::Apis::WalletobjectsV1::ActivationStatus, decorator: Google::Apis::WalletobjectsV1::ActivationStatus::Representation
      
          property :app_link_data, as: 'appLinkData', class: Google::Apis::WalletobjectsV1::AppLinkData, decorator: Google::Apis::WalletobjectsV1::AppLinkData::Representation
      
          property :barcode, as: 'barcode', class: Google::Apis::WalletobjectsV1::Barcode, decorator: Google::Apis::WalletobjectsV1::Barcode::Representation
      
          property :class_id, as: 'classId'
          property :class_reference, as: 'classReference', class: Google::Apis::WalletobjectsV1::TransitClass, decorator: Google::Apis::WalletobjectsV1::TransitClass::Representation
      
          property :concession_category, as: 'concessionCategory'
          property :custom_concession_category, as: 'customConcessionCategory', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :custom_ticket_status, as: 'customTicketStatus', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :device_context, as: 'deviceContext', class: Google::Apis::WalletobjectsV1::DeviceContext, decorator: Google::Apis::WalletobjectsV1::DeviceContext::Representation
      
          property :disable_expiration_notification, as: 'disableExpirationNotification'
          property :grouping_info, as: 'groupingInfo', class: Google::Apis::WalletobjectsV1::GroupingInfo, decorator: Google::Apis::WalletobjectsV1::GroupingInfo::Representation
      
          property :has_linked_device, as: 'hasLinkedDevice'
          property :has_users, as: 'hasUsers'
          property :hero_image, as: 'heroImage', class: Google::Apis::WalletobjectsV1::Image, decorator: Google::Apis::WalletobjectsV1::Image::Representation
      
          property :hex_background_color, as: 'hexBackgroundColor'
          property :id, as: 'id'
          collection :image_modules_data, as: 'imageModulesData', class: Google::Apis::WalletobjectsV1::ImageModuleData, decorator: Google::Apis::WalletobjectsV1::ImageModuleData::Representation
      
          property :info_module_data, as: 'infoModuleData', class: Google::Apis::WalletobjectsV1::InfoModuleData, decorator: Google::Apis::WalletobjectsV1::InfoModuleData::Representation
      
          property :links_module_data, as: 'linksModuleData', class: Google::Apis::WalletobjectsV1::LinksModuleData, decorator: Google::Apis::WalletobjectsV1::LinksModuleData::Representation
      
          collection :locations, as: 'locations', class: Google::Apis::WalletobjectsV1::LatLongPoint, decorator: Google::Apis::WalletobjectsV1::LatLongPoint::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::WalletobjectsV1::Message, decorator: Google::Apis::WalletobjectsV1::Message::Representation
      
          property :pass_constraints, as: 'passConstraints', class: Google::Apis::WalletobjectsV1::PassConstraints, decorator: Google::Apis::WalletobjectsV1::PassConstraints::Representation
      
          property :passenger_names, as: 'passengerNames'
          property :passenger_type, as: 'passengerType'
          property :purchase_details, as: 'purchaseDetails', class: Google::Apis::WalletobjectsV1::PurchaseDetails, decorator: Google::Apis::WalletobjectsV1::PurchaseDetails::Representation
      
          property :rotating_barcode, as: 'rotatingBarcode', class: Google::Apis::WalletobjectsV1::RotatingBarcode, decorator: Google::Apis::WalletobjectsV1::RotatingBarcode::Representation
      
          property :smart_tap_redemption_value, as: 'smartTapRedemptionValue'
          property :state, as: 'state'
          collection :text_modules_data, as: 'textModulesData', class: Google::Apis::WalletobjectsV1::TextModuleData, decorator: Google::Apis::WalletobjectsV1::TextModuleData::Representation
      
          property :ticket_leg, as: 'ticketLeg', class: Google::Apis::WalletobjectsV1::TicketLeg, decorator: Google::Apis::WalletobjectsV1::TicketLeg::Representation
      
          collection :ticket_legs, as: 'ticketLegs', class: Google::Apis::WalletobjectsV1::TicketLeg, decorator: Google::Apis::WalletobjectsV1::TicketLeg::Representation
      
          property :ticket_number, as: 'ticketNumber'
          property :ticket_restrictions, as: 'ticketRestrictions', class: Google::Apis::WalletobjectsV1::TicketRestrictions, decorator: Google::Apis::WalletobjectsV1::TicketRestrictions::Representation
      
          property :ticket_status, as: 'ticketStatus'
          property :trip_id, as: 'tripId'
          property :trip_type, as: 'tripType'
          property :valid_time_interval, as: 'validTimeInterval', class: Google::Apis::WalletobjectsV1::TimeInterval, decorator: Google::Apis::WalletobjectsV1::TimeInterval::Representation
      
          property :version, :numeric_string => true, as: 'version'
        end
      end
      
      class TransitObjectAddMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::WalletobjectsV1::TransitObject, decorator: Google::Apis::WalletobjectsV1::TransitObject::Representation
      
        end
      end
      
      class TransitObjectListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pagination, as: 'pagination', class: Google::Apis::WalletobjectsV1::Pagination, decorator: Google::Apis::WalletobjectsV1::Pagination::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::WalletobjectsV1::TransitObject, decorator: Google::Apis::WalletobjectsV1::TransitObject::Representation
      
        end
      end
      
      class TransitObjectUploadRotatingBarcodeValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob, as: 'blob', class: Google::Apis::WalletobjectsV1::Media, decorator: Google::Apis::WalletobjectsV1::Media::Representation
      
          property :media_request_info, as: 'mediaRequestInfo', class: Google::Apis::WalletobjectsV1::MediaRequestInfo, decorator: Google::Apis::WalletobjectsV1::MediaRequestInfo::Representation
      
        end
      end
      
      class TransitObjectUploadRotatingBarcodeValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TranslatedString
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :language, as: 'language'
          property :value, as: 'value'
        end
      end
      
      class UpcomingNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_notification, as: 'enableNotification'
        end
      end
      
      class UploadPrivateDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issuer_id, :numeric_string => true, as: 'issuerId'
          property :text, as: 'text', class: Google::Apis::WalletobjectsV1::PrivateText, decorator: Google::Apis::WalletobjectsV1::PrivateText::Representation
      
          property :uri, as: 'uri', class: Google::Apis::WalletobjectsV1::PrivateUri, decorator: Google::Apis::WalletobjectsV1::PrivateUri::Representation
      
        end
      end
      
      class UploadPrivateDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_content_id, :numeric_string => true, as: 'privateContentId'
        end
      end
      
      class UploadPrivateImageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob, as: 'blob', class: Google::Apis::WalletobjectsV1::Media, decorator: Google::Apis::WalletobjectsV1::Media::Representation
      
          property :media_request_info, as: 'mediaRequestInfo', class: Google::Apis::WalletobjectsV1::MediaRequestInfo, decorator: Google::Apis::WalletobjectsV1::MediaRequestInfo::Representation
      
        end
      end
      
      class UploadPrivateImageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_content_id, :numeric_string => true, as: 'privateContentId'
        end
      end
      
      class Uri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :localized_description, as: 'localizedDescription', class: Google::Apis::WalletobjectsV1::LocalizedString, decorator: Google::Apis::WalletobjectsV1::LocalizedString::Representation
      
          property :uri, as: 'uri'
        end
      end
    end
  end
end
