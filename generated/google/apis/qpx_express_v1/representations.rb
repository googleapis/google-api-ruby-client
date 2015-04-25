# Copyright 2015 Google Inc.
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
    module QpxExpressV1
      
      class AircraftDataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AirportDataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BagDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CarrierDataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CityDataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FareInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FlightInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FreeBaggageAllowanceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LegInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PassengerCountsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PricingInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SegmentInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SegmentPricingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SliceInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SliceInputRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TaxDataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TaxInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TimeOfDayRangeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TripOptionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TripOptionsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TripOptionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SearchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class AircraftDataRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class AirportDataRepresentation < Google::Apis::Core::JsonRepresentation
        property :city, as: 'city'
        property :code, as: 'code'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class BagDescriptorRepresentation < Google::Apis::Core::JsonRepresentation
        property :commercial_name, as: 'commercialName'
        property :count, as: 'count'
        collection :description, as: 'description'
        
        property :kind, as: 'kind'
        property :subcode, as: 'subcode'
      end

      # @private
      class CarrierDataRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class CityDataRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :country, as: 'country'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class DataRepresentation < Google::Apis::Core::JsonRepresentation
        collection :aircraft, as: 'aircraft', class: Google::Apis::QpxExpressV1::AircraftData, decorator: Google::Apis::QpxExpressV1::AircraftDataRepresentation
        
        
        collection :airport, as: 'airport', class: Google::Apis::QpxExpressV1::AirportData, decorator: Google::Apis::QpxExpressV1::AirportDataRepresentation
        
        
        collection :carrier, as: 'carrier', class: Google::Apis::QpxExpressV1::CarrierData, decorator: Google::Apis::QpxExpressV1::CarrierDataRepresentation
        
        
        collection :city, as: 'city', class: Google::Apis::QpxExpressV1::CityData, decorator: Google::Apis::QpxExpressV1::CityDataRepresentation
        
        
        property :kind, as: 'kind'
        collection :tax, as: 'tax', class: Google::Apis::QpxExpressV1::TaxData, decorator: Google::Apis::QpxExpressV1::TaxDataRepresentation
      end

      # @private
      class FareInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :basis_code, as: 'basisCode'
        property :carrier, as: 'carrier'
        property :destination, as: 'destination'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :origin, as: 'origin'
        property :private, as: 'private'
      end

      # @private
      class FlightInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :carrier, as: 'carrier'
        property :number, as: 'number'
      end

      # @private
      class FreeBaggageAllowanceRepresentation < Google::Apis::Core::JsonRepresentation
        collection :bag_descriptor, as: 'bagDescriptor', class: Google::Apis::QpxExpressV1::BagDescriptor, decorator: Google::Apis::QpxExpressV1::BagDescriptorRepresentation
        
        
        property :kilos, as: 'kilos'
        property :kilos_per_piece, as: 'kilosPerPiece'
        property :kind, as: 'kind'
        property :pieces, as: 'pieces'
        property :pounds, as: 'pounds'
      end

      # @private
      class LegInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :aircraft, as: 'aircraft'
        property :arrival_time, as: 'arrivalTime'
        property :change_plane, as: 'changePlane'
        property :connection_duration, as: 'connectionDuration'
        property :departure_time, as: 'departureTime'
        property :destination, as: 'destination'
        property :destination_terminal, as: 'destinationTerminal'
        property :duration, as: 'duration'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :meal, as: 'meal'
        property :mileage, as: 'mileage'
        property :on_time_performance, as: 'onTimePerformance'
        property :operating_disclosure, as: 'operatingDisclosure'
        property :origin, as: 'origin'
        property :origin_terminal, as: 'originTerminal'
        property :secure, as: 'secure'
      end

      # @private
      class PassengerCountsRepresentation < Google::Apis::Core::JsonRepresentation
        property :adult_count, as: 'adultCount'
        property :child_count, as: 'childCount'
        property :infant_in_lap_count, as: 'infantInLapCount'
        property :infant_in_seat_count, as: 'infantInSeatCount'
        property :kind, as: 'kind'
        property :senior_count, as: 'seniorCount'
      end

      # @private
      class PricingInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :base_fare_total, as: 'baseFareTotal'
        collection :fare, as: 'fare', class: Google::Apis::QpxExpressV1::FareInfo, decorator: Google::Apis::QpxExpressV1::FareInfoRepresentation
        
        
        property :fare_calculation, as: 'fareCalculation'
        property :kind, as: 'kind'
        property :latest_ticketing_time, as: 'latestTicketingTime'
        property :passengers, as: 'passengers', class: Google::Apis::QpxExpressV1::PassengerCounts, decorator: Google::Apis::QpxExpressV1::PassengerCountsRepresentation
        
        property :ptc, as: 'ptc'
        property :refundable, as: 'refundable'
        property :sale_fare_total, as: 'saleFareTotal'
        property :sale_tax_total, as: 'saleTaxTotal'
        property :sale_total, as: 'saleTotal'
        collection :segment_pricing, as: 'segmentPricing', class: Google::Apis::QpxExpressV1::SegmentPricing, decorator: Google::Apis::QpxExpressV1::SegmentPricingRepresentation
        
        
        collection :tax, as: 'tax', class: Google::Apis::QpxExpressV1::TaxInfo, decorator: Google::Apis::QpxExpressV1::TaxInfoRepresentation
      end

      # @private
      class SegmentInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :booking_code, as: 'bookingCode'
        property :booking_code_count, as: 'bookingCodeCount'
        property :cabin, as: 'cabin'
        property :connection_duration, as: 'connectionDuration'
        property :duration, as: 'duration'
        property :flight, as: 'flight', class: Google::Apis::QpxExpressV1::FlightInfo, decorator: Google::Apis::QpxExpressV1::FlightInfoRepresentation
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :leg, as: 'leg', class: Google::Apis::QpxExpressV1::LegInfo, decorator: Google::Apis::QpxExpressV1::LegInfoRepresentation
        
        
        property :married_segment_group, as: 'marriedSegmentGroup'
        property :subject_to_government_approval, as: 'subjectToGovernmentApproval'
      end

      # @private
      class SegmentPricingRepresentation < Google::Apis::Core::JsonRepresentation
        property :fare_id, as: 'fareId'
        collection :free_baggage_option, as: 'freeBaggageOption', class: Google::Apis::QpxExpressV1::FreeBaggageAllowance, decorator: Google::Apis::QpxExpressV1::FreeBaggageAllowanceRepresentation
        
        
        property :kind, as: 'kind'
        property :segment_id, as: 'segmentId'
      end

      # @private
      class SliceInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :duration, as: 'duration'
        property :kind, as: 'kind'
        collection :segment, as: 'segment', class: Google::Apis::QpxExpressV1::SegmentInfo, decorator: Google::Apis::QpxExpressV1::SegmentInfoRepresentation
      end

      # @private
      class SliceInputRepresentation < Google::Apis::Core::JsonRepresentation
        property :alliance, as: 'alliance'
        property :date, as: 'date'
        property :destination, as: 'destination'
        property :kind, as: 'kind'
        property :max_connection_duration, as: 'maxConnectionDuration'
        property :max_stops, as: 'maxStops'
        property :origin, as: 'origin'
        collection :permitted_carrier, as: 'permittedCarrier'
        
        property :permitted_departure_time, as: 'permittedDepartureTime', class: Google::Apis::QpxExpressV1::TimeOfDayRange, decorator: Google::Apis::QpxExpressV1::TimeOfDayRangeRepresentation
        
        property :preferred_cabin, as: 'preferredCabin'
        collection :prohibited_carrier, as: 'prohibitedCarrier'
      end

      # @private
      class TaxDataRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class TaxInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :charge_type, as: 'chargeType'
        property :code, as: 'code'
        property :country, as: 'country'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :sale_price, as: 'salePrice'
      end

      # @private
      class TimeOfDayRangeRepresentation < Google::Apis::Core::JsonRepresentation
        property :earliest_time, as: 'earliestTime'
        property :kind, as: 'kind'
        property :latest_time, as: 'latestTime'
      end

      # @private
      class TripOptionRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :pricing, as: 'pricing', class: Google::Apis::QpxExpressV1::PricingInfo, decorator: Google::Apis::QpxExpressV1::PricingInfoRepresentation
        
        
        property :sale_total, as: 'saleTotal'
        collection :slice, as: 'slice', class: Google::Apis::QpxExpressV1::SliceInfo, decorator: Google::Apis::QpxExpressV1::SliceInfoRepresentation
      end

      # @private
      class TripOptionsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :max_price, as: 'maxPrice'
        property :passengers, as: 'passengers', class: Google::Apis::QpxExpressV1::PassengerCounts, decorator: Google::Apis::QpxExpressV1::PassengerCountsRepresentation
        
        property :refundable, as: 'refundable'
        property :sale_country, as: 'saleCountry'
        collection :slice, as: 'slice', class: Google::Apis::QpxExpressV1::SliceInput, decorator: Google::Apis::QpxExpressV1::SliceInputRepresentation
        
        
        property :solutions, as: 'solutions'
      end

      # @private
      class TripOptionsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :data, as: 'data', class: Google::Apis::QpxExpressV1::Data, decorator: Google::Apis::QpxExpressV1::DataRepresentation
        
        property :kind, as: 'kind'
        property :request_id, as: 'requestId'
        collection :trip_option, as: 'tripOption', class: Google::Apis::QpxExpressV1::TripOption, decorator: Google::Apis::QpxExpressV1::TripOptionRepresentation
      end

      # @private
      class SearchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :request, as: 'request', class: Google::Apis::QpxExpressV1::TripOptionsRequest, decorator: Google::Apis::QpxExpressV1::TripOptionsRequestRepresentation
      end

      # @private
      class SearchResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :trips, as: 'trips', class: Google::Apis::QpxExpressV1::TripOptionsResponse, decorator: Google::Apis::QpxExpressV1::TripOptionsResponseRepresentation
      end
    end
  end
end
