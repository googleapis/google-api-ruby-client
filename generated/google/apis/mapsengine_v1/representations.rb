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
      
      class GeoJsonGeometry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MapItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class AcquisitionTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Border
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Datasource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class DisplayRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class FeatureInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchDeleteFeaturesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchInsertFeaturesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchPatchFeaturesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListFeaturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class File
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GeoJsonGeometryCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GeoJsonLineString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GeoJsonMultiLineString
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GeoJsonMultiPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GeoJsonMultiPolygon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GeoJsonPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GeoJsonPolygon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Icon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class IconStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListIconsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LabelStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Layer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLayersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LineStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Stroke
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class Map
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MapFolder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MapKmlLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MapLayer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListMapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Parent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListParentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Permission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchDeletePermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchDeletePermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchUpdatePermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchUpdatePermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PointStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PolygonStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProcessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListProjectsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PublishResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PublishedLayer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListPublishedLayersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class PublishedMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListPublishedMapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Raster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RasterCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListRasterCollectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RasterCollectionsRaster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchDeleteRasterCollectionsRasterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchDeleteRasterCollectionsRastersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchInsertRasterCollectionsRastersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class BatchInsertRasterCollectionsRastersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListRasterCollectionsRastersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListRastersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ScaledShape
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ScalingFunction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SizeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TableColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListTablesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ValueRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class VectorStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ZoomLevels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class GeoJsonGeometry
        class Representation < Google::Apis::Core::JsonRepresentation
          def from_hash(hash, *args)
            case hash['type']
      
            when 'GeometryCollection'
              Google::Apis::MapsengineV1::GeoJsonGeometryCollection::Representation.new(Google::Apis::MapsengineV1::GeoJsonGeometryCollection.new).from_hash(hash, *args)
      
            when 'LineString'
              Google::Apis::MapsengineV1::GeoJsonLineString::Representation.new(Google::Apis::MapsengineV1::GeoJsonLineString.new).from_hash(hash, *args)
      
            when 'MultiLineString'
              Google::Apis::MapsengineV1::GeoJsonMultiLineString::Representation.new(Google::Apis::MapsengineV1::GeoJsonMultiLineString.new).from_hash(hash, *args)
      
            when 'MultiPoint'
              Google::Apis::MapsengineV1::GeoJsonMultiPoint::Representation.new(Google::Apis::MapsengineV1::GeoJsonMultiPoint.new).from_hash(hash, *args)
      
            when 'MultiPolygon'
              Google::Apis::MapsengineV1::GeoJsonMultiPolygon::Representation.new(Google::Apis::MapsengineV1::GeoJsonMultiPolygon.new).from_hash(hash, *args)
      
            when 'Point'
              Google::Apis::MapsengineV1::GeoJsonPoint::Representation.new(Google::Apis::MapsengineV1::GeoJsonPoint.new).from_hash(hash, *args)
      
            when 'Polygon'
              Google::Apis::MapsengineV1::GeoJsonPolygon::Representation.new(Google::Apis::MapsengineV1::GeoJsonPolygon.new).from_hash(hash, *args)
            end
          end
      
          def to_hash(*args)
            case represented
      
            when Google::Apis::MapsengineV1::GeoJsonGeometryCollection
              Google::Apis::MapsengineV1::GeoJsonGeometryCollection::Representation.new(represented).to_hash(*args)
      
            when Google::Apis::MapsengineV1::GeoJsonLineString
              Google::Apis::MapsengineV1::GeoJsonLineString::Representation.new(represented).to_hash(*args)
      
            when Google::Apis::MapsengineV1::GeoJsonMultiLineString
              Google::Apis::MapsengineV1::GeoJsonMultiLineString::Representation.new(represented).to_hash(*args)
      
            when Google::Apis::MapsengineV1::GeoJsonMultiPoint
              Google::Apis::MapsengineV1::GeoJsonMultiPoint::Representation.new(represented).to_hash(*args)
      
            when Google::Apis::MapsengineV1::GeoJsonMultiPolygon
              Google::Apis::MapsengineV1::GeoJsonMultiPolygon::Representation.new(represented).to_hash(*args)
      
            when Google::Apis::MapsengineV1::GeoJsonPoint
              Google::Apis::MapsengineV1::GeoJsonPoint::Representation.new(represented).to_hash(*args)
      
            when Google::Apis::MapsengineV1::GeoJsonPolygon
              Google::Apis::MapsengineV1::GeoJsonPolygon::Representation.new(represented).to_hash(*args)
            end
          end
        end
      end
      
      # @private
      class MapItem
        class Representation < Google::Apis::Core::JsonRepresentation
          def from_hash(hash, *args)
            case hash['type']
      
            when 'folder'
              Google::Apis::MapsengineV1::MapFolder::Representation.new(Google::Apis::MapsengineV1::MapFolder.new).from_hash(hash, *args)
      
            when 'kmlLink'
              Google::Apis::MapsengineV1::MapKmlLink::Representation.new(Google::Apis::MapsengineV1::MapKmlLink.new).from_hash(hash, *args)
      
            when 'layer'
              Google::Apis::MapsengineV1::MapLayer::Representation.new(Google::Apis::MapsengineV1::MapLayer.new).from_hash(hash, *args)
            end
          end
      
          def to_hash(*args)
            case represented
      
            when Google::Apis::MapsengineV1::MapFolder
              Google::Apis::MapsengineV1::MapFolder::Representation.new(represented).to_hash(*args)
      
            when Google::Apis::MapsengineV1::MapKmlLink
              Google::Apis::MapsengineV1::MapKmlLink::Representation.new(represented).to_hash(*args)
      
            when Google::Apis::MapsengineV1::MapLayer
              Google::Apis::MapsengineV1::MapLayer::Representation.new(represented).to_hash(*args)
            end
          end
        end
      end
      
      # @private
      class AcquisitionTime
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end', type: DateTime
      
          property :precision, as: 'precision'
          property :start, as: 'start', type: DateTime
      
        end
      end
      
      # @private
      class Asset
        class Representation < Google::Apis::Core::JsonRepresentation
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
      end
      
      # @private
      class ListAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::MapsengineV1::Asset, decorator: Google::Apis::MapsengineV1::Asset::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      # @private
      class Border
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color'
          property :opacity, as: 'opacity'
          property :width, as: 'width'
        end
      end
      
      # @private
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color'
          property :opacity, as: 'opacity'
        end
      end
      
      # @private
      class Datasource
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      # @private
      class DisplayRule
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::MapsengineV1::Filter, decorator: Google::Apis::MapsengineV1::Filter::Representation
      
          property :line_options, as: 'lineOptions', class: Google::Apis::MapsengineV1::LineStyle, decorator: Google::Apis::MapsengineV1::LineStyle::Representation
      
          property :name, as: 'name'
          property :point_options, as: 'pointOptions', class: Google::Apis::MapsengineV1::PointStyle, decorator: Google::Apis::MapsengineV1::PointStyle::Representation
      
          property :polygon_options, as: 'polygonOptions', class: Google::Apis::MapsengineV1::PolygonStyle, decorator: Google::Apis::MapsengineV1::PolygonStyle::Representation
      
          property :zoom_levels, as: 'zoomLevels', class: Google::Apis::MapsengineV1::ZoomLevels, decorator: Google::Apis::MapsengineV1::ZoomLevels::Representation
      
        end
      end
      
      # @private
      class Feature
        class Representation < Google::Apis::Core::JsonRepresentation
          property :geometry, as: 'geometry', class: Google::Apis::MapsengineV1::GeoJsonGeometry, decorator: Google::Apis::MapsengineV1::GeoJsonGeometry::Representation
      
          hash :properties, as: 'properties'
          property :type, as: 'type'
        end
      end
      
      # @private
      class FeatureInfo
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
        end
      end
      
      # @private
      class BatchDeleteFeaturesRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gx_ids, as: 'gx_ids'
          collection :primary_keys, as: 'primaryKeys'
        end
      end
      
      # @private
      class BatchInsertFeaturesRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::MapsengineV1::Feature, decorator: Google::Apis::MapsengineV1::Feature::Representation
      
          property :normalize_geometries, as: 'normalizeGeometries'
        end
      end
      
      # @private
      class BatchPatchFeaturesRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::MapsengineV1::Feature, decorator: Google::Apis::MapsengineV1::Feature::Representation
      
          property :normalize_geometries, as: 'normalizeGeometries'
        end
      end
      
      # @private
      class ListFeaturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed_queries_per_second, as: 'allowedQueriesPerSecond'
          collection :features, as: 'features', class: Google::Apis::MapsengineV1::Feature, decorator: Google::Apis::MapsengineV1::Feature::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :schema, as: 'schema', class: Google::Apis::MapsengineV1::Schema, decorator: Google::Apis::MapsengineV1::Schema::Representation
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class File
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filename, as: 'filename'
          property :size, as: 'size'
          property :upload_status, as: 'uploadStatus'
        end
      end
      
      # @private
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :operator, as: 'operator'
          property :value, as: 'value'
        end
      end
      
      # @private
      class GeoJsonGeometryCollection
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :geometries, as: 'geometries', class: Google::Apis::MapsengineV1::GeoJsonGeometry, decorator: Google::Apis::MapsengineV1::GeoJsonGeometry::Representation
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class GeoJsonLineString
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :coordinates, as: 'coordinates', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class GeoJsonMultiLineString
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :coordinates, as: 'coordinates', :class => Array do
        include Representable::JSON::Collection
        items :class => Array do
        include Representable::JSON::Collection
        items
      end
      
      end
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class GeoJsonMultiPoint
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :coordinates, as: 'coordinates', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class GeoJsonMultiPolygon
        class Representation < Google::Apis::Core::JsonRepresentation
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
      end
      
      # @private
      class GeoJsonPoint
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :coordinates, as: 'coordinates'
          property :type, as: 'type'
        end
      end
      
      # @private
      class GeoJsonPolygon
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :coordinates, as: 'coordinates', :class => Array do
        include Representable::JSON::Collection
        items :class => Array do
        include Representable::JSON::Collection
        items
      end
      
      end
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class Icon
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      # @private
      class IconStyle
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :scaled_shape, as: 'scaledShape', class: Google::Apis::MapsengineV1::ScaledShape, decorator: Google::Apis::MapsengineV1::ScaledShape::Representation
      
          property :scaling_function, as: 'scalingFunction', class: Google::Apis::MapsengineV1::ScalingFunction, decorator: Google::Apis::MapsengineV1::ScalingFunction::Representation
      
        end
      end
      
      # @private
      class ListIconsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :icons, as: 'icons', class: Google::Apis::MapsengineV1::Icon, decorator: Google::Apis::MapsengineV1::Icon::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      # @private
      class LabelStyle
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color'
          property :column, as: 'column'
          property :font_style, as: 'fontStyle'
          property :font_weight, as: 'fontWeight'
          property :opacity, as: 'opacity'
          property :outline, as: 'outline', class: Google::Apis::MapsengineV1::Color, decorator: Google::Apis::MapsengineV1::Color::Representation
      
          property :size, as: 'size'
        end
      end
      
      # @private
      class Layer
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bbox, as: 'bbox'
          property :creation_time, as: 'creationTime', type: DateTime
      
          property :creator_email, as: 'creatorEmail'
          property :datasource_type, as: 'datasourceType'
          collection :datasources, as: 'datasources', class: Google::Apis::MapsengineV1::Datasource, decorator: Google::Apis::MapsengineV1::Datasource::Representation
      
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
          property :style, as: 'style', class: Google::Apis::MapsengineV1::VectorStyle, decorator: Google::Apis::MapsengineV1::VectorStyle::Representation
      
          collection :tags, as: 'tags'
          property :writers_can_edit_permissions, as: 'writersCanEditPermissions'
        end
      end
      
      # @private
      class ListLayersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :layers, as: 'layers', class: Google::Apis::MapsengineV1::Layer, decorator: Google::Apis::MapsengineV1::Layer::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      # @private
      class LineStyle
        class Representation < Google::Apis::Core::JsonRepresentation
          property :border, as: 'border', class: Google::Apis::MapsengineV1::Border, decorator: Google::Apis::MapsengineV1::Border::Representation
      
          collection :dash, as: 'dash'
          property :label, as: 'label', class: Google::Apis::MapsengineV1::LabelStyle, decorator: Google::Apis::MapsengineV1::LabelStyle::Representation
      
          property :stroke, as: 'stroke', class: Google::Apis::MapsengineV1::LineStyle::Stroke, decorator: Google::Apis::MapsengineV1::LineStyle::Stroke::Representation
      
        end
        
        # @private
        class Stroke
          class Representation < Google::Apis::Core::JsonRepresentation
            property :color, as: 'color'
            property :opacity, as: 'opacity'
            property :width, as: 'width'
          end
        end
      end
      
      # @private
      class Map
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bbox, as: 'bbox'
          collection :contents, as: 'contents', class: Google::Apis::MapsengineV1::MapItem, decorator: Google::Apis::MapsengineV1::MapItem::Representation
      
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
      end
      
      # @private
      class MapFolder
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::MapsengineV1::MapItem, decorator: Google::Apis::MapsengineV1::MapItem::Representation
      
          collection :default_viewport, as: 'defaultViewport'
          property :expandable, as: 'expandable'
          property :key, as: 'key'
          property :name, as: 'name'
          property :type, as: 'type'
          property :visibility, as: 'visibility'
        end
      end
      
      # @private
      class MapKmlLink
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_viewport, as: 'defaultViewport'
          property :kml_url, as: 'kmlUrl'
          property :name, as: 'name'
          property :type, as: 'type'
          property :visibility, as: 'visibility'
        end
      end
      
      # @private
      class MapLayer
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_viewport, as: 'defaultViewport'
          property :id, as: 'id'
          property :key, as: 'key'
          property :name, as: 'name'
          property :type, as: 'type'
          property :visibility, as: 'visibility'
        end
      end
      
      # @private
      class ListMapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :maps, as: 'maps', class: Google::Apis::MapsengineV1::Map, decorator: Google::Apis::MapsengineV1::Map::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      # @private
      class Parent
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      # @private
      class ListParentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :parents, as: 'parents', class: Google::Apis::MapsengineV1::Parent, decorator: Google::Apis::MapsengineV1::Parent::Representation
      
        end
      end
      
      # @private
      class Permission
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discoverable, as: 'discoverable'
          property :id, as: 'id'
          property :role, as: 'role'
          property :type, as: 'type'
        end
      end
      
      # @private
      class BatchDeletePermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
        end
      end
      
      # @private
      class BatchDeletePermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      # @private
      class BatchUpdatePermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions', class: Google::Apis::MapsengineV1::Permission, decorator: Google::Apis::MapsengineV1::Permission::Representation
      
        end
      end
      
      # @private
      class BatchUpdatePermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      # @private
      class ListPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions', class: Google::Apis::MapsengineV1::Permission, decorator: Google::Apis::MapsengineV1::Permission::Representation
      
        end
      end
      
      # @private
      class PointStyle
        class Representation < Google::Apis::Core::JsonRepresentation
          property :icon, as: 'icon', class: Google::Apis::MapsengineV1::IconStyle, decorator: Google::Apis::MapsengineV1::IconStyle::Representation
      
          property :label, as: 'label', class: Google::Apis::MapsengineV1::LabelStyle, decorator: Google::Apis::MapsengineV1::LabelStyle::Representation
      
        end
      end
      
      # @private
      class PolygonStyle
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fill, as: 'fill', class: Google::Apis::MapsengineV1::Color, decorator: Google::Apis::MapsengineV1::Color::Representation
      
          property :label, as: 'label', class: Google::Apis::MapsengineV1::LabelStyle, decorator: Google::Apis::MapsengineV1::LabelStyle::Representation
      
          property :stroke, as: 'stroke', class: Google::Apis::MapsengineV1::Border, decorator: Google::Apis::MapsengineV1::Border::Representation
      
        end
      end
      
      # @private
      class ProcessResponse
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      # @private
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      # @private
      class ListProjectsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :projects, as: 'projects', class: Google::Apis::MapsengineV1::Project, decorator: Google::Apis::MapsengineV1::Project::Representation
      
        end
      end
      
      # @private
      class PublishResponse
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      # @private
      class PublishedLayer
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          property :layer_type, as: 'layerType'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
        end
      end
      
      # @private
      class ListPublishedLayersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :layers, as: 'layers', class: Google::Apis::MapsengineV1::PublishedLayer, decorator: Google::Apis::MapsengineV1::PublishedLayer::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      # @private
      class PublishedMap
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::MapsengineV1::MapItem, decorator: Google::Apis::MapsengineV1::MapItem::Representation
      
          collection :default_viewport, as: 'defaultViewport'
          property :description, as: 'description'
          property :id, as: 'id'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
        end
      end
      
      # @private
      class ListPublishedMapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :maps, as: 'maps', class: Google::Apis::MapsengineV1::PublishedMap, decorator: Google::Apis::MapsengineV1::PublishedMap::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      # @private
      class Raster
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acquisition_time, as: 'acquisitionTime', class: Google::Apis::MapsengineV1::AcquisitionTime, decorator: Google::Apis::MapsengineV1::AcquisitionTime::Representation
      
          property :attribution, as: 'attribution'
          collection :bbox, as: 'bbox'
          property :creation_time, as: 'creationTime', type: DateTime
      
          property :creator_email, as: 'creatorEmail'
          property :description, as: 'description'
          property :draft_access_list, as: 'draftAccessList'
          property :etag, as: 'etag'
          collection :files, as: 'files', class: Google::Apis::MapsengineV1::File, decorator: Google::Apis::MapsengineV1::File::Representation
      
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
      end
      
      # @private
      class RasterCollection
        class Representation < Google::Apis::Core::JsonRepresentation
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
      end
      
      # @private
      class ListRasterCollectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, :base64 => true, as: 'nextPageToken'
          collection :raster_collections, as: 'rasterCollections', class: Google::Apis::MapsengineV1::RasterCollection, decorator: Google::Apis::MapsengineV1::RasterCollection::Representation
      
        end
      end
      
      # @private
      class RasterCollectionsRaster
        class Representation < Google::Apis::Core::JsonRepresentation
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
      end
      
      # @private
      class BatchDeleteRasterCollectionsRasterRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
        end
      end
      
      # @private
      class BatchDeleteRasterCollectionsRastersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      # @private
      class BatchInsertRasterCollectionsRastersRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
        end
      end
      
      # @private
      class BatchInsertRasterCollectionsRastersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      # @private
      class ListRasterCollectionsRastersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rasters, as: 'rasters', class: Google::Apis::MapsengineV1::RasterCollectionsRaster, decorator: Google::Apis::MapsengineV1::RasterCollectionsRaster::Representation
      
        end
      end
      
      # @private
      class ListRastersResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rasters, as: 'rasters', class: Google::Apis::MapsengineV1::Raster, decorator: Google::Apis::MapsengineV1::Raster::Representation
      
        end
      end
      
      # @private
      class ScaledShape
        class Representation < Google::Apis::Core::JsonRepresentation
          property :border, as: 'border', class: Google::Apis::MapsengineV1::Border, decorator: Google::Apis::MapsengineV1::Border::Representation
      
          property :fill, as: 'fill', class: Google::Apis::MapsengineV1::Color, decorator: Google::Apis::MapsengineV1::Color::Representation
      
          property :shape, as: 'shape'
        end
      end
      
      # @private
      class ScalingFunction
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :scaling_type, as: 'scalingType'
          property :size_range, as: 'sizeRange', class: Google::Apis::MapsengineV1::SizeRange, decorator: Google::Apis::MapsengineV1::SizeRange::Representation
      
          property :value_range, as: 'valueRange', class: Google::Apis::MapsengineV1::ValueRange, decorator: Google::Apis::MapsengineV1::ValueRange::Representation
      
        end
      end
      
      # @private
      class Schema
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::MapsengineV1::TableColumn, decorator: Google::Apis::MapsengineV1::TableColumn::Representation
      
          property :primary_geometry, as: 'primaryGeometry'
          property :primary_key, as: 'primaryKey'
        end
      end
      
      # @private
      class SizeRange
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      # @private
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bbox, as: 'bbox'
          property :creation_time, as: 'creationTime', type: DateTime
      
          property :creator_email, as: 'creatorEmail'
          property :description, as: 'description'
          property :draft_access_list, as: 'draftAccessList'
          property :etag, as: 'etag'
          collection :files, as: 'files', class: Google::Apis::MapsengineV1::File, decorator: Google::Apis::MapsengineV1::File::Representation
      
          property :id, as: 'id'
          property :last_modified_time, as: 'lastModifiedTime', type: DateTime
      
          property :last_modifier_email, as: 'lastModifierEmail'
          property :name, as: 'name'
          property :processing_status, as: 'processingStatus'
          property :project_id, as: 'projectId'
          property :published_access_list, as: 'publishedAccessList'
          property :schema, as: 'schema', class: Google::Apis::MapsengineV1::Schema, decorator: Google::Apis::MapsengineV1::Schema::Representation
      
          property :source_encoding, as: 'sourceEncoding'
          collection :tags, as: 'tags'
          property :writers_can_edit_permissions, as: 'writersCanEditPermissions'
        end
      end
      
      # @private
      class TableColumn
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      # @private
      class ListTablesResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, :base64 => true, as: 'nextPageToken'
          collection :tables, as: 'tables', class: Google::Apis::MapsengineV1::Table, decorator: Google::Apis::MapsengineV1::Table::Representation
      
        end
      end
      
      # @private
      class ValueRange
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      # @private
      class VectorStyle
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :display_rules, as: 'displayRules', class: Google::Apis::MapsengineV1::DisplayRule, decorator: Google::Apis::MapsengineV1::DisplayRule::Representation
      
          property :feature_info, as: 'featureInfo', class: Google::Apis::MapsengineV1::FeatureInfo, decorator: Google::Apis::MapsengineV1::FeatureInfo::Representation
      
          property :type, as: 'type'
        end
      end
      
      # @private
      class ZoomLevels
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
    end
  end
end
