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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module VectortileV1
      # Semantic Tile API
      #
      # Serves vector tiles containing geospatial data.
      #
      # @example
      #    require 'google/apis/vectortile_v1'
      #
      #    Vectortile = Google::Apis::VectortileV1 # Alias the module
      #    service = Vectortile::SemanticTileService.new
      #
      # @see https://developers.google.com/maps/contact-sales/
      class SemanticTileService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://vectortile.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets a feature tile by its tile resource name.
        # @param [String] name
        #   Required. Resource name of the tile. The tile resource name is prefixed by its
        #   collection ID `tiles/` followed by the resource ID, which encodes the tile's
        #   global x and y coordinates and zoom level as `@,,z`. For example, `tiles/@1,2,
        #   3z`.
        # @param [String] client_info_api_client
        #   API client name and version. For example, the SDK calling the API. The exact
        #   format is up to the client.
        # @param [String] client_info_application_id
        #   Application ID, such as the package name on Android and the bundle identifier
        #   on iOS platforms.
        # @param [String] client_info_application_version
        #   Application version number, such as "1.2.3". The exact format is application-
        #   dependent.
        # @param [String] client_info_device_model
        #   Device model as reported by the device. The exact format is platform-dependent.
        # @param [String] client_info_operating_system
        #   Operating system name and version as reported by the OS. For example, "Mac OS
        #   X 10.10.4". The exact format is platform-dependent.
        # @param [String] client_info_platform
        #   Platform where the application is running.
        # @param [String] client_info_user_id
        #   Required. A client-generated user ID. The ID should be generated and persisted
        #   during the first user session or whenever a pre-existing ID is not found. The
        #   exact format is up to the client. This must be non-empty in a
        #   GetFeatureTileRequest (whether via the header or GetFeatureTileRequest.
        #   client_info).
        # @param [String] client_tile_version_id
        #   Optional version id identifying the tile that is already in the client's cache.
        #   This field should be populated with the most recent version_id value returned
        #   by the API for the requested tile. If the version id is empty the server
        #   always returns a newly rendered tile. If it is provided the server checks if
        #   the tile contents would be identical to one that's already on the client, and
        #   if so, returns a stripped-down response tile with STATUS_OK_DATA_UNCHANGED
        #   instead.
        # @param [Boolean] enable_detailed_highway_types
        #   Flag indicating whether detailed highway types should be returned. If this is
        #   set, the CONTROLLED_ACCESS_HIGHWAY type may be returned. If not, then these
        #   highways will have the generic HIGHWAY type. This exists for backwards
        #   compatibility reasons.
        # @param [Boolean] enable_feature_names
        #   Flag indicating whether human-readable names should be returned for features.
        #   If this is set, the display_name field on the feature will be filled out.
        # @param [Boolean] enable_modeled_volumes
        #   Flag indicating whether 3D building models should be enabled. If this is set
        #   structures will be returned as 3D modeled volumes rather than 2.5D extruded
        #   areas where possible.
        # @param [Boolean] enable_political_features
        #   Flag indicating whether political features should be returned.
        # @param [Boolean] enable_private_roads
        #   Flag indicating whether the returned tile will contain road features that are
        #   marked private. Private roads are indicated by the Feature.segment_info.
        #   road_info.is_private field.
        # @param [Boolean] enable_unclipped_buildings
        #   Flag indicating whether unclipped buildings should be returned. If this is set,
        #   building render ops will extend beyond the tile boundary. Buildings will only
        #   be returned on the tile that contains their centroid.
        # @param [String] language_code
        #   Required. The BCP-47 language code corresponding to the language in which the
        #   name was requested, such as "en-US" or "sr-Latn". For more information, see
        #   http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # @param [String] region_code
        #   Required. The Unicode country/region code (CLDR) of the location from which
        #   the request is coming from, such as "US" and "419". For more information, see
        #   http://www.unicode.org/reports/tr35/#unicode_region_subtag.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VectortileV1::FeatureTile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VectortileV1::FeatureTile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_featuretile(name, client_info_api_client: nil, client_info_application_id: nil, client_info_application_version: nil, client_info_device_model: nil, client_info_operating_system: nil, client_info_platform: nil, client_info_user_id: nil, client_tile_version_id: nil, enable_detailed_highway_types: nil, enable_feature_names: nil, enable_modeled_volumes: nil, enable_political_features: nil, enable_private_roads: nil, enable_unclipped_buildings: nil, language_code: nil, region_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VectortileV1::FeatureTile::Representation
          command.response_class = Google::Apis::VectortileV1::FeatureTile
          command.params['name'] = name unless name.nil?
          command.query['clientInfo.apiClient'] = client_info_api_client unless client_info_api_client.nil?
          command.query['clientInfo.applicationId'] = client_info_application_id unless client_info_application_id.nil?
          command.query['clientInfo.applicationVersion'] = client_info_application_version unless client_info_application_version.nil?
          command.query['clientInfo.deviceModel'] = client_info_device_model unless client_info_device_model.nil?
          command.query['clientInfo.operatingSystem'] = client_info_operating_system unless client_info_operating_system.nil?
          command.query['clientInfo.platform'] = client_info_platform unless client_info_platform.nil?
          command.query['clientInfo.userId'] = client_info_user_id unless client_info_user_id.nil?
          command.query['clientTileVersionId'] = client_tile_version_id unless client_tile_version_id.nil?
          command.query['enableDetailedHighwayTypes'] = enable_detailed_highway_types unless enable_detailed_highway_types.nil?
          command.query['enableFeatureNames'] = enable_feature_names unless enable_feature_names.nil?
          command.query['enableModeledVolumes'] = enable_modeled_volumes unless enable_modeled_volumes.nil?
          command.query['enablePoliticalFeatures'] = enable_political_features unless enable_political_features.nil?
          command.query['enablePrivateRoads'] = enable_private_roads unless enable_private_roads.nil?
          command.query['enableUnclippedBuildings'] = enable_unclipped_buildings unless enable_unclipped_buildings.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a terrain tile by its tile resource name.
        # @param [String] name
        #   Required. Resource name of the tile. The tile resource name is prefixed by its
        #   collection ID `terraintiles/` followed by the resource ID, which encodes the
        #   tile's global x and y coordinates and zoom level as `@,,z`. For example, `
        #   terraintiles/@1,2,3z`.
        # @param [Fixnum] altitude_precision_centimeters
        #   The precision of terrain altitudes in centimeters. Possible values: between 1 (
        #   cm level precision) and 1,000,000 (10-kilometer level precision).
        # @param [String] client_info_api_client
        #   API client name and version. For example, the SDK calling the API. The exact
        #   format is up to the client.
        # @param [String] client_info_application_id
        #   Application ID, such as the package name on Android and the bundle identifier
        #   on iOS platforms.
        # @param [String] client_info_application_version
        #   Application version number, such as "1.2.3". The exact format is application-
        #   dependent.
        # @param [String] client_info_device_model
        #   Device model as reported by the device. The exact format is platform-dependent.
        # @param [String] client_info_operating_system
        #   Operating system name and version as reported by the OS. For example, "Mac OS
        #   X 10.10.4". The exact format is platform-dependent.
        # @param [String] client_info_platform
        #   Platform where the application is running.
        # @param [String] client_info_user_id
        #   Required. A client-generated user ID. The ID should be generated and persisted
        #   during the first user session or whenever a pre-existing ID is not found. The
        #   exact format is up to the client. This must be non-empty in a
        #   GetFeatureTileRequest (whether via the header or GetFeatureTileRequest.
        #   client_info).
        # @param [Fixnum] max_elevation_resolution_cells
        #   The maximum allowed resolution for the returned elevation heightmap. Possible
        #   values: between 1 and 1024 (and not less than min_elevation_resolution_cells).
        #   Over-sized heightmaps will be non-uniformly down-sampled such that each edge
        #   is no longer than this value. Non-uniformity is chosen to maximise the amount
        #   of preserved data. For example: Original resolution: 100px (width) * 30px (
        #   height) max_elevation_resolution: 30 New resolution: 30px (width) * 30px (
        #   height)
        # @param [Fixnum] min_elevation_resolution_cells
        #   The minimum allowed resolution for the returned elevation heightmap. Possible
        #   values: between 0 and 1024 (and not more than max_elevation_resolution_cells).
        #   Zero is supported for backward compatibility. Under-sized heightmaps will be
        #   non-uniformly up-sampled such that each edge is no shorter than this value.
        #   Non-uniformity is chosen to maximise the amount of preserved data. For example:
        #   Original resolution: 30px (width) * 10px (height) min_elevation_resolution:
        #   30 New resolution: 30px (width) * 30px (height)
        # @param [Array<String>, String] terrain_formats
        #   Terrain formats that the client understands.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VectortileV1::TerrainTile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VectortileV1::TerrainTile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_terraintile(name, altitude_precision_centimeters: nil, client_info_api_client: nil, client_info_application_id: nil, client_info_application_version: nil, client_info_device_model: nil, client_info_operating_system: nil, client_info_platform: nil, client_info_user_id: nil, max_elevation_resolution_cells: nil, min_elevation_resolution_cells: nil, terrain_formats: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::VectortileV1::TerrainTile::Representation
          command.response_class = Google::Apis::VectortileV1::TerrainTile
          command.params['name'] = name unless name.nil?
          command.query['altitudePrecisionCentimeters'] = altitude_precision_centimeters unless altitude_precision_centimeters.nil?
          command.query['clientInfo.apiClient'] = client_info_api_client unless client_info_api_client.nil?
          command.query['clientInfo.applicationId'] = client_info_application_id unless client_info_application_id.nil?
          command.query['clientInfo.applicationVersion'] = client_info_application_version unless client_info_application_version.nil?
          command.query['clientInfo.deviceModel'] = client_info_device_model unless client_info_device_model.nil?
          command.query['clientInfo.operatingSystem'] = client_info_operating_system unless client_info_operating_system.nil?
          command.query['clientInfo.platform'] = client_info_platform unless client_info_platform.nil?
          command.query['clientInfo.userId'] = client_info_user_id unless client_info_user_id.nil?
          command.query['maxElevationResolutionCells'] = max_elevation_resolution_cells unless max_elevation_resolution_cells.nil?
          command.query['minElevationResolutionCells'] = min_elevation_resolution_cells unless min_elevation_resolution_cells.nil?
          command.query['terrainFormats'] = terrain_formats unless terrain_formats.nil?
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
