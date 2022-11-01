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
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://travelimpactmodel.googleapis.com/', '',
                client_name: 'google-apis-travelimpactmodel_v1',
                client_version: Google::Apis::TravelimpactmodelV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Stateless method to retrieve emission estimates. Details on how emission
        # estimates are computed: https://github.com/google/travel-impact-model The
        # response will contain all entries that match the input flight legs, in the
        # same order. If there are no estimates available for a certain flight leg, the
        # response will return the flight leg object with empty emission fields. The
        # request will still be considered successful. Reasons for missing emission
        # estimates include: - The flight is unknown to the server. - The input flight
        # leg is missing one or more identifiers. - The flight date is in the past. -
        # The aircraft type is not supported by the model. - Missing seat configuration.
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

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
