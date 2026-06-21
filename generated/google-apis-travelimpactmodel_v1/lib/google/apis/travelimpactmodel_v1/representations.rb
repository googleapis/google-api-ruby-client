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
      
      class ComputeDetailedFlightEmissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeDetailedFlightEmissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
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
      
      class EmissionsBreakdown
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmissionsGramsPerPax
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmissionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmissionsProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmissionsProvenanceEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Flight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightEmissionsDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FlightWithDetailedEmissions
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
      
      class SeatAreaRatioData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TypicalFlightEmissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeDetailedFlightEmissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flights, as: 'flights', class: Google::Apis::TravelimpactmodelV1::Flight, decorator: Google::Apis::TravelimpactmodelV1::Flight::Representation
      
        end
      end
      
      class ComputeDetailedFlightEmissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :flights_with_detailed_emissions, as: 'flightsWithDetailedEmissions', class: Google::Apis::TravelimpactmodelV1::FlightWithDetailedEmissions, decorator: Google::Apis::TravelimpactmodelV1::FlightWithDetailedEmissions::Representation
      
          property :model_version, as: 'modelVersion', class: Google::Apis::TravelimpactmodelV1::ModelVersion, decorator: Google::Apis::TravelimpactmodelV1::ModelVersion::Representation
      
        end
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
      
      class EmissionsBreakdown
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ttw_emissions_grams_per_pax, as: 'ttwEmissionsGramsPerPax', class: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax, decorator: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax::Representation
      
          property :wtt_emissions_grams_per_pax, as: 'wttEmissionsGramsPerPax', class: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax, decorator: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax::Representation
      
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
      
      class EmissionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :easa_label_metadata, as: 'easaLabelMetadata', class: Google::Apis::TravelimpactmodelV1::EasaLabelMetadata, decorator: Google::Apis::TravelimpactmodelV1::EasaLabelMetadata::Representation
      
          property :emissions_provenance, as: 'emissionsProvenance', class: Google::Apis::TravelimpactmodelV1::EmissionsProvenance, decorator: Google::Apis::TravelimpactmodelV1::EmissionsProvenance::Representation
      
          property :tim_website_emissions_calculator_url, as: 'timWebsiteEmissionsCalculatorUrl'
        end
      end
      
      class EmissionsProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :provenance_entries, as: 'provenanceEntries', class: Google::Apis::TravelimpactmodelV1::EmissionsProvenanceEntry, decorator: Google::Apis::TravelimpactmodelV1::EmissionsProvenanceEntry::Representation
      
        end
      end
      
      class EmissionsProvenanceEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cargo_mass_fraction_data, as: 'cargoMassFractionData'
          property :cargo_mass_fraction_t100_strategy, as: 'cargoMassFractionT100Strategy'
          property :data_category, as: 'dataCategory'
          property :distance_adjustment_strategy, as: 'distanceAdjustmentStrategy'
          property :estimated_flight_distance_km, as: 'estimatedFlightDistanceKm'
          property :fuel_burn_eea_strategy, as: 'fuelBurnEeaStrategy'
          property :load_factors_ch_aviation_strategy, as: 'loadFactorsChAviationStrategy'
          property :load_factors_data, as: 'loadFactorsData'
          property :load_factors_t100_strategy, as: 'loadFactorsT100Strategy'
          property :provenance_entry_type, as: 'provenanceEntryType'
          property :seat_area_ratio_data, as: 'seatAreaRatioData', class: Google::Apis::TravelimpactmodelV1::SeatAreaRatioData, decorator: Google::Apis::TravelimpactmodelV1::SeatAreaRatioData::Representation
      
          property :seat_area_ratio_iata_strategy, as: 'seatAreaRatioIataStrategy'
          property :source, as: 'source'
          property :source_version, as: 'sourceVersion'
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
      
      class FlightEmissionsDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contrails_impact_bucket, as: 'contrailsImpactBucket'
          property :emissions_breakdown, as: 'emissionsBreakdown', class: Google::Apis::TravelimpactmodelV1::EmissionsBreakdown, decorator: Google::Apis::TravelimpactmodelV1::EmissionsBreakdown::Representation
      
          property :emissions_grams_per_pax, as: 'emissionsGramsPerPax', class: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax, decorator: Google::Apis::TravelimpactmodelV1::EmissionsGramsPerPax::Representation
      
          property :source, as: 'source'
        end
      end
      
      class FlightWithDetailedEmissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :emissions_metadata, as: 'emissionsMetadata', class: Google::Apis::TravelimpactmodelV1::EmissionsMetadata, decorator: Google::Apis::TravelimpactmodelV1::EmissionsMetadata::Representation
      
          property :flight, as: 'flight', class: Google::Apis::TravelimpactmodelV1::Flight, decorator: Google::Apis::TravelimpactmodelV1::Flight::Representation
      
          property :flight_emissions_details, as: 'flightEmissionsDetails', class: Google::Apis::TravelimpactmodelV1::FlightEmissionsDetails, decorator: Google::Apis::TravelimpactmodelV1::FlightEmissionsDetails::Representation
      
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
      
      class SeatAreaRatioData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :economy, as: 'economy'
          property :first, as: 'first'
          property :premium_economy, as: 'premiumEconomy'
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
