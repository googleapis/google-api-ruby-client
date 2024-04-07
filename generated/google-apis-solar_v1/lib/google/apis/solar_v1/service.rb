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
    module SolarV1
      # Solar API
      #
      # Solar API.
      #
      # @example
      #    require 'google/apis/solar_v1'
      #
      #    Solar = Google::Apis::SolarV1 # Alias the module
      #    service = Solar::SolarService.new
      #
      # @see https://developers.google.com/maps/documentation/solar
      class SolarService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://solar.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-solar_v1',
                client_version: Google::Apis::SolarV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Locates the closest building to a query point. Returns an error with code `
        # NOT_FOUND` if there are no buildings within approximately 50m of the query
        # point.
        # @param [Float] location_latitude
        #   The latitude in degrees. It must be in the range [-90.0, +90.0].
        # @param [Float] location_longitude
        #   The longitude in degrees. It must be in the range [-180.0, +180.0].
        # @param [String] required_quality
        #   Optional. The minimum quality level allowed in the results. No result with
        #   lower quality than this will be returned. Not specifying this is equivalent to
        #   restricting to HIGH quality only.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SolarV1::BuildingInsights] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SolarV1::BuildingInsights]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_building_insight_closest(location_latitude: nil, location_longitude: nil, required_quality: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/buildingInsights:findClosest', options)
          command.response_representation = Google::Apis::SolarV1::BuildingInsights::Representation
          command.response_class = Google::Apis::SolarV1::BuildingInsights
          command.query['location.latitude'] = location_latitude unless location_latitude.nil?
          command.query['location.longitude'] = location_longitude unless location_longitude.nil?
          command.query['requiredQuality'] = required_quality unless required_quality.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets solar information for a region surrounding a location. Returns an error
        # with code `NOT_FOUND` if the location is outside the coverage area.
        # @param [Float] location_latitude
        #   The latitude in degrees. It must be in the range [-90.0, +90.0].
        # @param [Float] location_longitude
        #   The longitude in degrees. It must be in the range [-180.0, +180.0].
        # @param [Float] pixel_size_meters
        #   Optional. The minimum scale, in meters per pixel, of the data to return.
        #   Values of 0.1 (the default, if this field is not set explicitly), 0.25, 0.5,
        #   and 1.0 are supported. Imagery components whose normal resolution is less than
        #   `pixel_size_meters` will be returned at the resolution specified by `
        #   pixel_size_meters`; imagery components whose normal resolution is equal to or
        #   greater than `pixel_size_meters` will be returned at that normal resolution.
        # @param [Float] radius_meters
        #   Required. The radius, in meters, defining the region surrounding that centre
        #   point for which data should be returned. The limitations on this value are: *
        #   Any value up to 100m can always be specified. * Values over 100m can be
        #   specified, as long as `radius_meters` <= `pixel_size_meters * 1000`. * However,
        #   for values over 175m, the `DataLayerView` in the request must not include
        #   monthly flux or hourly shade.
        # @param [String] required_quality
        #   Optional. The minimum quality level allowed in the results. No result with
        #   lower quality than this will be returned. Not specifying this is equivalent to
        #   restricting to HIGH quality only.
        # @param [String] view
        #   Optional. The desired subset of the data to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SolarV1::DataLayers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SolarV1::DataLayers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_data_layer(location_latitude: nil, location_longitude: nil, pixel_size_meters: nil, radius_meters: nil, required_quality: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/dataLayers:get', options)
          command.response_representation = Google::Apis::SolarV1::DataLayers::Representation
          command.response_class = Google::Apis::SolarV1::DataLayers
          command.query['location.latitude'] = location_latitude unless location_latitude.nil?
          command.query['location.longitude'] = location_longitude unless location_longitude.nil?
          command.query['pixelSizeMeters'] = pixel_size_meters unless pixel_size_meters.nil?
          command.query['radiusMeters'] = radius_meters unless radius_meters.nil?
          command.query['requiredQuality'] = required_quality unless required_quality.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns an image by its ID.
        # @param [String] id
        #   Required. The ID of the asset being requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SolarV1::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SolarV1::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_geo_tiff(id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/geoTiff:get', options)
          command.response_representation = Google::Apis::SolarV1::HttpBody::Representation
          command.response_class = Google::Apis::SolarV1::HttpBody
          command.query['id'] = id unless id.nil?
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
