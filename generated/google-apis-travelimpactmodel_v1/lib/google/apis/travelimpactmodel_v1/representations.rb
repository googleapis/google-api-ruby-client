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
      
      class ComputeScope3FlightEmissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeScope3FlightEmissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeTypicalFlightEmissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeTypicalFlightEmissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EasaLabelMetadata
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
      
      class Market
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class McpToolDataHandlingProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class McpToolLifecycleProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scope3FlightEmissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scope3FlightSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypicalFlightEmissions
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
      
      class ComputeScope3FlightEmissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flights, as: 'flights', class: Google::Apis::TravelimpactmodelV1::Scope3FlightSegment, decorator: Google::Apis::TravelimpactmodelV1::Scope3FlightSegment::Representation
      
          property :model_version, as: 'modelVersion', class: Google::Apis::TravelimpactmodelV1::ModelVersion, decorator: Google::Apis::TravelimpactmodelV1::ModelVersion::Representation
      
        end
      end
      
      class ComputeScope3FlightEmissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flight_emissions, as: 'flightEmissions', class: Google::Apis::TravelimpactmodelV1::Scope3FlightEmissions, decorator: Google::Apis::TravelimpactmodelV1::Scope3FlightEmissions::Representation
      
          property :model_version, as: 'modelVersion', class: Google::Apis::TravelimpactmodelV1::ModelVersion, decorator: Google::Apis::TravelimpactmodelV1::ModelVersion::Representation
      
        end
      end
      
      class ComputeTypicalFlightEmissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :markets, as: 'markets', class: Google::Apis::TravelimpactmodelV1::Market, decorator: Google::Apis::TravelimpactmodelV1::Market::Representation
      
        end
      end
      
      class ComputeTypicalFlightEmissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_version, as: 'modelVersion', class: Google::Apis::TravelimpactmodelV1::ModelVersion, decorator: Google::Apis::TravelimpactmodelV1::ModelVersion::Representation
      
          collection :typical_flight_emissions, as: 'typicalFlightEmissions', class: Google::Apis::TravelimpactmodelV1::TypicalFlightEmissions, decorator: Google::Apis::TravelimpactmodelV1::TypicalFlightEmissions::Representation
      
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
      
      class EasaLabelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_expiry_date, as: 'labelExpiryDate', class: Google::Apis::TravelimpactmodelV1::Date, decorator: Google::Apis::TravelimpactmodelV1::Date::Representation
      
          property :label_issue_date, as: 'labelIssueDate', class: Google::Apis::TravelimpactmodelV1::Date, decorator: Google::Apis::TravelimpactmodelV1::Date::Representation
      
          property :label_version, as: 'labelVersion'
          property :saf_discount_percentage, as: 'safDiscountPercentage'
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
          property :contrails_impact_bucket, as: 'contrailsImpactBucket'
          property :easa_label_metadata, as: 'easaLabelMetadata', class: Google::Apis::TravelimpactmodelV1::EasaLabelMetadata, decorator: Google::Apis::TravelimpactmodelV1::EasaLabelMetadata::Representation
      
          property :emissions_grams_per_pax, as: 'emissionsGramsPerPax', class: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax, decorator: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax::Representation
      
          property :flight, as: 'flight', class: Google::Apis::TravelimpactmodelV1::Flight, decorator: Google::Apis::TravelimpactmodelV1::Flight::Representation
      
          property :source, as: 'source'
        end
      end
      
      class Market
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :origin, as: 'origin'
        end
      end
      
      class McpToolDataHandlingProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_data_access_level, as: 'inputDataAccessLevel'
          property :output_data_access_level, as: 'outputDataAccessLevel'
        end
      end
      
      class McpToolLifecycleProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :launch_state, as: 'launchState'
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
      
      class Scope3FlightEmissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :flight, as: 'flight', class: Google::Apis::TravelimpactmodelV1::Scope3FlightSegment, decorator: Google::Apis::TravelimpactmodelV1::Scope3FlightSegment::Representation
      
          property :source, as: 'source'
          property :ttw_emissions_grams_per_pax, :numeric_string => true, as: 'ttwEmissionsGramsPerPax'
          property :wtt_emissions_grams_per_pax, :numeric_string => true, as: 'wttEmissionsGramsPerPax'
          property :wtw_emissions_grams_per_pax, :numeric_string => true, as: 'wtwEmissionsGramsPerPax'
        end
      end
      
      class Scope3FlightSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cabin_class, as: 'cabinClass'
          property :carrier_code, as: 'carrierCode'
          property :departure_date, as: 'departureDate', class: Google::Apis::TravelimpactmodelV1::Date, decorator: Google::Apis::TravelimpactmodelV1::Date::Representation
      
          property :destination, as: 'destination'
          property :distance_km, :numeric_string => true, as: 'distanceKm'
          property :flight_number, as: 'flightNumber'
          property :origin, as: 'origin'
        end
      end
      
      class TypicalFlightEmissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :emissions_grams_per_pax, as: 'emissionsGramsPerPax', class: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax, decorator: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax::Representation
      
          property :market, as: 'market', class: Google::Apis::TravelimpactmodelV1::Market, decorator: Google::Apis::TravelimpactmodelV1::Market::Representation
      
        end
      end
    end
  end
end
