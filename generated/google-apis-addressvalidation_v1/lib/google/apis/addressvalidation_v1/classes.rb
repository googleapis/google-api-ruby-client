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
    module AddressvalidationV1
      
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
        # @return [Google::Apis::AddressvalidationV1::GoogleTypeLatLng]
        attr_accessor :high
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `low`
        # @return [Google::Apis::AddressvalidationV1::GoogleTypeLatLng]
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
      
      # Details of the post-processed address. Post-processing includes correcting
      # misspelled parts of the address, replacing incorrect parts, and inferring
      # missing parts.
      class GoogleMapsAddressvalidationV1Address
        include Google::Apis::Core::Hashable
      
        # Unordered list. The individual address components of the formatted and
        # corrected address, along with validation information. This provides
        # information on the validation status of the individual components. Address
        # components are not ordered in a particular way. Do not make any assumptions on
        # the ordering of the address components in the list.
        # Corresponds to the JSON property `addressComponents`
        # @return [Array<Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1AddressComponent>]
        attr_accessor :address_components
      
        # The post-processed address, formatted as a single-line address following the
        # address formatting rules of the region where the address is located.
        # Corresponds to the JSON property `formattedAddress`
        # @return [String]
        attr_accessor :formatted_address
      
        # The types of components that were expected to be present in a correctly
        # formatted mailing address but were not found in the input AND could not be
        # inferred. Components of this type are not present in `formatted_address`, `
        # postal_address`, or `address_components`. An example might be `['street_number'
        # , 'route']` for an input like "Boulder, Colorado, 80301, USA". The list of
        # possible types can be found [here](https://developers.google.com/maps/
        # documentation/geocoding/requests-geocoding#Types).
        # Corresponds to the JSON property `missingComponentTypes`
        # @return [Array<String>]
        attr_accessor :missing_component_types
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an internationalization-ready address widget
        # such as https://github.com/google/libaddressinput) - Users should not be
        # presented with UI elements for input or editing of fields outside countries
        # where that field is used. For more guidance on how to use this schema, please
        # see: https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `postalAddress`
        # @return [Google::Apis::AddressvalidationV1::GoogleTypePostalAddress]
        attr_accessor :postal_address
      
        # The types of the components that are present in the `address_components` but
        # could not be confirmed to be correct. This field is provided for the sake of
        # convenience: its contents are equivalent to iterating through the `
        # address_components` to find the types of all the components where the
        # confirmation_level is not CONFIRMED or the inferred flag is not set to `true`.
        # The list of possible types can be found [here](https://developers.google.com/
        # maps/documentation/geocoding/requests-geocoding#Types).
        # Corresponds to the JSON property `unconfirmedComponentTypes`
        # @return [Array<String>]
        attr_accessor :unconfirmed_component_types
      
        # Any tokens in the input that could not be resolved. This might be an input
        # that was not recognized as a valid part of an address (for example in an input
        # like "123235253253 Main St, San Francisco, CA, 94105", the unresolved tokens
        # may look like `["123235253253"]` since that does not look like a valid street
        # number.
        # Corresponds to the JSON property `unresolvedTokens`
        # @return [Array<String>]
        attr_accessor :unresolved_tokens
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_components = args[:address_components] if args.key?(:address_components)
          @formatted_address = args[:formatted_address] if args.key?(:formatted_address)
          @missing_component_types = args[:missing_component_types] if args.key?(:missing_component_types)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
          @unconfirmed_component_types = args[:unconfirmed_component_types] if args.key?(:unconfirmed_component_types)
          @unresolved_tokens = args[:unresolved_tokens] if args.key?(:unresolved_tokens)
        end
      end
      
      # Represents an address component, such as a street, city, or state.
      class GoogleMapsAddressvalidationV1AddressComponent
        include Google::Apis::Core::Hashable
      
        # A wrapper for the name of the component.
        # Corresponds to the JSON property `componentName`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ComponentName]
        attr_accessor :component_name
      
        # The type of the address component. See [Table 2: Additional types returned by
        # the Places service](https://developers.google.com/places/web-service/
        # supported_types#table2) for a list of possible types.
        # Corresponds to the JSON property `componentType`
        # @return [String]
        attr_accessor :component_type
      
        # Indicates the level of certainty that we have that the component is correct.
        # Corresponds to the JSON property `confirmationLevel`
        # @return [String]
        attr_accessor :confirmation_level
      
        # Indicates that the component was not part of the input, but we inferred it for
        # the address location and believe it should be provided for a complete address.
        # Corresponds to the JSON property `inferred`
        # @return [Boolean]
        attr_accessor :inferred
        alias_method :inferred?, :inferred
      
        # Indicates the name of the component was replaced with a completely different
        # one, for example a wrong postal code being replaced with one that is correct
        # for the address. This is not a cosmetic change, the input component has been
        # changed to a different one.
        # Corresponds to the JSON property `replaced`
        # @return [Boolean]
        attr_accessor :replaced
        alias_method :replaced?, :replaced
      
        # Indicates a correction to a misspelling in the component name. The API does
        # not always flag changes from one spelling variant to another, such as when
        # changing "centre" to "center". It also does not always flag common
        # misspellings, such as when changing "Amphitheater Pkwy" to "Amphitheatre Pkwy".
        # Corresponds to the JSON property `spellCorrected`
        # @return [Boolean]
        attr_accessor :spell_corrected
        alias_method :spell_corrected?, :spell_corrected
      
        # Indicates an address component that is not expected to be present in a postal
        # address for the given region. We have retained it only because it was part of
        # the input.
        # Corresponds to the JSON property `unexpected`
        # @return [Boolean]
        attr_accessor :unexpected
        alias_method :unexpected?, :unexpected
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component_name = args[:component_name] if args.key?(:component_name)
          @component_type = args[:component_type] if args.key?(:component_type)
          @confirmation_level = args[:confirmation_level] if args.key?(:confirmation_level)
          @inferred = args[:inferred] if args.key?(:inferred)
          @replaced = args[:replaced] if args.key?(:replaced)
          @spell_corrected = args[:spell_corrected] if args.key?(:spell_corrected)
          @unexpected = args[:unexpected] if args.key?(:unexpected)
        end
      end
      
      # The metadata for the address. `metadata` is not guaranteed to be fully
      # populated for every address sent to the Address Validation API.
      class GoogleMapsAddressvalidationV1AddressMetadata
        include Google::Apis::Core::Hashable
      
        # Indicates that this is the address of a business. If unset, indicates that the
        # value is unknown.
        # Corresponds to the JSON property `business`
        # @return [Boolean]
        attr_accessor :business
        alias_method :business?, :business
      
        # Indicates that the address of a PO box. If unset, indicates that the value is
        # unknown.
        # Corresponds to the JSON property `poBox`
        # @return [Boolean]
        attr_accessor :po_box
        alias_method :po_box?, :po_box
      
        # Indicates that this is the address of a residence. If unset, indicates that
        # the value is unknown.
        # Corresponds to the JSON property `residential`
        # @return [Boolean]
        attr_accessor :residential
        alias_method :residential?, :residential
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business = args[:business] if args.key?(:business)
          @po_box = args[:po_box] if args.key?(:po_box)
          @residential = args[:residential] if args.key?(:residential)
        end
      end
      
      # A wrapper for the name of the component.
      class GoogleMapsAddressvalidationV1ComponentName
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code. This will not be present if the component name is
        # not associated with a language, such as a street number.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The name text. For example, "5th Avenue" for a street name or "1253" for a
        # street number.
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
      
      # Contains information about the place the input was geocoded to.
      class GoogleMapsAddressvalidationV1Geocode
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
        # Corresponds to the JSON property `bounds`
        # @return [Google::Apis::AddressvalidationV1::GoogleGeoTypeViewport]
        attr_accessor :bounds
      
        # The size of the geocoded place, in meters. This is another measure of the
        # coarseness of the geocoded location, but in physical size rather than in
        # semantic meaning.
        # Corresponds to the JSON property `featureSizeMeters`
        # @return [Float]
        attr_accessor :feature_size_meters
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::AddressvalidationV1::GoogleTypeLatLng]
        attr_accessor :location
      
        # The PlaceID of the place this input geocodes to. For more information about
        # Place IDs see [here](https://developers.google.com/maps/documentation/places/
        # web-service/place-id).
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # The type(s) of place that the input geocoded to. For example, `['locality', '
        # political']`. The full list of types can be found [here](https://developers.
        # google.com/maps/documentation/geocoding/requests-geocoding#Types).
        # Corresponds to the JSON property `placeTypes`
        # @return [Array<String>]
        attr_accessor :place_types
      
        # Plus code (http://plus.codes) is a location reference with two formats: global
        # code defining a 14mx14m (1/8000th of a degree) or smaller rectangle, and
        # compound code, replacing the prefix with a reference location.
        # Corresponds to the JSON property `plusCode`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1PlusCode]
        attr_accessor :plus_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounds = args[:bounds] if args.key?(:bounds)
          @feature_size_meters = args[:feature_size_meters] if args.key?(:feature_size_meters)
          @location = args[:location] if args.key?(:location)
          @place_id = args[:place_id] if args.key?(:place_id)
          @place_types = args[:place_types] if args.key?(:place_types)
          @plus_code = args[:plus_code] if args.key?(:plus_code)
        end
      end
      
      # Preview: This feature is in Preview (pre-GA). Pre-GA products and features
      # might have limited support, and changes to pre-GA products and features might
      # not be compatible with other pre-GA versions. Pre-GA Offerings are covered by
      # the [Google Maps Platform Service Specific Terms](https://cloud.google.com/
      # maps-platform/terms/maps-service-terms). For more information, see the [launch
      # stage descriptions](https://developers.google.com/maps/launch-stages). Enables
      # the Address Validation API to include additional information in the response.
      class GoogleMapsAddressvalidationV1LanguageOptions
        include Google::Apis::Core::Hashable
      
        # Preview: Return a [google.maps.addressvalidation.v1.Address] in English. See [
        # google.maps.addressvalidation.v1.ValidationResult.english_latin_address] for
        # details.
        # Corresponds to the JSON property `returnEnglishLatinAddress`
        # @return [Boolean]
        attr_accessor :return_english_latin_address
        alias_method :return_english_latin_address?, :return_english_latin_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @return_english_latin_address = args[:return_english_latin_address] if args.key?(:return_english_latin_address)
        end
      end
      
      # Plus code (http://plus.codes) is a location reference with two formats: global
      # code defining a 14mx14m (1/8000th of a degree) or smaller rectangle, and
      # compound code, replacing the prefix with a reference location.
      class GoogleMapsAddressvalidationV1PlusCode
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
      
      # The request for sending validation feedback.
      class GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest
        include Google::Apis::Core::Hashable
      
        # Required. The outcome of the sequence of validation attempts. If this field is
        # set to `VALIDATION_CONCLUSION_UNSPECIFIED`, an `INVALID_ARGUMENT` error will
        # be returned.
        # Corresponds to the JSON property `conclusion`
        # @return [String]
        attr_accessor :conclusion
      
        # Required. The ID of the response that this feedback is for. This should be the
        # response_id from the first response in a series of address validation attempts.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conclusion = args[:conclusion] if args.key?(:conclusion)
          @response_id = args[:response_id] if args.key?(:response_id)
        end
      end
      
      # The response for validation feedback. The response is empty if the feedback is
      # sent successfully.
      class GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # USPS representation of a US address.
      class GoogleMapsAddressvalidationV1UspsAddress
        include Google::Apis::Core::Hashable
      
        # City name.
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # City + state + postal code.
        # Corresponds to the JSON property `cityStateZipAddressLine`
        # @return [String]
        attr_accessor :city_state_zip_address_line
      
        # Firm name.
        # Corresponds to the JSON property `firm`
        # @return [String]
        attr_accessor :firm
      
        # First address line.
        # Corresponds to the JSON property `firstAddressLine`
        # @return [String]
        attr_accessor :first_address_line
      
        # Second address line.
        # Corresponds to the JSON property `secondAddressLine`
        # @return [String]
        attr_accessor :second_address_line
      
        # 2 letter state code.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Puerto Rican urbanization name.
        # Corresponds to the JSON property `urbanization`
        # @return [String]
        attr_accessor :urbanization
      
        # Postal code e.g. 10009.
        # Corresponds to the JSON property `zipCode`
        # @return [String]
        attr_accessor :zip_code
      
        # 4-digit postal code extension e.g. 5023.
        # Corresponds to the JSON property `zipCodeExtension`
        # @return [String]
        attr_accessor :zip_code_extension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @city = args[:city] if args.key?(:city)
          @city_state_zip_address_line = args[:city_state_zip_address_line] if args.key?(:city_state_zip_address_line)
          @firm = args[:firm] if args.key?(:firm)
          @first_address_line = args[:first_address_line] if args.key?(:first_address_line)
          @second_address_line = args[:second_address_line] if args.key?(:second_address_line)
          @state = args[:state] if args.key?(:state)
          @urbanization = args[:urbanization] if args.key?(:urbanization)
          @zip_code = args[:zip_code] if args.key?(:zip_code)
          @zip_code_extension = args[:zip_code_extension] if args.key?(:zip_code_extension)
        end
      end
      
      # The USPS data for the address. `uspsData` is not guaranteed to be fully
      # populated for every US or PR address sent to the Address Validation API. It's
      # recommended to integrate the backup address fields in the response if you
      # utilize uspsData as the primary part of the response.
      class GoogleMapsAddressvalidationV1UspsData
        include Google::Apis::Core::Hashable
      
        # Abbreviated city.
        # Corresponds to the JSON property `abbreviatedCity`
        # @return [String]
        attr_accessor :abbreviated_city
      
        # Type of the address record that matches the input address. * `F`: FIRM. This
        # is a match to a Firm Record, which is the finest level of match available for
        # an address. * `G`: GENERAL DELIVERY. This is a match to a General Delivery
        # record. * `H`: BUILDING / APARTMENT. This is a match to a Building or
        # Apartment record. * `P`: POST OFFICE BOX. This is a match to a Post Office Box.
        # * `R`: RURAL ROUTE or HIGHWAY CONTRACT: This is a match to either a Rural
        # Route or a Highway Contract record, both of which may have associated Box
        # Number ranges. * `S`: STREET RECORD: This is a match to a Street record
        # containing a valid primary number range.
        # Corresponds to the JSON property `addressRecordType`
        # @return [String]
        attr_accessor :address_record_type
      
        # The carrier route code. A four character code consisting of a one letter
        # prefix and a three digit route designator. Prefixes: * `C`: Carrier route (or
        # city route) * `R`: Rural route * `H`: Highway Contract Route * `B`: Post
        # Office Box Section * `G`: General delivery unit
        # Corresponds to the JSON property `carrierRoute`
        # @return [String]
        attr_accessor :carrier_route
      
        # Carrier route rate sort indicator.
        # Corresponds to the JSON property `carrierRouteIndicator`
        # @return [String]
        attr_accessor :carrier_route_indicator
      
        # Indicator that the request has been CASS processed.
        # Corresponds to the JSON property `cassProcessed`
        # @return [Boolean]
        attr_accessor :cass_processed
        alias_method :cass_processed?, :cass_processed
      
        # County name.
        # Corresponds to the JSON property `county`
        # @return [String]
        attr_accessor :county
      
        # Indicator that a default address was found, but more specific addresses exists.
        # Corresponds to the JSON property `defaultAddress`
        # @return [Boolean]
        attr_accessor :default_address
        alias_method :default_address?, :default_address
      
        # The delivery point check digit. This number is added to the end of the
        # delivery_point_barcode for mechanically scanned mail. Adding all the digits of
        # the delivery_point_barcode, delivery_point_check_digit, postal code, and ZIP+4
        # together should yield a number divisible by 10.
        # Corresponds to the JSON property `deliveryPointCheckDigit`
        # @return [String]
        attr_accessor :delivery_point_check_digit
      
        # 2 digit delivery point code
        # Corresponds to the JSON property `deliveryPointCode`
        # @return [String]
        attr_accessor :delivery_point_code
      
        # Indicates if the address is a CMRA (Commercial Mail Receiving Agency)--a
        # private business receiving mail for clients. Returns a single character. * `Y`:
        # The address is a CMRA * `N`: The address is not a CMRA
        # Corresponds to the JSON property `dpvCmra`
        # @return [String]
        attr_accessor :dpv_cmra
      
        # The possible values for DPV confirmation. Returns a single character or
        # returns no value. * `N`: Primary and any secondary number information failed
        # to DPV confirm. * `D`: Address was DPV confirmed for the primary number only,
        # and the secondary number information was missing. * `S`: Address was DPV
        # confirmed for the primary number only, and the secondary number information
        # was present but not confirmed. * `Y`: Address was DPV confirmed for primary
        # and any secondary numbers. * Empty: If the response does not contain a `
        # dpv_confirmation` value, the address was not submitted for DPV confirmation.
        # Corresponds to the JSON property `dpvConfirmation`
        # @return [String]
        attr_accessor :dpv_confirmation
      
        # Flag indicates addresses where USPS cannot knock on a door to deliver mail.
        # Returns a single character. * `Y`: The door is not accessible. * `N`: No
        # indication the door is not accessible.
        # Corresponds to the JSON property `dpvDoorNotAccessible`
        # @return [String]
        attr_accessor :dpv_door_not_accessible
      
        # Flag indicates mail is delivered to a single receptable at a site. Returns a
        # single character. * `Y`: The mail is delivered to a single receptable at a
        # site. * `N`: The mail is not delivered to a single receptable at a site.
        # Corresponds to the JSON property `dpvDrop`
        # @return [String]
        attr_accessor :dpv_drop
      
        # Indicates that more than one DPV return code is valid for the address. Returns
        # a single character. * `Y`: Address was DPV confirmed for primary and any
        # secondary numbers. * `N`: Primary and any secondary number information failed
        # to DPV confirm. * `S`: Address was DPV confirmed for the primary number only,
        # and the secondary number information was present by not confirmed, or a single
        # trailing alpha on a primary number was dropped to make a DPV match and
        # secondary information required. * `D`: Address was DPV confirmed for the
        # primary number only, and the secondary number information was missing. * `R`:
        # Address confirmed but assigned to phantom route R777 and R779 and USPS
        # delivery is not provided.
        # Corresponds to the JSON property `dpvEnhancedDeliveryCode`
        # @return [String]
        attr_accessor :dpv_enhanced_delivery_code
      
        # The footnotes from delivery point validation. Multiple footnotes may be strung
        # together in the same string. * `AA`: Input address matched to the ZIP+4 file *
        # `A1`: Input address was not matched to the ZIP+4 file * `BB`: Matched to DPV (
        # all components) * `CC`: Secondary number not matched and not required * `C1`:
        # Secondary number not matched but required * `N1`: High-rise address missing
        # secondary number * `M1`: Primary number missing * `M3`: Primary number invalid
        # * `P1`: Input address PO, RR or HC box number missing * `P3`: Input address PO,
        # RR, or HC Box number invalid * `F1`: Input address matched to a military
        # address * `G1`: Input address matched to a general delivery address * `U1`:
        # Input address matched to a unique ZIP code * `PB`: Input address matched to
        # PBSA record * `RR`: DPV confirmed address with PMB information * `R1`: DPV
        # confirmed address without PMB information * `R7`: Carrier Route R777 or R779
        # record * `IA`: Informed Address identified * `TA`: Primary number matched by
        # dropping a trailing alpha
        # Corresponds to the JSON property `dpvFootnote`
        # @return [String]
        attr_accessor :dpv_footnote
      
        # Flag indicates door is accessible, but package will not be left due to
        # security concerns. Returns a single character. * `Y`: The package will not be
        # left due to security concerns. * `N`: No indication the package will not be
        # left due to security concerns.
        # Corresponds to the JSON property `dpvNoSecureLocation`
        # @return [String]
        attr_accessor :dpv_no_secure_location
      
        # Is this a no stat address or an active address? No stat addresses are ones
        # which are not continuously occupied or addresses that the USPS does not
        # service. Returns a single character. * `Y`: The address is not active * `N`:
        # The address is active
        # Corresponds to the JSON property `dpvNoStat`
        # @return [String]
        attr_accessor :dpv_no_stat
      
        # Indicates the NoStat type. Returns a reason code as int. * `1`: IDA (Internal
        # Drop Address) – Addresses that do not receive mail directly from the USPS but
        # are delivered to a drop address that services them. * `2`: CDS - Addresses
        # that have not yet become deliverable. For example, a new subdivision where
        # lots and primary numbers have been determined, but no structure exists yet for
        # occupancy. * `3`: Collision - Addresses that do not actually DPV confirm. * `4`
        # : CMZ (College, Military and Other Types) - ZIP + 4 records USPS has
        # incorporated into the data. * `5`: Regular - Indicates addresses not receiving
        # delivery and the addresses are not counted as possible deliveries. * `6`:
        # Secondary Required - The address requires secondary information.
        # Corresponds to the JSON property `dpvNoStatReasonCode`
        # @return [Fixnum]
        attr_accessor :dpv_no_stat_reason_code
      
        # Flag indicates mail delivery is not performed every day of the week. Returns a
        # single character. * `Y`: The mail delivery is not performed every day of the
        # week. * `N`: No indication the mail delivery is not performed every day of the
        # week.
        # Corresponds to the JSON property `dpvNonDeliveryDays`
        # @return [String]
        attr_accessor :dpv_non_delivery_days
      
        # Integer identifying non-delivery days. It can be interrogated using bit flags:
        # 0x40 – Sunday is a non-delivery day 0x20 – Monday is a non-delivery day 0x10 –
        # Tuesday is a non-delivery day 0x08 – Wednesday is a non-delivery day 0x04 –
        # Thursday is a non-delivery day 0x02 – Friday is a non-delivery day 0x01 –
        # Saturday is a non-delivery day
        # Corresponds to the JSON property `dpvNonDeliveryDaysValues`
        # @return [Fixnum]
        attr_accessor :dpv_non_delivery_days_values
      
        # Indicates the address was matched to PBSA record. Returns a single character. *
        # `Y`: The address was matched to PBSA record. * `N`: The address was not
        # matched to PBSA record.
        # Corresponds to the JSON property `dpvPbsa`
        # @return [String]
        attr_accessor :dpv_pbsa
      
        # Indicates that mail is not delivered to the street address. Returns a single
        # character. * `Y`: The mail is not delivered to the street address. * `N`: The
        # mail is delivered to the street address.
        # Corresponds to the JSON property `dpvThrowback`
        # @return [String]
        attr_accessor :dpv_throwback
      
        # Is this place vacant? Returns a single character. * `Y`: The address is vacant
        # * `N`: The address is not vacant
        # Corresponds to the JSON property `dpvVacant`
        # @return [String]
        attr_accessor :dpv_vacant
      
        # eLOT Ascending/Descending Flag (A/D).
        # Corresponds to the JSON property `elotFlag`
        # @return [String]
        attr_accessor :elot_flag
      
        # Enhanced Line of Travel (eLOT) number.
        # Corresponds to the JSON property `elotNumber`
        # @return [String]
        attr_accessor :elot_number
      
        # Error message for USPS data retrieval. This is populated when USPS processing
        # is suspended because of the detection of artificially created addresses. The
        # USPS data fields might not be populated when this error is present.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The delivery address is matchable, but the EWS file indicates that an exact
        # match will be available soon.
        # Corresponds to the JSON property `ewsNoMatch`
        # @return [Boolean]
        attr_accessor :ews_no_match
        alias_method :ews_no_match?, :ews_no_match
      
        # FIPS county code.
        # Corresponds to the JSON property `fipsCountyCode`
        # @return [String]
        attr_accessor :fips_county_code
      
        # LACSLink indicator.
        # Corresponds to the JSON property `lacsLinkIndicator`
        # @return [String]
        attr_accessor :lacs_link_indicator
      
        # LACSLink return code.
        # Corresponds to the JSON property `lacsLinkReturnCode`
        # @return [String]
        attr_accessor :lacs_link_return_code
      
        # PMB (Private Mail Box) unit designator.
        # Corresponds to the JSON property `pmbDesignator`
        # @return [String]
        attr_accessor :pmb_designator
      
        # PMB (Private Mail Box) number;
        # Corresponds to the JSON property `pmbNumber`
        # @return [String]
        attr_accessor :pmb_number
      
        # PO Box only postal code.
        # Corresponds to the JSON property `poBoxOnlyPostalCode`
        # @return [Boolean]
        attr_accessor :po_box_only_postal_code
        alias_method :po_box_only_postal_code?, :po_box_only_postal_code
      
        # Main post office city.
        # Corresponds to the JSON property `postOfficeCity`
        # @return [String]
        attr_accessor :post_office_city
      
        # Main post office state.
        # Corresponds to the JSON property `postOfficeState`
        # @return [String]
        attr_accessor :post_office_state
      
        # USPS representation of a US address.
        # Corresponds to the JSON property `standardizedAddress`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1UspsAddress]
        attr_accessor :standardized_address
      
        # Footnotes from matching a street or highrise record to suite information. If
        # business name match is found, the secondary number is returned. * `A`:
        # SuiteLink record match, business address improved. * `00`: No match, business
        # address is not improved.
        # Corresponds to the JSON property `suitelinkFootnote`
        # @return [String]
        attr_accessor :suitelink_footnote
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abbreviated_city = args[:abbreviated_city] if args.key?(:abbreviated_city)
          @address_record_type = args[:address_record_type] if args.key?(:address_record_type)
          @carrier_route = args[:carrier_route] if args.key?(:carrier_route)
          @carrier_route_indicator = args[:carrier_route_indicator] if args.key?(:carrier_route_indicator)
          @cass_processed = args[:cass_processed] if args.key?(:cass_processed)
          @county = args[:county] if args.key?(:county)
          @default_address = args[:default_address] if args.key?(:default_address)
          @delivery_point_check_digit = args[:delivery_point_check_digit] if args.key?(:delivery_point_check_digit)
          @delivery_point_code = args[:delivery_point_code] if args.key?(:delivery_point_code)
          @dpv_cmra = args[:dpv_cmra] if args.key?(:dpv_cmra)
          @dpv_confirmation = args[:dpv_confirmation] if args.key?(:dpv_confirmation)
          @dpv_door_not_accessible = args[:dpv_door_not_accessible] if args.key?(:dpv_door_not_accessible)
          @dpv_drop = args[:dpv_drop] if args.key?(:dpv_drop)
          @dpv_enhanced_delivery_code = args[:dpv_enhanced_delivery_code] if args.key?(:dpv_enhanced_delivery_code)
          @dpv_footnote = args[:dpv_footnote] if args.key?(:dpv_footnote)
          @dpv_no_secure_location = args[:dpv_no_secure_location] if args.key?(:dpv_no_secure_location)
          @dpv_no_stat = args[:dpv_no_stat] if args.key?(:dpv_no_stat)
          @dpv_no_stat_reason_code = args[:dpv_no_stat_reason_code] if args.key?(:dpv_no_stat_reason_code)
          @dpv_non_delivery_days = args[:dpv_non_delivery_days] if args.key?(:dpv_non_delivery_days)
          @dpv_non_delivery_days_values = args[:dpv_non_delivery_days_values] if args.key?(:dpv_non_delivery_days_values)
          @dpv_pbsa = args[:dpv_pbsa] if args.key?(:dpv_pbsa)
          @dpv_throwback = args[:dpv_throwback] if args.key?(:dpv_throwback)
          @dpv_vacant = args[:dpv_vacant] if args.key?(:dpv_vacant)
          @elot_flag = args[:elot_flag] if args.key?(:elot_flag)
          @elot_number = args[:elot_number] if args.key?(:elot_number)
          @error_message = args[:error_message] if args.key?(:error_message)
          @ews_no_match = args[:ews_no_match] if args.key?(:ews_no_match)
          @fips_county_code = args[:fips_county_code] if args.key?(:fips_county_code)
          @lacs_link_indicator = args[:lacs_link_indicator] if args.key?(:lacs_link_indicator)
          @lacs_link_return_code = args[:lacs_link_return_code] if args.key?(:lacs_link_return_code)
          @pmb_designator = args[:pmb_designator] if args.key?(:pmb_designator)
          @pmb_number = args[:pmb_number] if args.key?(:pmb_number)
          @po_box_only_postal_code = args[:po_box_only_postal_code] if args.key?(:po_box_only_postal_code)
          @post_office_city = args[:post_office_city] if args.key?(:post_office_city)
          @post_office_state = args[:post_office_state] if args.key?(:post_office_state)
          @standardized_address = args[:standardized_address] if args.key?(:standardized_address)
          @suitelink_footnote = args[:suitelink_footnote] if args.key?(:suitelink_footnote)
        end
      end
      
      # The request for validating an address.
      class GoogleMapsAddressvalidationV1ValidateAddressRequest
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an internationalization-ready address widget
        # such as https://github.com/google/libaddressinput) - Users should not be
        # presented with UI elements for input or editing of fields outside countries
        # where that field is used. For more guidance on how to use this schema, please
        # see: https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::AddressvalidationV1::GoogleTypePostalAddress]
        attr_accessor :address
      
        # Enables USPS CASS compatible mode. This affects _only_ the [google.maps.
        # addressvalidation.v1.ValidationResult.usps_data] field of [google.maps.
        # addressvalidation.v1.ValidationResult]. Note: for USPS CASS enabled requests
        # for addresses in Puerto Rico, a [google.type.PostalAddress.region_code] of the
        # `address` must be provided as "PR", or an [google.type.PostalAddress.
        # administrative_area] of the `address` must be provided as "Puerto Rico" (case-
        # insensitive) or "PR". It's recommended to use a componentized `address`, or
        # alternatively specify at least two [google.type.PostalAddress.address_lines]
        # where the first line contains the street number and name and the second line
        # contains the city, state, and zip code.
        # Corresponds to the JSON property `enableUspsCass`
        # @return [Boolean]
        attr_accessor :enable_usps_cass
        alias_method :enable_usps_cass?, :enable_usps_cass
      
        # Preview: This feature is in Preview (pre-GA). Pre-GA products and features
        # might have limited support, and changes to pre-GA products and features might
        # not be compatible with other pre-GA versions. Pre-GA Offerings are covered by
        # the [Google Maps Platform Service Specific Terms](https://cloud.google.com/
        # maps-platform/terms/maps-service-terms). For more information, see the [launch
        # stage descriptions](https://developers.google.com/maps/launch-stages). Enables
        # the Address Validation API to include additional information in the response.
        # Corresponds to the JSON property `languageOptions`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1LanguageOptions]
        attr_accessor :language_options
      
        # This field must be empty for the first address validation request. If more
        # requests are necessary to fully validate a single address (for example if the
        # changes the user makes after the initial validation need to be re-validated),
        # then each followup request must populate this field with the response_id from
        # the very first response in the validation sequence.
        # Corresponds to the JSON property `previousResponseId`
        # @return [String]
        attr_accessor :previous_response_id
      
        # Optional. A string which identifies an Autocomplete session for billing
        # purposes. Must be a URL and filename safe base64 string with at most 36 ASCII
        # characters in length. Otherwise an INVALID_ARGUMENT error is returned. The
        # session begins when the user makes an Autocomplete query, and concludes when
        # they select a place and a call to Place Details or Address Validation is made.
        # Each session can have multiple Autocomplete queries, followed by one Place
        # Details or Address Validation request. The credentials used for each request
        # within a session must belong to the same Google Cloud Console project. Once a
        # session has concluded, the token is no longer valid; your app must generate a
        # fresh token for each session. If the `sessionToken` parameter is omitted, or
        # if you reuse a session token, the session is charged as if no session token
        # was provided (each request is billed separately). Note: Address Validation can
        # only be used in sessions with the Autocomplete (New) API, not the Autocomplete
        # API. See https://developers.google.com/maps/documentation/places/web-service/
        # session-pricing for more details.
        # Corresponds to the JSON property `sessionToken`
        # @return [String]
        attr_accessor :session_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @enable_usps_cass = args[:enable_usps_cass] if args.key?(:enable_usps_cass)
          @language_options = args[:language_options] if args.key?(:language_options)
          @previous_response_id = args[:previous_response_id] if args.key?(:previous_response_id)
          @session_token = args[:session_token] if args.key?(:session_token)
        end
      end
      
      # The response to an address validation request.
      class GoogleMapsAddressvalidationV1ValidateAddressResponse
        include Google::Apis::Core::Hashable
      
        # The UUID that identifies this response. If the address needs to be re-
        # validated, this UUID *must* accompany the new request.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # The result of validating an address.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1ValidationResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_id = args[:response_id] if args.key?(:response_id)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # The result of validating an address.
      class GoogleMapsAddressvalidationV1ValidationResult
        include Google::Apis::Core::Hashable
      
        # Details of the post-processed address. Post-processing includes correcting
        # misspelled parts of the address, replacing incorrect parts, and inferring
        # missing parts.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Address]
        attr_accessor :address
      
        # Details of the post-processed address. Post-processing includes correcting
        # misspelled parts of the address, replacing incorrect parts, and inferring
        # missing parts.
        # Corresponds to the JSON property `englishLatinAddress`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Address]
        attr_accessor :english_latin_address
      
        # Contains information about the place the input was geocoded to.
        # Corresponds to the JSON property `geocode`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Geocode]
        attr_accessor :geocode
      
        # The metadata for the address. `metadata` is not guaranteed to be fully
        # populated for every address sent to the Address Validation API.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1AddressMetadata]
        attr_accessor :metadata
      
        # The USPS data for the address. `uspsData` is not guaranteed to be fully
        # populated for every US or PR address sent to the Address Validation API. It's
        # recommended to integrate the backup address fields in the response if you
        # utilize uspsData as the primary part of the response.
        # Corresponds to the JSON property `uspsData`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1UspsData]
        attr_accessor :usps_data
      
        # High level overview of the address validation result and geocode.
        # Corresponds to the JSON property `verdict`
        # @return [Google::Apis::AddressvalidationV1::GoogleMapsAddressvalidationV1Verdict]
        attr_accessor :verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @english_latin_address = args[:english_latin_address] if args.key?(:english_latin_address)
          @geocode = args[:geocode] if args.key?(:geocode)
          @metadata = args[:metadata] if args.key?(:metadata)
          @usps_data = args[:usps_data] if args.key?(:usps_data)
          @verdict = args[:verdict] if args.key?(:verdict)
        end
      end
      
      # High level overview of the address validation result and geocode.
      class GoogleMapsAddressvalidationV1Verdict
        include Google::Apis::Core::Hashable
      
        # The address is considered complete if there are no unresolved tokens, no
        # unexpected or missing address components. If unset, indicates that the value
        # is `false`. See `missing_component_types`, `unresolved_tokens` or `unexpected`
        # fields for more details.
        # Corresponds to the JSON property `addressComplete`
        # @return [Boolean]
        attr_accessor :address_complete
        alias_method :address_complete?, :address_complete
      
        # Information about the granularity of the `geocode`. This can be understood as
        # the semantic meaning of how coarse or fine the geocoded location is. This can
        # differ from the `validation_granularity` above occasionally. For example, our
        # database might record the existence of an apartment number but do not have a
        # precise location for the apartment within a big apartment complex. In that
        # case, the `validation_granularity` will be `SUB_PREMISE` but the `
        # geocode_granularity` will be `PREMISE`.
        # Corresponds to the JSON property `geocodeGranularity`
        # @return [String]
        attr_accessor :geocode_granularity
      
        # At least one address component was inferred (added) that wasn't in the input,
        # see [google.maps.addressvalidation.v1.Address.address_components] for details.
        # Corresponds to the JSON property `hasInferredComponents`
        # @return [Boolean]
        attr_accessor :has_inferred_components
        alias_method :has_inferred_components?, :has_inferred_components
      
        # At least one address component was replaced, see [google.maps.
        # addressvalidation.v1.Address.address_components] for details.
        # Corresponds to the JSON property `hasReplacedComponents`
        # @return [Boolean]
        attr_accessor :has_replaced_components
        alias_method :has_replaced_components?, :has_replaced_components
      
        # At least one address component cannot be categorized or validated, see [google.
        # maps.addressvalidation.v1.Address.address_components] for details.
        # Corresponds to the JSON property `hasUnconfirmedComponents`
        # @return [Boolean]
        attr_accessor :has_unconfirmed_components
        alias_method :has_unconfirmed_components?, :has_unconfirmed_components
      
        # The granularity of the **input** address. This is the result of parsing the
        # input address and does not give any validation signals. For validation signals,
        # refer to `validation_granularity` below. For example, if the input address
        # includes a specific apartment number, then the `input_granularity` here will
        # be `SUB_PREMISE`. If we cannot match the apartment number in the databases or
        # the apartment number is invalid, the `validation_granularity` will likely be `
        # PREMISE` or below.
        # Corresponds to the JSON property `inputGranularity`
        # @return [String]
        attr_accessor :input_granularity
      
        # The granularity level that the API can fully **validate** the address to. For
        # example, an `validation_granularity` of `PREMISE` indicates all address
        # components at the level of `PREMISE` or more coarse can be validated. Per
        # address component validation result can be found in [google.maps.
        # addressvalidation.v1.Address.address_components].
        # Corresponds to the JSON property `validationGranularity`
        # @return [String]
        attr_accessor :validation_granularity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_complete = args[:address_complete] if args.key?(:address_complete)
          @geocode_granularity = args[:geocode_granularity] if args.key?(:geocode_granularity)
          @has_inferred_components = args[:has_inferred_components] if args.key?(:has_inferred_components)
          @has_replaced_components = args[:has_replaced_components] if args.key?(:has_replaced_components)
          @has_unconfirmed_components = args[:has_unconfirmed_components] if args.key?(:has_unconfirmed_components)
          @input_granularity = args[:input_granularity] if args.key?(:input_granularity)
          @validation_granularity = args[:validation_granularity] if args.key?(:validation_granularity)
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
      
      # Represents a postal address, e.g. for postal delivery or payments addresses.
      # Given a postal address, a postal service can deliver items to a premise, P.O.
      # Box or similar. It is not intended to model geographical locations (roads,
      # towns, mountains). In typical usage an address would be created via user input
      # or from importing existing data, depending on the type of process. Advice on
      # address input / editing: - Use an internationalization-ready address widget
      # such as https://github.com/google/libaddressinput) - Users should not be
      # presented with UI elements for input or editing of fields outside countries
      # where that field is used. For more guidance on how to use this schema, please
      # see: https://support.google.com/business/answer/6397478
      class GoogleTypePostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in address_lines do not have type information and may sometimes contain
        # multiple values in a single field (e.g. "Austin, TX"), it is important that
        # the line order is clear. The order of address lines should be "envelope order"
        # for the country/region of the address. In places where this can vary (e.g.
        # Japan), address_language is used to make it explicit (e.g. "ja" for large-to-
        # small ordering and "ja-Latn" or "en" for small-to-large). This way, the most
        # specific line of an address can be selected based on the language. The minimum
        # permitted structural representation of an address consists of a region_code
        # with all remaining information placed in the address_lines. It would be
        # possible to format such an address very approximately without geocoding, but
        # no semantic reasoning could be made about any of the address components until
        # it was at least partially resolved. Creating an address only containing a
        # region_code and address_lines, and then geocoding is the recommended way to
        # handle completely unstructured addresses (as opposed to guessing which parts
        # of the address should be localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. Specifically, for Spain this is the province and
        # not the autonomous community (e.g. "Barcelona" and not "Catalonia"). Many
        # countries don't use an administrative area in postal addresses. E.g. in
        # Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # This is often the UI language of the input form or is expected to match one of
        # the languages used in the address' country/region, or their transliterated
        # equivalents. This can affect formatting in certain countries, but is not
        # critical to the correctness of the data and will never affect any validation
        # or other non-formatting related operations. If this value is not known, it
        # should be omitted (rather than specifying a possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address. Examples:
        # US city, IT comune, UK post town. In regions of the world where localities are
        # not well defined or do not fit into this structure well, leave locality empty
        # and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (e.g. state/zip validation in the U.
        # S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address. This field may, under certain
        # circumstances, contain multiline information. For example, it might contain "
        # care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This is never
        # inferred and it is up to the user to ensure the value is correct. See https://
        # cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/
        # territory_information.html for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision. All new revisions **must** be backward compatible with
        # old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used in most
        # regions. Where it is used, the value is either a string like "CEDEX",
        # optionally followed by a number (e.g. "CEDEX 7"), or just a number alone,
        # representing the "sector code" (Jamaica), "delivery area indicator" (Malawi)
        # or "post office indicator" (e.g. Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be neighborhoods,
        # boroughs, districts.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
    end
  end
end
