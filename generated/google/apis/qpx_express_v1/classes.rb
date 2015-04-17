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
      
      # The make, model, and type of an aircraft.
      class AircraftData
        include Google::Apis::Core::Hashable
      
        # The aircraft code. For example, for a Boeing 777 the code would be 777.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Identifies this as an aircraftData object. Value: the fixed string qpxexpress#
        # aircraftData
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of an aircraft, for example Boeing 777.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # An airport.
      class AirportData
        include Google::Apis::Core::Hashable
      
        # The city code an airport is located in. For example, for JFK airport, this is
        # NYC.
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # An airport's code. For example, for Boston Logan airport, this is BOS.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Identifies this as an airport object. Value: the fixed string qpxexpress#
        # airportData.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of an airport. For example, for airport BOS the name is "Boston Logan
        # International".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @city = args[:city] unless args[:city].nil?
          @code = args[:code] unless args[:code].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Information about an item of baggage.
      class BagDescriptor
        include Google::Apis::Core::Hashable
      
        # Provides the commercial name for an optional service.
        # Corresponds to the JSON property `commercialName`
        # @return [String]
        attr_accessor :commercial_name
      
        # How many of this type of bag will be checked on this flight.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A description of the baggage.
        # Corresponds to the JSON property `description`
        # @return [Array<String>]
        attr_accessor :description
      
        # Identifies this as a baggage object. Value: the fixed string qpxexpress#
        # bagDescriptor.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The standard IATA subcode used to identify this optional service.
        # Corresponds to the JSON property `subcode`
        # @return [String]
        attr_accessor :subcode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commercial_name = args[:commercial_name] unless args[:commercial_name].nil?
          @count = args[:count] unless args[:count].nil?
          @description = args[:description] unless args[:description].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @subcode = args[:subcode] unless args[:subcode].nil?
        end
      end
      
      # Information about a carrier (ie. an airline, bus line, railroad, etc) that
      # might be useful to display to an end-user.
      class CarrierData
        include Google::Apis::Core::Hashable
      
        # The IATA designator of a carrier (airline, etc). For example, for American
        # Airlines, the code is AA.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Identifies this as a kind of carrier (ie. an airline, bus line, railroad, etc).
        # Value: the fixed string qpxexpress#carrierData.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The long, full name of a carrier. For example: American Airlines.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Information about a city that might be useful to an end-user; typically the
      # city of an airport.
      class CityData
        include Google::Apis::Core::Hashable
      
        # The IATA character ID of a city. For example, for Boston this is BOS.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The two-character country code of the country the city is located in. For
        # example, US for the United States of America.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Identifies this as a city, typically with one or more airports. Value: the
        # fixed string qpxexpress#cityData.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The full name of a city. An example would be: New York.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @country = args[:country] unless args[:country].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Detailed information about components found in the solutions of this response,
      # including a trip's airport, city, taxes, airline, and aircraft.
      class Data
        include Google::Apis::Core::Hashable
      
        # The aircraft that is flying between an origin and destination.
        # Corresponds to the JSON property `aircraft`
        # @return [Array<Google::Apis::QpxExpressV1::AircraftData>]
        attr_accessor :aircraft
      
        # The airport of an origin or destination.
        # Corresponds to the JSON property `airport`
        # @return [Array<Google::Apis::QpxExpressV1::AirportData>]
        attr_accessor :airport
      
        # The airline carrier of the aircraft flying between an origin and destination.
        # Allowed values are IATA carrier codes.
        # Corresponds to the JSON property `carrier`
        # @return [Array<Google::Apis::QpxExpressV1::CarrierData>]
        attr_accessor :carrier
      
        # The city that is either the origin or destination of part of a trip.
        # Corresponds to the JSON property `city`
        # @return [Array<Google::Apis::QpxExpressV1::CityData>]
        attr_accessor :city
      
        # Identifies this as QPX Express response resource, including a trip's airport,
        # city, taxes, airline, and aircraft. Value: the fixed string qpxexpress#data.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The taxes due for flying between an origin and a destination.
        # Corresponds to the JSON property `tax`
        # @return [Array<Google::Apis::QpxExpressV1::TaxData>]
        attr_accessor :tax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aircraft = args[:aircraft] unless args[:aircraft].nil?
          @airport = args[:airport] unless args[:airport].nil?
          @carrier = args[:carrier] unless args[:carrier].nil?
          @city = args[:city] unless args[:city].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @tax = args[:tax] unless args[:tax].nil?
        end
      end
      
      # Complete information about a fare used in the solution to a low-fare search
      # query. In the airline industry a fare is a price an airline charges for one-
      # way travel between two points. A fare typically contains a carrier code, two
      # city codes, a price, and a fare basis. (A fare basis is a one-to-eight
      # character alphanumeric code used to identify a fare.)
      class FareInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `basisCode`
        # @return [String]
        attr_accessor :basis_code
      
        # The carrier of the aircraft or other vehicle commuting between two points.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # The city code of the city the trip ends at.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # A unique identifier of the fare.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a fare object. Value: the fixed string qpxexpress#fareInfo.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The city code of the city the trip begins at.
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        # Whether this is a private fare, for example one offered only to select
        # customers rather than the general public.
        # Corresponds to the JSON property `private`
        # @return [Boolean]
        attr_accessor :private
        alias_method :private?, :private
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basis_code = args[:basis_code] unless args[:basis_code].nil?
          @carrier = args[:carrier] unless args[:carrier].nil?
          @destination = args[:destination] unless args[:destination].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @origin = args[:origin] unless args[:origin].nil?
          @private = args[:private] unless args[:private].nil?
        end
      end
      
      # A flight is a sequence of legs with the same airline carrier and flight number.
      # (A leg is the smallest unit of travel, in the case of a flight a takeoff
      # immediately followed by a landing at two set points on a particular carrier
      # with a particular flight number.) The naive view is that a flight is scheduled
      # travel of an aircraft between two points, with possibly intermediate stops,
      # but carriers will frequently list flights that require a change of aircraft
      # between legs.
      class FlightInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # The flight number.
        # Corresponds to the JSON property `number`
        # @return [String]
        attr_accessor :number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] unless args[:carrier].nil?
          @number = args[:number] unless args[:number].nil?
        end
      end
      
      # Information about free baggage allowed on one segment of a trip.
      class FreeBaggageAllowance
        include Google::Apis::Core::Hashable
      
        # A representation of a type of bag, such as an ATPCo subcode, Commercial Name,
        # or other description.
        # Corresponds to the JSON property `bagDescriptor`
        # @return [Array<Google::Apis::QpxExpressV1::BagDescriptor>]
        attr_accessor :bag_descriptor
      
        # The maximum number of kilos all the free baggage together may weigh.
        # Corresponds to the JSON property `kilos`
        # @return [Fixnum]
        attr_accessor :kilos
      
        # The maximum number of kilos any one piece of baggage may weigh.
        # Corresponds to the JSON property `kilosPerPiece`
        # @return [Fixnum]
        attr_accessor :kilos_per_piece
      
        # Identifies this as free baggage object, allowed on one segment of a trip.
        # Value: the fixed string qpxexpress#freeBaggageAllowance.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The number of free pieces of baggage allowed.
        # Corresponds to the JSON property `pieces`
        # @return [Fixnum]
        attr_accessor :pieces
      
        # The number of pounds of free baggage allowed.
        # Corresponds to the JSON property `pounds`
        # @return [Fixnum]
        attr_accessor :pounds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bag_descriptor = args[:bag_descriptor] unless args[:bag_descriptor].nil?
          @kilos = args[:kilos] unless args[:kilos].nil?
          @kilos_per_piece = args[:kilos_per_piece] unless args[:kilos_per_piece].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @pieces = args[:pieces] unless args[:pieces].nil?
          @pounds = args[:pounds] unless args[:pounds].nil?
        end
      end
      
      # Information about a leg. (A leg is the smallest unit of travel, in the case of
      # a flight a takeoff immediately followed by a landing at two set points on a
      # particular carrier with a particular flight number.)
      class LegInfo
        include Google::Apis::Core::Hashable
      
        # The aircraft (or bus, ferry, railcar, etc) travelling between the two points
        # of this leg.
        # Corresponds to the JSON property `aircraft`
        # @return [String]
        attr_accessor :aircraft
      
        # The scheduled time of arrival at the destination of the leg, local to the
        # point of arrival.
        # Corresponds to the JSON property `arrivalTime`
        # @return [String]
        attr_accessor :arrival_time
      
        # Whether you have to change planes following this leg. Only applies to the next
        # leg.
        # Corresponds to the JSON property `changePlane`
        # @return [Boolean]
        attr_accessor :change_plane
        alias_method :change_plane?, :change_plane
      
        # Duration of a connection following this leg, in minutes.
        # Corresponds to the JSON property `connectionDuration`
        # @return [Fixnum]
        attr_accessor :connection_duration
      
        # The scheduled departure time of the leg, local to the point of departure.
        # Corresponds to the JSON property `departureTime`
        # @return [String]
        attr_accessor :departure_time
      
        # The leg destination as a city and airport.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # The terminal the flight is scheduled to arrive at.
        # Corresponds to the JSON property `destinationTerminal`
        # @return [String]
        attr_accessor :destination_terminal
      
        # The scheduled travelling time from the origin to the destination.
        # Corresponds to the JSON property `duration`
        # @return [Fixnum]
        attr_accessor :duration
      
        # An identifier that uniquely identifies this leg in the solution.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a leg object. A leg is the smallest unit of travel, in the
        # case of a flight a takeoff immediately followed by a landing at two set points
        # on a particular carrier with a particular flight number. Value: the fixed
        # string qpxexpress#legInfo.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A simple, general description of the meal(s) served on the flight, for example:
        # "Hot meal".
        # Corresponds to the JSON property `meal`
        # @return [String]
        attr_accessor :meal
      
        # The number of miles in this leg.
        # Corresponds to the JSON property `mileage`
        # @return [Fixnum]
        attr_accessor :mileage
      
        # In percent, the published on time performance on this leg.
        # Corresponds to the JSON property `onTimePerformance`
        # @return [Fixnum]
        attr_accessor :on_time_performance
      
        # Department of Transportation disclosure information on the actual operator of
        # a flight in a code share. (A code share refers to a marketing agreement
        # between two carriers, where one carrier will list in its schedules (and take
        # bookings for) flights that are actually operated by another carrier.)
        # Corresponds to the JSON property `operatingDisclosure`
        # @return [String]
        attr_accessor :operating_disclosure
      
        # The leg origin as a city and airport.
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        # The terminal the flight is scheduled to depart from.
        # Corresponds to the JSON property `originTerminal`
        # @return [String]
        attr_accessor :origin_terminal
      
        # Whether passenger information must be furnished to the United States
        # Transportation Security Administration (TSA) prior to departure.
        # Corresponds to the JSON property `secure`
        # @return [Boolean]
        attr_accessor :secure
        alias_method :secure?, :secure
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aircraft = args[:aircraft] unless args[:aircraft].nil?
          @arrival_time = args[:arrival_time] unless args[:arrival_time].nil?
          @change_plane = args[:change_plane] unless args[:change_plane].nil?
          @connection_duration = args[:connection_duration] unless args[:connection_duration].nil?
          @departure_time = args[:departure_time] unless args[:departure_time].nil?
          @destination = args[:destination] unless args[:destination].nil?
          @destination_terminal = args[:destination_terminal] unless args[:destination_terminal].nil?
          @duration = args[:duration] unless args[:duration].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @meal = args[:meal] unless args[:meal].nil?
          @mileage = args[:mileage] unless args[:mileage].nil?
          @on_time_performance = args[:on_time_performance] unless args[:on_time_performance].nil?
          @operating_disclosure = args[:operating_disclosure] unless args[:operating_disclosure].nil?
          @origin = args[:origin] unless args[:origin].nil?
          @origin_terminal = args[:origin_terminal] unless args[:origin_terminal].nil?
          @secure = args[:secure] unless args[:secure].nil?
        end
      end
      
      # The number and type of passengers. Unfortunately the definition of an infant,
      # child, adult, and senior citizen varies across carriers and reservation
      # systems.
      class PassengerCounts
        include Google::Apis::Core::Hashable
      
        # The number of passengers that are adults.
        # Corresponds to the JSON property `adultCount`
        # @return [Fixnum]
        attr_accessor :adult_count
      
        # The number of passengers that are children.
        # Corresponds to the JSON property `childCount`
        # @return [Fixnum]
        attr_accessor :child_count
      
        # The number of passengers that are infants travelling in the lap of an adult.
        # Corresponds to the JSON property `infantInLapCount`
        # @return [Fixnum]
        attr_accessor :infant_in_lap_count
      
        # The number of passengers that are infants each assigned a seat.
        # Corresponds to the JSON property `infantInSeatCount`
        # @return [Fixnum]
        attr_accessor :infant_in_seat_count
      
        # Identifies this as a passenger count object, representing the number of
        # passengers. Value: the fixed string qpxexpress#passengerCounts.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The number of passengers that are senior citizens.
        # Corresponds to the JSON property `seniorCount`
        # @return [Fixnum]
        attr_accessor :senior_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adult_count = args[:adult_count] unless args[:adult_count].nil?
          @child_count = args[:child_count] unless args[:child_count].nil?
          @infant_in_lap_count = args[:infant_in_lap_count] unless args[:infant_in_lap_count].nil?
          @infant_in_seat_count = args[:infant_in_seat_count] unless args[:infant_in_seat_count].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @senior_count = args[:senior_count] unless args[:senior_count].nil?
        end
      end
      
      # The price of one or more travel segments. The currency used to purchase
      # tickets is usually determined by the sale/ticketing city or the sale/ticketing
      # country, unless none are specified, in which case it defaults to that of the
      # journey origin country.
      class PricingInfo
        include Google::Apis::Core::Hashable
      
        # The total fare in the base fare currency (the currency of the country of
        # origin). This element is only present when the sales currency and the currency
        # of the country of commencement are different.
        # Corresponds to the JSON property `baseFareTotal`
        # @return [String]
        attr_accessor :base_fare_total
      
        # The fare used to price one or more segments.
        # Corresponds to the JSON property `fare`
        # @return [Array<Google::Apis::QpxExpressV1::FareInfo>]
        attr_accessor :fare
      
        # The horizontal fare calculation. This is a field on a ticket that displays all
        # of the relevant items that go into the calculation of the fare.
        # Corresponds to the JSON property `fareCalculation`
        # @return [String]
        attr_accessor :fare_calculation
      
        # Identifies this as a pricing object, representing the price of one or more
        # travel segments. Value: the fixed string qpxexpress#pricingInfo.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The latest ticketing time for this pricing assuming the reservation occurs at
        # ticketing time and there is no change in fares/rules. The time is local to the
        # point of sale (POS).
        # Corresponds to the JSON property `latestTicketingTime`
        # @return [String]
        attr_accessor :latest_ticketing_time
      
        # The number and type of passengers. Unfortunately the definition of an infant,
        # child, adult, and senior citizen varies across carriers and reservation
        # systems.
        # Corresponds to the JSON property `passengers`
        # @return [Google::Apis::QpxExpressV1::PassengerCounts]
        attr_accessor :passengers
      
        # The passenger type code for this pricing. An alphanumeric code used by a
        # carrier to restrict fares to certain categories of passenger. For instance, a
        # fare might be valid only for senior citizens.
        # Corresponds to the JSON property `ptc`
        # @return [String]
        attr_accessor :ptc
      
        # Whether the fares on this pricing are refundable.
        # Corresponds to the JSON property `refundable`
        # @return [Boolean]
        attr_accessor :refundable
        alias_method :refundable?, :refundable
      
        # The total fare in the sale or equivalent currency.
        # Corresponds to the JSON property `saleFareTotal`
        # @return [String]
        attr_accessor :sale_fare_total
      
        # The taxes in the sale or equivalent currency.
        # Corresponds to the JSON property `saleTaxTotal`
        # @return [String]
        attr_accessor :sale_tax_total
      
        # Total per-passenger price (fare and tax) in the sale or equivalent currency.
        # Corresponds to the JSON property `saleTotal`
        # @return [String]
        attr_accessor :sale_total
      
        # The per-segment price and baggage information.
        # Corresponds to the JSON property `segmentPricing`
        # @return [Array<Google::Apis::QpxExpressV1::SegmentPricing>]
        attr_accessor :segment_pricing
      
        # The taxes used to calculate the tax total per ticket.
        # Corresponds to the JSON property `tax`
        # @return [Array<Google::Apis::QpxExpressV1::TaxInfo>]
        attr_accessor :tax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_fare_total = args[:base_fare_total] unless args[:base_fare_total].nil?
          @fare = args[:fare] unless args[:fare].nil?
          @fare_calculation = args[:fare_calculation] unless args[:fare_calculation].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @latest_ticketing_time = args[:latest_ticketing_time] unless args[:latest_ticketing_time].nil?
          @passengers = args[:passengers] unless args[:passengers].nil?
          @ptc = args[:ptc] unless args[:ptc].nil?
          @refundable = args[:refundable] unless args[:refundable].nil?
          @sale_fare_total = args[:sale_fare_total] unless args[:sale_fare_total].nil?
          @sale_tax_total = args[:sale_tax_total] unless args[:sale_tax_total].nil?
          @sale_total = args[:sale_total] unless args[:sale_total].nil?
          @segment_pricing = args[:segment_pricing] unless args[:segment_pricing].nil?
          @tax = args[:tax] unless args[:tax].nil?
        end
      end
      
      # Details of a segment of a flight; a segment is one or more consecutive legs on
      # the same flight. For example a hypothetical flight ZZ001, from DFW to OGG,
      # would have one segment with two legs: DFW to HNL (leg 1), HNL to OGG (leg 2),
      # and DFW to OGG (legs 1 and 2).
      class SegmentInfo
        include Google::Apis::Core::Hashable
      
        # The booking code or class for this segment.
        # Corresponds to the JSON property `bookingCode`
        # @return [String]
        attr_accessor :booking_code
      
        # The number of seats available in this booking code on this segment.
        # Corresponds to the JSON property `bookingCodeCount`
        # @return [Fixnum]
        attr_accessor :booking_code_count
      
        # The cabin booked for this segment.
        # Corresponds to the JSON property `cabin`
        # @return [String]
        attr_accessor :cabin
      
        # In minutes, the duration of the connection following this segment.
        # Corresponds to the JSON property `connectionDuration`
        # @return [Fixnum]
        attr_accessor :connection_duration
      
        # The duration of the flight segment in minutes.
        # Corresponds to the JSON property `duration`
        # @return [Fixnum]
        attr_accessor :duration
      
        # A flight is a sequence of legs with the same airline carrier and flight number.
        # (A leg is the smallest unit of travel, in the case of a flight a takeoff
        # immediately followed by a landing at two set points on a particular carrier
        # with a particular flight number.) The naive view is that a flight is scheduled
        # travel of an aircraft between two points, with possibly intermediate stops,
        # but carriers will frequently list flights that require a change of aircraft
        # between legs.
        # Corresponds to the JSON property `flight`
        # @return [Google::Apis::QpxExpressV1::FlightInfo]
        attr_accessor :flight
      
        # An id uniquely identifying the segment in the solution.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a segment object. A segment is one or more consecutive legs
        # on the same flight. For example a hypothetical flight ZZ001, from DFW to OGG,
        # could have one segment with two legs: DFW to HNL (leg 1), HNL to OGG (leg 2).
        # Value: the fixed string qpxexpress#segmentInfo.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The legs composing this segment.
        # Corresponds to the JSON property `leg`
        # @return [Array<Google::Apis::QpxExpressV1::LegInfo>]
        attr_accessor :leg
      
        # The solution-based index of a segment in a married segment group. Married
        # segments can only be booked together. For example, an airline might report a
        # certain booking code as sold out from Boston to Pittsburgh, but as available
        # as part of two married segments Boston to Chicago connecting through
        # Pittsburgh. For example content of this field, consider the round-trip flight
        # ZZ1 PHX-PHL ZZ2 PHL-CLT ZZ3 CLT-PHX. This has three segments, with the two
        # outbound ones (ZZ1 ZZ2) married. In this case, the two outbound segments
        # belong to married segment group 0, and the return segment belongs to married
        # segment group 1.
        # Corresponds to the JSON property `marriedSegmentGroup`
        # @return [String]
        attr_accessor :married_segment_group
      
        # Whether the operation of this segment remains subject to government approval.
        # Corresponds to the JSON property `subjectToGovernmentApproval`
        # @return [Boolean]
        attr_accessor :subject_to_government_approval
        alias_method :subject_to_government_approval?, :subject_to_government_approval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @booking_code = args[:booking_code] unless args[:booking_code].nil?
          @booking_code_count = args[:booking_code_count] unless args[:booking_code_count].nil?
          @cabin = args[:cabin] unless args[:cabin].nil?
          @connection_duration = args[:connection_duration] unless args[:connection_duration].nil?
          @duration = args[:duration] unless args[:duration].nil?
          @flight = args[:flight] unless args[:flight].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @leg = args[:leg] unless args[:leg].nil?
          @married_segment_group = args[:married_segment_group] unless args[:married_segment_group].nil?
          @subject_to_government_approval = args[:subject_to_government_approval] unless args[:subject_to_government_approval].nil?
        end
      end
      
      # The price of this segment.
      class SegmentPricing
        include Google::Apis::Core::Hashable
      
        # A segment identifier unique within a single solution. It is used to refer to
        # different parts of the same solution.
        # Corresponds to the JSON property `fareId`
        # @return [String]
        attr_accessor :fare_id
      
        # Details of the free baggage allowance on this segment.
        # Corresponds to the JSON property `freeBaggageOption`
        # @return [Array<Google::Apis::QpxExpressV1::FreeBaggageAllowance>]
        attr_accessor :free_baggage_option
      
        # Identifies this as a segment pricing object, representing the price of this
        # segment. Value: the fixed string qpxexpress#segmentPricing.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Unique identifier in the response of this segment.
        # Corresponds to the JSON property `segmentId`
        # @return [String]
        attr_accessor :segment_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fare_id = args[:fare_id] unless args[:fare_id].nil?
          @free_baggage_option = args[:free_baggage_option] unless args[:free_baggage_option].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @segment_id = args[:segment_id] unless args[:segment_id].nil?
        end
      end
      
      # Information about a slice. A slice represents a traveller's intent, the
      # portion of a low-fare search corresponding to a traveler's request to get
      # between two points. One-way journeys are generally expressed using 1 slice,
      # round-trips using 2. For example, if a traveler specifies the following trip
      # in a user interface:
      # | Origin | Destination | Departure Date | | BOS | LAX | March 10, 2007 | | LAX
      # | SYD | March 17, 2007 | | SYD | BOS | March 22, 2007 |
      # then this is a three slice trip.
      class SliceInfo
        include Google::Apis::Core::Hashable
      
        # The duration of the slice in minutes.
        # Corresponds to the JSON property `duration`
        # @return [Fixnum]
        attr_accessor :duration
      
        # Identifies this as a slice object. A slice represents a traveller's intent,
        # the portion of a low-fare search corresponding to a traveler's request to get
        # between two points. One-way journeys are generally expressed using 1 slice,
        # round-trips using 2. Value: the fixed string qpxexpress#sliceInfo.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The segment(s) constituting the slice.
        # Corresponds to the JSON property `segment`
        # @return [Array<Google::Apis::QpxExpressV1::SegmentInfo>]
        attr_accessor :segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] unless args[:duration].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @segment = args[:segment] unless args[:segment].nil?
        end
      end
      
      # Criteria a desired slice must satisfy.
      class SliceInput
        include Google::Apis::Core::Hashable
      
        # Slices with only the carriers in this alliance should be returned; do not use
        # this field with permittedCarrier. Allowed values are ONEWORLD, SKYTEAM, and
        # STAR.
        # Corresponds to the JSON property `alliance`
        # @return [String]
        attr_accessor :alliance
      
        # Departure date in YYYY-MM-DD format.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        # Airport or city IATA designator of the destination.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Identifies this as a slice input object, representing the criteria a desired
        # slice must satisfy. Value: the fixed string qpxexpress#sliceInput.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The longest connection between two legs, in minutes, you are willing to accept.
        # Corresponds to the JSON property `maxConnectionDuration`
        # @return [Fixnum]
        attr_accessor :max_connection_duration
      
        # The maximum number of stops you are willing to accept in this slice.
        # Corresponds to the JSON property `maxStops`
        # @return [Fixnum]
        attr_accessor :max_stops
      
        # Airport or city IATA designator of the origin.
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        # A list of 2-letter IATA airline designators. Slices with only these carriers
        # should be returned.
        # Corresponds to the JSON property `permittedCarrier`
        # @return [Array<String>]
        attr_accessor :permitted_carrier
      
        # Two times in a single day defining a time range.
        # Corresponds to the JSON property `permittedDepartureTime`
        # @return [Google::Apis::QpxExpressV1::TimeOfDayRange]
        attr_accessor :permitted_departure_time
      
        # Prefer solutions that book in this cabin for this slice. Allowed values are
        # COACH, PREMIUM_COACH, BUSINESS, and FIRST.
        # Corresponds to the JSON property `preferredCabin`
        # @return [String]
        attr_accessor :preferred_cabin
      
        # A list of 2-letter IATA airline designators. Exclude slices that use these
        # carriers.
        # Corresponds to the JSON property `prohibitedCarrier`
        # @return [Array<String>]
        attr_accessor :prohibited_carrier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alliance = args[:alliance] unless args[:alliance].nil?
          @date = args[:date] unless args[:date].nil?
          @destination = args[:destination] unless args[:destination].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @max_connection_duration = args[:max_connection_duration] unless args[:max_connection_duration].nil?
          @max_stops = args[:max_stops] unless args[:max_stops].nil?
          @origin = args[:origin] unless args[:origin].nil?
          @permitted_carrier = args[:permitted_carrier] unless args[:permitted_carrier].nil?
          @permitted_departure_time = args[:permitted_departure_time] unless args[:permitted_departure_time].nil?
          @preferred_cabin = args[:preferred_cabin] unless args[:preferred_cabin].nil?
          @prohibited_carrier = args[:prohibited_carrier] unless args[:prohibited_carrier].nil?
        end
      end
      
      # Tax data.
      class TaxData
        include Google::Apis::Core::Hashable
      
        # An identifier uniquely identifying a tax in a response.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a tax data object, representing some tax. Value: the fixed
        # string qpxexpress#taxData.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of a tax.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Tax information.
      class TaxInfo
        include Google::Apis::Core::Hashable
      
        # Whether this is a government charge or a carrier surcharge.
        # Corresponds to the JSON property `chargeType`
        # @return [String]
        attr_accessor :charge_type
      
        # The code to enter in the ticket's tax box.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # For government charges, the country levying the charge.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Identifier uniquely identifying this tax in a response. Not present for
        # unnamed carrier surcharges.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a tax information object. Value: the fixed string
        # qpxexpress#taxInfo.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The price of the tax in the sales or equivalent currency.
        # Corresponds to the JSON property `salePrice`
        # @return [String]
        attr_accessor :sale_price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @charge_type = args[:charge_type] unless args[:charge_type].nil?
          @code = args[:code] unless args[:code].nil?
          @country = args[:country] unless args[:country].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @sale_price = args[:sale_price] unless args[:sale_price].nil?
        end
      end
      
      # Two times in a single day defining a time range.
      class TimeOfDayRange
        include Google::Apis::Core::Hashable
      
        # The earliest time of day in HH:MM format.
        # Corresponds to the JSON property `earliestTime`
        # @return [String]
        attr_accessor :earliest_time
      
        # Identifies this as a time of day range object, representing two times in a
        # single day defining a time range. Value: the fixed string qpxexpress#
        # timeOfDayRange.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The latest time of day in HH:MM format.
        # Corresponds to the JSON property `latestTime`
        # @return [String]
        attr_accessor :latest_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @earliest_time = args[:earliest_time] unless args[:earliest_time].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @latest_time = args[:latest_time] unless args[:latest_time].nil?
        end
      end
      
      # Trip information.
      class TripOption
        include Google::Apis::Core::Hashable
      
        # Identifier uniquely identifying this trip in a response.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies this as a trip information object. Value: the fixed string
        # qpxexpress#tripOption.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Per passenger pricing information.
        # Corresponds to the JSON property `pricing`
        # @return [Array<Google::Apis::QpxExpressV1::PricingInfo>]
        attr_accessor :pricing
      
        # The total price for all passengers on the trip, in the form of a currency
        # followed by an amount, e.g. USD253.35.
        # Corresponds to the JSON property `saleTotal`
        # @return [String]
        attr_accessor :sale_total
      
        # The slices that make up this trip's itinerary.
        # Corresponds to the JSON property `slice`
        # @return [Array<Google::Apis::QpxExpressV1::SliceInfo>]
        attr_accessor :slice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @pricing = args[:pricing] unless args[:pricing].nil?
          @sale_total = args[:sale_total] unless args[:sale_total].nil?
          @slice = args[:slice] unless args[:slice].nil?
        end
      end
      
      # A QPX Express search request, which will yield one or more solutions.
      class TripOptionsRequest
        include Google::Apis::Core::Hashable
      
        # Do not return solutions that cost more than this price. The alphabetical part
        # of the price is in ISO 4217. The format, in regex, is [A-Z]`3`\d+(\.\d+)?
        # Example: $102.07
        # Corresponds to the JSON property `maxPrice`
        # @return [String]
        attr_accessor :max_price
      
        # The number and type of passengers. Unfortunately the definition of an infant,
        # child, adult, and senior citizen varies across carriers and reservation
        # systems.
        # Corresponds to the JSON property `passengers`
        # @return [Google::Apis::QpxExpressV1::PassengerCounts]
        attr_accessor :passengers
      
        # Return only solutions with refundable fares.
        # Corresponds to the JSON property `refundable`
        # @return [Boolean]
        attr_accessor :refundable
        alias_method :refundable?, :refundable
      
        # IATA country code representing the point of sale. This determines the "
        # equivalent amount paid" currency for the ticket.
        # Corresponds to the JSON property `saleCountry`
        # @return [String]
        attr_accessor :sale_country
      
        # The slices that make up the itinerary of this trip. A slice represents a
        # traveler's intent, the portion of a low-fare search corresponding to a
        # traveler's request to get between two points. One-way journeys are generally
        # expressed using one slice, round-trips using two. An example of a one slice
        # trip with three segments might be BOS-SYD, SYD-LAX, LAX-BOS if the traveler
        # only stopped in SYD and LAX just long enough to change planes.
        # Corresponds to the JSON property `slice`
        # @return [Array<Google::Apis::QpxExpressV1::SliceInput>]
        attr_accessor :slice
      
        # The number of solutions to return, maximum 500.
        # Corresponds to the JSON property `solutions`
        # @return [Fixnum]
        attr_accessor :solutions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_price = args[:max_price] unless args[:max_price].nil?
          @passengers = args[:passengers] unless args[:passengers].nil?
          @refundable = args[:refundable] unless args[:refundable].nil?
          @sale_country = args[:sale_country] unless args[:sale_country].nil?
          @slice = args[:slice] unless args[:slice].nil?
          @solutions = args[:solutions] unless args[:solutions].nil?
        end
      end
      
      # A QPX Express search response.
      class TripOptionsResponse
        include Google::Apis::Core::Hashable
      
        # Detailed information about components found in the solutions of this response,
        # including a trip's airport, city, taxes, airline, and aircraft.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::QpxExpressV1::Data]
        attr_accessor :data
      
        # Identifies this as a QPX Express trip response object, which consists of zero
        # or more solutions. Value: the fixed string qpxexpress#tripOptions.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier uniquely identifying this response.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # A list of priced itinerary solutions to the QPX Express query.
        # Corresponds to the JSON property `tripOption`
        # @return [Array<Google::Apis::QpxExpressV1::TripOption>]
        attr_accessor :trip_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] unless args[:data].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @request_id = args[:request_id] unless args[:request_id].nil?
          @trip_option = args[:trip_option] unless args[:trip_option].nil?
        end
      end
      
      # A QPX Express search request.
      class SearchTripsRequest
        include Google::Apis::Core::Hashable
      
        # A QPX Express search request, which will yield one or more solutions.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::QpxExpressV1::TripOptionsRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request = args[:request] unless args[:request].nil?
        end
      end
      
      # A QPX Express search response.
      class SearchTripsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies this as a QPX Express API search response resource. Value: the
        # fixed string qpxExpress#tripsSearch.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A QPX Express search response.
        # Corresponds to the JSON property `trips`
        # @return [Google::Apis::QpxExpressV1::TripOptionsResponse]
        attr_accessor :trips
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @trips = args[:trips] unless args[:trips].nil?
        end
      end
    end
  end
end
