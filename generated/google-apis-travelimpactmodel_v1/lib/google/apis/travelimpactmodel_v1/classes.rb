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
        # see https://github.com/google/travel-impact-model/#versioning.
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
      
        # Grouped emissions per seating class results.
        # Corresponds to the JSON property `emissionsGramsPerPax`
        # @return [Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax]
        attr_accessor :emissions_grams_per_pax
      
        # All details related to a single request item for a direct flight emission
        # estimates.
        # Corresponds to the JSON property `flight`
        # @return [Google::Apis::TravelimpactmodelV1::Flight]
        attr_accessor :flight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emissions_grams_per_pax = args[:emissions_grams_per_pax] if args.key?(:emissions_grams_per_pax)
          @flight = args[:flight] if args.key?(:flight)
        end
      end
      
      # Travel Impact Model version. For more information about the model versioning
      # see https://github.com/google/travel-impact-model/#versioning.
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
        # respect guidelines in https://cloud.google.com/endpoints/docs/openapi/
        # versioning-an-api#backwards-incompatible
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
    end
  end
end
