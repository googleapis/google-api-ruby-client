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
      
      class ComputeFlightEmissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeFlightEmissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmissionsGramsPerPax
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Flight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightWithEmissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeFlightEmissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flights, as: 'flights', class: Google::Apis::TravelimpactmodelV1::Flight, decorator: Google::Apis::TravelimpactmodelV1::Flight::Representation
      
        end
      end
      
      class ComputeFlightEmissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flight_emissions, as: 'flightEmissions', class: Google::Apis::TravelimpactmodelV1::FlightWithEmissions, decorator: Google::Apis::TravelimpactmodelV1::FlightWithEmissions::Representation
      
          property :model_version, as: 'modelVersion', class: Google::Apis::TravelimpactmodelV1::ModelVersion, decorator: Google::Apis::TravelimpactmodelV1::ModelVersion::Representation
      
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
      
      class EmissionsGramsPerPax
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :economy, as: 'economy'
          property :first, as: 'first'
          property :premium_economy, as: 'premiumEconomy'
        end
      end
      
      class Flight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :departure_date, as: 'departureDate', class: Google::Apis::TravelimpactmodelV1::Date, decorator: Google::Apis::TravelimpactmodelV1::Date::Representation
      
          property :destination, as: 'destination'
          property :flight_number, as: 'flightNumber'
          property :operating_carrier_code, as: 'operatingCarrierCode'
          property :origin, as: 'origin'
        end
      end
      
      class FlightWithEmissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :emissions_grams_per_pax, as: 'emissionsGramsPerPax', class: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax, decorator: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax::Representation
      
          property :flight, as: 'flight', class: Google::Apis::TravelimpactmodelV1::Flight, decorator: Google::Apis::TravelimpactmodelV1::Flight::Representation
      
        end
      end
      
      class ModelVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dated, as: 'dated'
          property :major, as: 'major'
          property :minor, as: 'minor'
          property :patch, as: 'patch'
        end
      end
    end
  end
end
