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
    module VectortileV1
      
      # Represents an area. Used to represent regions such as water, parks, etc.
      class Area
        include Google::Apis::Core::Hashable
      
        # True if the polygon is not entirely internal to the feature that it belongs to:
        # that is, some of the edges are bordering another feature.
        # Corresponds to the JSON property `hasExternalEdges`
        # @return [Boolean]
        attr_accessor :has_external_edges
        alias_method :has_external_edges?, :has_external_edges
      
        # When has_external_edges is true, the polygon has some edges that border
        # another feature. This field indicates the internal edges that do not border
        # another feature. Each value is an index into the vertices array, and denotes
        # the start vertex of the internal edge (the next vertex in the boundary loop is
        # the end of the edge). If the selected vertex is the last vertex in the
        # boundary loop, then the edge between that vertex and the starting vertex of
        # the loop is internal. This field may be used for styling. For example,
        # building parapets could be placed only on the external edges of a building
        # polygon, or water could be lighter colored near the external edges of a body
        # of water. If has_external_edges is false, all edges are internal and this
        # field will be empty.
        # Corresponds to the JSON property `internalEdges`
        # @return [Array<Fixnum>]
        attr_accessor :internal_edges
      
        # Identifies the boundary loops of the polygon. Only set for INDEXED_TRIANGLE
        # polygons. Each value is an index into the vertices array indicating the
        # beginning of a loop. For instance, values of [2, 5] would indicate loop_data
        # contained 3 loops with indices 0-1, 2-4, and 5-end. This may be used in
        # conjunction with the internal_edges field for styling polygon boundaries. Note
        # that an edge may be on a polygon boundary but still internal to the feature.
        # For example, a feature split across multiple tiles will have an internal
        # polygon boundary edge along the edge of the tile.
        # Corresponds to the JSON property `loopBreaks`
        # @return [Array<Fixnum>]
        attr_accessor :loop_breaks
      
        # When the polygon encoding is of type INDEXED_TRIANGLES, this contains the
        # indices of the triangle vertices in the vertex_offsets field. There are 3
        # vertex indices per triangle.
        # Corresponds to the JSON property `triangleIndices`
        # @return [Array<Fixnum>]
        attr_accessor :triangle_indices
      
        # The polygon encoding type used for this area.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 2D vertex list used for lines and areas. Each entry represents an offset from
        # the previous one in local tile coordinates. The first entry is offset from (0,
        # 0). For example, the list of vertices [(1,1), (2, 2), (1, 2)] would be encoded
        # in vertex offsets as [(1, 1), (1, 1), (-1, 0)].
        # Corresponds to the JSON property `vertexOffsets`
        # @return [Google::Apis::VectortileV1::Vertex2DList]
        attr_accessor :vertex_offsets
      
        # The z-ordering of this area. Areas with a lower z-order should be rendered
        # beneath areas with a higher z-order. This z-ordering does not imply anything
        # about the altitude of the line relative to the ground, but it can be used to
        # prevent z-fighting during rendering on the client. This z-ordering can only be
        # used to compare areas, and cannot be compared with the z_order field in the
        # Line message. The z-order may be negative or zero.
        # Corresponds to the JSON property `zOrder`
        # @return [Fixnum]
        attr_accessor :z_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_external_edges = args[:has_external_edges] if args.key?(:has_external_edges)
          @internal_edges = args[:internal_edges] if args.key?(:internal_edges)
          @loop_breaks = args[:loop_breaks] if args.key?(:loop_breaks)
          @triangle_indices = args[:triangle_indices] if args.key?(:triangle_indices)
          @type = args[:type] if args.key?(:type)
          @vertex_offsets = args[:vertex_offsets] if args.key?(:vertex_offsets)
          @z_order = args[:z_order] if args.key?(:z_order)
        end
      end
      
      # Represents a height-extruded area: a 3D prism with a constant X-Y plane cross
      # section. Used to represent extruded buildings. A single building may consist
      # of several extruded areas. The min_z and max_z fields are scaled to the size
      # of the tile. An extruded area with a max_z value of 4096 has the same height
      # as the width of the tile that it is on.
      class ExtrudedArea
        include Google::Apis::Core::Hashable
      
        # Represents an area. Used to represent regions such as water, parks, etc.
        # Corresponds to the JSON property `area`
        # @return [Google::Apis::VectortileV1::Area]
        attr_accessor :area
      
        # The z-value in local tile coordinates where the extruded area ends.
        # Corresponds to the JSON property `maxZ`
        # @return [Fixnum]
        attr_accessor :max_z
      
        # The z-value in local tile coordinates where the extruded area begins. This is
        # non-zero for extruded areas that begin off the ground. For example, a building
        # with a skybridge may have an extruded area component with a non-zero min_z.
        # Corresponds to the JSON property `minZ`
        # @return [Fixnum]
        attr_accessor :min_z
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @area = args[:area] if args.key?(:area)
          @max_z = args[:max_z] if args.key?(:max_z)
          @min_z = args[:min_z] if args.key?(:min_z)
        end
      end
      
      # A feature representing a single geographic entity.
      class Feature
        include Google::Apis::Core::Hashable
      
        # The localized name of this feature. Currently only returned for roads.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents the geometry of a feature, that is, the shape that it has on the
        # map. The local tile coordinate system has the origin at the north-west (upper-
        # left) corner of the tile, and is scaled to 4096 units across each edge. The
        # height (Z) axis has the same scale factor: an extruded area with a max_z value
        # of 4096 has the same height as the width of the tile that it is on. There is
        # no clipping boundary, so it is possible that some coordinates will lie outside
        # the tile boundaries.
        # Corresponds to the JSON property `geometry`
        # @return [Google::Apis::VectortileV1::Geometry]
        attr_accessor :geometry
      
        # Place ID of this feature, suitable for use in Places API details requests.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # Relations to other features.
        # Corresponds to the JSON property `relations`
        # @return [Array<Google::Apis::VectortileV1::Relation>]
        attr_accessor :relations
      
        # Extra metadata relating to segments.
        # Corresponds to the JSON property `segmentInfo`
        # @return [Google::Apis::VectortileV1::SegmentInfo]
        attr_accessor :segment_info
      
        # The type of this feature.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @geometry = args[:geometry] if args.key?(:geometry)
          @place_id = args[:place_id] if args.key?(:place_id)
          @relations = args[:relations] if args.key?(:relations)
          @segment_info = args[:segment_info] if args.key?(:segment_info)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A tile containing information about the map features located in the region it
      # covers.
      class FeatureTile
        include Google::Apis::Core::Hashable
      
        # Global tile coordinates. Global tile coordinates reference a specific tile on
        # the map at a specific zoom level. The origin of this coordinate system is
        # always at the northwest corner of the map, with x values increasing from west
        # to east and y values increasing from north to south. Tiles are indexed using x,
        # y coordinates from that origin. The zoom level containing the entire world in
        # a tile is 0, and it increases as you zoom in. Zoom level n + 1 will contain 4
        # times as many tiles as zoom level n. The zoom level controls the level of
        # detail of the data that is returned. In particular, this affects the set of
        # feature types returned, their density, and geometry simplification. The exact
        # tile contents may change over time, but care will be taken to keep supporting
        # the most important use cases. For example, zoom level 15 shows roads for
        # orientation and planning in the local neighborhood and zoom level 17 shows
        # buildings to give users on foot a sense of situational awareness.
        # Corresponds to the JSON property `coordinates`
        # @return [Google::Apis::VectortileV1::TileCoordinates]
        attr_accessor :coordinates
      
        # Features present on this map tile.
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::VectortileV1::Feature>]
        attr_accessor :features
      
        # Resource name of the tile. The tile resource name is prefixed by its
        # collection ID `tiles/` followed by the resource ID, which encodes the tile's
        # global x and y coordinates and zoom level as `@,,z`. For example, `tiles/@1,2,
        # 3z`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Data providers for the data contained in this tile.
        # Corresponds to the JSON property `providers`
        # @return [Array<Google::Apis::VectortileV1::ProviderInfo>]
        attr_accessor :providers
      
        # Tile response status code to support tile caching.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # An opaque value, usually less than 30 characters, that contains version info
        # about this tile and the data that was used to generate it. The client should
        # store this value in its tile cache and pass it back to the API in the
        # client_tile_version_id field of subsequent tile requests in order to enable
        # the API to detect when the new tile would be the same as the one the client
        # already has in its cache. Also see STATUS_OK_DATA_UNCHANGED.
        # Corresponds to the JSON property `versionId`
        # @return [String]
        attr_accessor :version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coordinates = args[:coordinates] if args.key?(:coordinates)
          @features = args[:features] if args.key?(:features)
          @name = args[:name] if args.key?(:name)
          @providers = args[:providers] if args.key?(:providers)
          @status = args[:status] if args.key?(:status)
          @version_id = args[:version_id] if args.key?(:version_id)
        end
      end
      
      # A packed representation of a 2D grid of uniformly spaced points containing
      # elevation data. Each point within the grid represents the altitude in meters
      # above average sea level at that location within the tile. Elevations provided
      # are (generally) relative to the EGM96 geoid, however some areas will be
      # relative to NAVD88. EGM96 and NAVD88 are off by no more than 2 meters. The
      # grid is oriented north-west to south-east, as illustrated: rows[0].a[0] rows[0]
      # .a[m] +-----------------+ | | | N | | ^ | | | | | W <-----> E | | | | | v | |
      # S | | | +-----------------+ rows[n].a[0] rows[n].a[m] Rather than storing the
      # altitudes directly, we store the diffs between them as integers at some
      # requested level of precision to take advantage of integer packing. The actual
      # altitude values a[] can be reconstructed using the scale and each row's
      # first_altitude and altitude_diff fields.
      class FirstDerivativeElevationGrid
        include Google::Apis::Core::Hashable
      
        # A multiplier applied to the altitude fields below to extract the actual
        # altitudes in meters from the elevation grid.
        # Corresponds to the JSON property `altitudeMultiplier`
        # @return [Float]
        attr_accessor :altitude_multiplier
      
        # Rows of points containing altitude data making up the elevation grid. Each row
        # is the same length. Rows are ordered from north to south. E.g: rows[0] is the
        # north-most row, and rows[n] is the south-most row.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::VectortileV1::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @altitude_multiplier = args[:altitude_multiplier] if args.key?(:altitude_multiplier)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Represents the geometry of a feature, that is, the shape that it has on the
      # map. The local tile coordinate system has the origin at the north-west (upper-
      # left) corner of the tile, and is scaled to 4096 units across each edge. The
      # height (Z) axis has the same scale factor: an extruded area with a max_z value
      # of 4096 has the same height as the width of the tile that it is on. There is
      # no clipping boundary, so it is possible that some coordinates will lie outside
      # the tile boundaries.
      class Geometry
        include Google::Apis::Core::Hashable
      
        # The areas present in this geometry.
        # Corresponds to the JSON property `areas`
        # @return [Array<Google::Apis::VectortileV1::Area>]
        attr_accessor :areas
      
        # The extruded areas present in this geometry.
        # Corresponds to the JSON property `extrudedAreas`
        # @return [Array<Google::Apis::VectortileV1::ExtrudedArea>]
        attr_accessor :extruded_areas
      
        # The lines present in this geometry.
        # Corresponds to the JSON property `lines`
        # @return [Array<Google::Apis::VectortileV1::Line>]
        attr_accessor :lines
      
        # The modeled volumes present in this geometry.
        # Corresponds to the JSON property `modeledVolumes`
        # @return [Array<Google::Apis::VectortileV1::ModeledVolume>]
        attr_accessor :modeled_volumes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @areas = args[:areas] if args.key?(:areas)
          @extruded_areas = args[:extruded_areas] if args.key?(:extruded_areas)
          @lines = args[:lines] if args.key?(:lines)
          @modeled_volumes = args[:modeled_volumes] if args.key?(:modeled_volumes)
        end
      end
      
      # Represents a 2D polyline. Used to represent segments such as roads, train
      # tracks, etc.
      class Line
        include Google::Apis::Core::Hashable
      
        # 2D vertex list used for lines and areas. Each entry represents an offset from
        # the previous one in local tile coordinates. The first entry is offset from (0,
        # 0). For example, the list of vertices [(1,1), (2, 2), (1, 2)] would be encoded
        # in vertex offsets as [(1, 1), (1, 1), (-1, 0)].
        # Corresponds to the JSON property `vertexOffsets`
        # @return [Google::Apis::VectortileV1::Vertex2DList]
        attr_accessor :vertex_offsets
      
        # The z-order of the line. Lines with a lower z-order should be rendered beneath
        # lines with a higher z-order. This z-ordering does not imply anything about the
        # altitude of the area relative to the ground, but it can be used to prevent z-
        # fighting during rendering on the client. In general, larger and more important
        # road features will have a higher z-order line associated with them. This z-
        # ordering can only be used to compare lines, and cannot be compared with the
        # z_order field in the Area message. The z-order may be negative or zero.
        # Corresponds to the JSON property `zOrder`
        # @return [Fixnum]
        attr_accessor :z_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vertex_offsets = args[:vertex_offsets] if args.key?(:vertex_offsets)
          @z_order = args[:z_order] if args.key?(:z_order)
        end
      end
      
      # Represents a modeled volume in 3D space. Used to represent 3D buildings.
      class ModeledVolume
        include Google::Apis::Core::Hashable
      
        # The triangle strips present in this mesh.
        # Corresponds to the JSON property `strips`
        # @return [Array<Google::Apis::VectortileV1::TriangleStrip>]
        attr_accessor :strips
      
        # 3D vertex list used for modeled volumes. Each entry represents an offset from
        # the previous one in local tile coordinates. The first coordinate is offset
        # from (0, 0, 0).
        # Corresponds to the JSON property `vertexOffsets`
        # @return [Google::Apis::VectortileV1::Vertex3DList]
        attr_accessor :vertex_offsets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @strips = args[:strips] if args.key?(:strips)
          @vertex_offsets = args[:vertex_offsets] if args.key?(:vertex_offsets)
        end
      end
      
      # Information about the data providers that should be included in the
      # attribution string shown by the client.
      class ProviderInfo
        include Google::Apis::Core::Hashable
      
        # Attribution string for this provider. This string is not localized.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Represents a relation to another feature in the tile. For example, a building
      # might be occupied by a given POI. The related feature can be retrieved using
      # the related feature index.
      class Relation
        include Google::Apis::Core::Hashable
      
        # Zero-based index to look up the related feature from the list of features in
        # the tile.
        # Corresponds to the JSON property `relatedFeatureIndex`
        # @return [Fixnum]
        attr_accessor :related_feature_index
      
        # Relation type between the origin feature to the related feature.
        # Corresponds to the JSON property `relationType`
        # @return [String]
        attr_accessor :relation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @related_feature_index = args[:related_feature_index] if args.key?(:related_feature_index)
          @relation_type = args[:relation_type] if args.key?(:relation_type)
        end
      end
      
      # Extra metadata relating to roads.
      class RoadInfo
        include Google::Apis::Core::Hashable
      
        # Road has signage discouraging or prohibiting use by the general public. E.g.,
        # roads with signs that say "Private", or "No trespassing."
        # Corresponds to the JSON property `isPrivate`
        # @return [Boolean]
        attr_accessor :is_private
        alias_method :is_private?, :is_private
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_private = args[:is_private] if args.key?(:is_private)
        end
      end
      
      # A row of altitude points in the elevation grid, ordered from west to east.
      class Row
        include Google::Apis::Core::Hashable
      
        # The difference between each successive pair of altitudes, from west to east.
        # The first, westmost point, is just the altitude rather than a diff. The units
        # are specified by the altitude_multiplier parameter above; the value in meters
        # is given by altitude_multiplier * altitude_diffs[n]. The altitude row (in
        # metres above sea level) can be reconstructed with: a[0] = altitude_diffs[0] *
        # altitude_multiplier when n > 0, a[n] = a[n-1] + altitude_diffs[n-1] *
        # altitude_multiplier.
        # Corresponds to the JSON property `altitudeDiffs`
        # @return [Array<Fixnum>]
        attr_accessor :altitude_diffs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @altitude_diffs = args[:altitude_diffs] if args.key?(:altitude_diffs)
        end
      end
      
      # A packed representation of a 2D grid of uniformly spaced points containing
      # elevation data. Each point within the grid represents the altitude in meters
      # above average sea level at that location within the tile. Elevations provided
      # are (generally) relative to the EGM96 geoid, however some areas will be
      # relative to NAVD88. EGM96 and NAVD88 are off by no more than 2 meters. The
      # grid is oriented north-west to south-east, as illustrated: rows[0].a[0] rows[0]
      # .a[m] +-----------------+ | | | N | | ^ | | | | | W <-----> E | | | | | v | |
      # S | | | +-----------------+ rows[n].a[0] rows[n].a[m] Rather than storing the
      # altitudes directly, we store the diffs of the diffs between them as integers
      # at some requested level of precision to take advantage of integer packing.
      # Note that the data is packed in such a way that is fast to decode in Unity and
      # that further optimizes wire size.
      class SecondDerivativeElevationGrid
        include Google::Apis::Core::Hashable
      
        # A multiplier applied to the elements in the encoded data to extract the actual
        # altitudes in meters.
        # Corresponds to the JSON property `altitudeMultiplier`
        # @return [Float]
        attr_accessor :altitude_multiplier
      
        # The number of columns included in the encoded elevation data (i.e. the
        # horizontal resolution of the grid).
        # Corresponds to the JSON property `columnCount`
        # @return [Fixnum]
        attr_accessor :column_count
      
        # A stream of elements each representing a point on the tile running across each
        # row from left to right, top to bottom. There will be precisely
        # horizontal_resolution * vertical_resolution elements in the stream. The
        # elements are not the heights, rather the second order derivative of the values
        # one would expect in a stream of height data. Each element is a varint with the
        # following encoding: -----------------------------------------------------------
        # -------------| | Head Nibble | ------------------------------------------------
        # ------------------------| | Bit 0 | Bit 1 | Bits 2-3 | | Terminator| Sign (1=
        # neg) | Least significant 2 bits of absolute error | ---------------------------
        # ---------------------------------------------| | Tail Nibble #1 | -------------
        # -----------------------------------------------------------| | Bit 0 | Bit 1-3
        # | | Terminator| Least significant 3 bits of absolute error | ------------------
        # ------------------------------------------------------| | ... | Tail Nibble #n
        # | ------------------------------------------------------------------------| |
        # Bit 0 | Bit 1-3 | | Terminator| Least significant 3 bits of absolute error | --
        # ----------------------------------------------------------------------|
        # Corresponds to the JSON property `encodedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encoded_data
      
        # The number of rows included in the encoded elevation data (i.e. the vertical
        # resolution of the grid).
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @altitude_multiplier = args[:altitude_multiplier] if args.key?(:altitude_multiplier)
          @column_count = args[:column_count] if args.key?(:column_count)
          @encoded_data = args[:encoded_data] if args.key?(:encoded_data)
          @row_count = args[:row_count] if args.key?(:row_count)
        end
      end
      
      # Extra metadata relating to segments.
      class SegmentInfo
        include Google::Apis::Core::Hashable
      
        # Extra metadata relating to roads.
        # Corresponds to the JSON property `roadInfo`
        # @return [Google::Apis::VectortileV1::RoadInfo]
        attr_accessor :road_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @road_info = args[:road_info] if args.key?(:road_info)
        end
      end
      
      # A tile containing information about the terrain located in the region it
      # covers.
      class TerrainTile
        include Google::Apis::Core::Hashable
      
        # Global tile coordinates. Global tile coordinates reference a specific tile on
        # the map at a specific zoom level. The origin of this coordinate system is
        # always at the northwest corner of the map, with x values increasing from west
        # to east and y values increasing from north to south. Tiles are indexed using x,
        # y coordinates from that origin. The zoom level containing the entire world in
        # a tile is 0, and it increases as you zoom in. Zoom level n + 1 will contain 4
        # times as many tiles as zoom level n. The zoom level controls the level of
        # detail of the data that is returned. In particular, this affects the set of
        # feature types returned, their density, and geometry simplification. The exact
        # tile contents may change over time, but care will be taken to keep supporting
        # the most important use cases. For example, zoom level 15 shows roads for
        # orientation and planning in the local neighborhood and zoom level 17 shows
        # buildings to give users on foot a sense of situational awareness.
        # Corresponds to the JSON property `coordinates`
        # @return [Google::Apis::VectortileV1::TileCoordinates]
        attr_accessor :coordinates
      
        # A packed representation of a 2D grid of uniformly spaced points containing
        # elevation data. Each point within the grid represents the altitude in meters
        # above average sea level at that location within the tile. Elevations provided
        # are (generally) relative to the EGM96 geoid, however some areas will be
        # relative to NAVD88. EGM96 and NAVD88 are off by no more than 2 meters. The
        # grid is oriented north-west to south-east, as illustrated: rows[0].a[0] rows[0]
        # .a[m] +-----------------+ | | | N | | ^ | | | | | W <-----> E | | | | | v | |
        # S | | | +-----------------+ rows[n].a[0] rows[n].a[m] Rather than storing the
        # altitudes directly, we store the diffs between them as integers at some
        # requested level of precision to take advantage of integer packing. The actual
        # altitude values a[] can be reconstructed using the scale and each row's
        # first_altitude and altitude_diff fields.
        # Corresponds to the JSON property `firstDerivative`
        # @return [Google::Apis::VectortileV1::FirstDerivativeElevationGrid]
        attr_accessor :first_derivative
      
        # Resource name of the tile. The tile resource name is prefixed by its
        # collection ID `terrain/` followed by the resource ID, which encodes the tile's
        # global x and y coordinates and zoom level as `@,,z`. For example, `terrain/@1,
        # 2,3z`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A packed representation of a 2D grid of uniformly spaced points containing
        # elevation data. Each point within the grid represents the altitude in meters
        # above average sea level at that location within the tile. Elevations provided
        # are (generally) relative to the EGM96 geoid, however some areas will be
        # relative to NAVD88. EGM96 and NAVD88 are off by no more than 2 meters. The
        # grid is oriented north-west to south-east, as illustrated: rows[0].a[0] rows[0]
        # .a[m] +-----------------+ | | | N | | ^ | | | | | W <-----> E | | | | | v | |
        # S | | | +-----------------+ rows[n].a[0] rows[n].a[m] Rather than storing the
        # altitudes directly, we store the diffs of the diffs between them as integers
        # at some requested level of precision to take advantage of integer packing.
        # Note that the data is packed in such a way that is fast to decode in Unity and
        # that further optimizes wire size.
        # Corresponds to the JSON property `secondDerivative`
        # @return [Google::Apis::VectortileV1::SecondDerivativeElevationGrid]
        attr_accessor :second_derivative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coordinates = args[:coordinates] if args.key?(:coordinates)
          @first_derivative = args[:first_derivative] if args.key?(:first_derivative)
          @name = args[:name] if args.key?(:name)
          @second_derivative = args[:second_derivative] if args.key?(:second_derivative)
        end
      end
      
      # Global tile coordinates. Global tile coordinates reference a specific tile on
      # the map at a specific zoom level. The origin of this coordinate system is
      # always at the northwest corner of the map, with x values increasing from west
      # to east and y values increasing from north to south. Tiles are indexed using x,
      # y coordinates from that origin. The zoom level containing the entire world in
      # a tile is 0, and it increases as you zoom in. Zoom level n + 1 will contain 4
      # times as many tiles as zoom level n. The zoom level controls the level of
      # detail of the data that is returned. In particular, this affects the set of
      # feature types returned, their density, and geometry simplification. The exact
      # tile contents may change over time, but care will be taken to keep supporting
      # the most important use cases. For example, zoom level 15 shows roads for
      # orientation and planning in the local neighborhood and zoom level 17 shows
      # buildings to give users on foot a sense of situational awareness.
      class TileCoordinates
        include Google::Apis::Core::Hashable
      
        # Required. The x coordinate.
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # Required. The y coordinate.
        # Corresponds to the JSON property `y`
        # @return [Fixnum]
        attr_accessor :y
      
        # Required. The Google Maps API zoom level.
        # Corresponds to the JSON property `zoom`
        # @return [Fixnum]
        attr_accessor :zoom
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
          @zoom = args[:zoom] if args.key?(:zoom)
        end
      end
      
      # Represents a strip of triangles. Each triangle uses the last edge of the
      # previous one. The following diagram shows an example of a triangle strip, with
      # each vertex labeled with its index in the vertex_index array. (1)-----(3) / \ /
      # \ / \ / \ / \ / \ (0)-----(2)-----(4) Vertices may be in either clockwise or
      # counter-clockwise order.
      class TriangleStrip
        include Google::Apis::Core::Hashable
      
        # Index into the vertex_offset array representing the next vertex in the
        # triangle strip.
        # Corresponds to the JSON property `vertexIndices`
        # @return [Array<Fixnum>]
        attr_accessor :vertex_indices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vertex_indices = args[:vertex_indices] if args.key?(:vertex_indices)
        end
      end
      
      # 2D vertex list used for lines and areas. Each entry represents an offset from
      # the previous one in local tile coordinates. The first entry is offset from (0,
      # 0). For example, the list of vertices [(1,1), (2, 2), (1, 2)] would be encoded
      # in vertex offsets as [(1, 1), (1, 1), (-1, 0)].
      class Vertex2DList
        include Google::Apis::Core::Hashable
      
        # List of x-offsets in local tile coordinates.
        # Corresponds to the JSON property `xOffsets`
        # @return [Array<Fixnum>]
        attr_accessor :x_offsets
      
        # List of y-offsets in local tile coordinates.
        # Corresponds to the JSON property `yOffsets`
        # @return [Array<Fixnum>]
        attr_accessor :y_offsets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x_offsets = args[:x_offsets] if args.key?(:x_offsets)
          @y_offsets = args[:y_offsets] if args.key?(:y_offsets)
        end
      end
      
      # 3D vertex list used for modeled volumes. Each entry represents an offset from
      # the previous one in local tile coordinates. The first coordinate is offset
      # from (0, 0, 0).
      class Vertex3DList
        include Google::Apis::Core::Hashable
      
        # List of x-offsets in local tile coordinates.
        # Corresponds to the JSON property `xOffsets`
        # @return [Array<Fixnum>]
        attr_accessor :x_offsets
      
        # List of y-offsets in local tile coordinates.
        # Corresponds to the JSON property `yOffsets`
        # @return [Array<Fixnum>]
        attr_accessor :y_offsets
      
        # List of z-offsets in local tile coordinates.
        # Corresponds to the JSON property `zOffsets`
        # @return [Array<Fixnum>]
        attr_accessor :z_offsets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x_offsets = args[:x_offsets] if args.key?(:x_offsets)
          @y_offsets = args[:y_offsets] if args.key?(:y_offsets)
          @z_offsets = args[:z_offsets] if args.key?(:z_offsets)
        end
      end
    end
  end
end
