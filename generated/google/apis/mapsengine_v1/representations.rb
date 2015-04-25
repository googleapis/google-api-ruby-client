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
    module MapsengineV1
      
      class GeoJsonGeometryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MapItemRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AcquisitionTimeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AssetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class AssetsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class BorderRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ColorRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DatasourceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DisplayRuleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FeatureRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FeatureInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FeaturesBatchDeleteRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FeaturesBatchInsertRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FeaturesBatchPatchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FeaturesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FileRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class FilterRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeoJsonGeometryCollectionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeoJsonLineStringRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeoJsonMultiLineStringRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeoJsonMultiPointRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeoJsonMultiPolygonRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeoJsonPointRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeoJsonPolygonRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class IconRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class IconStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class IconsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LabelStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LayerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LayersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LineStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
        class StrokeRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class MapRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MapFolderRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MapKmlLinkRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MapLayerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MapsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ParentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ParentsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionsBatchDeleteRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionsBatchDeleteResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionsBatchUpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionsBatchUpdateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PointStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PolygonStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ProcessResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ProjectRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ProjectsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishedLayerRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishedLayersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishedMapRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PublishedMapsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RasterRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RasterCollectionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RasterCollectionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RasterCollectionsRasterRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RasterCollectionsRasterBatchDeleteRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RasterCollectionsRastersBatchDeleteResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RasterCollectionsRastersBatchInsertRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RasterCollectionsRastersBatchInsertResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RasterCollectionsRastersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RastersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ScaledShapeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ScalingFunctionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SchemaRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SizeRangeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TableRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TableColumnRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TablesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ValueRangeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VectorStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ZoomLevelsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class GeoJsonGeometryRepresentation < Google::Apis::Core::JsonRepresentation
        def from_hash(hash, *args)
          case hash['type']
          when 'GeometryCollection'
            Google::Apis::MapsengineV1::GeoJsonGeometryCollectionRepresentation.new(Google::Apis::MapsengineV1::GeoJsonGeometryCollection.new).from_hash(hash, *args)
          when 'LineString'
            Google::Apis::MapsengineV1::GeoJsonLineStringRepresentation.new(Google::Apis::MapsengineV1::GeoJsonLineString.new).from_hash(hash, *args)
          when 'MultiLineString'
            Google::Apis::MapsengineV1::GeoJsonMultiLineStringRepresentation.new(Google::Apis::MapsengineV1::GeoJsonMultiLineString.new).from_hash(hash, *args)
          when 'MultiPoint'
            Google::Apis::MapsengineV1::GeoJsonMultiPointRepresentation.new(Google::Apis::MapsengineV1::GeoJsonMultiPoint.new).from_hash(hash, *args)
          when 'MultiPolygon'
            Google::Apis::MapsengineV1::GeoJsonMultiPolygonRepresentation.new(Google::Apis::MapsengineV1::GeoJsonMultiPolygon.new).from_hash(hash, *args)
          when 'Point'
            Google::Apis::MapsengineV1::GeoJsonPointRepresentation.new(Google::Apis::MapsengineV1::GeoJsonPoint.new).from_hash(hash, *args)
          when 'Polygon'
            Google::Apis::MapsengineV1::GeoJsonPolygonRepresentation.new(Google::Apis::MapsengineV1::GeoJsonPolygon.new).from_hash(hash, *args)
          end
        end
        
        def to_hash(*args)
          case represented
          when Google::Apis::MapsengineV1::GeoJsonGeometryCollection
            Google::Apis::MapsengineV1::GeoJsonGeometryCollectionRepresentation.new(represented).to_hash(*args)
          when Google::Apis::MapsengineV1::GeoJsonLineString
            Google::Apis::MapsengineV1::GeoJsonLineStringRepresentation.new(represented).to_hash(*args)
          when Google::Apis::MapsengineV1::GeoJsonMultiLineString
            Google::Apis::MapsengineV1::GeoJsonMultiLineStringRepresentation.new(represented).to_hash(*args)
          when Google::Apis::MapsengineV1::GeoJsonMultiPoint
            Google::Apis::MapsengineV1::GeoJsonMultiPointRepresentation.new(represented).to_hash(*args)
          when Google::Apis::MapsengineV1::GeoJsonMultiPolygon
            Google::Apis::MapsengineV1::GeoJsonMultiPolygonRepresentation.new(represented).to_hash(*args)
          when Google::Apis::MapsengineV1::GeoJsonPoint
            Google::Apis::MapsengineV1::GeoJsonPointRepresentation.new(represented).to_hash(*args)
          when Google::Apis::MapsengineV1::GeoJsonPolygon
            Google::Apis::MapsengineV1::GeoJsonPolygonRepresentation.new(represented).to_hash(*args)
          end
        end
      end

      # @private
      class MapItemRepresentation < Google::Apis::Core::JsonRepresentation
        def from_hash(hash, *args)
          case hash['type']
          when 'folder'
            Google::Apis::MapsengineV1::MapFolderRepresentation.new(Google::Apis::MapsengineV1::MapFolder.new).from_hash(hash, *args)
          when 'kmlLink'
            Google::Apis::MapsengineV1::MapKmlLinkRepresentation.new(Google::Apis::MapsengineV1::MapKmlLink.new).from_hash(hash, *args)
          when 'layer'
            Google::Apis::MapsengineV1::MapLayerRepresentation.new(Google::Apis::MapsengineV1::MapLayer.new).from_hash(hash, *args)
          end
        end
        
        def to_hash(*args)
          case represented
          when Google::Apis::MapsengineV1::MapFolder
            Google::Apis::MapsengineV1::MapFolderRepresentation.new(represented).to_hash(*args)
          when Google::Apis::MapsengineV1::MapKmlLink
            Google::Apis::MapsengineV1::MapKmlLinkRepresentation.new(represented).to_hash(*args)
          when Google::Apis::MapsengineV1::MapLayer
            Google::Apis::MapsengineV1::MapLayerRepresentation.new(represented).to_hash(*args)
          end
        end
      end

      # @private
      class AcquisitionTimeRepresentation < Google::Apis::Core::JsonRepresentation
        property :end, as: 'end', type: DateTime
        property :precision, as: 'precision'
        property :start, as: 'start', type: DateTime
      end

      # @private
      class AssetRepresentation < Google::Apis::Core::JsonRepresentation
        collection :bbox, as: 'bbox'
        
        property :creation_time, as: 'creationTime', type: DateTime
        property :creator_email, as: 'creatorEmail'
        property :description, as: 'description'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :last_modified_time, as: 'lastModifiedTime', type: DateTime
        property :last_modifier_email, as: 'lastModifierEmail'
        property :name, as: 'name'
        property :project_id, as: 'projectId'
        property :resource, as: 'resource'
        collection :tags, as: 'tags'
        
        property :type, as: 'type'
        property :writers_can_edit_permissions, as: 'writersCanEditPermissions'
      end

      # @private
      class AssetsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :assets, as: 'assets', class: Google::Apis::MapsengineV1::Asset, decorator: Google::Apis::MapsengineV1::AssetRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class BorderRepresentation < Google::Apis::Core::JsonRepresentation
        property :color, as: 'color'
        property :opacity, as: 'opacity'
        property :width, as: 'width'
      end

      # @private
      class ColorRepresentation < Google::Apis::Core::JsonRepresentation
        property :color, as: 'color'
        property :opacity, as: 'opacity'
      end

      # @private
      class DatasourceRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
      end

      # @private
      class DisplayRuleRepresentation < Google::Apis::Core::JsonRepresentation
        collection :filters, as: 'filters', class: Google::Apis::MapsengineV1::Filter, decorator: Google::Apis::MapsengineV1::FilterRepresentation
        
        
        property :line_options, as: 'lineOptions', class: Google::Apis::MapsengineV1::LineStyle, decorator: Google::Apis::MapsengineV1::LineStyleRepresentation
        
        property :name, as: 'name'
        property :point_options, as: 'pointOptions', class: Google::Apis::MapsengineV1::PointStyle, decorator: Google::Apis::MapsengineV1::PointStyleRepresentation
        
        property :polygon_options, as: 'polygonOptions', class: Google::Apis::MapsengineV1::PolygonStyle, decorator: Google::Apis::MapsengineV1::PolygonStyleRepresentation
        
        property :zoom_levels, as: 'zoomLevels', class: Google::Apis::MapsengineV1::ZoomLevels, decorator: Google::Apis::MapsengineV1::ZoomLevelsRepresentation
      end

      # @private
      class FeatureRepresentation < Google::Apis::Core::JsonRepresentation
        property :geometry, as: 'geometry', class: Google::Apis::MapsengineV1::GeoJsonGeometry, decorator: Google::Apis::MapsengineV1::GeoJsonGeometryRepresentation
        
        hash :properties, as: 'properties'
        
        property :type, as: 'type'
      end

      # @private
      class FeatureInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :content, as: 'content'
      end

      # @private
      class FeaturesBatchDeleteRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :gx_ids, as: 'gx_ids'
        
        collection :primary_keys, as: 'primaryKeys'
      end

      # @private
      class FeaturesBatchInsertRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :features, as: 'features', class: Google::Apis::MapsengineV1::Feature, decorator: Google::Apis::MapsengineV1::FeatureRepresentation
        
        
        property :normalize_geometries, as: 'normalizeGeometries'
      end

      # @private
      class FeaturesBatchPatchRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :features, as: 'features', class: Google::Apis::MapsengineV1::Feature, decorator: Google::Apis::MapsengineV1::FeatureRepresentation
        
        
        property :normalize_geometries, as: 'normalizeGeometries'
      end

      # @private
      class FeaturesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :allowed_queries_per_second, as: 'allowedQueriesPerSecond'
        collection :features, as: 'features', class: Google::Apis::MapsengineV1::Feature, decorator: Google::Apis::MapsengineV1::FeatureRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
        property :schema, as: 'schema', class: Google::Apis::MapsengineV1::Schema, decorator: Google::Apis::MapsengineV1::SchemaRepresentation
        
        property :type, as: 'type'
      end

      # @private
      class FileRepresentation < Google::Apis::Core::JsonRepresentation
        property :filename, as: 'filename'
        property :size, as: 'size'
        property :upload_status, as: 'uploadStatus'
      end

      # @private
      class FilterRepresentation < Google::Apis::Core::JsonRepresentation
        property :column, as: 'column'
        property :operator, as: 'operator'
        property :value, as: 'value'
      end

      # @private
      class GeoJsonGeometryCollectionRepresentation < Google::Apis::Core::JsonRepresentation
        collection :geometries, as: 'geometries', class: Google::Apis::MapsengineV1::GeoJsonGeometry, decorator: Google::Apis::MapsengineV1::GeoJsonGeometryRepresentation
        
        
        property :type, as: 'type'
      end

      # @private
      class GeoJsonLineStringRepresentation < Google::Apis::Core::JsonRepresentation
        collection :coordinates, as: 'coordinates', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :type, as: 'type'
      end

      # @private
      class GeoJsonMultiLineStringRepresentation < Google::Apis::Core::JsonRepresentation
        collection :coordinates, as: 'coordinates', :class => Array do
          include Representable::JSON::Collection
          items :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        end
        
        
        property :type, as: 'type'
      end

      # @private
      class GeoJsonMultiPointRepresentation < Google::Apis::Core::JsonRepresentation
        collection :coordinates, as: 'coordinates', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :type, as: 'type'
      end

      # @private
      class GeoJsonMultiPolygonRepresentation < Google::Apis::Core::JsonRepresentation
        collection :coordinates, as: 'coordinates', :class => Array do
          include Representable::JSON::Collection
          items :class => Array do
          include Representable::JSON::Collection
          items :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        end
        
        end
        
        
        property :type, as: 'type'
      end

      # @private
      class GeoJsonPointRepresentation < Google::Apis::Core::JsonRepresentation
        collection :coordinates, as: 'coordinates'
        
        property :type, as: 'type'
      end

      # @private
      class GeoJsonPolygonRepresentation < Google::Apis::Core::JsonRepresentation
        collection :coordinates, as: 'coordinates', :class => Array do
          include Representable::JSON::Collection
          items :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        end
        
        
        property :type, as: 'type'
      end

      # @private
      class IconRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :id, as: 'id'
        property :name, as: 'name'
      end

      # @private
      class IconStyleRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :name, as: 'name'
        property :scaled_shape, as: 'scaledShape', class: Google::Apis::MapsengineV1::ScaledShape, decorator: Google::Apis::MapsengineV1::ScaledShapeRepresentation
        
        property :scaling_function, as: 'scalingFunction', class: Google::Apis::MapsengineV1::ScalingFunction, decorator: Google::Apis::MapsengineV1::ScalingFunctionRepresentation
      end

      # @private
      class IconsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :icons, as: 'icons', class: Google::Apis::MapsengineV1::Icon, decorator: Google::Apis::MapsengineV1::IconRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class LabelStyleRepresentation < Google::Apis::Core::JsonRepresentation
        property :color, as: 'color'
        property :column, as: 'column'
        property :font_style, as: 'fontStyle'
        property :font_weight, as: 'fontWeight'
        property :opacity, as: 'opacity'
        property :outline, as: 'outline', class: Google::Apis::MapsengineV1::Color, decorator: Google::Apis::MapsengineV1::ColorRepresentation
        
        property :size, as: 'size'
      end

      # @private
      class LayerRepresentation < Google::Apis::Core::JsonRepresentation
        collection :bbox, as: 'bbox'
        
        property :creation_time, as: 'creationTime', type: DateTime
        property :creator_email, as: 'creatorEmail'
        property :datasource_type, as: 'datasourceType'
        collection :datasources, as: 'datasources', class: Google::Apis::MapsengineV1::Datasource, decorator: Google::Apis::MapsengineV1::DatasourceRepresentation
        
        
        property :description, as: 'description'
        property :draft_access_list, as: 'draftAccessList'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :last_modified_time, as: 'lastModifiedTime', type: DateTime
        property :last_modifier_email, as: 'lastModifierEmail'
        property :layer_type, as: 'layerType'
        property :name, as: 'name'
        property :processing_status, as: 'processingStatus'
        property :project_id, as: 'projectId'
        property :published_access_list, as: 'publishedAccessList'
        property :publishing_status, as: 'publishingStatus'
        property :style, as: 'style', class: Google::Apis::MapsengineV1::VectorStyle, decorator: Google::Apis::MapsengineV1::VectorStyleRepresentation
        
        collection :tags, as: 'tags'
        
        property :writers_can_edit_permissions, as: 'writersCanEditPermissions'
      end

      # @private
      class LayersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :layers, as: 'layers', class: Google::Apis::MapsengineV1::Layer, decorator: Google::Apis::MapsengineV1::LayerRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class LineStyleRepresentation < Google::Apis::Core::JsonRepresentation
        class StrokeRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :border, as: 'border', class: Google::Apis::MapsengineV1::Border, decorator: Google::Apis::MapsengineV1::BorderRepresentation
        
        collection :dash, as: 'dash'
        
        property :label, as: 'label', class: Google::Apis::MapsengineV1::LabelStyle, decorator: Google::Apis::MapsengineV1::LabelStyleRepresentation
        
        property :stroke, as: 'stroke', class: Google::Apis::MapsengineV1::LineStyle::Stroke, decorator: Google::Apis::MapsengineV1::LineStyleRepresentation::StrokeRepresentation
        
        
        # @private
        class StrokeRepresentation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color'
          property :opacity, as: 'opacity'
          property :width, as: 'width'
        end
      end

      # @private
      class MapRepresentation < Google::Apis::Core::JsonRepresentation
        collection :bbox, as: 'bbox'
        
        collection :contents, as: 'contents', class: Google::Apis::MapsengineV1::MapItem, decorator: Google::Apis::MapsengineV1::MapItemRepresentation
        
        
        property :creation_time, as: 'creationTime', type: DateTime
        property :creator_email, as: 'creatorEmail'
        collection :default_viewport, as: 'defaultViewport'
        
        property :description, as: 'description'
        property :draft_access_list, as: 'draftAccessList'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :last_modified_time, as: 'lastModifiedTime', type: DateTime
        property :last_modifier_email, as: 'lastModifierEmail'
        property :name, as: 'name'
        property :processing_status, as: 'processingStatus'
        property :project_id, as: 'projectId'
        property :published_access_list, as: 'publishedAccessList'
        property :publishing_status, as: 'publishingStatus'
        collection :tags, as: 'tags'
        
        collection :versions, as: 'versions'
        
        property :writers_can_edit_permissions, as: 'writersCanEditPermissions'
      end

      # @private
      class MapFolderRepresentation < Google::Apis::Core::JsonRepresentation
        collection :contents, as: 'contents', class: Google::Apis::MapsengineV1::MapItem, decorator: Google::Apis::MapsengineV1::MapItemRepresentation
        
        
        collection :default_viewport, as: 'defaultViewport'
        
        property :expandable, as: 'expandable'
        property :key, as: 'key'
        property :name, as: 'name'
        property :type, as: 'type'
        property :visibility, as: 'visibility'
      end

      # @private
      class MapKmlLinkRepresentation < Google::Apis::Core::JsonRepresentation
        collection :default_viewport, as: 'defaultViewport'
        
        property :kml_url, as: 'kmlUrl'
        property :name, as: 'name'
        property :type, as: 'type'
        property :visibility, as: 'visibility'
      end

      # @private
      class MapLayerRepresentation < Google::Apis::Core::JsonRepresentation
        collection :default_viewport, as: 'defaultViewport'
        
        property :id, as: 'id'
        property :key, as: 'key'
        property :name, as: 'name'
        property :type, as: 'type'
        property :visibility, as: 'visibility'
      end

      # @private
      class MapsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :maps, as: 'maps', class: Google::Apis::MapsengineV1::Map, decorator: Google::Apis::MapsengineV1::MapRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ParentRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
      end

      # @private
      class ParentsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :parents, as: 'parents', class: Google::Apis::MapsengineV1::Parent, decorator: Google::Apis::MapsengineV1::ParentRepresentation
      end

      # @private
      class PermissionRepresentation < Google::Apis::Core::JsonRepresentation
        property :discoverable, as: 'discoverable'
        property :id, as: 'id'
        property :role, as: 'role'
        property :type, as: 'type'
      end

      # @private
      class PermissionsBatchDeleteRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :ids, as: 'ids'
      end

      # @private
      class PermissionsBatchDeleteResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class PermissionsBatchUpdateRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :permissions, as: 'permissions', class: Google::Apis::MapsengineV1::Permission, decorator: Google::Apis::MapsengineV1::PermissionRepresentation
      end

      # @private
      class PermissionsBatchUpdateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class PermissionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :permissions, as: 'permissions', class: Google::Apis::MapsengineV1::Permission, decorator: Google::Apis::MapsengineV1::PermissionRepresentation
      end

      # @private
      class PointStyleRepresentation < Google::Apis::Core::JsonRepresentation
        property :icon, as: 'icon', class: Google::Apis::MapsengineV1::IconStyle, decorator: Google::Apis::MapsengineV1::IconStyleRepresentation
        
        property :label, as: 'label', class: Google::Apis::MapsengineV1::LabelStyle, decorator: Google::Apis::MapsengineV1::LabelStyleRepresentation
      end

      # @private
      class PolygonStyleRepresentation < Google::Apis::Core::JsonRepresentation
        property :fill, as: 'fill', class: Google::Apis::MapsengineV1::Color, decorator: Google::Apis::MapsengineV1::ColorRepresentation
        
        property :label, as: 'label', class: Google::Apis::MapsengineV1::LabelStyle, decorator: Google::Apis::MapsengineV1::LabelStyleRepresentation
        
        property :stroke, as: 'stroke', class: Google::Apis::MapsengineV1::Border, decorator: Google::Apis::MapsengineV1::BorderRepresentation
      end

      # @private
      class ProcessResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class ProjectRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :name, as: 'name'
      end

      # @private
      class ProjectsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :projects, as: 'projects', class: Google::Apis::MapsengineV1::Project, decorator: Google::Apis::MapsengineV1::ProjectRepresentation
      end

      # @private
      class PublishResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class PublishedLayerRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        property :id, as: 'id'
        property :layer_type, as: 'layerType'
        property :name, as: 'name'
        property :project_id, as: 'projectId'
      end

      # @private
      class PublishedLayersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :layers, as: 'layers', class: Google::Apis::MapsengineV1::PublishedLayer, decorator: Google::Apis::MapsengineV1::PublishedLayerRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class PublishedMapRepresentation < Google::Apis::Core::JsonRepresentation
        collection :contents, as: 'contents', class: Google::Apis::MapsengineV1::MapItem, decorator: Google::Apis::MapsengineV1::MapItemRepresentation
        
        
        collection :default_viewport, as: 'defaultViewport'
        
        property :description, as: 'description'
        property :id, as: 'id'
        property :name, as: 'name'
        property :project_id, as: 'projectId'
      end

      # @private
      class PublishedMapsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :maps, as: 'maps', class: Google::Apis::MapsengineV1::PublishedMap, decorator: Google::Apis::MapsengineV1::PublishedMapRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class RasterRepresentation < Google::Apis::Core::JsonRepresentation
        property :acquisition_time, as: 'acquisitionTime', class: Google::Apis::MapsengineV1::AcquisitionTime, decorator: Google::Apis::MapsengineV1::AcquisitionTimeRepresentation
        
        property :attribution, as: 'attribution'
        collection :bbox, as: 'bbox'
        
        property :creation_time, as: 'creationTime', type: DateTime
        property :creator_email, as: 'creatorEmail'
        property :description, as: 'description'
        property :draft_access_list, as: 'draftAccessList'
        property :etag, as: 'etag'
        collection :files, as: 'files', class: Google::Apis::MapsengineV1::File, decorator: Google::Apis::MapsengineV1::FileRepresentation
        
        
        property :id, as: 'id'
        property :last_modified_time, as: 'lastModifiedTime', type: DateTime
        property :last_modifier_email, as: 'lastModifierEmail'
        property :mask_type, as: 'maskType'
        property :name, as: 'name'
        property :processing_status, as: 'processingStatus'
        property :project_id, as: 'projectId'
        property :raster_type, as: 'rasterType'
        collection :tags, as: 'tags'
        
        property :writers_can_edit_permissions, as: 'writersCanEditPermissions'
      end

      # @private
      class RasterCollectionRepresentation < Google::Apis::Core::JsonRepresentation
        property :attribution, as: 'attribution'
        collection :bbox, as: 'bbox'
        
        property :creation_time, as: 'creationTime', type: DateTime
        property :creator_email, as: 'creatorEmail'
        property :description, as: 'description'
        property :draft_access_list, as: 'draftAccessList'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :last_modified_time, as: 'lastModifiedTime', type: DateTime
        property :last_modifier_email, as: 'lastModifierEmail'
        property :mosaic, as: 'mosaic'
        property :name, as: 'name'
        property :processing_status, as: 'processingStatus'
        property :project_id, as: 'projectId'
        property :raster_type, as: 'rasterType'
        collection :tags, as: 'tags'
        
        property :writers_can_edit_permissions, as: 'writersCanEditPermissions'
      end

      # @private
      class RasterCollectionsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :raster_collections, as: 'rasterCollections', class: Google::Apis::MapsengineV1::RasterCollection, decorator: Google::Apis::MapsengineV1::RasterCollectionRepresentation
      end

      # @private
      class RasterCollectionsRasterRepresentation < Google::Apis::Core::JsonRepresentation
        collection :bbox, as: 'bbox'
        
        property :creation_time, as: 'creationTime', type: DateTime
        property :description, as: 'description'
        property :id, as: 'id'
        property :last_modified_time, as: 'lastModifiedTime', type: DateTime
        property :name, as: 'name'
        property :project_id, as: 'projectId'
        property :raster_type, as: 'rasterType'
        collection :tags, as: 'tags'
      end

      # @private
      class RasterCollectionsRasterBatchDeleteRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :ids, as: 'ids'
      end

      # @private
      class RasterCollectionsRastersBatchDeleteResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class RasterCollectionsRastersBatchInsertRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :ids, as: 'ids'
      end

      # @private
      class RasterCollectionsRastersBatchInsertResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class RasterCollectionsRastersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :rasters, as: 'rasters', class: Google::Apis::MapsengineV1::RasterCollectionsRaster, decorator: Google::Apis::MapsengineV1::RasterCollectionsRasterRepresentation
      end

      # @private
      class RastersListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :rasters, as: 'rasters', class: Google::Apis::MapsengineV1::Raster, decorator: Google::Apis::MapsengineV1::RasterRepresentation
      end

      # @private
      class ScaledShapeRepresentation < Google::Apis::Core::JsonRepresentation
        property :border, as: 'border', class: Google::Apis::MapsengineV1::Border, decorator: Google::Apis::MapsengineV1::BorderRepresentation
        
        property :fill, as: 'fill', class: Google::Apis::MapsengineV1::Color, decorator: Google::Apis::MapsengineV1::ColorRepresentation
        
        property :shape, as: 'shape'
      end

      # @private
      class ScalingFunctionRepresentation < Google::Apis::Core::JsonRepresentation
        property :column, as: 'column'
        property :scaling_type, as: 'scalingType'
        property :size_range, as: 'sizeRange', class: Google::Apis::MapsengineV1::SizeRange, decorator: Google::Apis::MapsengineV1::SizeRangeRepresentation
        
        property :value_range, as: 'valueRange', class: Google::Apis::MapsengineV1::ValueRange, decorator: Google::Apis::MapsengineV1::ValueRangeRepresentation
      end

      # @private
      class SchemaRepresentation < Google::Apis::Core::JsonRepresentation
        collection :columns, as: 'columns', class: Google::Apis::MapsengineV1::TableColumn, decorator: Google::Apis::MapsengineV1::TableColumnRepresentation
        
        
        property :primary_geometry, as: 'primaryGeometry'
        property :primary_key, as: 'primaryKey'
      end

      # @private
      class SizeRangeRepresentation < Google::Apis::Core::JsonRepresentation
        property :max, as: 'max'
        property :min, as: 'min'
      end

      # @private
      class TableRepresentation < Google::Apis::Core::JsonRepresentation
        collection :bbox, as: 'bbox'
        
        property :creation_time, as: 'creationTime', type: DateTime
        property :creator_email, as: 'creatorEmail'
        property :description, as: 'description'
        property :draft_access_list, as: 'draftAccessList'
        property :etag, as: 'etag'
        collection :files, as: 'files', class: Google::Apis::MapsengineV1::File, decorator: Google::Apis::MapsengineV1::FileRepresentation
        
        
        property :id, as: 'id'
        property :last_modified_time, as: 'lastModifiedTime', type: DateTime
        property :last_modifier_email, as: 'lastModifierEmail'
        property :name, as: 'name'
        property :processing_status, as: 'processingStatus'
        property :project_id, as: 'projectId'
        property :published_access_list, as: 'publishedAccessList'
        property :schema, as: 'schema', class: Google::Apis::MapsengineV1::Schema, decorator: Google::Apis::MapsengineV1::SchemaRepresentation
        
        property :source_encoding, as: 'sourceEncoding'
        collection :tags, as: 'tags'
        
        property :writers_can_edit_permissions, as: 'writersCanEditPermissions'
      end

      # @private
      class TableColumnRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :type, as: 'type'
      end

      # @private
      class TablesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        collection :tables, as: 'tables', class: Google::Apis::MapsengineV1::Table, decorator: Google::Apis::MapsengineV1::TableRepresentation
      end

      # @private
      class ValueRangeRepresentation < Google::Apis::Core::JsonRepresentation
        property :max, as: 'max'
        property :min, as: 'min'
      end

      # @private
      class VectorStyleRepresentation < Google::Apis::Core::JsonRepresentation
        collection :display_rules, as: 'displayRules', class: Google::Apis::MapsengineV1::DisplayRule, decorator: Google::Apis::MapsengineV1::DisplayRuleRepresentation
        
        
        property :feature_info, as: 'featureInfo', class: Google::Apis::MapsengineV1::FeatureInfo, decorator: Google::Apis::MapsengineV1::FeatureInfoRepresentation
        
        property :type, as: 'type'
      end

      # @private
      class ZoomLevelsRepresentation < Google::Apis::Core::JsonRepresentation
        property :max, as: 'max'
        property :min, as: 'min'
      end
    end
  end
end
