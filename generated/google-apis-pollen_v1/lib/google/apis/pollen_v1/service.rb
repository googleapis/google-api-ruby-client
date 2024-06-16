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
    module PollenV1
      # Pollen API
      #
      # The Pollen API.
      #
      # @example
      #    require 'google/apis/pollen_v1'
      #
      #    Pollen = Google::Apis::PollenV1 # Alias the module
      #    service = Pollen::PollenService.new
      #
      # @see https://developers.google.com/maps/documentation/pollen
      class PollenService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://pollen.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-pollen_v1',
                client_version: Google::Apis::PollenV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns up to 5 days of daily pollen information in more than 65 countries, up
        # to 1km resolution.
        # @param [Fixnum] days
        #   Required. A number that indicates how many forecast days to request (minimum
        #   value 1, maximum value is 5).
        # @param [String] language_code
        #   Optional. Allows the client to choose the language for the response. If data
        #   cannot be provided for that language the API uses the closest match. Allowed
        #   values rely on the IETF BCP-47 standard. Default value is "en".
        # @param [Float] location_latitude
        #   The latitude in degrees. It must be in the range [-90.0, +90.0].
        # @param [Float] location_longitude
        #   The longitude in degrees. It must be in the range [-180.0, +180.0].
        # @param [Fixnum] page_size
        #   Optional. The maximum number of daily info records to return per page. The
        #   default and max value is 5 (5 days of data).
        # @param [String] page_token
        #   Optional. A page token received from a previous daily call. It is used to
        #   retrieve the subsequent page. Note that when providing a value for the page
        #   token all other request parameters provided must match the previous call that
        #   provided the page token.
        # @param [Boolean] plants_description
        #   Optional. Contains general information about plants, including details on
        #   their seasonality, special shapes and colors, information about allergic cross-
        #   reactions, and plant photos.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PollenV1::LookupForecastResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PollenV1::LookupForecastResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_forecast(days: nil, language_code: nil, location_latitude: nil, location_longitude: nil, page_size: nil, page_token: nil, plants_description: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/forecast:lookup', options)
          command.response_representation = Google::Apis::PollenV1::LookupForecastResponse::Representation
          command.response_class = Google::Apis::PollenV1::LookupForecastResponse
          command.query['days'] = days unless days.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['location.latitude'] = location_latitude unless location_latitude.nil?
          command.query['location.longitude'] = location_longitude unless location_longitude.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['plantsDescription'] = plants_description unless plants_description.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a byte array containing the data of the tile PNG image.
        # @param [String] map_type
        #   Required. The type of the pollen heatmap. Defines the combination of pollen
        #   type and index that the map will graphically represent.
        # @param [Fixnum] zoom
        #   Required. The map's zoom level. Defines how large or small the contents of a
        #   map appear in a map view. * Zoom level 0 is the entire world in a single tile.
        #   * Zoom level 1 is the entire world in 4 tiles. * Zoom level 2 is the entire
        #   world in 16 tiles. * Zoom level 16 is the entire world in 65,536 tiles.
        #   Allowed values: 0-16
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
        # @yieldparam result [Google::Apis::PollenV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PollenV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_map_type_heatmap_tile_heatmap_tile(map_type, zoom, x, y, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/mapTypes/{mapType}/heatmapTiles/{zoom}/{x}/{y}', options)
          command.response_representation = Google::Apis::PollenV1::HttpBody::Representation
          command.response_class = Google::Apis::PollenV1::HttpBody
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
