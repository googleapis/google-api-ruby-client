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
    module AirqualityV1
      # Air Quality API
      #
      # The Air Quality API.
      #
      # @example
      #    require 'google/apis/airquality_v1'
      #
      #    Airquality = Google::Apis::AirqualityV1 # Alias the module
      #    service = Airquality::AirQualityService.new
      #
      # @see https://developers.google.com/maps/documentation/air-quality
      class AirQualityService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://airquality.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-airquality_v1',
                client_version: Google::Apis::AirqualityV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # The Current Conditions endpoint provides hourly air quality information in
        # more than 100 countries, up to a 500 x 500 meters resolution. Includes over 70
        # local indexes and global air quality index and categories.
        # @param [Google::Apis::AirqualityV1::LookupCurrentConditionsRequest] lookup_current_conditions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AirqualityV1::LookupCurrentConditionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AirqualityV1::LookupCurrentConditionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_current_conditions(lookup_current_conditions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/currentConditions:lookup', options)
          command.request_representation = Google::Apis::AirqualityV1::LookupCurrentConditionsRequest::Representation
          command.request_object = lookup_current_conditions_request_object
          command.response_representation = Google::Apis::AirqualityV1::LookupCurrentConditionsResponse::Representation
          command.response_class = Google::Apis::AirqualityV1::LookupCurrentConditionsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns air quality forecast for a specific location for a given time range.
        # @param [Google::Apis::AirqualityV1::LookupForecastRequest] lookup_forecast_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AirqualityV1::LookupForecastResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AirqualityV1::LookupForecastResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_forecast(lookup_forecast_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/forecast:lookup', options)
          command.request_representation = Google::Apis::AirqualityV1::LookupForecastRequest::Representation
          command.request_object = lookup_forecast_request_object
          command.response_representation = Google::Apis::AirqualityV1::LookupForecastResponse::Representation
          command.response_class = Google::Apis::AirqualityV1::LookupForecastResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns air quality history for a specific location for a given time range.
        # @param [Google::Apis::AirqualityV1::LookupHistoryRequest] lookup_history_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AirqualityV1::LookupHistoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AirqualityV1::LookupHistoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_history(lookup_history_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/history:lookup', options)
          command.request_representation = Google::Apis::AirqualityV1::LookupHistoryRequest::Representation
          command.request_object = lookup_history_request_object
          command.response_representation = Google::Apis::AirqualityV1::LookupHistoryResponse::Representation
          command.response_class = Google::Apis::AirqualityV1::LookupHistoryResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a bytes array containing the data of the tile PNG image.
        # @param [String] map_type
        #   Required. The type of the air quality heatmap. Defines the pollutant that the
        #   map will graphically represent. Allowed values: - UAQI_RED_GREEN (UAQI, red-
        #   green palette) - UAQI_INDIGO_PERSIAN (UAQI, indigo-persian palette) -
        #   PM25_INDIGO_PERSIAN - GBR_DEFRA - DEU_UBA - CAN_EC - FRA_ATMO - US_AQI
        # @param [Fixnum] zoom
        #   Required. The map's zoom level. Defines how large or small the contents of a
        #   map appear in a map view. Zoom level 0 is the entire world in a single tile.
        #   Zoom level 1 is the entire world in 4 tiles. Zoom level 2 is the entire world
        #   in 16 tiles. Zoom level 16 is the entire world in 65,536 tiles. Allowed values:
        #   0-16
        # @param [Fixnum] x
        #   Required. Defines the east-west point in the requested tile.
        # @param [Fixnum] y
        #   Required. Defines the north-south point in the requested tile.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AirqualityV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AirqualityV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_map_type_heatmap_tile_heatmap_tile(map_type, zoom, x, y, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/mapTypes/{mapType}/heatmapTiles/{zoom}/{x}/{y}', options)
          command.response_representation = Google::Apis::AirqualityV1::HttpBody::Representation
          command.response_class = Google::Apis::AirqualityV1::HttpBody
          command.params['mapType'] = map_type unless map_type.nil?
          command.params['zoom'] = zoom unless zoom.nil?
          command.params['x'] = x unless x.nil?
          command.params['y'] = y unless y.nil?
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
