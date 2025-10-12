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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module TravelimpactmodelV1
      # Travel Impact Model API
      #
      # Travel Impact Model API lets you query travel carbon emission estimates.
      #
      # @example
      #    require 'google/apis/travelimpactmodel_v1'
      #
      #    Travelimpactmodel = Google::Apis::TravelimpactmodelV1 # Alias the module
      #    service = Travelimpactmodel::TravelImpactModelService.new
      #
      # @see https://developers.google.com/travel/impact-model
      class TravelImpactModelService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://travelimpactmodel.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-travelimpactmodel_v1',
                client_version: Google::Apis::TravelimpactmodelV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Stateless method to retrieve emission estimates. Details on how emission
        # estimates are computed are in [GitHub](https://github.com/google/travel-impact-
        # model) The response will contain all entries that match the input flight legs,
        # in the same order. If there are no estimates available for a certain flight
        # leg, the response will return the flight leg object with empty emission fields.
        # The request will still be considered successful. Reasons for missing emission
        # estimates include: * The flight is unknown to the server. * The input flight
        # leg is missing one or more identifiers. * The flight date is in the past. *
        # The aircraft type is not supported by the model. * Missing seat configuration.
        # The request can contain up to 1000 flight legs. If the request has more than
        # 1000 direct flights, if will fail with an INVALID_ARGUMENT error.
        # @param [Google::Apis::TravelimpactmodelV1::ComputeFlightEmissionsRequest] compute_flight_emissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TravelimpactmodelV1::ComputeFlightEmissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TravelimpactmodelV1::ComputeFlightEmissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_flight_emissions(compute_flight_emissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/flights:computeFlightEmissions', options)
          command.request_representation = Google::Apis::TravelimpactmodelV1::ComputeFlightEmissionsRequest::Representation
          command.request_object = compute_flight_emissions_request_object
          command.response_representation = Google::Apis::TravelimpactmodelV1::ComputeFlightEmissionsResponse::Representation
          command.response_class = Google::Apis::TravelimpactmodelV1::ComputeFlightEmissionsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stateless method to retrieve GHG emissions estimates for a set of flight
        # segments for Scope 3 reporting. The response will contain all entries that
        # match the input Scope3FlightSegment flight segments, in the same order
        # provided. The estimates will be computed using the following cascading logic (
        # using the first one that is available): 1. TIM-based emissions given origin,
        # destination, carrier, flightNumber, departureDate, and cabinClass. 2. Typical
        # flight emissions given origin, destination, year in departureDate, and
        # cabinClass. 3. Distance-based emissions calculated using distanceKm, year in
        # departureDate, and cabinClass. If there is a future flight requested in this
        # calendar year, we do not support Tier 1 emissions and will fallback to Tier 2
        # or 3 emissions. If the requested future flight is in not in this calendar year,
        # we will return an empty response. We recommend that for future flights,
        # computeFlightEmissions API is used instead. If there are no estimates
        # available for a certain flight with any of the three methods, the response
        # will return a Scope3FlightEmissions object with empty emission fields. The
        # request will still be considered successful. Generally, missing emissions
        # estimates occur when the flight is unknown to the server (e.g. no specific
        # flight exists, or typical flight emissions are not available for the requested
        # pair). The request will fail with an `INVALID_ARGUMENT` error if: * The
        # request contains more than 1,000 flight legs. * The input flight leg is
        # missing one or more identifiers. For example, missing origin/destination
        # without a valid distance for TIM_EMISSIONS or TYPICAL_FLIGHT_EMISSIONS type
        # matching, or missing distance for a DISTANCE_BASED_EMISSIONS type matching (if
        # you want to fallback to distance-based emissions or want a distance-based
        # emissions estimate, you need to specify a distance). * The flight date is
        # before 2019 (Scope 3 data is only available for 2019 and after). * The flight
        # distance is 0 or lower. * Missing cabin class. Because the request is
        # processed with fallback logic, it is possible that misconfigured requests
        # return valid emissions estimates using fallback methods. For example, if a
        # request has the wrong flight number but specifies the origin and destination,
        # the request will still succeed, but the returned emissions will be based
        # solely on the typical flight emissions. Similarly, if a request is missing the
        # origin for a typical flight emissions request, but specifies a valid distance,
        # the request could succeed based solely on the distance-based emissions.
        # Consequently, one should check the source of the returned emissions (source)
        # to confirm the results are as expected.
        # @param [Google::Apis::TravelimpactmodelV1::ComputeScope3FlightEmissionsRequest] compute_scope3_flight_emissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TravelimpactmodelV1::ComputeScope3FlightEmissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TravelimpactmodelV1::ComputeScope3FlightEmissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_scope3_flight_emissions(compute_scope3_flight_emissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/flights:computeScope3FlightEmissions', options)
          command.request_representation = Google::Apis::TravelimpactmodelV1::ComputeScope3FlightEmissionsRequest::Representation
          command.request_object = compute_scope3_flight_emissions_request_object
          command.response_representation = Google::Apis::TravelimpactmodelV1::ComputeScope3FlightEmissionsResponse::Representation
          command.response_class = Google::Apis::TravelimpactmodelV1::ComputeScope3FlightEmissionsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves typical flight emissions estimates between two airports, also known
        # as a market. If there are no estimates available for a certain market, the
        # response will return the market object with empty emission fields. The request
        # will still be considered successful. Details on how the typical emissions
        # estimates are computed are on [GitHub](https://github.com/google/travel-impact-
        # model/blob/main/projects/typical_flight_emissions.md). The request can contain
        # up to 1000 markets. If the request has more than 1000 markets, it will fail
        # with an INVALID_ARGUMENT error.
        # @param [Google::Apis::TravelimpactmodelV1::ComputeTypicalFlightEmissionsRequest] compute_typical_flight_emissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TravelimpactmodelV1::ComputeTypicalFlightEmissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TravelimpactmodelV1::ComputeTypicalFlightEmissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_typical_flight_emissions(compute_typical_flight_emissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/flights:computeTypicalFlightEmissions', options)
          command.request_representation = Google::Apis::TravelimpactmodelV1::ComputeTypicalFlightEmissionsRequest::Representation
          command.request_object = compute_typical_flight_emissions_request_object
          command.response_representation = Google::Apis::TravelimpactmodelV1::ComputeTypicalFlightEmissionsResponse::Representation
          command.response_class = Google::Apis::TravelimpactmodelV1::ComputeTypicalFlightEmissionsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
