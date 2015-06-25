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
      
      class GeoJsonGeometry
        # @private
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
      
      class MapItem
        # @private
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
      
      class AcquisitionTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end', type: DateTime
      
          property :precision, as: 'precision'
          property :start, as: 'start', type: DateTime
      
        end
      end
      
      class Asset
        # @private
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
      
      class ListAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::MapsengineV1::Asset, decorator: Google::Apis::MapsengineV1::Asset::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      class Border
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color'
          property :opacity, as: 'opacity'
          property :width, as: 'width'
        end
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color'
          property :opacity, as: 'opacity'
        end
      end
      
      class Datasource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class DisplayRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::MapsengineV1::Filter, decorator: Google::Apis::MapsengineV1::Filter::Representation
      
          property :line_options, as: 'lineOptions', class: Google::Apis::MapsengineV1::LineStyle, decorator: Google::Apis::MapsengineV1::LineStyle::Representation
      
          property :name, as: 'name'
          property :point_options, as: 'pointOptions', class: Google::Apis::MapsengineV1::PointStyle, decorator: Google::Apis::MapsengineV1::PointStyle::Representation
      
          property :polygon_options, as: 'polygonOptions', class: Google::Apis::MapsengineV1::PolygonStyle, decorator: Google::Apis::MapsengineV1::PolygonStyle::Representation
      
          property :zoom_levels, as: 'zoomLevels', class: Google::Apis::MapsengineV1::ZoomLevels, decorator: Google::Apis::MapsengineV1::ZoomLevels::Representation
      
        end
      end
      
      class Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :geometry, as: 'geometry', class: Google::Apis::MapsengineV1::GeoJsonGeometry, decorator: Google::Apis::MapsengineV1::GeoJsonGeometry::Representation
      
          hash :properties, as: 'properties'
          property :type, as: 'type'
        end
      end
      
      class FeatureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
        end
      end
      
      class BatchDeleteFeaturesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gx_ids, as: 'gx_ids'
          collection :primary_keys, as: 'primaryKeys'
        end
      end
      
      class BatchInsertFeaturesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::MapsengineV1::Feature, decorator: Google::Apis::MapsengineV1::Feature::Representation
      
          property :normalize_geometries, as: 'normalizeGeometries'
        end
      end
      
      class BatchPatchFeaturesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::MapsengineV1::Feature, decorator: Google::Apis::MapsengineV1::Feature::Representation
      
          property :normalize_geometries, as: 'normalizeGeometries'
        end
      end
      
      class ListFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowed_queries_per_second, as: 'allowedQueriesPerSecond'
          collection :features, as: 'features', class: Google::Apis::MapsengineV1::Feature, decorator: Google::Apis::MapsengineV1::Feature::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :schema, as: 'schema', class: Google::Apis::MapsengineV1::Schema, decorator: Google::Apis::MapsengineV1::Schema::Representation
      
          property :type, as: 'type'
        end
      end
      
      class File
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filename, as: 'filename'
          property :size, as: 'size'
          property :upload_status, as: 'uploadStatus'
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :operator, as: 'operator'
          property :value, as: 'value'
        end
      end
      
      class GeoJsonGeometryCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :geometries, as: 'geometries', class: Google::Apis::MapsengineV1::GeoJsonGeometry, decorator: Google::Apis::MapsengineV1::GeoJsonGeometry::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GeoJsonLineString
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :coordinates, as: 'coordinates', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :type, as: 'type'
        end
      end
      
      class GeoJsonMultiLineString
        # @private
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
      
      class GeoJsonMultiPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :coordinates, as: 'coordinates', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :type, as: 'type'
        end
      end
      
      class GeoJsonMultiPolygon
        # @private
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
      
      class GeoJsonPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :coordinates, as: 'coordinates'
          property :type, as: 'type'
        end
      end
      
      class GeoJsonPolygon
        # @private
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
      
      class Icon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class IconStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
          property :scaled_shape, as: 'scaledShape', class: Google::Apis::MapsengineV1::ScaledShape, decorator: Google::Apis::MapsengineV1::ScaledShape::Representation
      
          property :scaling_function, as: 'scalingFunction', class: Google::Apis::MapsengineV1::ScalingFunction, decorator: Google::Apis::MapsengineV1::ScalingFunction::Representation
      
        end
      end
      
      class ListIconsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :icons, as: 'icons', class: Google::Apis::MapsengineV1::Icon, decorator: Google::Apis::MapsengineV1::Icon::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LabelStyle
        # @private
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
      
      class Layer
        # @private
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
      
      class ListLayersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :layers, as: 'layers', class: Google::Apis::MapsengineV1::Layer, decorator: Google::Apis::MapsengineV1::Layer::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      class LineStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :border, as: 'border', class: Google::Apis::MapsengineV1::Border, decorator: Google::Apis::MapsengineV1::Border::Representation
      
          collection :dash, as: 'dash'
          property :label, as: 'label', class: Google::Apis::MapsengineV1::LabelStyle, decorator: Google::Apis::MapsengineV1::LabelStyle::Representation
      
          property :stroke, as: 'stroke', class: Google::Apis::MapsengineV1::LineStyle::Stroke, decorator: Google::Apis::MapsengineV1::LineStyle::Stroke::Representation
      
        end
        
        class Stroke
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :color, as: 'color'
            property :opacity, as: 'opacity'
            property :width, as: 'width'
          end
        end
      end
      
      class Map
        # @private
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
      
      class MapFolder
        # @private
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
      
      class MapKmlLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_viewport, as: 'defaultViewport'
          property :kml_url, as: 'kmlUrl'
          property :name, as: 'name'
          property :type, as: 'type'
          property :visibility, as: 'visibility'
        end
      end
      
      class MapLayer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_viewport, as: 'defaultViewport'
          property :id, as: 'id'
          property :key, as: 'key'
          property :name, as: 'name'
          property :type, as: 'type'
          property :visibility, as: 'visibility'
        end
      end
      
      class ListMapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :maps, as: 'maps', class: Google::Apis::MapsengineV1::Map, decorator: Google::Apis::MapsengineV1::Map::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      class Parent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class ListParentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :parents, as: 'parents', class: Google::Apis::MapsengineV1::Parent, decorator: Google::Apis::MapsengineV1::Parent::Representation
      
        end
      end
      
      class Permission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discoverable, as: 'discoverable'
          property :id, as: 'id'
          property :role, as: 'role'
          property :type, as: 'type'
        end
      end
      
      class BatchDeletePermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
        end
      end
      
      class BatchDeletePermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BatchUpdatePermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions', class: Google::Apis::MapsengineV1::Permission, decorator: Google::Apis::MapsengineV1::Permission::Representation
      
        end
      end
      
      class BatchUpdatePermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions', class: Google::Apis::MapsengineV1::Permission, decorator: Google::Apis::MapsengineV1::Permission::Representation
      
        end
      end
      
      class PointStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :icon, as: 'icon', class: Google::Apis::MapsengineV1::IconStyle, decorator: Google::Apis::MapsengineV1::IconStyle::Representation
      
          property :label, as: 'label', class: Google::Apis::MapsengineV1::LabelStyle, decorator: Google::Apis::MapsengineV1::LabelStyle::Representation
      
        end
      end
      
      class PolygonStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fill, as: 'fill', class: Google::Apis::MapsengineV1::Color, decorator: Google::Apis::MapsengineV1::Color::Representation
      
          property :label, as: 'label', class: Google::Apis::MapsengineV1::LabelStyle, decorator: Google::Apis::MapsengineV1::LabelStyle::Representation
      
          property :stroke, as: 'stroke', class: Google::Apis::MapsengineV1::Border, decorator: Google::Apis::MapsengineV1::Border::Representation
      
        end
      end
      
      class ProcessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class ListProjectsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :projects, as: 'projects', class: Google::Apis::MapsengineV1::Project, decorator: Google::Apis::MapsengineV1::Project::Representation
      
        end
      end
      
      class PublishResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PublishedLayer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :id, as: 'id'
          property :layer_type, as: 'layerType'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
        end
      end
      
      class ListPublishedLayersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :layers, as: 'layers', class: Google::Apis::MapsengineV1::PublishedLayer, decorator: Google::Apis::MapsengineV1::PublishedLayer::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      class PublishedMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::MapsengineV1::MapItem, decorator: Google::Apis::MapsengineV1::MapItem::Representation
      
          collection :default_viewport, as: 'defaultViewport'
          property :description, as: 'description'
          property :id, as: 'id'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
        end
      end
      
      class ListPublishedMapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :maps, as: 'maps', class: Google::Apis::MapsengineV1::PublishedMap, decorator: Google::Apis::MapsengineV1::PublishedMap::Representation
      
          property :next_page_token, :base64 => true, as: 'nextPageToken'
        end
      end
      
      class Raster
        # @private
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
      
      class RasterCollection
        # @private
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
      
      class ListRasterCollectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, :base64 => true, as: 'nextPageToken'
          collection :raster_collections, as: 'rasterCollections', class: Google::Apis::MapsengineV1::RasterCollection, decorator: Google::Apis::MapsengineV1::RasterCollection::Representation
      
        end
      end
      
      class RasterCollectionsRaster
        # @private
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
      
      class BatchDeleteRasterCollectionsRasterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
        end
      end
      
      class BatchDeleteRasterCollectionsRastersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BatchInsertRasterCollectionsRastersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
        end
      end
      
      class BatchInsertRasterCollectionsRastersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListRasterCollectionsRastersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rasters, as: 'rasters', class: Google::Apis::MapsengineV1::RasterCollectionsRaster, decorator: Google::Apis::MapsengineV1::RasterCollectionsRaster::Representation
      
        end
      end
      
      class ListRastersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rasters, as: 'rasters', class: Google::Apis::MapsengineV1::Raster, decorator: Google::Apis::MapsengineV1::Raster::Representation
      
        end
      end
      
      class ScaledShape
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :border, as: 'border', class: Google::Apis::MapsengineV1::Border, decorator: Google::Apis::MapsengineV1::Border::Representation
      
          property :fill, as: 'fill', class: Google::Apis::MapsengineV1::Color, decorator: Google::Apis::MapsengineV1::Color::Representation
      
          property :shape, as: 'shape'
        end
      end
      
      class ScalingFunction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :scaling_type, as: 'scalingType'
          property :size_range, as: 'sizeRange', class: Google::Apis::MapsengineV1::SizeRange, decorator: Google::Apis::MapsengineV1::SizeRange::Representation
      
          property :value_range, as: 'valueRange', class: Google::Apis::MapsengineV1::ValueRange, decorator: Google::Apis::MapsengineV1::ValueRange::Representation
      
        end
      end
      
      class Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::MapsengineV1::TableColumn, decorator: Google::Apis::MapsengineV1::TableColumn::Representation
      
          property :primary_geometry, as: 'primaryGeometry'
          property :primary_key, as: 'primaryKey'
        end
      end
      
      class SizeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class Table
        # @private
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
      
      class TableColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class ListTablesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, :base64 => true, as: 'nextPageToken'
          collection :tables, as: 'tables', class: Google::Apis::MapsengineV1::Table, decorator: Google::Apis::MapsengineV1::Table::Representation
      
        end
      end
      
      class ValueRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class VectorStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :display_rules, as: 'displayRules', class: Google::Apis::MapsengineV1::DisplayRule, decorator: Google::Apis::MapsengineV1::DisplayRule::Representation
      
          property :feature_info, as: 'featureInfo', class: Google::Apis::MapsengineV1::FeatureInfo, decorator: Google::Apis::MapsengineV1::FeatureInfo::Representation
      
          property :type, as: 'type'
        end
      end
      
      class ZoomLevels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
    end
  end
end
