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
      
      class Area
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtrudedArea
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureTile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FirstDerivativeElevationGrid
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Geometry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Line
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModeledVolume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProviderInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Relation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoadInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecondDerivativeElevationGrid
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TerrainTile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TileCoordinates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriangleStrip
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vertex2DList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vertex3DList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Area
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_external_edges, as: 'hasExternalEdges'
          collection :internal_edges, as: 'internalEdges'
          collection :loop_breaks, as: 'loopBreaks'
          collection :triangle_indices, as: 'triangleIndices'
          property :type, as: 'type'
          property :vertex_offsets, as: 'vertexOffsets', class: Google::Apis::VectortileV1::Vertex2DList, decorator: Google::Apis::VectortileV1::Vertex2DList::Representation
      
          property :z_order, as: 'zOrder'
        end
      end
      
      class ExtrudedArea
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :area, as: 'area', class: Google::Apis::VectortileV1::Area, decorator: Google::Apis::VectortileV1::Area::Representation
      
          property :max_z, as: 'maxZ'
          property :min_z, as: 'minZ'
        end
      end
      
      class Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :geometry, as: 'geometry', class: Google::Apis::VectortileV1::Geometry, decorator: Google::Apis::VectortileV1::Geometry::Representation
      
          property :place_id, as: 'placeId'
          collection :relations, as: 'relations', class: Google::Apis::VectortileV1::Relation, decorator: Google::Apis::VectortileV1::Relation::Representation
      
          property :segment_info, as: 'segmentInfo', class: Google::Apis::VectortileV1::SegmentInfo, decorator: Google::Apis::VectortileV1::SegmentInfo::Representation
      
          property :type, as: 'type'
        end
      end
      
      class FeatureTile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coordinates, as: 'coordinates', class: Google::Apis::VectortileV1::TileCoordinates, decorator: Google::Apis::VectortileV1::TileCoordinates::Representation
      
          collection :features, as: 'features', class: Google::Apis::VectortileV1::Feature, decorator: Google::Apis::VectortileV1::Feature::Representation
      
          property :name, as: 'name'
          collection :providers, as: 'providers', class: Google::Apis::VectortileV1::ProviderInfo, decorator: Google::Apis::VectortileV1::ProviderInfo::Representation
      
          property :status, as: 'status'
          property :version_id, as: 'versionId'
        end
      end
      
      class FirstDerivativeElevationGrid
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :altitude_multiplier, as: 'altitudeMultiplier'
          collection :rows, as: 'rows', class: Google::Apis::VectortileV1::Row, decorator: Google::Apis::VectortileV1::Row::Representation
      
        end
      end
      
      class Geometry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :areas, as: 'areas', class: Google::Apis::VectortileV1::Area, decorator: Google::Apis::VectortileV1::Area::Representation
      
          collection :extruded_areas, as: 'extrudedAreas', class: Google::Apis::VectortileV1::ExtrudedArea, decorator: Google::Apis::VectortileV1::ExtrudedArea::Representation
      
          collection :lines, as: 'lines', class: Google::Apis::VectortileV1::Line, decorator: Google::Apis::VectortileV1::Line::Representation
      
          collection :modeled_volumes, as: 'modeledVolumes', class: Google::Apis::VectortileV1::ModeledVolume, decorator: Google::Apis::VectortileV1::ModeledVolume::Representation
      
        end
      end
      
      class Line
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vertex_offsets, as: 'vertexOffsets', class: Google::Apis::VectortileV1::Vertex2DList, decorator: Google::Apis::VectortileV1::Vertex2DList::Representation
      
          property :z_order, as: 'zOrder'
        end
      end
      
      class ModeledVolume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :strips, as: 'strips', class: Google::Apis::VectortileV1::TriangleStrip, decorator: Google::Apis::VectortileV1::TriangleStrip::Representation
      
          property :vertex_offsets, as: 'vertexOffsets', class: Google::Apis::VectortileV1::Vertex3DList, decorator: Google::Apis::VectortileV1::Vertex3DList::Representation
      
        end
      end
      
      class ProviderInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
        end
      end
      
      class Relation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :related_feature_index, as: 'relatedFeatureIndex'
          property :relation_type, as: 'relationType'
        end
      end
      
      class RoadInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_private, as: 'isPrivate'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :altitude_diffs, as: 'altitudeDiffs'
        end
      end
      
      class SecondDerivativeElevationGrid
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :altitude_multiplier, as: 'altitudeMultiplier'
          property :column_count, as: 'columnCount'
          property :encoded_data, :base64 => true, as: 'encodedData'
          property :row_count, as: 'rowCount'
        end
      end
      
      class SegmentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :road_info, as: 'roadInfo', class: Google::Apis::VectortileV1::RoadInfo, decorator: Google::Apis::VectortileV1::RoadInfo::Representation
      
        end
      end
      
      class TerrainTile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coordinates, as: 'coordinates', class: Google::Apis::VectortileV1::TileCoordinates, decorator: Google::Apis::VectortileV1::TileCoordinates::Representation
      
          property :first_derivative, as: 'firstDerivative', class: Google::Apis::VectortileV1::FirstDerivativeElevationGrid, decorator: Google::Apis::VectortileV1::FirstDerivativeElevationGrid::Representation
      
          property :name, as: 'name'
          property :second_derivative, as: 'secondDerivative', class: Google::Apis::VectortileV1::SecondDerivativeElevationGrid, decorator: Google::Apis::VectortileV1::SecondDerivativeElevationGrid::Representation
      
        end
      end
      
      class TileCoordinates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
          property :zoom, as: 'zoom'
        end
      end
      
      class TriangleStrip
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vertex_indices, as: 'vertexIndices'
        end
      end
      
      class Vertex2DList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :x_offsets, as: 'xOffsets'
          collection :y_offsets, as: 'yOffsets'
        end
      end
      
      class Vertex3DList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :x_offsets, as: 'xOffsets'
          collection :y_offsets, as: 'yOffsets'
          collection :z_offsets, as: 'zOffsets'
        end
      end
    end
  end
end
