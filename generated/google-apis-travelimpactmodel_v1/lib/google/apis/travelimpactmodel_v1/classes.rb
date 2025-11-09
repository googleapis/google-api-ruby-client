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
    module TravelimpactmodelV1
      
      # Input definition for the ComputeFlightEmissions request.
      class ComputeFlightEmissionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Direct flights to return emission estimates for.
        # Corresponds to the JSON property `flights`
        # @return [Array<Google::Apis::TravelimpactmodelV1::Flight>]
        attr_accessor :flights
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flights = args[:flights] if args.key?(:flights)
        end
      end
      
      # Output definition for the ComputeFlightEmissions response.
      class ComputeFlightEmissionsResponse
        include Google::Apis::Core::Hashable
      
        # List of flight legs with emission estimates.
        # Corresponds to the JSON property `flightEmissions`
        # @return [Array<Google::Apis::TravelimpactmodelV1::FlightWithEmissions>]
        attr_accessor :flight_emissions
      
        # Travel Impact Model version. For more information about the model versioning
        # see [GitHub](https://github.com/google/travel-impact-model/#versioning).
        # Corresponds to the JSON property `modelVersion`
        # @return [Google::Apis::TravelimpactmodelV1::ModelVersion]
        attr_accessor :model_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flight_emissions = args[:flight_emissions] if args.key?(:flight_emissions)
          @model_version = args[:model_version] if args.key?(:model_version)
        end
      end
      
      # A list of flight segments to request the Scope 3 emissions for.
      class ComputeScope3FlightEmissionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Flights to return emission estimates for.
        # Corresponds to the JSON property `flights`
        # @return [Array<Google::Apis::TravelimpactmodelV1::Scope3FlightSegment>]
        attr_accessor :flights
      
        # Travel Impact Model version. For more information about the model versioning
        # see [GitHub](https://github.com/google/travel-impact-model/#versioning).
        # Corresponds to the JSON property `modelVersion`
        # @return [Google::Apis::TravelimpactmodelV1::ModelVersion]
        attr_accessor :model_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flights = args[:flights] if args.key?(:flights)
          @model_version = args[:model_version] if args.key?(:model_version)
        end
      end
      
      # A list of flights with Scope 3 emission estimates.
      class ComputeScope3FlightEmissionsResponse
        include Google::Apis::Core::Hashable
      
        # List of flight segments with emission estimates.
        # Corresponds to the JSON property `flightEmissions`
        # @return [Array<Google::Apis::TravelimpactmodelV1::Scope3FlightEmissions>]
        attr_accessor :flight_emissions
      
        # Travel Impact Model version. For more information about the model versioning
        # see [GitHub](https://github.com/google/travel-impact-model/#versioning).
        # Corresponds to the JSON property `modelVersion`
        # @return [Google::Apis::TravelimpactmodelV1::ModelVersion]
        attr_accessor :model_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flight_emissions = args[:flight_emissions] if args.key?(:flight_emissions)
          @model_version = args[:model_version] if args.key?(:model_version)
        end
      end
      
      # A list of pair of airports (markets) to request the typical emissions for.
      class ComputeTypicalFlightEmissionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Request the typical flight emissions estimates for this market pair.
        # A maximum of 1000 markets can be requested.
        # Corresponds to the JSON property `markets`
        # @return [Array<Google::Apis::TravelimpactmodelV1::Market>]
        attr_accessor :markets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @markets = args[:markets] if args.key?(:markets)
        end
      end
      
      # The response includes the emissions but also the model version.
      class ComputeTypicalFlightEmissionsResponse
        include Google::Apis::Core::Hashable
      
        # Travel Impact Model version. For more information about the model versioning
        # see [GitHub](https://github.com/google/travel-impact-model/#versioning).
        # Corresponds to the JSON property `modelVersion`
        # @return [Google::Apis::TravelimpactmodelV1::ModelVersion]
        attr_accessor :model_version
      
        # Market's Typical Flight Emissions requested.
        # Corresponds to the JSON property `typicalFlightEmissions`
        # @return [Array<Google::Apis::TravelimpactmodelV1::TypicalFlightEmissions>]
        attr_accessor :typical_flight_emissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_version = args[:model_version] if args.key?(:model_version)
          @typical_flight_emissions = args[:typical_flight_emissions] if args.key?(:typical_flight_emissions)
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
      class Date
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
      
      # Metadata about the EASA Flight Emissions Label.
      class EasaLabelMetadata
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `labelExpiryDate`
        # @return [Google::Apis::TravelimpactmodelV1::Date]
        attr_accessor :label_expiry_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `labelIssueDate`
        # @return [Google::Apis::TravelimpactmodelV1::Date]
        attr_accessor :label_issue_date
      
        # Version of the label.
        # Corresponds to the JSON property `labelVersion`
        # @return [String]
        attr_accessor :label_version
      
        # Sustainable Aviation Fuel (SAF) emissions discount percentage applied to the
        # label. It is a percentage as a decimal. The values are in the interval [0,1].
        # For example, 0.0021 means 0.21%. This discount and reduction in emissions are
        # reported by the EASA label but they are not included in the CO2e estimates
        # distributed by this API.
        # Corresponds to the JSON property `safDiscountPercentage`
        # @return [Float]
        attr_accessor :saf_discount_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_expiry_date = args[:label_expiry_date] if args.key?(:label_expiry_date)
          @label_issue_date = args[:label_issue_date] if args.key?(:label_issue_date)
          @label_version = args[:label_version] if args.key?(:label_version)
          @saf_discount_percentage = args[:saf_discount_percentage] if args.key?(:saf_discount_percentage)
        end
      end
      
      # Grouped emissions per seating class results.
      class EmissionsGramsPerPax
        include Google::Apis::Core::Hashable
      
        # Emissions for one passenger in business class in grams. This field is always
        # computed and populated, regardless of whether the aircraft has business class
        # seats or not.
        # Corresponds to the JSON property `business`
        # @return [Fixnum]
        attr_accessor :business
      
        # Emissions for one passenger in economy class in grams. This field is always
        # computed and populated, regardless of whether the aircraft has economy class
        # seats or not.
        # Corresponds to the JSON property `economy`
        # @return [Fixnum]
        attr_accessor :economy
      
        # Emissions for one passenger in first class in grams. This field is always
        # computed and populated, regardless of whether the aircraft has first class
        # seats or not.
        # Corresponds to the JSON property `first`
        # @return [Fixnum]
        attr_accessor :first
      
        # Emissions for one passenger in premium economy class in grams. This field is
        # always computed and populated, regardless of whether the aircraft has premium
        # economy class seats or not.
        # Corresponds to the JSON property `premiumEconomy`
        # @return [Fixnum]
        attr_accessor :premium_economy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business = args[:business] if args.key?(:business)
          @economy = args[:economy] if args.key?(:economy)
          @first = args[:first] if args.key?(:first)
          @premium_economy = args[:premium_economy] if args.key?(:premium_economy)
        end
      end
      
      # All details related to a single request item for a direct flight emission
      # estimates.
      class Flight
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `departureDate`
        # @return [Google::Apis::TravelimpactmodelV1::Date]
        attr_accessor :departure_date
      
        # Required. IATA airport code for flight destination, e.g. "JFK".
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Required. Flight number, e.g. 324.
        # Corresponds to the JSON property `flightNumber`
        # @return [Fixnum]
        attr_accessor :flight_number
      
        # Required. IATA carrier code, e.g. "AA".
        # Corresponds to the JSON property `operatingCarrierCode`
        # @return [String]
        attr_accessor :operating_carrier_code
      
        # Required. IATA airport code for flight origin, e.g. "LHR".
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @departure_date = args[:departure_date] if args.key?(:departure_date)
          @destination = args[:destination] if args.key?(:destination)
          @flight_number = args[:flight_number] if args.key?(:flight_number)
          @operating_carrier_code = args[:operating_carrier_code] if args.key?(:operating_carrier_code)
          @origin = args[:origin] if args.key?(:origin)
        end
      end
      
      # Direct flight with emission estimates.
      class FlightWithEmissions
        include Google::Apis::Core::Hashable
      
        # Optional. The significance of contrails warming impact compared to the total
        # CO2e emissions impact.
        # Corresponds to the JSON property `contrailsImpactBucket`
        # @return [String]
        attr_accessor :contrails_impact_bucket
      
        # Metadata about the EASA Flight Emissions Label.
        # Corresponds to the JSON property `easaLabelMetadata`
        # @return [Google::Apis::TravelimpactmodelV1::EasaLabelMetadata]
        attr_accessor :easa_label_metadata
      
        # Grouped emissions per seating class results.
        # Corresponds to the JSON property `emissionsGramsPerPax`
        # @return [Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax]
        attr_accessor :emissions_grams_per_pax
      
        # All details related to a single request item for a direct flight emission
        # estimates.
        # Corresponds to the JSON property `flight`
        # @return [Google::Apis::TravelimpactmodelV1::Flight]
        attr_accessor :flight
      
        # Optional. The source of the emissions data.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contrails_impact_bucket = args[:contrails_impact_bucket] if args.key?(:contrails_impact_bucket)
          @easa_label_metadata = args[:easa_label_metadata] if args.key?(:easa_label_metadata)
          @emissions_grams_per_pax = args[:emissions_grams_per_pax] if args.key?(:emissions_grams_per_pax)
          @flight = args[:flight] if args.key?(:flight)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # A pair of airports.
      class Market
        include Google::Apis::Core::Hashable
      
        # Required. IATA airport code for flight destination, e.g. "JFK".
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Required. IATA airport code for flight origin, e.g. "LHR".
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @origin = args[:origin] if args.key?(:origin)
        end
      end
      
      # Travel Impact Model version. For more information about the model versioning
      # see [GitHub](https://github.com/google/travel-impact-model/#versioning).
      class ModelVersion
        include Google::Apis::Core::Hashable
      
        # Dated versions: Model datasets are recreated with refreshed input data but no
        # change to the algorithms regularly.
        # Corresponds to the JSON property `dated`
        # @return [String]
        attr_accessor :dated
      
        # Major versions: Major changes to methodology (e.g. adding new data sources to
        # the model that lead to major output changes). Such changes will be infrequent
        # and announced well in advance. Might involve API version changes, which will
        # respect [Google Cloud API guidelines](https://cloud.google.com/endpoints/docs/
        # openapi/versioning-an-api#backwards-incompatible)
        # Corresponds to the JSON property `major`
        # @return [Fixnum]
        attr_accessor :major
      
        # Minor versions: Changes to the model that, while being consistent across
        # schema versions, change the model parameters or implementation.
        # Corresponds to the JSON property `minor`
        # @return [Fixnum]
        attr_accessor :minor
      
        # Patch versions: Implementation changes meant to address bugs or inaccuracies
        # in the model implementation.
        # Corresponds to the JSON property `patch`
        # @return [Fixnum]
        attr_accessor :patch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dated = args[:dated] if args.key?(:dated)
          @major = args[:major] if args.key?(:major)
          @minor = args[:minor] if args.key?(:minor)
          @patch = args[:patch] if args.key?(:patch)
        end
      end
      
      # Scope 3 flight with emission estimates.
      class Scope3FlightEmissions
        include Google::Apis::Core::Hashable
      
        # Flight parameters with which the Scope 3 emissions are fetched.
        # Corresponds to the JSON property `flight`
        # @return [Google::Apis::TravelimpactmodelV1::Scope3FlightSegment]
        attr_accessor :flight
      
        # Optional. The source of the emissions data.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Optional. Tank-to-wake flight emissions per passenger based on the requested
        # info.
        # Corresponds to the JSON property `ttwEmissionsGramsPerPax`
        # @return [Fixnum]
        attr_accessor :ttw_emissions_grams_per_pax
      
        # Optional. Well-to-tank flight emissions per passenger based on the requested
        # info.
        # Corresponds to the JSON property `wttEmissionsGramsPerPax`
        # @return [Fixnum]
        attr_accessor :wtt_emissions_grams_per_pax
      
        # Optional. Total flight emissions (sum of well-to-tank and tank-to-wake) per
        # passenger based on the requested info. This is the total emissions and unless
        # you have specific reasons for using TTW or WTT emissions, you should use this
        # number.
        # Corresponds to the JSON property `wtwEmissionsGramsPerPax`
        # @return [Fixnum]
        attr_accessor :wtw_emissions_grams_per_pax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flight = args[:flight] if args.key?(:flight)
          @source = args[:source] if args.key?(:source)
          @ttw_emissions_grams_per_pax = args[:ttw_emissions_grams_per_pax] if args.key?(:ttw_emissions_grams_per_pax)
          @wtt_emissions_grams_per_pax = args[:wtt_emissions_grams_per_pax] if args.key?(:wtt_emissions_grams_per_pax)
          @wtw_emissions_grams_per_pax = args[:wtw_emissions_grams_per_pax] if args.key?(:wtw_emissions_grams_per_pax)
        end
      end
      
      # Flight parameters with which the Scope 3 emissions are fetched.
      class Scope3FlightSegment
        include Google::Apis::Core::Hashable
      
        # Required. The cabin class of the flight.
        # Corresponds to the JSON property `cabinClass`
        # @return [String]
        attr_accessor :cabin_class
      
        # Optional. 2-character [IATA carrier code](https://www.iata.org/en/publications/
        # directories/code-search/), e.g. `KE`. This is required if specific flight
        # matching is desired. Otherwise, this is unused for typical flight and distance-
        # based emissions models. This could be both operating and marketing carrier
        # code (i.e. codeshare is covered).
        # Corresponds to the JSON property `carrierCode`
        # @return [String]
        attr_accessor :carrier_code
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `departureDate`
        # @return [Google::Apis::TravelimpactmodelV1::Date]
        attr_accessor :departure_date
      
        # Optional. 3-character [IATA airport code](https://www.iata.org/en/publications/
        # directories/code-search/) for flight destination, e.g. `ICN`. This is used to
        # match specific flight if provided alongside origin, carrier, and flight number.
        # If there is no match, we will first try to match the flight to a typical
        # flight between the provided origin and destination airports. Otherwise, we
        # will use the distance-based emissions model if the flight distance is provided.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Optional. Distance in kilometers, e.g. `2423`, from [1, 2.5e16) km. This is
        # used to match a flight to distance-based emissions when origin and destination
        # are not provided or there are no matching typical flights.
        # Corresponds to the JSON property `distanceKm`
        # @return [Fixnum]
        attr_accessor :distance_km
      
        # Optional. Up to 4-digit [flight number](https://en.wikipedia.org/wiki/
        # Flight_number), e.g. `71`, from [1, 9999]. This is first used to match a
        # specific flight if a flight number is specified alongside origin, destination,
        # and carrier. If a flight number is not specified, we will first try to match
        # the flight to a typical flight between the provided origin and destination
        # airports. If that fails and/or origin & destination are not provided, we will
        # use the distance-based emissions model based on the flight distance provided.
        # Corresponds to the JSON property `flightNumber`
        # @return [Fixnum]
        attr_accessor :flight_number
      
        # Optional. 3-character [IATA airport code](https://www.iata.org/en/publications/
        # directories/code-search/) for flight origin, e.g. `YVR`. This is used to match
        # specific flight if provided alongside destination, carrier, and flight number.
        # If there is no match, we will first try to match the flight to a typical
        # flight between the provided origin and destination airports. Otherwise, we
        # will use the distance-based emissions model if the flight distance is provided.
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cabin_class = args[:cabin_class] if args.key?(:cabin_class)
          @carrier_code = args[:carrier_code] if args.key?(:carrier_code)
          @departure_date = args[:departure_date] if args.key?(:departure_date)
          @destination = args[:destination] if args.key?(:destination)
          @distance_km = args[:distance_km] if args.key?(:distance_km)
          @flight_number = args[:flight_number] if args.key?(:flight_number)
          @origin = args[:origin] if args.key?(:origin)
        end
      end
      
      # Typical flight emission estimates for a certain market
      class TypicalFlightEmissions
        include Google::Apis::Core::Hashable
      
        # Grouped emissions per seating class results.
        # Corresponds to the JSON property `emissionsGramsPerPax`
        # @return [Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax]
        attr_accessor :emissions_grams_per_pax
      
        # A pair of airports.
        # Corresponds to the JSON property `market`
        # @return [Google::Apis::TravelimpactmodelV1::Market]
        attr_accessor :market
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emissions_grams_per_pax = args[:emissions_grams_per_pax] if args.key?(:emissions_grams_per_pax)
          @market = args[:market] if args.key?(:market)
        end
      end
    end
  end
end
