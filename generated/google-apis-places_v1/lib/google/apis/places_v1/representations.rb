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
    module PlacesV1
      
      class GoogleGeoTypeViewport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1AuthorAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1Circle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1EvChargeOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1FuelOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1FuelOptionsFuelPrice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1Photo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PhotoMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1Place
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceAccessibilityOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceAddressComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHours
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriod
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceParkingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlacePaymentOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlacePlusCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1PlaceSubDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1Review
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchNearbyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchNearbyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextRequestLocationBias
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextRequestLocationRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMapsPlacesV1SearchTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLocalizedText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeMoney
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleGeoTypeViewport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, as: 'high', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
          property :low, as: 'low', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1AuthorAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :photo_uri, as: 'photoUri'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleMapsPlacesV1Circle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :center, as: 'center', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
          property :radius, as: 'radius'
        end
      end
      
      class GoogleMapsPlacesV1EvChargeOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connector_aggregation, as: 'connectorAggregation', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation::Representation
      
          property :connector_count, as: 'connectorCount'
        end
      end
      
      class GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_last_update_time, as: 'availabilityLastUpdateTime'
          property :available_count, as: 'availableCount'
          property :count, as: 'count'
          property :max_charge_rate_kw, as: 'maxChargeRateKw'
          property :out_of_service_count, as: 'outOfServiceCount'
          property :type, as: 'type'
        end
      end
      
      class GoogleMapsPlacesV1FuelOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fuel_prices, as: 'fuelPrices', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptionsFuelPrice, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptionsFuelPrice::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1FuelOptionsFuelPrice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :price, as: 'price', class: Google::Apis::PlacesV1::GoogleTypeMoney, decorator: Google::Apis::PlacesV1::GoogleTypeMoney::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleMapsPlacesV1Photo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :author_attributions, as: 'authorAttributions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution::Representation
      
          property :height_px, as: 'heightPx'
          property :name, as: 'name'
          property :width_px, as: 'widthPx'
        end
      end
      
      class GoogleMapsPlacesV1PhotoMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :photo_uri, as: 'photoUri'
        end
      end
      
      class GoogleMapsPlacesV1Place
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accessibility_options, as: 'accessibilityOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAccessibilityOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAccessibilityOptions::Representation
      
          collection :address_components, as: 'addressComponents', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAddressComponent, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAddressComponent::Representation
      
          property :adr_format_address, as: 'adrFormatAddress'
          property :allows_dogs, as: 'allowsDogs'
          collection :attributions, as: 'attributions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAttribution, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAttribution::Representation
      
          property :business_status, as: 'businessStatus'
          property :curbside_pickup, as: 'curbsidePickup'
          property :current_opening_hours, as: 'currentOpeningHours', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours::Representation
      
          collection :current_secondary_opening_hours, as: 'currentSecondaryOpeningHours', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours::Representation
      
          property :delivery, as: 'delivery'
          property :dine_in, as: 'dineIn'
          property :display_name, as: 'displayName', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :editorial_summary, as: 'editorialSummary', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :ev_charge_options, as: 'evChargeOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptions::Representation
      
          property :formatted_address, as: 'formattedAddress'
          property :fuel_options, as: 'fuelOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptions::Representation
      
          property :good_for_children, as: 'goodForChildren'
          property :good_for_groups, as: 'goodForGroups'
          property :good_for_watching_sports, as: 'goodForWatchingSports'
          property :google_maps_uri, as: 'googleMapsUri'
          property :icon_background_color, as: 'iconBackgroundColor'
          property :icon_mask_base_uri, as: 'iconMaskBaseUri'
          property :id, as: 'id'
          property :international_phone_number, as: 'internationalPhoneNumber'
          property :live_music, as: 'liveMusic'
          property :location, as: 'location', class: Google::Apis::PlacesV1::GoogleTypeLatLng, decorator: Google::Apis::PlacesV1::GoogleTypeLatLng::Representation
      
          property :menu_for_children, as: 'menuForChildren'
          property :name, as: 'name'
          property :national_phone_number, as: 'nationalPhoneNumber'
          property :outdoor_seating, as: 'outdoorSeating'
          property :parking_options, as: 'parkingOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceParkingOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceParkingOptions::Representation
      
          property :payment_options, as: 'paymentOptions', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePaymentOptions, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePaymentOptions::Representation
      
          collection :photos, as: 'photos', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Photo, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Photo::Representation
      
          property :plus_code, as: 'plusCode', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePlusCode, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePlusCode::Representation
      
          property :price_level, as: 'priceLevel'
          property :primary_type, as: 'primaryType'
          property :primary_type_display_name, as: 'primaryTypeDisplayName', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :rating, as: 'rating'
          property :regular_opening_hours, as: 'regularOpeningHours', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours::Representation
      
          collection :regular_secondary_opening_hours, as: 'regularSecondaryOpeningHours', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours::Representation
      
          property :reservable, as: 'reservable'
          property :restroom, as: 'restroom'
          collection :reviews, as: 'reviews', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Review, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Review::Representation
      
          property :serves_beer, as: 'servesBeer'
          property :serves_breakfast, as: 'servesBreakfast'
          property :serves_brunch, as: 'servesBrunch'
          property :serves_cocktails, as: 'servesCocktails'
          property :serves_coffee, as: 'servesCoffee'
          property :serves_dessert, as: 'servesDessert'
          property :serves_dinner, as: 'servesDinner'
          property :serves_lunch, as: 'servesLunch'
          property :serves_vegetarian_food, as: 'servesVegetarianFood'
          property :serves_wine, as: 'servesWine'
          property :short_formatted_address, as: 'shortFormattedAddress'
          collection :sub_destinations, as: 'subDestinations', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceSubDestination, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceSubDestination::Representation
      
          property :takeout, as: 'takeout'
          collection :types, as: 'types'
          property :user_rating_count, as: 'userRatingCount'
          property :utc_offset_minutes, as: 'utcOffsetMinutes'
          property :viewport, as: 'viewport', class: Google::Apis::PlacesV1::GoogleGeoTypeViewport, decorator: Google::Apis::PlacesV1::GoogleGeoTypeViewport::Representation
      
          property :website_uri, as: 'websiteUri'
        end
      end
      
      class GoogleMapsPlacesV1PlaceAccessibilityOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :wheelchair_accessible_entrance, as: 'wheelchairAccessibleEntrance'
          property :wheelchair_accessible_parking, as: 'wheelchairAccessibleParking'
          property :wheelchair_accessible_restroom, as: 'wheelchairAccessibleRestroom'
          property :wheelchair_accessible_seating, as: 'wheelchairAccessibleSeating'
        end
      end
      
      class GoogleMapsPlacesV1PlaceAddressComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :long_text, as: 'longText'
          property :short_text, as: 'shortText'
          collection :types, as: 'types'
        end
      end
      
      class GoogleMapsPlacesV1PlaceAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provider, as: 'provider'
          property :provider_uri, as: 'providerUri'
        end
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHours
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :open_now, as: 'openNow'
          collection :periods, as: 'periods', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriod, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriod::Representation
      
          property :secondary_hours_type, as: 'secondaryHoursType'
          collection :special_days, as: 'specialDays', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay::Representation
      
          collection :weekday_descriptions, as: 'weekdayDescriptions'
        end
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriod
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :close, as: 'close', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint::Representation
      
          property :open, as: 'open', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::PlacesV1::GoogleTypeDate, decorator: Google::Apis::PlacesV1::GoogleTypeDate::Representation
      
          property :day, as: 'day'
          property :hour, as: 'hour'
          property :minute, as: 'minute'
          property :truncated, as: 'truncated'
        end
      end
      
      class GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::PlacesV1::GoogleTypeDate, decorator: Google::Apis::PlacesV1::GoogleTypeDate::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1PlaceParkingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_garage_parking, as: 'freeGarageParking'
          property :free_parking_lot, as: 'freeParkingLot'
          property :free_street_parking, as: 'freeStreetParking'
          property :paid_garage_parking, as: 'paidGarageParking'
          property :paid_parking_lot, as: 'paidParkingLot'
          property :paid_street_parking, as: 'paidStreetParking'
          property :valet_parking, as: 'valetParking'
        end
      end
      
      class GoogleMapsPlacesV1PlacePaymentOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accepts_cash_only, as: 'acceptsCashOnly'
          property :accepts_credit_cards, as: 'acceptsCreditCards'
          property :accepts_debit_cards, as: 'acceptsDebitCards'
          property :accepts_nfc, as: 'acceptsNfc'
        end
      end
      
      class GoogleMapsPlacesV1PlacePlusCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compound_code, as: 'compoundCode'
          property :global_code, as: 'globalCode'
        end
      end
      
      class GoogleMapsPlacesV1PlaceSubDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleMapsPlacesV1Review
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author_attribution, as: 'authorAttribution', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution::Representation
      
          property :name, as: 'name'
          property :original_text, as: 'originalText', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
          property :publish_time, as: 'publishTime'
          property :rating, as: 'rating'
          property :relative_publish_time_description, as: 'relativePublishTimeDescription'
          property :text, as: 'text', class: Google::Apis::PlacesV1::GoogleTypeLocalizedText, decorator: Google::Apis::PlacesV1::GoogleTypeLocalizedText::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchNearbyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_primary_types, as: 'excludedPrimaryTypes'
          collection :excluded_types, as: 'excludedTypes'
          collection :included_primary_types, as: 'includedPrimaryTypes'
          collection :included_types, as: 'includedTypes'
          property :language_code, as: 'languageCode'
          property :location_restriction, as: 'locationRestriction', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction::Representation
      
          property :max_result_count, as: 'maxResultCount'
          property :rank_preference, as: 'rankPreference'
          property :region_code, as: 'regionCode'
        end
      end
      
      class GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :circle, as: 'circle', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchNearbyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :places, as: 'places', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Place, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Place::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :included_type, as: 'includedType'
          property :language_code, as: 'languageCode'
          property :location_bias, as: 'locationBias', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationBias, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationBias::Representation
      
          property :location_restriction, as: 'locationRestriction', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationRestriction, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationRestriction::Representation
      
          property :max_result_count, as: 'maxResultCount'
          property :min_rating, as: 'minRating'
          property :open_now, as: 'openNow'
          collection :price_levels, as: 'priceLevels'
          property :rank_preference, as: 'rankPreference'
          property :region_code, as: 'regionCode'
          property :strict_type_filtering, as: 'strictTypeFiltering'
          property :text_query, as: 'textQuery'
        end
      end
      
      class GoogleMapsPlacesV1SearchTextRequestLocationBias
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :circle, as: 'circle', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle::Representation
      
          property :rectangle, as: 'rectangle', class: Google::Apis::PlacesV1::GoogleGeoTypeViewport, decorator: Google::Apis::PlacesV1::GoogleGeoTypeViewport::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchTextRequestLocationRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rectangle, as: 'rectangle', class: Google::Apis::PlacesV1::GoogleGeoTypeViewport, decorator: Google::Apis::PlacesV1::GoogleGeoTypeViewport::Representation
      
        end
      end
      
      class GoogleMapsPlacesV1SearchTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :places, as: 'places', class: Google::Apis::PlacesV1::GoogleMapsPlacesV1Place, decorator: Google::Apis::PlacesV1::GoogleMapsPlacesV1Place::Representation
      
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeLatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class GoogleTypeLocalizedText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text, as: 'text'
        end
      end
      
      class GoogleTypeMoney
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
    end
  end
end
