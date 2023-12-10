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
      
      # A latitude-longitude viewport, represented as two diagonally opposite `low`
      # and `high` points. A viewport is considered a closed region, i.e. it includes
      # its boundary. The latitude bounds must range between -90 to 90 degrees
      # inclusive, and the longitude bounds must range between -180 to 180 degrees
      # inclusive. Various cases include: - If `low` = `high`, the viewport consists
      # of that single point. - If `low.longitude` > `high.longitude`, the longitude
      # range is inverted (the viewport crosses the 180 degree longitude line). - If `
      # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
      # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
      # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
      # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
      # populated, and the represented box cannot be empty (as specified by the
      # definitions above). An empty viewport will result in an error. For example,
      # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
      # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
      # 70018 ` `
      class GoogleGeoTypeViewport
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `high`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :high
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `low`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :low
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high = args[:high] if args.key?(:high)
          @low = args[:low] if args.key?(:low)
        end
      end
      
      # Information about the author of the UGC data. Used in Photo, and Review.
      class GoogleMapsPlacesV1AuthorAttribution
        include Google::Apis::Core::Hashable
      
        # Name of the author of the Photo or Review.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Profile photo URI of the author of the Photo or Review.
        # Corresponds to the JSON property `photoUri`
        # @return [String]
        attr_accessor :photo_uri
      
        # URI of the author of the Photo or Review.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @photo_uri = args[:photo_uri] if args.key?(:photo_uri)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Circle with a LatLng as center and radius.
      class GoogleMapsPlacesV1Circle
        include Google::Apis::Core::Hashable
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `center`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :center
      
        # Required. Radius measured in meters. The radius must be within [0.0, 50000.0].
        # Corresponds to the JSON property `radius`
        # @return [Float]
        attr_accessor :radius
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @center = args[:center] if args.key?(:center)
          @radius = args[:radius] if args.key?(:radius)
        end
      end
      
      # Information about the EV Charge Station hosted in Place. Terminology follows
      # https://afdc.energy.gov/fuels/electricity_infrastructure.html One port could
      # charge one car at a time. One port has one or more connectors. One station has
      # one or more ports.
      class GoogleMapsPlacesV1EvChargeOptions
        include Google::Apis::Core::Hashable
      
        # A list of EV charging connector aggregations that contain connectors of the
        # same type and same charge rate.
        # Corresponds to the JSON property `connectorAggregation`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation>]
        attr_accessor :connector_aggregation
      
        # Number of connectors at this station. However, because some ports can have
        # multiple connectors but only be able to charge one car at a time (e.g.) the
        # number of connectors may be greater than the total number of cars which can
        # charge simultaneously.
        # Corresponds to the JSON property `connectorCount`
        # @return [Fixnum]
        attr_accessor :connector_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connector_aggregation = args[:connector_aggregation] if args.key?(:connector_aggregation)
          @connector_count = args[:connector_count] if args.key?(:connector_count)
        end
      end
      
      # EV charging information grouped by [type, max_charge_rate_kw]. Shows EV charge
      # aggregation of connectors that have the same type and max charge rate in kw.
      class GoogleMapsPlacesV1EvChargeOptionsConnectorAggregation
        include Google::Apis::Core::Hashable
      
        # The timestamp when the connector availability information in this aggregation
        # was last updated.
        # Corresponds to the JSON property `availabilityLastUpdateTime`
        # @return [String]
        attr_accessor :availability_last_update_time
      
        # Number of connectors in this aggregation that are currently available.
        # Corresponds to the JSON property `availableCount`
        # @return [Fixnum]
        attr_accessor :available_count
      
        # Number of connectors in this aggregation.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The static max charging rate in kw of each connector in the aggregation.
        # Corresponds to the JSON property `maxChargeRateKw`
        # @return [Float]
        attr_accessor :max_charge_rate_kw
      
        # Number of connectors in this aggregation that are currently out of service.
        # Corresponds to the JSON property `outOfServiceCount`
        # @return [Fixnum]
        attr_accessor :out_of_service_count
      
        # The connector type of this aggregation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability_last_update_time = args[:availability_last_update_time] if args.key?(:availability_last_update_time)
          @available_count = args[:available_count] if args.key?(:available_count)
          @count = args[:count] if args.key?(:count)
          @max_charge_rate_kw = args[:max_charge_rate_kw] if args.key?(:max_charge_rate_kw)
          @out_of_service_count = args[:out_of_service_count] if args.key?(:out_of_service_count)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The most recent information about fuel options in a gas station. This
      # information is updated regularly.
      class GoogleMapsPlacesV1FuelOptions
        include Google::Apis::Core::Hashable
      
        # The last known fuel price for each type of fuel this station has. There is one
        # entry per fuel type this station has. Order is not important.
        # Corresponds to the JSON property `fuelPrices`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptionsFuelPrice>]
        attr_accessor :fuel_prices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fuel_prices = args[:fuel_prices] if args.key?(:fuel_prices)
        end
      end
      
      # Fuel price information for a given type.
      class GoogleMapsPlacesV1FuelOptionsFuelPrice
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::PlacesV1::GoogleTypeMoney]
        attr_accessor :price
      
        # The type of fuel.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The time the fuel price was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @price = args[:price] if args.key?(:price)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information about a photo of a place.
      class GoogleMapsPlacesV1Photo
        include Google::Apis::Core::Hashable
      
        # This photo's authors.
        # Corresponds to the JSON property `authorAttributions`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution>]
        attr_accessor :author_attributions
      
        # The maximum available height, in pixels.
        # Corresponds to the JSON property `heightPx`
        # @return [Fixnum]
        attr_accessor :height_px
      
        # Identifier. A reference representing this place photo which may be used to
        # look up this place photo again (also called the API "resource" name: `places/`
        # place_id`/photos/`photo``).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The maximum available width, in pixels.
        # Corresponds to the JSON property `widthPx`
        # @return [Fixnum]
        attr_accessor :width_px
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author_attributions = args[:author_attributions] if args.key?(:author_attributions)
          @height_px = args[:height_px] if args.key?(:height_px)
          @name = args[:name] if args.key?(:name)
          @width_px = args[:width_px] if args.key?(:width_px)
        end
      end
      
      # A photo media from Places API.
      class GoogleMapsPlacesV1PhotoMedia
        include Google::Apis::Core::Hashable
      
        # The resource name of a photo media in the format: `places/`place_id`/photos/`
        # photo_reference`/media`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A short-lived uri that can be used to render the photo.
        # Corresponds to the JSON property `photoUri`
        # @return [String]
        attr_accessor :photo_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @photo_uri = args[:photo_uri] if args.key?(:photo_uri)
        end
      end
      
      # All the information representing a Place.
      class GoogleMapsPlacesV1Place
        include Google::Apis::Core::Hashable
      
        # Information about the accessibility options a place offers.
        # Corresponds to the JSON property `accessibilityOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAccessibilityOptions]
        attr_accessor :accessibility_options
      
        # Repeated components for each locality level. Note the following facts about
        # the address_components[] array: - The array of address components may contain
        # more components than the formatted_address. - The array does not necessarily
        # include all the political entities that contain an address, apart from those
        # included in the formatted_address. To retrieve all the political entities that
        # contain a specific address, you should use reverse geocoding, passing the
        # latitude/longitude of the address as a parameter to the request. - The format
        # of the response is not guaranteed to remain the same between requests. In
        # particular, the number of address_components varies based on the address
        # requested and can change over time for the same address. A component can
        # change position in the array. The type of the component can change. A
        # particular component may be missing in a later response.
        # Corresponds to the JSON property `addressComponents`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAddressComponent>]
        attr_accessor :address_components
      
        # The place's address in adr microformat: http://microformats.org/wiki/adr.
        # Corresponds to the JSON property `adrFormatAddress`
        # @return [String]
        attr_accessor :adr_format_address
      
        # Place allows dogs.
        # Corresponds to the JSON property `allowsDogs`
        # @return [Boolean]
        attr_accessor :allows_dogs
        alias_method :allows_dogs?, :allows_dogs
      
        # A set of data provider that must be shown with this result.
        # Corresponds to the JSON property `attributions`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceAttribution>]
        attr_accessor :attributions
      
        # The business status for the place.
        # Corresponds to the JSON property `businessStatus`
        # @return [String]
        attr_accessor :business_status
      
        # Specifies if the business supports curbside pickup.
        # Corresponds to the JSON property `curbsidePickup`
        # @return [Boolean]
        attr_accessor :curbside_pickup
        alias_method :curbside_pickup?, :curbside_pickup
      
        # Information about business hour of the place.
        # Corresponds to the JSON property `currentOpeningHours`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours]
        attr_accessor :current_opening_hours
      
        # Contains an array of entries for the next seven days including information
        # about secondary hours of a business. Secondary hours are different from a
        # business's main hours. For example, a restaurant can specify drive through
        # hours or delivery hours as its secondary hours. This field populates the type
        # subfield, which draws from a predefined list of opening hours types (such as
        # DRIVE_THROUGH, PICKUP, or TAKEOUT) based on the types of the place. This field
        # includes the special_days subfield of all hours, set for dates that have
        # exceptional hours.
        # Corresponds to the JSON property `currentSecondaryOpeningHours`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours>]
        attr_accessor :current_secondary_opening_hours
      
        # Specifies if the business supports delivery.
        # Corresponds to the JSON property `delivery`
        # @return [Boolean]
        attr_accessor :delivery
        alias_method :delivery?, :delivery
      
        # Specifies if the business supports indoor or outdoor seating options.
        # Corresponds to the JSON property `dineIn`
        # @return [Boolean]
        attr_accessor :dine_in
        alias_method :dine_in?, :dine_in
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `displayName`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :display_name
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `editorialSummary`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :editorial_summary
      
        # Information about the EV Charge Station hosted in Place. Terminology follows
        # https://afdc.energy.gov/fuels/electricity_infrastructure.html One port could
        # charge one car at a time. One port has one or more connectors. One station has
        # one or more ports.
        # Corresponds to the JSON property `evChargeOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1EvChargeOptions]
        attr_accessor :ev_charge_options
      
        # A full, human-readable address for this place.
        # Corresponds to the JSON property `formattedAddress`
        # @return [String]
        attr_accessor :formatted_address
      
        # The most recent information about fuel options in a gas station. This
        # information is updated regularly.
        # Corresponds to the JSON property `fuelOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1FuelOptions]
        attr_accessor :fuel_options
      
        # Place is good for children.
        # Corresponds to the JSON property `goodForChildren`
        # @return [Boolean]
        attr_accessor :good_for_children
        alias_method :good_for_children?, :good_for_children
      
        # Place accommodates groups.
        # Corresponds to the JSON property `goodForGroups`
        # @return [Boolean]
        attr_accessor :good_for_groups
        alias_method :good_for_groups?, :good_for_groups
      
        # Place is suitable for watching sports.
        # Corresponds to the JSON property `goodForWatchingSports`
        # @return [Boolean]
        attr_accessor :good_for_watching_sports
        alias_method :good_for_watching_sports?, :good_for_watching_sports
      
        # A URL providing more information about this place.
        # Corresponds to the JSON property `googleMapsUri`
        # @return [String]
        attr_accessor :google_maps_uri
      
        # Background color for icon_mask in hex format, e.g. #909CE1.
        # Corresponds to the JSON property `iconBackgroundColor`
        # @return [String]
        attr_accessor :icon_background_color
      
        # A truncated URL to an icon mask. User can access different icon type by
        # appending type suffix to the end (eg, ".svg" or ".png").
        # Corresponds to the JSON property `iconMaskBaseUri`
        # @return [String]
        attr_accessor :icon_mask_base_uri
      
        # The unique identifier of a place.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A human-readable phone number for the place, in international format.
        # Corresponds to the JSON property `internationalPhoneNumber`
        # @return [String]
        attr_accessor :international_phone_number
      
        # Place provides live music.
        # Corresponds to the JSON property `liveMusic`
        # @return [Boolean]
        attr_accessor :live_music
        alias_method :live_music?, :live_music
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :location
      
        # Place has a children's menu.
        # Corresponds to the JSON property `menuForChildren`
        # @return [Boolean]
        attr_accessor :menu_for_children
        alias_method :menu_for_children?, :menu_for_children
      
        # An ID representing this place which may be used to look up this place again (a.
        # k.a. the API "resource" name: places/place_id).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A human-readable phone number for the place, in national format.
        # Corresponds to the JSON property `nationalPhoneNumber`
        # @return [String]
        attr_accessor :national_phone_number
      
        # Place provides outdoor seating.
        # Corresponds to the JSON property `outdoorSeating`
        # @return [Boolean]
        attr_accessor :outdoor_seating
        alias_method :outdoor_seating?, :outdoor_seating
      
        # Information about parking options for the place. A parking lot could support
        # more than one option at the same time.
        # Corresponds to the JSON property `parkingOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceParkingOptions]
        attr_accessor :parking_options
      
        # Payment options the place accepts.
        # Corresponds to the JSON property `paymentOptions`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePaymentOptions]
        attr_accessor :payment_options
      
        # Information (including references) about photos of this place.
        # Corresponds to the JSON property `photos`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Photo>]
        attr_accessor :photos
      
        # Plus code (http://plus.codes) is a location reference with two formats: global
        # code defining a 14mx14m (1/8000th of a degree) or smaller rectangle, and
        # compound code, replacing the prefix with a reference location.
        # Corresponds to the JSON property `plusCode`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlacePlusCode]
        attr_accessor :plus_code
      
        # Price level of the place.
        # Corresponds to the JSON property `priceLevel`
        # @return [String]
        attr_accessor :price_level
      
        # The primary type of the given result. This type must one of the Places API
        # supported types. For example, "restaurant", "cafe", "airport", etc. A place
        # can only have a single primary type. For the complete list of possible values,
        # see Table A and Table B at https://developers.google.com/maps/documentation/
        # places/web-service/place-types
        # Corresponds to the JSON property `primaryType`
        # @return [String]
        attr_accessor :primary_type
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `primaryTypeDisplayName`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :primary_type_display_name
      
        # A rating between 1.0 and 5.0, based on user reviews of this place.
        # Corresponds to the JSON property `rating`
        # @return [Float]
        attr_accessor :rating
      
        # Information about business hour of the place.
        # Corresponds to the JSON property `regularOpeningHours`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours]
        attr_accessor :regular_opening_hours
      
        # Contains an array of entries for information about regular secondary hours of
        # a business. Secondary hours are different from a business's main hours. For
        # example, a restaurant can specify drive through hours or delivery hours as its
        # secondary hours. This field populates the type subfield, which draws from a
        # predefined list of opening hours types (such as DRIVE_THROUGH, PICKUP, or
        # TAKEOUT) based on the types of the place.
        # Corresponds to the JSON property `regularSecondaryOpeningHours`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHours>]
        attr_accessor :regular_secondary_opening_hours
      
        # Specifies if the place supports reservations.
        # Corresponds to the JSON property `reservable`
        # @return [Boolean]
        attr_accessor :reservable
        alias_method :reservable?, :reservable
      
        # Place has restroom.
        # Corresponds to the JSON property `restroom`
        # @return [Boolean]
        attr_accessor :restroom
        alias_method :restroom?, :restroom
      
        # List of reviews about this place, sorted by relevance.
        # Corresponds to the JSON property `reviews`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Review>]
        attr_accessor :reviews
      
        # Specifies if the place serves beer.
        # Corresponds to the JSON property `servesBeer`
        # @return [Boolean]
        attr_accessor :serves_beer
        alias_method :serves_beer?, :serves_beer
      
        # Specifies if the place serves breakfast.
        # Corresponds to the JSON property `servesBreakfast`
        # @return [Boolean]
        attr_accessor :serves_breakfast
        alias_method :serves_breakfast?, :serves_breakfast
      
        # Specifies if the place serves brunch.
        # Corresponds to the JSON property `servesBrunch`
        # @return [Boolean]
        attr_accessor :serves_brunch
        alias_method :serves_brunch?, :serves_brunch
      
        # Place serves cocktails.
        # Corresponds to the JSON property `servesCocktails`
        # @return [Boolean]
        attr_accessor :serves_cocktails
        alias_method :serves_cocktails?, :serves_cocktails
      
        # Place serves coffee.
        # Corresponds to the JSON property `servesCoffee`
        # @return [Boolean]
        attr_accessor :serves_coffee
        alias_method :serves_coffee?, :serves_coffee
      
        # Place serves dessert.
        # Corresponds to the JSON property `servesDessert`
        # @return [Boolean]
        attr_accessor :serves_dessert
        alias_method :serves_dessert?, :serves_dessert
      
        # Specifies if the place serves dinner.
        # Corresponds to the JSON property `servesDinner`
        # @return [Boolean]
        attr_accessor :serves_dinner
        alias_method :serves_dinner?, :serves_dinner
      
        # Specifies if the place serves lunch.
        # Corresponds to the JSON property `servesLunch`
        # @return [Boolean]
        attr_accessor :serves_lunch
        alias_method :serves_lunch?, :serves_lunch
      
        # Specifies if the place serves vegetarian food.
        # Corresponds to the JSON property `servesVegetarianFood`
        # @return [Boolean]
        attr_accessor :serves_vegetarian_food
        alias_method :serves_vegetarian_food?, :serves_vegetarian_food
      
        # Specifies if the place serves wine.
        # Corresponds to the JSON property `servesWine`
        # @return [Boolean]
        attr_accessor :serves_wine
        alias_method :serves_wine?, :serves_wine
      
        # A short, human-readable address for this place.
        # Corresponds to the JSON property `shortFormattedAddress`
        # @return [String]
        attr_accessor :short_formatted_address
      
        # A list of sub destinations related to the place.
        # Corresponds to the JSON property `subDestinations`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceSubDestination>]
        attr_accessor :sub_destinations
      
        # Specifies if the business supports takeout.
        # Corresponds to the JSON property `takeout`
        # @return [Boolean]
        attr_accessor :takeout
        alias_method :takeout?, :takeout
      
        # A set of type tags for this result. For example, "political" and "locality".
        # For the complete list of possible values, see Table A and Table B at https://
        # developers.google.com/maps/documentation/places/web-service/place-types
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        # The total number of reviews (with or without text) for this place.
        # Corresponds to the JSON property `userRatingCount`
        # @return [Fixnum]
        attr_accessor :user_rating_count
      
        # Number of minutes this place's timezone is currently offset from UTC. This is
        # expressed in minutes to support timezones that are offset by fractions of an
        # hour, e.g. X hours and 15 minutes.
        # Corresponds to the JSON property `utcOffsetMinutes`
        # @return [Fixnum]
        attr_accessor :utc_offset_minutes
      
        # A latitude-longitude viewport, represented as two diagonally opposite `low`
        # and `high` points. A viewport is considered a closed region, i.e. it includes
        # its boundary. The latitude bounds must range between -90 to 90 degrees
        # inclusive, and the longitude bounds must range between -180 to 180 degrees
        # inclusive. Various cases include: - If `low` = `high`, the viewport consists
        # of that single point. - If `low.longitude` > `high.longitude`, the longitude
        # range is inverted (the viewport crosses the 180 degree longitude line). - If `
        # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
        # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
        # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
        # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
        # populated, and the represented box cannot be empty (as specified by the
        # definitions above). An empty viewport will result in an error. For example,
        # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
        # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
        # 70018 ` `
        # Corresponds to the JSON property `viewport`
        # @return [Google::Apis::PlacesV1::GoogleGeoTypeViewport]
        attr_accessor :viewport
      
        # The authoritative website for this place, e.g. a business' homepage. Note that
        # for places that are part of a chain (e.g. an IKEA store), this will usually be
        # the website for the individual store, not the overall chain.
        # Corresponds to the JSON property `websiteUri`
        # @return [String]
        attr_accessor :website_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility_options = args[:accessibility_options] if args.key?(:accessibility_options)
          @address_components = args[:address_components] if args.key?(:address_components)
          @adr_format_address = args[:adr_format_address] if args.key?(:adr_format_address)
          @allows_dogs = args[:allows_dogs] if args.key?(:allows_dogs)
          @attributions = args[:attributions] if args.key?(:attributions)
          @business_status = args[:business_status] if args.key?(:business_status)
          @curbside_pickup = args[:curbside_pickup] if args.key?(:curbside_pickup)
          @current_opening_hours = args[:current_opening_hours] if args.key?(:current_opening_hours)
          @current_secondary_opening_hours = args[:current_secondary_opening_hours] if args.key?(:current_secondary_opening_hours)
          @delivery = args[:delivery] if args.key?(:delivery)
          @dine_in = args[:dine_in] if args.key?(:dine_in)
          @display_name = args[:display_name] if args.key?(:display_name)
          @editorial_summary = args[:editorial_summary] if args.key?(:editorial_summary)
          @ev_charge_options = args[:ev_charge_options] if args.key?(:ev_charge_options)
          @formatted_address = args[:formatted_address] if args.key?(:formatted_address)
          @fuel_options = args[:fuel_options] if args.key?(:fuel_options)
          @good_for_children = args[:good_for_children] if args.key?(:good_for_children)
          @good_for_groups = args[:good_for_groups] if args.key?(:good_for_groups)
          @good_for_watching_sports = args[:good_for_watching_sports] if args.key?(:good_for_watching_sports)
          @google_maps_uri = args[:google_maps_uri] if args.key?(:google_maps_uri)
          @icon_background_color = args[:icon_background_color] if args.key?(:icon_background_color)
          @icon_mask_base_uri = args[:icon_mask_base_uri] if args.key?(:icon_mask_base_uri)
          @id = args[:id] if args.key?(:id)
          @international_phone_number = args[:international_phone_number] if args.key?(:international_phone_number)
          @live_music = args[:live_music] if args.key?(:live_music)
          @location = args[:location] if args.key?(:location)
          @menu_for_children = args[:menu_for_children] if args.key?(:menu_for_children)
          @name = args[:name] if args.key?(:name)
          @national_phone_number = args[:national_phone_number] if args.key?(:national_phone_number)
          @outdoor_seating = args[:outdoor_seating] if args.key?(:outdoor_seating)
          @parking_options = args[:parking_options] if args.key?(:parking_options)
          @payment_options = args[:payment_options] if args.key?(:payment_options)
          @photos = args[:photos] if args.key?(:photos)
          @plus_code = args[:plus_code] if args.key?(:plus_code)
          @price_level = args[:price_level] if args.key?(:price_level)
          @primary_type = args[:primary_type] if args.key?(:primary_type)
          @primary_type_display_name = args[:primary_type_display_name] if args.key?(:primary_type_display_name)
          @rating = args[:rating] if args.key?(:rating)
          @regular_opening_hours = args[:regular_opening_hours] if args.key?(:regular_opening_hours)
          @regular_secondary_opening_hours = args[:regular_secondary_opening_hours] if args.key?(:regular_secondary_opening_hours)
          @reservable = args[:reservable] if args.key?(:reservable)
          @restroom = args[:restroom] if args.key?(:restroom)
          @reviews = args[:reviews] if args.key?(:reviews)
          @serves_beer = args[:serves_beer] if args.key?(:serves_beer)
          @serves_breakfast = args[:serves_breakfast] if args.key?(:serves_breakfast)
          @serves_brunch = args[:serves_brunch] if args.key?(:serves_brunch)
          @serves_cocktails = args[:serves_cocktails] if args.key?(:serves_cocktails)
          @serves_coffee = args[:serves_coffee] if args.key?(:serves_coffee)
          @serves_dessert = args[:serves_dessert] if args.key?(:serves_dessert)
          @serves_dinner = args[:serves_dinner] if args.key?(:serves_dinner)
          @serves_lunch = args[:serves_lunch] if args.key?(:serves_lunch)
          @serves_vegetarian_food = args[:serves_vegetarian_food] if args.key?(:serves_vegetarian_food)
          @serves_wine = args[:serves_wine] if args.key?(:serves_wine)
          @short_formatted_address = args[:short_formatted_address] if args.key?(:short_formatted_address)
          @sub_destinations = args[:sub_destinations] if args.key?(:sub_destinations)
          @takeout = args[:takeout] if args.key?(:takeout)
          @types = args[:types] if args.key?(:types)
          @user_rating_count = args[:user_rating_count] if args.key?(:user_rating_count)
          @utc_offset_minutes = args[:utc_offset_minutes] if args.key?(:utc_offset_minutes)
          @viewport = args[:viewport] if args.key?(:viewport)
          @website_uri = args[:website_uri] if args.key?(:website_uri)
        end
      end
      
      # Information about the accessibility options a place offers.
      class GoogleMapsPlacesV1PlaceAccessibilityOptions
        include Google::Apis::Core::Hashable
      
        # Places has wheelchair accessible entrance.
        # Corresponds to the JSON property `wheelchairAccessibleEntrance`
        # @return [Boolean]
        attr_accessor :wheelchair_accessible_entrance
        alias_method :wheelchair_accessible_entrance?, :wheelchair_accessible_entrance
      
        # Place offers wheelchair accessible parking.
        # Corresponds to the JSON property `wheelchairAccessibleParking`
        # @return [Boolean]
        attr_accessor :wheelchair_accessible_parking
        alias_method :wheelchair_accessible_parking?, :wheelchair_accessible_parking
      
        # Place has wheelchair accessible restroom.
        # Corresponds to the JSON property `wheelchairAccessibleRestroom`
        # @return [Boolean]
        attr_accessor :wheelchair_accessible_restroom
        alias_method :wheelchair_accessible_restroom?, :wheelchair_accessible_restroom
      
        # Place has wheelchair accessible seating.
        # Corresponds to the JSON property `wheelchairAccessibleSeating`
        # @return [Boolean]
        attr_accessor :wheelchair_accessible_seating
        alias_method :wheelchair_accessible_seating?, :wheelchair_accessible_seating
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wheelchair_accessible_entrance = args[:wheelchair_accessible_entrance] if args.key?(:wheelchair_accessible_entrance)
          @wheelchair_accessible_parking = args[:wheelchair_accessible_parking] if args.key?(:wheelchair_accessible_parking)
          @wheelchair_accessible_restroom = args[:wheelchair_accessible_restroom] if args.key?(:wheelchair_accessible_restroom)
          @wheelchair_accessible_seating = args[:wheelchair_accessible_seating] if args.key?(:wheelchair_accessible_seating)
        end
      end
      
      # The structured components that form the formatted address, if this information
      # is available.
      class GoogleMapsPlacesV1PlaceAddressComponent
        include Google::Apis::Core::Hashable
      
        # The language used to format this components, in CLDR notation.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The full text description or name of the address component. For example, an
        # address component for the country Australia may have a long_name of "Australia"
        # .
        # Corresponds to the JSON property `longText`
        # @return [String]
        attr_accessor :long_text
      
        # An abbreviated textual name for the address component, if available. For
        # example, an address component for the country of Australia may have a
        # short_name of "AU".
        # Corresponds to the JSON property `shortText`
        # @return [String]
        attr_accessor :short_text
      
        # An array indicating the type(s) of the address component.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @long_text = args[:long_text] if args.key?(:long_text)
          @short_text = args[:short_text] if args.key?(:short_text)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Information about data providers of this place.
      class GoogleMapsPlacesV1PlaceAttribution
        include Google::Apis::Core::Hashable
      
        # Name of the Place's data provider.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # URI to the Place's data provider.
        # Corresponds to the JSON property `providerUri`
        # @return [String]
        attr_accessor :provider_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @provider = args[:provider] if args.key?(:provider)
          @provider_uri = args[:provider_uri] if args.key?(:provider_uri)
        end
      end
      
      # Information about business hour of the place.
      class GoogleMapsPlacesV1PlaceOpeningHours
        include Google::Apis::Core::Hashable
      
        # Is this place open right now? Always present unless we lack time-of-day or
        # timezone data for these opening hours.
        # Corresponds to the JSON property `openNow`
        # @return [Boolean]
        attr_accessor :open_now
        alias_method :open_now?, :open_now
      
        # The periods that this place is open during the week. The periods are in
        # chronological order, starting with Sunday in the place-local timezone. An
        # empty (but not absent) value indicates a place that is never open, e.g.
        # because it is closed temporarily for renovations.
        # Corresponds to the JSON property `periods`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriod>]
        attr_accessor :periods
      
        # A type string used to identify the type of secondary hours.
        # Corresponds to the JSON property `secondaryHoursType`
        # @return [String]
        attr_accessor :secondary_hours_type
      
        # Structured information for special days that fall within the period that the
        # returned opening hours cover. Special days are days that could impact the
        # business hours of a place, e.g. Christmas day. Set for current_opening_hours
        # and current_secondary_opening_hours if there are exceptional hours.
        # Corresponds to the JSON property `specialDays`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay>]
        attr_accessor :special_days
      
        # Localized strings describing the opening hours of this place, one string for
        # each day of the week. Will be empty if the hours are unknown or could not be
        # converted to localized text. Example: "Sun: 18:00–06:00"
        # Corresponds to the JSON property `weekdayDescriptions`
        # @return [Array<String>]
        attr_accessor :weekday_descriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @open_now = args[:open_now] if args.key?(:open_now)
          @periods = args[:periods] if args.key?(:periods)
          @secondary_hours_type = args[:secondary_hours_type] if args.key?(:secondary_hours_type)
          @special_days = args[:special_days] if args.key?(:special_days)
          @weekday_descriptions = args[:weekday_descriptions] if args.key?(:weekday_descriptions)
        end
      end
      
      # A period the place remains in open_now status.
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriod
        include Google::Apis::Core::Hashable
      
        # Status changing points.
        # Corresponds to the JSON property `close`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint]
        attr_accessor :close
      
        # Status changing points.
        # Corresponds to the JSON property `open`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint]
        attr_accessor :open
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @close = args[:close] if args.key?(:close)
          @open = args[:open] if args.key?(:open)
        end
      end
      
      # Status changing points.
      class GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::PlacesV1::GoogleTypeDate]
        attr_accessor :date
      
        # A day of the week, as an integer in the range 0-6. 0 is Sunday, 1 is Monday,
        # etc.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # The hour in 2 digits. Ranges from 00 to 23.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # The minute in 2 digits. Ranges from 00 to 59.
        # Corresponds to the JSON property `minute`
        # @return [Fixnum]
        attr_accessor :minute
      
        # Whether or not this endpoint was truncated. Truncation occurs when the real
        # hours are outside the times we are willing to return hours between, so we
        # truncate the hours back to these boundaries. This ensures that at most 24 * 7
        # hours from midnight of the day of the request are returned.
        # Corresponds to the JSON property `truncated`
        # @return [Boolean]
        attr_accessor :truncated
        alias_method :truncated?, :truncated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @day = args[:day] if args.key?(:day)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
          @truncated = args[:truncated] if args.key?(:truncated)
        end
      end
      
      # Structured information for special days that fall within the period that the
      # returned opening hours cover. Special days are days that could impact the
      # business hours of a place, e.g. Christmas day.
      class GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::PlacesV1::GoogleTypeDate]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # Information about parking options for the place. A parking lot could support
      # more than one option at the same time.
      class GoogleMapsPlacesV1PlaceParkingOptions
        include Google::Apis::Core::Hashable
      
        # Place offers free garage parking.
        # Corresponds to the JSON property `freeGarageParking`
        # @return [Boolean]
        attr_accessor :free_garage_parking
        alias_method :free_garage_parking?, :free_garage_parking
      
        # Place offers free parking lots.
        # Corresponds to the JSON property `freeParkingLot`
        # @return [Boolean]
        attr_accessor :free_parking_lot
        alias_method :free_parking_lot?, :free_parking_lot
      
        # Place offers free street parking.
        # Corresponds to the JSON property `freeStreetParking`
        # @return [Boolean]
        attr_accessor :free_street_parking
        alias_method :free_street_parking?, :free_street_parking
      
        # Place offers paid garage parking.
        # Corresponds to the JSON property `paidGarageParking`
        # @return [Boolean]
        attr_accessor :paid_garage_parking
        alias_method :paid_garage_parking?, :paid_garage_parking
      
        # Place offers paid parking lots.
        # Corresponds to the JSON property `paidParkingLot`
        # @return [Boolean]
        attr_accessor :paid_parking_lot
        alias_method :paid_parking_lot?, :paid_parking_lot
      
        # Place offers paid street parking.
        # Corresponds to the JSON property `paidStreetParking`
        # @return [Boolean]
        attr_accessor :paid_street_parking
        alias_method :paid_street_parking?, :paid_street_parking
      
        # Place offers valet parking.
        # Corresponds to the JSON property `valetParking`
        # @return [Boolean]
        attr_accessor :valet_parking
        alias_method :valet_parking?, :valet_parking
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_garage_parking = args[:free_garage_parking] if args.key?(:free_garage_parking)
          @free_parking_lot = args[:free_parking_lot] if args.key?(:free_parking_lot)
          @free_street_parking = args[:free_street_parking] if args.key?(:free_street_parking)
          @paid_garage_parking = args[:paid_garage_parking] if args.key?(:paid_garage_parking)
          @paid_parking_lot = args[:paid_parking_lot] if args.key?(:paid_parking_lot)
          @paid_street_parking = args[:paid_street_parking] if args.key?(:paid_street_parking)
          @valet_parking = args[:valet_parking] if args.key?(:valet_parking)
        end
      end
      
      # Payment options the place accepts.
      class GoogleMapsPlacesV1PlacePaymentOptions
        include Google::Apis::Core::Hashable
      
        # Place accepts cash only as payment. Places with this attribute may still
        # accept other payment methods.
        # Corresponds to the JSON property `acceptsCashOnly`
        # @return [Boolean]
        attr_accessor :accepts_cash_only
        alias_method :accepts_cash_only?, :accepts_cash_only
      
        # Place accepts credit cards as payment.
        # Corresponds to the JSON property `acceptsCreditCards`
        # @return [Boolean]
        attr_accessor :accepts_credit_cards
        alias_method :accepts_credit_cards?, :accepts_credit_cards
      
        # Place accepts debit cards as payment.
        # Corresponds to the JSON property `acceptsDebitCards`
        # @return [Boolean]
        attr_accessor :accepts_debit_cards
        alias_method :accepts_debit_cards?, :accepts_debit_cards
      
        # Place accepts NFC payments.
        # Corresponds to the JSON property `acceptsNfc`
        # @return [Boolean]
        attr_accessor :accepts_nfc
        alias_method :accepts_nfc?, :accepts_nfc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accepts_cash_only = args[:accepts_cash_only] if args.key?(:accepts_cash_only)
          @accepts_credit_cards = args[:accepts_credit_cards] if args.key?(:accepts_credit_cards)
          @accepts_debit_cards = args[:accepts_debit_cards] if args.key?(:accepts_debit_cards)
          @accepts_nfc = args[:accepts_nfc] if args.key?(:accepts_nfc)
        end
      end
      
      # Plus code (http://plus.codes) is a location reference with two formats: global
      # code defining a 14mx14m (1/8000th of a degree) or smaller rectangle, and
      # compound code, replacing the prefix with a reference location.
      class GoogleMapsPlacesV1PlacePlusCode
        include Google::Apis::Core::Hashable
      
        # Place's compound code, such as "33GV+HQ, Ramberg, Norway", containing the
        # suffix of the global code and replacing the prefix with a formatted name of a
        # reference entity.
        # Corresponds to the JSON property `compoundCode`
        # @return [String]
        attr_accessor :compound_code
      
        # Place's global (full) code, such as "9FWM33GV+HQ", representing an 1/8000 by 1/
        # 8000 degree area (~14 by 14 meters).
        # Corresponds to the JSON property `globalCode`
        # @return [String]
        attr_accessor :global_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compound_code = args[:compound_code] if args.key?(:compound_code)
          @global_code = args[:global_code] if args.key?(:global_code)
        end
      end
      
      # Place resource name and id of sub destinations that relate to the place. For
      # example, different terminals are different destinations of an airport.
      class GoogleMapsPlacesV1PlaceSubDestination
        include Google::Apis::Core::Hashable
      
        # The place id of the sub destination.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The resource name of the sub destination.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Information about a review of a place.
      class GoogleMapsPlacesV1Review
        include Google::Apis::Core::Hashable
      
        # Information about the author of the UGC data. Used in Photo, and Review.
        # Corresponds to the JSON property `authorAttribution`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution]
        attr_accessor :author_attribution
      
        # A reference representing this place review which may be used to look up this
        # place review again (also called the API "resource" name: `places/`place_id`/
        # reviews/`review``).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `originalText`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :original_text
      
        # Timestamp for the review.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        # A number between 1.0 and 5.0, also called the number of stars.
        # Corresponds to the JSON property `rating`
        # @return [Float]
        attr_accessor :rating
      
        # A string of formatted recent time, expressing the review time relative to the
        # current time in a form appropriate for the language and country.
        # Corresponds to the JSON property `relativePublishTimeDescription`
        # @return [String]
        attr_accessor :relative_publish_time_description
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author_attribution = args[:author_attribution] if args.key?(:author_attribution)
          @name = args[:name] if args.key?(:name)
          @original_text = args[:original_text] if args.key?(:original_text)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
          @rating = args[:rating] if args.key?(:rating)
          @relative_publish_time_description = args[:relative_publish_time_description] if args.key?(:relative_publish_time_description)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Request proto for Search Nearby.
      class GoogleMapsPlacesV1SearchNearbyRequest
        include Google::Apis::Core::Hashable
      
        # Excluded primary Place type (e.g. "restaurant" or "gas_station") from https://
        # developers.google.com/maps/documentation/places/web-service/place-types. Up to
        # 50 types from [Table A](https://developers.google.com/maps/documentation/
        # places/web-service/place-types#table-a) may be specified. If there are any
        # conflicting primary types, i.e. a type appears in both included_primary_types
        # and excluded_primary_types, an INVALID_ARGUMENT error is returned. If a Place
        # type is specified with multiple type restrictions, only places that satisfy
        # all of the restrictions are returned. For example, if we have `included_types =
        # ["restaurant"], excluded_primary_types = ["restaurant"]`, the returned places
        # provide "restaurant" related services but do not operate primarily as "
        # restaurants".
        # Corresponds to the JSON property `excludedPrimaryTypes`
        # @return [Array<String>]
        attr_accessor :excluded_primary_types
      
        # Excluded Place type (eg, "restaurant" or "gas_station") from https://
        # developers.google.com/maps/documentation/places/web-service/place-types. Up to
        # 50 types from [Table A](https://developers.google.com/maps/documentation/
        # places/web-service/place-types#table-a) may be specified. If the client
        # provides both included_types (e.g. restaurant) and excluded_types (e.g. cafe),
        # then the response should include places that are restaurant but not cafe. The
        # response includes places that match at least one of the included_types and
        # none of the excluded_types. If there are any conflicting types, i.e. a type
        # appears in both included_types and excluded_types, an INVALID_ARGUMENT error
        # is returned. If a Place type is specified with multiple type restrictions,
        # only places that satisfy all of the restrictions are returned. For example, if
        # we have `included_types = ["restaurant"], excluded_primary_types = ["
        # restaurant"]`, the returned places provide "restaurant" related services but
        # do not operate primarily as "restaurants".
        # Corresponds to the JSON property `excludedTypes`
        # @return [Array<String>]
        attr_accessor :excluded_types
      
        # Included primary Place type (e.g. "restaurant" or "gas_station") from https://
        # developers.google.com/maps/documentation/places/web-service/place-types. A
        # place can only have a single primary type from the supported types table
        # associated with it. Up to 50 types from [Table A](https://developers.google.
        # com/maps/documentation/places/web-service/place-types#table-a) may be
        # specified. If there are any conflicting primary types, i.e. a type appears in
        # both included_primary_types and excluded_primary_types, an INVALID_ARGUMENT
        # error is returned. If a Place type is specified with multiple type
        # restrictions, only places that satisfy all of the restrictions are returned.
        # For example, if we have `included_types = ["restaurant"],
        # excluded_primary_types = ["restaurant"]`, the returned places provide "
        # restaurant" related services but do not operate primarily as "restaurants".
        # Corresponds to the JSON property `includedPrimaryTypes`
        # @return [Array<String>]
        attr_accessor :included_primary_types
      
        # Included Place type (eg, "restaurant" or "gas_station") from https://
        # developers.google.com/maps/documentation/places/web-service/place-types. Up to
        # 50 types from [Table A](https://developers.google.com/maps/documentation/
        # places/web-service/place-types#table-a) may be specified. If there are any
        # conflicting types, i.e. a type appears in both included_types and
        # excluded_types, an INVALID_ARGUMENT error is returned. If a Place type is
        # specified with multiple type restrictions, only places that satisfy all of the
        # restrictions are returned. For example, if we have `included_types = ["
        # restaurant"], excluded_primary_types = ["restaurant"]`, the returned places
        # provide "restaurant" related services but do not operate primarily as "
        # restaurants".
        # Corresponds to the JSON property `includedTypes`
        # @return [Array<String>]
        attr_accessor :included_types
      
        # Place details will be displayed with the preferred language if available. If
        # the language code is unspecified or unrecognized, place details of any
        # language may be returned, with a preference for English if such details exist.
        # Current list of supported languages: https://developers.google.com/maps/faq#
        # languagesupport.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The region to search.
        # Corresponds to the JSON property `locationRestriction`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction]
        attr_accessor :location_restriction
      
        # Maximum number of results to return. It must be between 1 and 20 (default),
        # inclusively. If the number is unset, it falls back to the upper limit. If the
        # number is set to negative or exceeds the upper limit, an INVALID_ARGUMENT
        # error is returned.
        # Corresponds to the JSON property `maxResultCount`
        # @return [Fixnum]
        attr_accessor :max_result_count
      
        # How results will be ranked in the response.
        # Corresponds to the JSON property `rankPreference`
        # @return [String]
        attr_accessor :rank_preference
      
        # The Unicode country/region code (CLDR) of the location where the request is
        # coming from. This parameter is used to display the place details, like region-
        # specific place name, if available. The parameter can affect results based on
        # applicable law. For more information, see https://www.unicode.org/cldr/charts/
        # latest/supplemental/territory_language_information.html. Note that 3-digit
        # region codes are not currently supported.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_primary_types = args[:excluded_primary_types] if args.key?(:excluded_primary_types)
          @excluded_types = args[:excluded_types] if args.key?(:excluded_types)
          @included_primary_types = args[:included_primary_types] if args.key?(:included_primary_types)
          @included_types = args[:included_types] if args.key?(:included_types)
          @language_code = args[:language_code] if args.key?(:language_code)
          @location_restriction = args[:location_restriction] if args.key?(:location_restriction)
          @max_result_count = args[:max_result_count] if args.key?(:max_result_count)
          @rank_preference = args[:rank_preference] if args.key?(:rank_preference)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # The region to search.
      class GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction
        include Google::Apis::Core::Hashable
      
        # Circle with a LatLng as center and radius.
        # Corresponds to the JSON property `circle`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle]
        attr_accessor :circle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @circle = args[:circle] if args.key?(:circle)
        end
      end
      
      # Response proto for Search Nearby.
      class GoogleMapsPlacesV1SearchNearbyResponse
        include Google::Apis::Core::Hashable
      
        # A list of places that meets user's requirements like places types, number of
        # places and specific location restriction.
        # Corresponds to the JSON property `places`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Place>]
        attr_accessor :places
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @places = args[:places] if args.key?(:places)
        end
      end
      
      # Request proto for SearchText.
      class GoogleMapsPlacesV1SearchTextRequest
        include Google::Apis::Core::Hashable
      
        # The requested place type. Full list of types supported: https://developers.
        # google.com/maps/documentation/places/web-service/place-types. Only support one
        # included type.
        # Corresponds to the JSON property `includedType`
        # @return [String]
        attr_accessor :included_type
      
        # Place details will be displayed with the preferred language if available. If
        # the language code is unspecified or unrecognized, place details of any
        # language may be returned, with a preference for English if such details exist.
        # Current list of supported languages: https://developers.google.com/maps/faq#
        # languagesupport.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The region to search. This location serves as a bias which means results
        # around given location might be returned.
        # Corresponds to the JSON property `locationBias`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationBias]
        attr_accessor :location_bias
      
        # The region to search. This location serves as a restriction which means
        # results outside given location will not be returned.
        # Corresponds to the JSON property `locationRestriction`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1SearchTextRequestLocationRestriction]
        attr_accessor :location_restriction
      
        # Maximum number of results to return. It must be between 1 and 20, inclusively.
        # The default is 20. If the number is unset, it falls back to the upper limit.
        # If the number is set to negative or exceeds the upper limit, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `maxResultCount`
        # @return [Fixnum]
        attr_accessor :max_result_count
      
        # Filter out results whose average user rating is strictly less than this limit.
        # A valid value must be a float between 0 and 5 (inclusively) at a 0.5 cadence i.
        # e. [0, 0.5, 1.0, ... , 5.0] inclusively. The input rating will round up to the
        # nearest 0.5(ceiling). For instance, a rating of 0.6 will eliminate all results
        # with a less than 1.0 rating.
        # Corresponds to the JSON property `minRating`
        # @return [Float]
        attr_accessor :min_rating
      
        # Used to restrict the search to places that are currently open. The default is
        # false.
        # Corresponds to the JSON property `openNow`
        # @return [Boolean]
        attr_accessor :open_now
        alias_method :open_now?, :open_now
      
        # Used to restrict the search to places that are marked as certain price levels.
        # Users can choose any combinations of price levels. Default to select all price
        # levels.
        # Corresponds to the JSON property `priceLevels`
        # @return [Array<String>]
        attr_accessor :price_levels
      
        # How results will be ranked in the response.
        # Corresponds to the JSON property `rankPreference`
        # @return [String]
        attr_accessor :rank_preference
      
        # The Unicode country/region code (CLDR) of the location where the request is
        # coming from. This parameter is used to display the place details, like region-
        # specific place name, if available. The parameter can affect results based on
        # applicable law. For more information, see https://www.unicode.org/cldr/charts/
        # latest/supplemental/territory_language_information.html. Note that 3-digit
        # region codes are not currently supported.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Used to set strict type filtering for included_type. If set to true, only
        # results of the same type will be returned. Default to false.
        # Corresponds to the JSON property `strictTypeFiltering`
        # @return [Boolean]
        attr_accessor :strict_type_filtering
        alias_method :strict_type_filtering?, :strict_type_filtering
      
        # Required. The text query for textual search.
        # Corresponds to the JSON property `textQuery`
        # @return [String]
        attr_accessor :text_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_type = args[:included_type] if args.key?(:included_type)
          @language_code = args[:language_code] if args.key?(:language_code)
          @location_bias = args[:location_bias] if args.key?(:location_bias)
          @location_restriction = args[:location_restriction] if args.key?(:location_restriction)
          @max_result_count = args[:max_result_count] if args.key?(:max_result_count)
          @min_rating = args[:min_rating] if args.key?(:min_rating)
          @open_now = args[:open_now] if args.key?(:open_now)
          @price_levels = args[:price_levels] if args.key?(:price_levels)
          @rank_preference = args[:rank_preference] if args.key?(:rank_preference)
          @region_code = args[:region_code] if args.key?(:region_code)
          @strict_type_filtering = args[:strict_type_filtering] if args.key?(:strict_type_filtering)
          @text_query = args[:text_query] if args.key?(:text_query)
        end
      end
      
      # The region to search. This location serves as a bias which means results
      # around given location might be returned.
      class GoogleMapsPlacesV1SearchTextRequestLocationBias
        include Google::Apis::Core::Hashable
      
        # Circle with a LatLng as center and radius.
        # Corresponds to the JSON property `circle`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1Circle]
        attr_accessor :circle
      
        # A latitude-longitude viewport, represented as two diagonally opposite `low`
        # and `high` points. A viewport is considered a closed region, i.e. it includes
        # its boundary. The latitude bounds must range between -90 to 90 degrees
        # inclusive, and the longitude bounds must range between -180 to 180 degrees
        # inclusive. Various cases include: - If `low` = `high`, the viewport consists
        # of that single point. - If `low.longitude` > `high.longitude`, the longitude
        # range is inverted (the viewport crosses the 180 degree longitude line). - If `
        # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
        # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
        # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
        # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
        # populated, and the represented box cannot be empty (as specified by the
        # definitions above). An empty viewport will result in an error. For example,
        # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
        # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
        # 70018 ` `
        # Corresponds to the JSON property `rectangle`
        # @return [Google::Apis::PlacesV1::GoogleGeoTypeViewport]
        attr_accessor :rectangle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @circle = args[:circle] if args.key?(:circle)
          @rectangle = args[:rectangle] if args.key?(:rectangle)
        end
      end
      
      # The region to search. This location serves as a restriction which means
      # results outside given location will not be returned.
      class GoogleMapsPlacesV1SearchTextRequestLocationRestriction
        include Google::Apis::Core::Hashable
      
        # A latitude-longitude viewport, represented as two diagonally opposite `low`
        # and `high` points. A viewport is considered a closed region, i.e. it includes
        # its boundary. The latitude bounds must range between -90 to 90 degrees
        # inclusive, and the longitude bounds must range between -180 to 180 degrees
        # inclusive. Various cases include: - If `low` = `high`, the viewport consists
        # of that single point. - If `low.longitude` > `high.longitude`, the longitude
        # range is inverted (the viewport crosses the 180 degree longitude line). - If `
        # low.longitude` = -180 degrees and `high.longitude` = 180 degrees, the viewport
        # includes all longitudes. - If `low.longitude` = 180 degrees and `high.
        # longitude` = -180 degrees, the longitude range is empty. - If `low.latitude` >
        # `high.latitude`, the latitude range is empty. Both `low` and `high` must be
        # populated, and the represented box cannot be empty (as specified by the
        # definitions above). An empty viewport will result in an error. For example,
        # this viewport fully encloses New York City: ` "low": ` "latitude": 40.477398, "
        # longitude": -74.259087 `, "high": ` "latitude": 40.91618, "longitude": -73.
        # 70018 ` `
        # Corresponds to the JSON property `rectangle`
        # @return [Google::Apis::PlacesV1::GoogleGeoTypeViewport]
        attr_accessor :rectangle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rectangle = args[:rectangle] if args.key?(:rectangle)
        end
      end
      
      # Response proto for SearchText.
      class GoogleMapsPlacesV1SearchTextResponse
        include Google::Apis::Core::Hashable
      
        # A list of places that meet the user's text search criteria.
        # Corresponds to the JSON property `places`
        # @return [Array<Google::Apis::PlacesV1::GoogleMapsPlacesV1Place>]
        attr_accessor :places
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @places = args[:places] if args.key?(:places)
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
      class GoogleTypeDate
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
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class GoogleTypeLatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # Localized variant of a text in a particular language.
      class GoogleTypeLocalizedText
        include Google::Apis::Core::Hashable
      
        # The text's BCP-47 language code, such as "en-US" or "sr-Latn". For more
        # information, see http://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Localized string in the language corresponding to language_code below.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents an amount of money with its currency type.
      class GoogleTypeMoney
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
    end
  end
end
