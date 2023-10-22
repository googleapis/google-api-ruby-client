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
      
        # Output only. Name of the author of the Photo or Review.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Profile photo URI of the author of the Photo or Review.
        # Corresponds to the JSON property `photoUri`
        # @return [String]
        attr_accessor :photo_uri
      
        # Output only. URI of the author of the Photo or Review.
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
      
        # A full, human-readable address for this place.
        # Corresponds to the JSON property `formattedAddress`
        # @return [String]
        attr_accessor :formatted_address
      
        # A URL providing more information about this place.
        # Corresponds to the JSON property `googleMapsUri`
        # @return [String]
        attr_accessor :google_maps_uri
      
        # Background color for icon_mask in hex format, e.g. #909CE1.
        # Corresponds to the JSON property `iconBackgroundColor`
        # @return [String]
        attr_accessor :icon_background_color
      
        # A truncated URL to an v2 icon mask. User can access different icon type by
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
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::PlacesV1::GoogleTypeLatLng]
        attr_accessor :location
      
        # An ID representing this place which may be used to look up this place again (a.
        # k.a. the API "resource" name: places/place_id).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A human-readable phone number for the place, in national format.
        # Corresponds to the JSON property `nationalPhoneNumber`
        # @return [String]
        attr_accessor :national_phone_number
      
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
      
        # List of reviews about this place.
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
      
        # Specifies if the business supports takeout.
        # Corresponds to the JSON property `takeout`
        # @return [Boolean]
        attr_accessor :takeout
        alias_method :takeout?, :takeout
      
        # A set of type tags for this result. For example, "political" and "locality".
        # See: https://developers.google.com/maps/documentation/places/web-service/place-
        # types
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
          @attributions = args[:attributions] if args.key?(:attributions)
          @business_status = args[:business_status] if args.key?(:business_status)
          @curbside_pickup = args[:curbside_pickup] if args.key?(:curbside_pickup)
          @current_opening_hours = args[:current_opening_hours] if args.key?(:current_opening_hours)
          @current_secondary_opening_hours = args[:current_secondary_opening_hours] if args.key?(:current_secondary_opening_hours)
          @delivery = args[:delivery] if args.key?(:delivery)
          @dine_in = args[:dine_in] if args.key?(:dine_in)
          @display_name = args[:display_name] if args.key?(:display_name)
          @editorial_summary = args[:editorial_summary] if args.key?(:editorial_summary)
          @formatted_address = args[:formatted_address] if args.key?(:formatted_address)
          @google_maps_uri = args[:google_maps_uri] if args.key?(:google_maps_uri)
          @icon_background_color = args[:icon_background_color] if args.key?(:icon_background_color)
          @icon_mask_base_uri = args[:icon_mask_base_uri] if args.key?(:icon_mask_base_uri)
          @id = args[:id] if args.key?(:id)
          @international_phone_number = args[:international_phone_number] if args.key?(:international_phone_number)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @national_phone_number = args[:national_phone_number] if args.key?(:national_phone_number)
          @plus_code = args[:plus_code] if args.key?(:plus_code)
          @price_level = args[:price_level] if args.key?(:price_level)
          @rating = args[:rating] if args.key?(:rating)
          @regular_opening_hours = args[:regular_opening_hours] if args.key?(:regular_opening_hours)
          @regular_secondary_opening_hours = args[:regular_secondary_opening_hours] if args.key?(:regular_secondary_opening_hours)
          @reservable = args[:reservable] if args.key?(:reservable)
          @reviews = args[:reviews] if args.key?(:reviews)
          @serves_beer = args[:serves_beer] if args.key?(:serves_beer)
          @serves_breakfast = args[:serves_breakfast] if args.key?(:serves_breakfast)
          @serves_brunch = args[:serves_brunch] if args.key?(:serves_brunch)
          @serves_dinner = args[:serves_dinner] if args.key?(:serves_dinner)
          @serves_lunch = args[:serves_lunch] if args.key?(:serves_lunch)
          @serves_vegetarian_food = args[:serves_vegetarian_food] if args.key?(:serves_vegetarian_food)
          @serves_wine = args[:serves_wine] if args.key?(:serves_wine)
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @wheelchair_accessible_entrance = args[:wheelchair_accessible_entrance] if args.key?(:wheelchair_accessible_entrance)
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
      
      # Information about a review of a place.
      class GoogleMapsPlacesV1Review
        include Google::Apis::Core::Hashable
      
        # Information about the author of the UGC data. Used in Photo, and Review.
        # Corresponds to the JSON property `authorAttribution`
        # @return [Google::Apis::PlacesV1::GoogleMapsPlacesV1AuthorAttribution]
        attr_accessor :author_attribution
      
        # Localized variant of a text in a particular language.
        # Corresponds to the JSON property `originalText`
        # @return [Google::Apis::PlacesV1::GoogleTypeLocalizedText]
        attr_accessor :original_text
      
        # Output only. Timestamp for the review.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        # Output only. A number between 1.0 and 5.0, a.k.a. the number of stars.
        # Corresponds to the JSON property `rating`
        # @return [Float]
        attr_accessor :rating
      
        # Output only. A string of formatted recent time, expressing the review time
        # relative to the current time in a form appropriate for the language and
        # country.
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
          @original_text = args[:original_text] if args.key?(:original_text)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
          @rating = args[:rating] if args.key?(:rating)
          @relative_publish_time_description = args[:relative_publish_time_description] if args.key?(:relative_publish_time_description)
          @text = args[:text] if args.key?(:text)
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
        # If the number is unset, it falls back to the upper limit. If the number is set
        # to negative or exceeds the upper limit, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `maxResultCount`
        # @return [Fixnum]
        attr_accessor :max_result_count
      
        # Filter out results whose average user rating is strictly less than this limit.
        # A valid value must be an float between 0 and 5 (inclusively) at a 0.5 cadence
        # i.e. [0, 0.5, 1.0, ... , 5.0] inclusively. This is to keep parity with
        # LocalRefinement_UserRating. The input rating will round up to the nearest 0.5(
        # ceiling). For instance, a rating of 0.6 will eliminate all results with a less
        # than 1.0 rating.
        # Corresponds to the JSON property `minRating`
        # @return [Float]
        attr_accessor :min_rating
      
        # Used to restrict the search to places that are currently open.
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
        # applicable law. For more information, see http://www.unicode.org/reports/tr35/#
        # unicode_region_subtag. Note that 3-digit region codes are not currently
        # supported.
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
    end
  end
end
