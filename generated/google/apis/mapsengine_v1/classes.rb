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
      
      # 
      class GeoJsonGeometry
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class MapItem
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Acquisition time represents acquired time of a raster.
      class AcquisitionTime
        include Google::Apis::Core::Hashable
      
        # The end time if acquisition time is a range. The value is an RFC 3339
        # formatted date-time value (1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `end`
        # @return [DateTime]
        attr_accessor :end
      
        # The precision of acquisition time.
        # Corresponds to the JSON property `precision`
        # @return [String]
        attr_accessor :precision
      
        # The acquisition time, or start time if acquisition time is a range. The value
        # is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `start`
        # @return [DateTime]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] unless args[:end].nil?
          @precision = args[:precision] unless args[:precision].nil?
          @start = args[:start] unless args[:start].nil?
        end
      end
      
      # An asset is any Google Maps Engine resource that has a globally unique ID.
      # Assets include maps, layers, vector tables, raster collections, and rasters.
      # Projects and features are not considered assets.
      # More detailed information about an asset can be obtained by querying the asset'
      # s particular endpoint.
      class Asset
        include Google::Apis::Core::Hashable
      
        # A rectangular bounding box which contains all of the data in this asset. The
        # box is expressed as \"west, south, east, north\". The numbers represent
        # latitude and longitude in decimal degrees.
        # Corresponds to the JSON property `bbox`
        # @return [Array<Float>]
        attr_accessor :bbox
      
        # The creation time of this asset. The value is an RFC 3339-formatted date-time
        # value (for example, 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `creationTime`
        # @return [DateTime]
        attr_accessor :creation_time
      
        # The email address of the creator of this asset. This is only returned on GET
        # requests and not LIST requests.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # The asset's description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The ETag, used to refer to the current version of the asset.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The asset's globally unique ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The last modified time of this asset. The value is an RFC 3339-formatted date-
        # time value (for example, 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [DateTime]
        attr_accessor :last_modified_time
      
        # The email address of the last modifier of this asset. This is only returned on
        # GET requests and not LIST requests.
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # The asset's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the project to which the asset belongs.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The URL to query to retrieve the asset's complete object. The assets endpoint
        # only returns high-level information about a resource.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # An array of text strings, with each string representing a tag. More
        # information about tags can be found in the Tagging data article of the Maps
        # Engine help center.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # The type of asset. One of raster, rasterCollection, table, map, or layer.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # If true, WRITERs of the asset are able to edit the asset permissions.
        # Corresponds to the JSON property `writersCanEditPermissions`
        # @return [Boolean]
        attr_accessor :writers_can_edit_permissions
        alias_method :writers_can_edit_permissions?, :writers_can_edit_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bbox = args[:bbox] unless args[:bbox].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @creator_email = args[:creator_email] unless args[:creator_email].nil?
          @description = args[:description] unless args[:description].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @last_modifier_email = args[:last_modifier_email] unless args[:last_modifier_email].nil?
          @name = args[:name] unless args[:name].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @resource = args[:resource] unless args[:resource].nil?
          @tags = args[:tags] unless args[:tags].nil?
          @type = args[:type] unless args[:type].nil?
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] unless args[:writers_can_edit_permissions].nil?
        end
      end
      
      # The response returned by a call to resources.List.
      class ListAssetsResponse
        include Google::Apis::Core::Hashable
      
        # Assets returned.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::MapsengineV1::Asset>]
        attr_accessor :assets
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assets = args[:assets] unless args[:assets].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Border in line style. Both color and width are required.
      class Border
        include Google::Apis::Core::Hashable
      
        # Color of the border.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # Opacity of the border.
        # Corresponds to the JSON property `opacity`
        # @return [Float]
        attr_accessor :opacity
      
        # Width of the border, in pixels.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color = args[:color] unless args[:color].nil?
          @opacity = args[:opacity] unless args[:opacity].nil?
          @width = args[:width] unless args[:width].nil?
        end
      end
      
      # Basic color used in styling.
      class Color
        include Google::Apis::Core::Hashable
      
        # The CSS style color, can be in format of "red" or "#7733EE".
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # Opacity ranges from 0 to 1, inclusive. If not provided, default to 1.
        # Corresponds to the JSON property `opacity`
        # @return [Float]
        attr_accessor :opacity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color = args[:color] unless args[:color].nil?
          @opacity = args[:opacity] unless args[:opacity].nil?
        end
      end
      
      # 
      class Datasource
        include Google::Apis::Core::Hashable
      
        # The ID of a datasource.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
        end
      end
      
      # A display rule of the vector style.
      class DisplayRule
        include Google::Apis::Core::Hashable
      
        # This display rule will only be applied to features that match all of the
        # filters here. If filters is empty, then the rule applies to all features.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::MapsengineV1::Filter>]
        attr_accessor :filters
      
        # Style for lines.
        # Corresponds to the JSON property `lineOptions`
        # @return [Google::Apis::MapsengineV1::LineStyle]
        attr_accessor :line_options
      
        # Display rule name. Name is not unique and cannot be used for identification
        # purpose.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Style for points.
        # Corresponds to the JSON property `pointOptions`
        # @return [Google::Apis::MapsengineV1::PointStyle]
        attr_accessor :point_options
      
        # Style for polygons.
        # Corresponds to the JSON property `polygonOptions`
        # @return [Google::Apis::MapsengineV1::PolygonStyle]
        attr_accessor :polygon_options
      
        # Zoom level range. Zoom levels are restricted between 0 and 24, inclusive.
        # Corresponds to the JSON property `zoomLevels`
        # @return [Google::Apis::MapsengineV1::ZoomLevels]
        attr_accessor :zoom_levels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] unless args[:filters].nil?
          @line_options = args[:line_options] unless args[:line_options].nil?
          @name = args[:name] unless args[:name].nil?
          @point_options = args[:point_options] unless args[:point_options].nil?
          @polygon_options = args[:polygon_options] unless args[:polygon_options].nil?
          @zoom_levels = args[:zoom_levels] unless args[:zoom_levels].nil?
        end
      end
      
      # A feature within a table.
      class Feature
        include Google::Apis::Core::Hashable
      
        # The geometry member of this Feature.
        # Corresponds to the JSON property `geometry`
        # @return [Google::Apis::MapsengineV1::GeoJsonGeometry]
        attr_accessor :geometry
      
        # The properties associated with a feature.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Object>]
        attr_accessor :properties
      
        # Identifies this object as a feature.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geometry = args[:geometry] unless args[:geometry].nil?
          @properties = args[:properties] unless args[:properties].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A feature info contains information about individual feature.
      class FeatureInfo
        include Google::Apis::Core::Hashable
      
        # HTML template of the info window. If not provided, a default template with all
        # attributes will be generated.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] unless args[:content].nil?
        end
      end
      
      # The request sent to features.BatchDelete.
      class BatchDeleteFeaturesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `gx_ids`
        # @return [Array<String>]
        attr_accessor :gx_ids
      
        # 
        # Corresponds to the JSON property `primaryKeys`
        # @return [Array<String>]
        attr_accessor :primary_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gx_ids = args[:gx_ids] unless args[:gx_ids].nil?
          @primary_keys = args[:primary_keys] unless args[:primary_keys].nil?
        end
      end
      
      # The request sent to features.Insert.
      class BatchInsertFeaturesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::MapsengineV1::Feature>]
        attr_accessor :features
      
        # If true, the server will normalize feature geometries. It is assumed that the
        # South Pole is exterior to any polygons given. See here for a list of
        # normalizations. If false, all feature geometries must be given already
        # normalized. The points in all LinearRings must be listed in counter-clockwise
        # order, and LinearRings may not intersect.
        # Corresponds to the JSON property `normalizeGeometries`
        # @return [Boolean]
        attr_accessor :normalize_geometries
        alias_method :normalize_geometries?, :normalize_geometries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @features = args[:features] unless args[:features].nil?
          @normalize_geometries = args[:normalize_geometries] unless args[:normalize_geometries].nil?
        end
      end
      
      # The request sent to features.BatchPatch.
      class BatchPatchFeaturesRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::MapsengineV1::Feature>]
        attr_accessor :features
      
        # If true, the server will normalize feature geometries. It is assumed that the
        # South Pole is exterior to any polygons given. See here for a list of
        # normalizations. If false, all feature geometries must be given already
        # normalized. The points in all LinearRings must be listed in counter-clockwise
        # order, and LinearRings may not intersect.
        # Corresponds to the JSON property `normalizeGeometries`
        # @return [Boolean]
        attr_accessor :normalize_geometries
        alias_method :normalize_geometries?, :normalize_geometries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @features = args[:features] unless args[:features].nil?
          @normalize_geometries = args[:normalize_geometries] unless args[:normalize_geometries].nil?
        end
      end
      
      # The response returned by a call to features.List.
      class ListFeaturesResponse
        include Google::Apis::Core::Hashable
      
        # An indicator of the maximum rate at which queries may be made, if all queries
        # were as expensive as this query.
        # Corresponds to the JSON property `allowedQueriesPerSecond`
        # @return [Float]
        attr_accessor :allowed_queries_per_second
      
        # Resources returned.
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::MapsengineV1::Feature>]
        attr_accessor :features
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A schema indicating the properties which may be associated with features
        # within a Table, and the types of those properties.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::MapsengineV1::Schema]
        attr_accessor :schema
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_queries_per_second = args[:allowed_queries_per_second] unless args[:allowed_queries_per_second].nil?
          @features = args[:features] unless args[:features].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @schema = args[:schema] unless args[:schema].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A single File, which is a component of an Asset.
      class File
        include Google::Apis::Core::Hashable
      
        # The name of the file.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # The size of the file in bytes.
        # Corresponds to the JSON property `size`
        # @return [String]
        attr_accessor :size
      
        # The upload status of the file.
        # Corresponds to the JSON property `uploadStatus`
        # @return [String]
        attr_accessor :upload_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filename = args[:filename] unless args[:filename].nil?
          @size = args[:size] unless args[:size].nil?
          @upload_status = args[:upload_status] unless args[:upload_status].nil?
        end
      end
      
      # Conditions for filtering features.
      class Filter
        include Google::Apis::Core::Hashable
      
        # The column name to filter on.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Operation used to evaluate the filter.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Value to be evaluated against attribute.
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] unless args[:column].nil?
          @operator = args[:operator] unless args[:operator].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # A heterogenous collection of GeoJsonGeometry objects.
      class GeoJsonGeometryCollection < Google::Apis::MapsengineV1::GeoJsonGeometry
        include Google::Apis::Core::Hashable
      
        # An array of geometry objects. There must be at least 2 different types of
        # geometries in the array.
        # Corresponds to the JSON property `geometries`
        # @return [Array<Google::Apis::MapsengineV1::GeoJsonGeometry>]
        attr_accessor :geometries
      
        # Identifies this object as a GeoJsonGeometryCollection.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
          @type = 'GeometryCollection'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geometries = args[:geometries] unless args[:geometries].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class GeoJsonLineString < Google::Apis::MapsengineV1::GeoJsonGeometry
        include Google::Apis::Core::Hashable
      
        # An array of two or more positions, representing a line.
        # Corresponds to the JSON property `coordinates`
        # @return [Array<Array<Float>>]
        attr_accessor :coordinates
      
        # Identifies this object as a GeoJsonLineString.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
          @type = 'LineString'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coordinates = args[:coordinates] unless args[:coordinates].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Multi Line String
      class GeoJsonMultiLineString < Google::Apis::MapsengineV1::GeoJsonGeometry
        include Google::Apis::Core::Hashable
      
        # An array of at least two GeoJsonLineString coordinate arrays.
        # Corresponds to the JSON property `coordinates`
        # @return [Array<Array<Array<Float>>>]
        attr_accessor :coordinates
      
        # Identifies this object as a GeoJsonMultiLineString.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
          @type = 'MultiLineString'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coordinates = args[:coordinates] unless args[:coordinates].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class GeoJsonMultiPoint < Google::Apis::MapsengineV1::GeoJsonGeometry
        include Google::Apis::Core::Hashable
      
        # An array of at least two GeoJsonPoint coordinate arrays.
        # Corresponds to the JSON property `coordinates`
        # @return [Array<Array<Float>>]
        attr_accessor :coordinates
      
        # Identifies this object as a GeoJsonMultiPoint.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
          @type = 'MultiPoint'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coordinates = args[:coordinates] unless args[:coordinates].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class GeoJsonMultiPolygon < Google::Apis::MapsengineV1::GeoJsonGeometry
        include Google::Apis::Core::Hashable
      
        # An array of at least two GeoJsonPolygon coordinate arrays.
        # Corresponds to the JSON property `coordinates`
        # @return [Array<Array<Array<Array<Float>>>>]
        attr_accessor :coordinates
      
        # Identifies this object as a GeoJsonMultiPolygon.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
          @type = 'MultiPolygon'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coordinates = args[:coordinates] unless args[:coordinates].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class GeoJsonPoint < Google::Apis::MapsengineV1::GeoJsonGeometry
        include Google::Apis::Core::Hashable
      
        # A position represents a geographical position as an array containing a
        # longitude and a latitude, and optionally an altitude, in that order. All
        # Geometry objects make use of positions to represent geometries as nested
        # arrays. The structure of the array is governed by the type of the geometry.
        # Corresponds to the JSON property `coordinates`
        # @return [Array<Float>]
        attr_accessor :coordinates
      
        # Identifies this object as a GeoJsonPoint.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
          @type = 'Point'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coordinates = args[:coordinates] unless args[:coordinates].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class GeoJsonPolygon < Google::Apis::MapsengineV1::GeoJsonGeometry
        include Google::Apis::Core::Hashable
      
        # An array of LinearRings. A LinearRing is a GeoJsonLineString which is closed (
        # that is, the first and last GeoJsonPositions are equal), and which contains at
        # least four GeoJsonPositions. For polygons with multiple rings, the first
        # LinearRing is the exterior ring, and any subsequent rings are interior rings (
        # that is, holes).
        # Corresponds to the JSON property `coordinates`
        # @return [Array<Array<Array<Float>>>]
        attr_accessor :coordinates
      
        # Identifies this object as a GeoJsonPolygon.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
          @type = 'Polygon'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coordinates = args[:coordinates] unless args[:coordinates].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # An icon is a user-uploaded image that can be used to style point geometries.
      class Icon
        include Google::Apis::Core::Hashable
      
        # The description of this Icon, supplied by the author.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An ID used to refer to this Icon.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of this Icon, supplied by the author.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # Style for icon, this is part of point style.
      class IconStyle
        include Google::Apis::Core::Hashable
      
        # Custom icon id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Stock icon name. To use a stock icon, prefix it with 'gx_'. See Stock icon
        # names for valid icon names. For example, to specify small_red, set name to '
        # gx_small_red'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parameters for styling points as scaled shapes.
        # Corresponds to the JSON property `scaledShape`
        # @return [Google::Apis::MapsengineV1::ScaledShape]
        attr_accessor :scaled_shape
      
        # Parameters for scaling scaled shapes.
        # Corresponds to the JSON property `scalingFunction`
        # @return [Google::Apis::MapsengineV1::ScalingFunction]
        attr_accessor :scaling_function
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @scaled_shape = args[:scaled_shape] unless args[:scaled_shape].nil?
          @scaling_function = args[:scaling_function] unless args[:scaling_function].nil?
        end
      end
      
      # The response returned by a call to icons.List.
      class ListIconsResponse
        include Google::Apis::Core::Hashable
      
        # Resources returned.
        # Corresponds to the JSON property `icons`
        # @return [Array<Google::Apis::MapsengineV1::Icon>]
        attr_accessor :icons
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icons = args[:icons] unless args[:icons].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Text label style.
      class LabelStyle
        include Google::Apis::Core::Hashable
      
        # Color of the text. If not provided, default to black.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # The column value of the feature to be displayed.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Font style of the label, defaults to 'normal'.
        # Corresponds to the JSON property `fontStyle`
        # @return [String]
        attr_accessor :font_style
      
        # Font weight of the label, defaults to 'normal'.
        # Corresponds to the JSON property `fontWeight`
        # @return [String]
        attr_accessor :font_weight
      
        # Opacity of the text.
        # Corresponds to the JSON property `opacity`
        # @return [Float]
        attr_accessor :opacity
      
        # Basic color used in styling.
        # Corresponds to the JSON property `outline`
        # @return [Google::Apis::MapsengineV1::Color]
        attr_accessor :outline
      
        # Font size of the label, in pixels. 8 <= size <= 15. If not provided, a default
        # size will be provided.
        # Corresponds to the JSON property `size`
        # @return [Float]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color = args[:color] unless args[:color].nil?
          @column = args[:column] unless args[:column].nil?
          @font_style = args[:font_style] unless args[:font_style].nil?
          @font_weight = args[:font_weight] unless args[:font_weight].nil?
          @opacity = args[:opacity] unless args[:opacity].nil?
          @outline = args[:outline] unless args[:outline].nil?
          @size = args[:size] unless args[:size].nil?
        end
      end
      
      # A Layer combines multiple datasources, with styling information, for
      # presentation on a map.
      class Layer
        include Google::Apis::Core::Hashable
      
        # A rectangular bounding box which contains all of the data in this Layer. The
        # box is expressed as \"west, south, east, north\". The numbers represent
        # latitude and longitude in decimal degrees.
        # Corresponds to the JSON property `bbox`
        # @return [Array<Float>]
        attr_accessor :bbox
      
        # The creation time of this layer. The value is an RFC 3339 formatted date-time
        # value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `creationTime`
        # @return [DateTime]
        attr_accessor :creation_time
      
        # The email address of the creator of this layer. This is only returned on GET
        # requests and not LIST requests.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # Deprecated: The type of the datasources used to build this Layer. Note: This
        # has been replaced by layerType, but is still available for now to maintain
        # backward compatibility.
        # Corresponds to the JSON property `datasourceType`
        # @return [String]
        attr_accessor :datasource_type
      
        # An array of datasources used to build this layer. If layerType is "image", or
        # layerType is not specified and datasourceType is "image", then each element in
        # this array is a reference to an Image or RasterCollection. If layerType is "
        # vector", or layerType is not specified and datasourceType is "table" then each
        # element in this array is a reference to a Vector Table.
        # Corresponds to the JSON property `datasources`
        # @return [Array<Google::Apis::MapsengineV1::Datasource>]
        attr_accessor :datasources
      
        # The description of this Layer, supplied by the author.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Deprecated: The name of an access list of the Map Editor type. The user on
        # whose behalf the request is being sent must be an editor on that access list.
        # Note: Google Maps Engine no longer uses access lists. Instead, each asset has
        # its own list of permissions. For backward compatibility, the API still accepts
        # access lists for projects that are already using access lists. If you created
        # a GME account/project after July 14th, 2014, you will not be able to send API
        # requests that include access lists. Note: This is an input field only. It is
        # not returned in response to a list or get request.
        # Corresponds to the JSON property `draftAccessList`
        # @return [String]
        attr_accessor :draft_access_list
      
        # The ETag, used to refer to the current version of the asset.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A globally unique ID, used to refer to this Layer.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The last modified time of this layer. The value is an RFC 3339 formatted date-
        # time value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [DateTime]
        attr_accessor :last_modified_time
      
        # The email address of the last modifier of this layer. This is only returned on
        # GET requests and not LIST requests.
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # The type of the datasources used to build this Layer. This should be used
        # instead of datasourceType. At least one of layerType and datasourceType and
        # must be specified, but layerType takes precedence.
        # Corresponds to the JSON property `layerType`
        # @return [String]
        attr_accessor :layer_type
      
        # The name of this Layer, supplied by the author.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The processing status of this layer.
        # Corresponds to the JSON property `processingStatus`
        # @return [String]
        attr_accessor :processing_status
      
        # The ID of the project that this Layer is in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Deprecated: The access list to whom view permissions are granted. The value
        # must be the name of a Maps Engine access list of the Map Viewer type, and the
        # user must be a viewer on that list. Note: Google Maps Engine no longer uses
        # access lists. Instead, each asset has its own list of permissions. For
        # backward compatibility, the API still accepts access lists for projects that
        # are already using access lists. If you created a GME account/project after
        # July 14th, 2014, you will not be able to send API requests that include access
        # lists. Note: This is an input field only. It is not returned in response to a
        # list or get request.
        # Corresponds to the JSON property `publishedAccessList`
        # @return [String]
        attr_accessor :published_access_list
      
        # The publishing status of this layer.
        # Corresponds to the JSON property `publishingStatus`
        # @return [String]
        attr_accessor :publishing_status
      
        # A vector style contains styling information for vector layer.
        # Corresponds to the JSON property `style`
        # @return [Google::Apis::MapsengineV1::VectorStyle]
        attr_accessor :style
      
        # Tags of this Layer.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # If true, WRITERs of the asset are able to edit the asset permissions.
        # Corresponds to the JSON property `writersCanEditPermissions`
        # @return [Boolean]
        attr_accessor :writers_can_edit_permissions
        alias_method :writers_can_edit_permissions?, :writers_can_edit_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bbox = args[:bbox] unless args[:bbox].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @creator_email = args[:creator_email] unless args[:creator_email].nil?
          @datasource_type = args[:datasource_type] unless args[:datasource_type].nil?
          @datasources = args[:datasources] unless args[:datasources].nil?
          @description = args[:description] unless args[:description].nil?
          @draft_access_list = args[:draft_access_list] unless args[:draft_access_list].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @last_modifier_email = args[:last_modifier_email] unless args[:last_modifier_email].nil?
          @layer_type = args[:layer_type] unless args[:layer_type].nil?
          @name = args[:name] unless args[:name].nil?
          @processing_status = args[:processing_status] unless args[:processing_status].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @published_access_list = args[:published_access_list] unless args[:published_access_list].nil?
          @publishing_status = args[:publishing_status] unless args[:publishing_status].nil?
          @style = args[:style] unless args[:style].nil?
          @tags = args[:tags] unless args[:tags].nil?
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] unless args[:writers_can_edit_permissions].nil?
        end
      end
      
      # The response returned by a call to layers.List. Note: The list response does
      # not include all the fields available in a layer. Refer to the layer resource
      # description for details of the fields that are not included. You'll need to
      # send a get request to retrieve the additional fields for each layer.
      class ListLayersResponse
        include Google::Apis::Core::Hashable
      
        # Resources returned.
        # Corresponds to the JSON property `layers`
        # @return [Array<Google::Apis::MapsengineV1::Layer>]
        attr_accessor :layers
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @layers = args[:layers] unless args[:layers].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Style for lines.
      class LineStyle
        include Google::Apis::Core::Hashable
      
        # Border in line style. Both color and width are required.
        # Corresponds to the JSON property `border`
        # @return [Google::Apis::MapsengineV1::Border]
        attr_accessor :border
      
        # Dash defines the pattern of the line, the values are pixel lengths of
        # alternating dash and gap. If dash is not provided, then it means a solid line.
        # Dash can contain up to 10 values and must contain even number of values.
        # Corresponds to the JSON property `dash`
        # @return [Array<Float>]
        attr_accessor :dash
      
        # Text label style.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::MapsengineV1::LabelStyle]
        attr_accessor :label
      
        # Stroke of the line.
        # Corresponds to the JSON property `stroke`
        # @return [Google::Apis::MapsengineV1::LineStyle::Stroke]
        attr_accessor :stroke
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @border = args[:border] unless args[:border].nil?
          @dash = args[:dash] unless args[:dash].nil?
          @label = args[:label] unless args[:label].nil?
          @stroke = args[:stroke] unless args[:stroke].nil?
        end
        
        # Stroke of the line.
        class Stroke
          include Google::Apis::Core::Hashable
        
          # Color of the line.
          # Corresponds to the JSON property `color`
          # @return [String]
          attr_accessor :color
        
          # Opacity of the line.
          # Corresponds to the JSON property `opacity`
          # @return [Float]
          attr_accessor :opacity
        
          # Width of the line, in pixels. 0 <= width <= 10. If width is set to 0, the line
          # will be invisible.
          # Corresponds to the JSON property `width`
          # @return [Float]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @color = args[:color] unless args[:color].nil?
            @opacity = args[:opacity] unless args[:opacity].nil?
            @width = args[:width] unless args[:width].nil?
          end
        end
      end
      
      # A Map is a collection of Layers, optionally contained within folders.
      class Map
        include Google::Apis::Core::Hashable
      
        # A rectangular bounding box which contains all of the data in this Map. The box
        # is expressed as \"west, south, east, north\". The numbers represent latitude
        # and longitude in decimal degrees.
        # Corresponds to the JSON property `bbox`
        # @return [Array<Float>]
        attr_accessor :bbox
      
        # The contents of this Map.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::MapsengineV1::MapItem>]
        attr_accessor :contents
      
        # The creation time of this map. The value is an RFC 3339 formatted date-time
        # value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `creationTime`
        # @return [DateTime]
        attr_accessor :creation_time
      
        # The email address of the creator of this map. This is only returned on GET
        # requests and not LIST requests.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # A rectangular geographic bounds.
        # Corresponds to the JSON property `defaultViewport`
        # @return [Array<Float>]
        attr_accessor :default_viewport
      
        # The description of this Map, supplied by the author.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Deprecated: The name of an access list of the Map Editor type. The user on
        # whose behalf the request is being sent must be an editor on that access list.
        # Note: Google Maps Engine no longer uses access lists. Instead, each asset has
        # its own list of permissions. For backward compatibility, the API still accepts
        # access lists for projects that are already using access lists. If you created
        # a GME account/project after July 14th, 2014, you will not be able to send API
        # requests that include access lists. Note: This is an input field only. It is
        # not returned in response to a list or get request.
        # Corresponds to the JSON property `draftAccessList`
        # @return [String]
        attr_accessor :draft_access_list
      
        # The ETag, used to refer to the current version of the asset.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A globally unique ID, used to refer to this Map.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The last modified time of this map. The value is an RFC 3339 formatted date-
        # time value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [DateTime]
        attr_accessor :last_modified_time
      
        # The email address of the last modifier of this map. This is only returned on
        # GET requests and not LIST requests.
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # The name of this Map, supplied by the author.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The processing status of this map. Map processing is automatically started
        # once a map becomes ready for processing.
        # Corresponds to the JSON property `processingStatus`
        # @return [String]
        attr_accessor :processing_status
      
        # The ID of the project that this Map is in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Deprecated: The access list to whom view permissions are granted. The value
        # must be the name of a Maps Engine access list of the Map Viewer type, and the
        # user must be a viewer on that list. Note: Google Maps Engine no longer uses
        # access lists. Instead, each asset has its own list of permissions. For
        # backward compatibility, the API still accepts access lists for projects that
        # are already using access lists. If you created a GME account/project after
        # July 14th, 2014, you will not be able to send API requests that include access
        # lists. This is an input field only. It is not returned in response to a list
        # or get request.
        # Corresponds to the JSON property `publishedAccessList`
        # @return [String]
        attr_accessor :published_access_list
      
        # The publishing status of this map.
        # Corresponds to the JSON property `publishingStatus`
        # @return [String]
        attr_accessor :publishing_status
      
        # Tags of this Map.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Deprecated: An array containing the available versions of this Map. Currently
        # may only contain "published". The publishingStatus field should be used
        # instead.
        # Corresponds to the JSON property `versions`
        # @return [Array<String>]
        attr_accessor :versions
      
        # If true, WRITERs of the asset are able to edit the asset permissions.
        # Corresponds to the JSON property `writersCanEditPermissions`
        # @return [Boolean]
        attr_accessor :writers_can_edit_permissions
        alias_method :writers_can_edit_permissions?, :writers_can_edit_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bbox = args[:bbox] unless args[:bbox].nil?
          @contents = args[:contents] unless args[:contents].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @creator_email = args[:creator_email] unless args[:creator_email].nil?
          @default_viewport = args[:default_viewport] unless args[:default_viewport].nil?
          @description = args[:description] unless args[:description].nil?
          @draft_access_list = args[:draft_access_list] unless args[:draft_access_list].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @last_modifier_email = args[:last_modifier_email] unless args[:last_modifier_email].nil?
          @name = args[:name] unless args[:name].nil?
          @processing_status = args[:processing_status] unless args[:processing_status].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @published_access_list = args[:published_access_list] unless args[:published_access_list].nil?
          @publishing_status = args[:publishing_status] unless args[:publishing_status].nil?
          @tags = args[:tags] unless args[:tags].nil?
          @versions = args[:versions] unless args[:versions].nil?
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] unless args[:writers_can_edit_permissions].nil?
        end
      end
      
      # 
      class MapFolder < Google::Apis::MapsengineV1::MapItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::MapsengineV1::MapItem>]
        attr_accessor :contents
      
        # An array of four numbers (west, south, east, north) which defines the
        # rectangular bounding box of the default viewport. The numbers represent
        # latitude and longitude in decimal degrees.
        # Corresponds to the JSON property `defaultViewport`
        # @return [Array<Float>]
        attr_accessor :default_viewport
      
        # The expandability setting of this MapFolder. If true, the folder can be
        # expanded.
        # Corresponds to the JSON property `expandable`
        # @return [Boolean]
        attr_accessor :expandable
        alias_method :expandable?, :expandable
      
        # A user defined alias for this MapFolder, specific to this Map.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The name of this MapFolder.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Identifies this object as a MapFolder.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The visibility setting of this MapFolder. One of "defaultOn" or "defaultOff".
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
          @type = 'folder'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] unless args[:contents].nil?
          @default_viewport = args[:default_viewport] unless args[:default_viewport].nil?
          @expandable = args[:expandable] unless args[:expandable].nil?
          @key = args[:key] unless args[:key].nil?
          @name = args[:name] unless args[:name].nil?
          @type = args[:type] unless args[:type].nil?
          @visibility = args[:visibility] unless args[:visibility].nil?
        end
      end
      
      # 
      class MapKmlLink < Google::Apis::MapsengineV1::MapItem
        include Google::Apis::Core::Hashable
      
        # An array of four numbers (west, south, east, north) which defines the
        # rectangular bounding box of the default viewport. The numbers represent
        # latitude and longitude in decimal degrees.
        # Corresponds to the JSON property `defaultViewport`
        # @return [Array<Float>]
        attr_accessor :default_viewport
      
        # The URL to the KML file represented by this MapKmlLink.
        # Corresponds to the JSON property `kmlUrl`
        # @return [String]
        attr_accessor :kml_url
      
        # The name of this MapKmlLink.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Identifies this object as a MapKmlLink.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The visibility setting of this MapKmlLink. One of "defaultOn" or "defaultOff".
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
          @type = 'kmlLink'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_viewport = args[:default_viewport] unless args[:default_viewport].nil?
          @kml_url = args[:kml_url] unless args[:kml_url].nil?
          @name = args[:name] unless args[:name].nil?
          @type = args[:type] unless args[:type].nil?
          @visibility = args[:visibility] unless args[:visibility].nil?
        end
      end
      
      # 
      class MapLayer < Google::Apis::MapsengineV1::MapItem
        include Google::Apis::Core::Hashable
      
        # An array of four numbers (west, south, east, north) which defines the
        # rectangular bounding box of the default viewport. The numbers represent
        # latitude and longitude in decimal degrees.
        # Corresponds to the JSON property `defaultViewport`
        # @return [Array<Float>]
        attr_accessor :default_viewport
      
        # The ID of this MapLayer. This ID can be used to request more details about the
        # layer.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A user defined alias for this MapLayer, specific to this Map.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The name of this MapLayer.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Identifies this object as a MapLayer.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The visibility setting of this MapLayer. One of "defaultOn" or "defaultOff".
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
          @type = 'layer'
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_viewport = args[:default_viewport] unless args[:default_viewport].nil?
          @id = args[:id] unless args[:id].nil?
          @key = args[:key] unless args[:key].nil?
          @name = args[:name] unless args[:name].nil?
          @type = args[:type] unless args[:type].nil?
          @visibility = args[:visibility] unless args[:visibility].nil?
        end
      end
      
      # The response returned by a call to maps.List.
      class ListMapsResponse
        include Google::Apis::Core::Hashable
      
        # Resources returned.
        # Corresponds to the JSON property `maps`
        # @return [Array<Google::Apis::MapsengineV1::Map>]
        attr_accessor :maps
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maps = args[:maps] unless args[:maps].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A list of the parents of an asset.
      class Parent
        include Google::Apis::Core::Hashable
      
        # The ID of this parent.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
        end
      end
      
      # The response returned by a call to parents.List.
      class ListParentsResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The parent assets.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::MapsengineV1::Parent>]
        attr_accessor :parents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @parents = args[:parents] unless args[:parents].nil?
        end
      end
      
      # A permission defines the user or group that has access to an asset, and the
      # type of access they have.
      class Permission
        include Google::Apis::Core::Hashable
      
        # Indicates whether a public asset is listed and can be found via a web search (
        # value true), or is visible only to people who have a link to the asset (value
        # false).
        # Corresponds to the JSON property `discoverable`
        # @return [Boolean]
        attr_accessor :discoverable
        alias_method :discoverable?, :discoverable
      
        # The unique identifier of the permission. This could be the email address of
        # the user or group this permission refers to, or the string "anyone" for public
        # permissions.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of access granted to this user or group.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # The account type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discoverable = args[:discoverable] unless args[:discoverable].nil?
          @id = args[:id] unless args[:id].nil?
          @role = args[:role] unless args[:role].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # The request sent to mapsengine.permissions.batchDelete.
      class BatchDeletePermissionsRequest
        include Google::Apis::Core::Hashable
      
        # An array of permission ids to be removed. This could be the email address of
        # the user or group this permission refers to, or the string "anyone" for public
        # permissions.
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] unless args[:ids].nil?
        end
      end
      
      # The response returned by a call to mapsengine.permissions.batchDelete.
      class BatchDeletePermissionsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request sent to mapsengine.permissions.batchUpdate.
      class BatchUpdatePermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The permissions to be inserted or updated.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::MapsengineV1::Permission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] unless args[:permissions].nil?
        end
      end
      
      # The response returned by a call to mapsengine.permissions.batchUpdate.
      class BatchUpdatePermissionsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class ListPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # The set of permissions associated with this asset.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::MapsengineV1::Permission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] unless args[:permissions].nil?
        end
      end
      
      # Style for points.
      class PointStyle
        include Google::Apis::Core::Hashable
      
        # Style for icon, this is part of point style.
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::MapsengineV1::IconStyle]
        attr_accessor :icon
      
        # Text label style.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::MapsengineV1::LabelStyle]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icon = args[:icon] unless args[:icon].nil?
          @label = args[:label] unless args[:label].nil?
        end
      end
      
      # Style for polygons.
      class PolygonStyle
        include Google::Apis::Core::Hashable
      
        # Basic color used in styling.
        # Corresponds to the JSON property `fill`
        # @return [Google::Apis::MapsengineV1::Color]
        attr_accessor :fill
      
        # Text label style.
        # Corresponds to the JSON property `label`
        # @return [Google::Apis::MapsengineV1::LabelStyle]
        attr_accessor :label
      
        # Border in line style. Both color and width are required.
        # Corresponds to the JSON property `stroke`
        # @return [Google::Apis::MapsengineV1::Border]
        attr_accessor :stroke
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fill = args[:fill] unless args[:fill].nil?
          @label = args[:label] unless args[:label].nil?
          @stroke = args[:stroke] unless args[:stroke].nil?
        end
      end
      
      # The response returned by a call to any asset's Process method.
      class ProcessResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Maps Engine project groups a collection of resources.
      class Project
        include Google::Apis::Core::Hashable
      
        # An ID used to refer to this Maps Engine project.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A user provided name for this Maps Engine project.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # The response returned by a call to projects.List.
      class ListProjectsResponse
        include Google::Apis::Core::Hashable
      
        # Projects returned.
        # Corresponds to the JSON property `projects`
        # @return [Array<Google::Apis::MapsengineV1::Project>]
        attr_accessor :projects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @projects = args[:projects] unless args[:projects].nil?
        end
      end
      
      # The response returned by a call to any asset's Publish method.
      class PublishResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The published version of a layer.
      class PublishedLayer
        include Google::Apis::Core::Hashable
      
        # The description of this Layer, supplied by the author.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A globally unique ID, used to refer to this Layer.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the datasources used to build this Layer. This should be used
        # instead of datasourceType. At least one of layerType and datasourceType and
        # must be specified, but layerType takes precedence.
        # Corresponds to the JSON property `layerType`
        # @return [String]
        attr_accessor :layer_type
      
        # The name of this Layer, supplied by the author.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the project that this Layer is in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @layer_type = args[:layer_type] unless args[:layer_type].nil?
          @name = args[:name] unless args[:name].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
        end
      end
      
      # The response returned by a call to layers.List.published.
      class ListPublishedLayersResponse
        include Google::Apis::Core::Hashable
      
        # Resources returned.
        # Corresponds to the JSON property `layers`
        # @return [Array<Google::Apis::MapsengineV1::PublishedLayer>]
        attr_accessor :layers
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @layers = args[:layers] unless args[:layers].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # The published version of a map asset.
      class PublishedMap
        include Google::Apis::Core::Hashable
      
        # The contents of this Map.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::MapsengineV1::MapItem>]
        attr_accessor :contents
      
        # A rectangular geographic bounds.
        # Corresponds to the JSON property `defaultViewport`
        # @return [Array<Float>]
        attr_accessor :default_viewport
      
        # The description of this Map, supplied by the author.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A globally unique ID, used to refer to this Map.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The name of this Map, supplied by the author.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the project that this Map is in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] unless args[:contents].nil?
          @default_viewport = args[:default_viewport] unless args[:default_viewport].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
        end
      end
      
      # The response returned by a call to maps.List.published.
      class ListPublishedMapsResponse
        include Google::Apis::Core::Hashable
      
        # Resources returned.
        # Corresponds to the JSON property `maps`
        # @return [Array<Google::Apis::MapsengineV1::PublishedMap>]
        attr_accessor :maps
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maps = args[:maps] unless args[:maps].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A geo-referenced raster.
      class Raster
        include Google::Apis::Core::Hashable
      
        # Acquisition time represents acquired time of a raster.
        # Corresponds to the JSON property `acquisitionTime`
        # @return [Google::Apis::MapsengineV1::AcquisitionTime]
        attr_accessor :acquisition_time
      
        # The name of the attribution to be used for this Raster.
        # Corresponds to the JSON property `attribution`
        # @return [String]
        attr_accessor :attribution
      
        # A rectangular bounding box which contains all of the data in this Raster. The
        # box is expressed as \"west, south, east, north\". The numbers represent
        # latitudes and longitudes in decimal degrees.
        # Corresponds to the JSON property `bbox`
        # @return [Array<Float>]
        attr_accessor :bbox
      
        # The creation time of this raster. The value is an RFC 3339 formatted date-time
        # value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `creationTime`
        # @return [DateTime]
        attr_accessor :creation_time
      
        # The email address of the creator of this raster. This is only returned on GET
        # requests and not LIST requests.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # The description of this Raster, supplied by the author.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Deprecated: The name of an access list of the Map Editor type. The user on
        # whose behalf the request is being sent must be an editor on that access list.
        # Note: Google Maps Engine no longer uses access lists. Instead, each asset has
        # its own list of permissions. For backward compatibility, the API still accepts
        # access lists for projects that are already using access lists. If you created
        # a GME account/project after July 14th, 2014, you will not be able to send API
        # requests that include access lists. Note: This is an input field only. It is
        # not returned in response to a list or get request.
        # Corresponds to the JSON property `draftAccessList`
        # @return [String]
        attr_accessor :draft_access_list
      
        # The ETag, used to refer to the current version of the asset.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The files associated with this Raster.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::MapsengineV1::File>]
        attr_accessor :files
      
        # A globally unique ID, used to refer to this Raster.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The last modified time of this raster. The value is an RFC 3339 formatted date-
        # time value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [DateTime]
        attr_accessor :last_modified_time
      
        # The email address of the last modifier of this raster. This is only returned
        # on GET requests and not LIST requests.
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # The mask processing type of this Raster.
        # Corresponds to the JSON property `maskType`
        # @return [String]
        attr_accessor :mask_type
      
        # The name of this Raster, supplied by the author.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The processing status of this Raster.
        # Corresponds to the JSON property `processingStatus`
        # @return [String]
        attr_accessor :processing_status
      
        # The ID of the project that this Raster is in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The type of this Raster. Always "image" today.
        # Corresponds to the JSON property `rasterType`
        # @return [String]
        attr_accessor :raster_type
      
        # Tags of this Raster.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # If true, WRITERs of the asset are able to edit the asset permissions.
        # Corresponds to the JSON property `writersCanEditPermissions`
        # @return [Boolean]
        attr_accessor :writers_can_edit_permissions
        alias_method :writers_can_edit_permissions?, :writers_can_edit_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acquisition_time = args[:acquisition_time] unless args[:acquisition_time].nil?
          @attribution = args[:attribution] unless args[:attribution].nil?
          @bbox = args[:bbox] unless args[:bbox].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @creator_email = args[:creator_email] unless args[:creator_email].nil?
          @description = args[:description] unless args[:description].nil?
          @draft_access_list = args[:draft_access_list] unless args[:draft_access_list].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @files = args[:files] unless args[:files].nil?
          @id = args[:id] unless args[:id].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @last_modifier_email = args[:last_modifier_email] unless args[:last_modifier_email].nil?
          @mask_type = args[:mask_type] unless args[:mask_type].nil?
          @name = args[:name] unless args[:name].nil?
          @processing_status = args[:processing_status] unless args[:processing_status].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @raster_type = args[:raster_type] unless args[:raster_type].nil?
          @tags = args[:tags] unless args[:tags].nil?
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] unless args[:writers_can_edit_permissions].nil?
        end
      end
      
      # A raster collection groups multiple Raster resources for inclusion in a Layer.
      class RasterCollection
        include Google::Apis::Core::Hashable
      
        # The name of the attribution to be used for this RasterCollection. Note:
        # Attribution is returned in response to a get request but not a list request.
        # After requesting a list of raster collections, you'll need to send a get
        # request to retrieve the attribution for each raster collection.
        # Corresponds to the JSON property `attribution`
        # @return [String]
        attr_accessor :attribution
      
        # A rectangular bounding box which contains all of the data in this
        # RasterCollection. The box is expressed as \"west, south, east, north\". The
        # numbers represent latitude and longitude in decimal degrees.
        # Corresponds to the JSON property `bbox`
        # @return [Array<Float>]
        attr_accessor :bbox
      
        # The creation time of this RasterCollection. The value is an RFC 3339 formatted
        # date-time value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `creationTime`
        # @return [DateTime]
        attr_accessor :creation_time
      
        # The email address of the creator of this raster collection. This is only
        # returned on GET requests and not LIST requests.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # The description of this RasterCollection, supplied by the author.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Deprecated: The name of an access list of the Map Editor type. The user on
        # whose behalf the request is being sent must be an editor on that access list.
        # Note: Google Maps Engine no longer uses access lists. Instead, each asset has
        # its own list of permissions. For backward compatibility, the API still accepts
        # access lists for projects that are already using access lists. If you created
        # a GME account/project after July 14th, 2014, you will not be able to send API
        # requests that include access lists. Note: This is an input field only. It is
        # not returned in response to a list or get request.
        # Corresponds to the JSON property `draftAccessList`
        # @return [String]
        attr_accessor :draft_access_list
      
        # The ETag, used to refer to the current version of the asset.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # A globally unique ID, used to refer to this RasterCollection.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The last modified time of this RasterCollection. The value is an RFC 3339
        # formatted date-time value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [DateTime]
        attr_accessor :last_modified_time
      
        # The email address of the last modifier of this raster collection. This is only
        # returned on GET requests and not LIST requests.
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # True if this RasterCollection is a mosaic.
        # Corresponds to the JSON property `mosaic`
        # @return [Boolean]
        attr_accessor :mosaic
        alias_method :mosaic?, :mosaic
      
        # The name of this RasterCollection, supplied by the author.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The processing status of this RasterCollection.
        # Corresponds to the JSON property `processingStatus`
        # @return [String]
        attr_accessor :processing_status
      
        # The ID of the project that this RasterCollection is in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The type of rasters contained within this RasterCollection.
        # Corresponds to the JSON property `rasterType`
        # @return [String]
        attr_accessor :raster_type
      
        # Tags of this RasterCollection.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # If true, WRITERs of the asset are able to edit the asset permissions.
        # Corresponds to the JSON property `writersCanEditPermissions`
        # @return [Boolean]
        attr_accessor :writers_can_edit_permissions
        alias_method :writers_can_edit_permissions?, :writers_can_edit_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution = args[:attribution] unless args[:attribution].nil?
          @bbox = args[:bbox] unless args[:bbox].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @creator_email = args[:creator_email] unless args[:creator_email].nil?
          @description = args[:description] unless args[:description].nil?
          @draft_access_list = args[:draft_access_list] unless args[:draft_access_list].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @last_modifier_email = args[:last_modifier_email] unless args[:last_modifier_email].nil?
          @mosaic = args[:mosaic] unless args[:mosaic].nil?
          @name = args[:name] unless args[:name].nil?
          @processing_status = args[:processing_status] unless args[:processing_status].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @raster_type = args[:raster_type] unless args[:raster_type].nil?
          @tags = args[:tags] unless args[:tags].nil?
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] unless args[:writers_can_edit_permissions].nil?
        end
      end
      
      # The response returned by a call to raster_collections.List. Note: The list
      # response does not include all the fields available in a raster collection.
      # Refer to the RasterCollection resource description for details of the fields
      # that are not included. You'll need to send a get request to retrieve the
      # additional fields for each raster collection.
      class ListRasterCollectionsResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Resources returned.
        # Corresponds to the JSON property `rasterCollections`
        # @return [Array<Google::Apis::MapsengineV1::RasterCollection>]
        attr_accessor :raster_collections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @raster_collections = args[:raster_collections] unless args[:raster_collections].nil?
        end
      end
      
      # A raster resource.
      class RasterCollectionsRaster
        include Google::Apis::Core::Hashable
      
        # A rectangular bounding box which contains all of the data in this Raster. The
        # box is expressed as \"west, south, east, north\". The numbers represent
        # latitudes and longitudes in decimal degrees.
        # Corresponds to the JSON property `bbox`
        # @return [Array<Float>]
        attr_accessor :bbox
      
        # The creation time of this raster. The value is an RFC 3339 formatted date-time
        # value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `creationTime`
        # @return [DateTime]
        attr_accessor :creation_time
      
        # The description of this Raster, supplied by the author.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A globally unique ID, used to refer to this Raster.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The last modified time of this raster. The value is an RFC 3339 formatted date-
        # time value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [DateTime]
        attr_accessor :last_modified_time
      
        # The name of this Raster, supplied by the author.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the project that this Raster is in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The type of this Raster. Always "image" today.
        # Corresponds to the JSON property `rasterType`
        # @return [String]
        attr_accessor :raster_type
      
        # Tags of this Raster.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bbox = args[:bbox] unless args[:bbox].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @name = args[:name] unless args[:name].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @raster_type = args[:raster_type] unless args[:raster_type].nil?
          @tags = args[:tags] unless args[:tags].nil?
        end
      end
      
      # The request sent to rasterCollections.Rasters.BatchDelete.
      class BatchDeleteRasterCollectionsRasterRequest
        include Google::Apis::Core::Hashable
      
        # An array of Raster asset IDs to be removed from this RasterCollection.
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] unless args[:ids].nil?
        end
      end
      
      # The response returned by a call to rasterCollections.rasters.batchDelete.
      class BatchDeleteRasterCollectionsRastersResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request sent to rasterCollections.Rasters.BatchInsert.
      class BatchInsertRasterCollectionsRastersRequest
        include Google::Apis::Core::Hashable
      
        # An array of Raster asset IDs to be added to this RasterCollection.
        # Corresponds to the JSON property `ids`
        # @return [Array<String>]
        attr_accessor :ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] unless args[:ids].nil?
        end
      end
      
      # The response returned by a call to rasterCollections.rasters.batchInsert.
      class BatchInsertRasterCollectionsRastersResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response returned by a call to rasterCollections.rasters.List.
      class ListRasterCollectionsRastersResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Resources returned.
        # Corresponds to the JSON property `rasters`
        # @return [Array<Google::Apis::MapsengineV1::RasterCollectionsRaster>]
        attr_accessor :rasters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @rasters = args[:rasters] unless args[:rasters].nil?
        end
      end
      
      # The response returned by a call to rasters.List.
      class ListRastersResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Resources returned.
        # Corresponds to the JSON property `rasters`
        # @return [Array<Google::Apis::MapsengineV1::Raster>]
        attr_accessor :rasters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @rasters = args[:rasters] unless args[:rasters].nil?
        end
      end
      
      # Parameters for styling points as scaled shapes.
      class ScaledShape
        include Google::Apis::Core::Hashable
      
        # Border in line style. Both color and width are required.
        # Corresponds to the JSON property `border`
        # @return [Google::Apis::MapsengineV1::Border]
        attr_accessor :border
      
        # Basic color used in styling.
        # Corresponds to the JSON property `fill`
        # @return [Google::Apis::MapsengineV1::Color]
        attr_accessor :fill
      
        # Name of the shape.
        # Corresponds to the JSON property `shape`
        # @return [String]
        attr_accessor :shape
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @border = args[:border] unless args[:border].nil?
          @fill = args[:fill] unless args[:fill].nil?
          @shape = args[:shape] unless args[:shape].nil?
        end
      end
      
      # Parameters for scaling scaled shapes.
      class ScalingFunction
        include Google::Apis::Core::Hashable
      
        # Name of the numeric column used to scale a shape.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # The type of scaling function to use. Defaults to SQRT. Currently only linear
        # and square root scaling are supported.
        # Corresponds to the JSON property `scalingType`
        # @return [String]
        attr_accessor :scaling_type
      
        # Scaled shape size range in pixels. For circles, size corresponds to diameter.
        # Corresponds to the JSON property `sizeRange`
        # @return [Google::Apis::MapsengineV1::SizeRange]
        attr_accessor :size_range
      
        # Range of values used for scaling shapes. The min/max values will be drawn as
        # shapes with the min/max size.
        # Corresponds to the JSON property `valueRange`
        # @return [Google::Apis::MapsengineV1::ValueRange]
        attr_accessor :value_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] unless args[:column].nil?
          @scaling_type = args[:scaling_type] unless args[:scaling_type].nil?
          @size_range = args[:size_range] unless args[:size_range].nil?
          @value_range = args[:value_range] unless args[:value_range].nil?
        end
      end
      
      # A schema indicating the properties which may be associated with features
      # within a Table, and the types of those properties.
      class Schema
        include Google::Apis::Core::Hashable
      
        # An array of TableColumn objects. The first object in the array must be named
        # geometry and be of type points, lineStrings, polygons, or mixedGeometry.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::MapsengineV1::TableColumn>]
        attr_accessor :columns
      
        # The name of the column that contains a feature's geometry. This field can be
        # omitted during table create; Google Maps Engine supports only a single
        # geometry column, which must be named geometry and be the first object in the
        # columns array.
        # Corresponds to the JSON property `primaryGeometry`
        # @return [String]
        attr_accessor :primary_geometry
      
        # The name of the column that contains the unique identifier of a Feature.
        # Corresponds to the JSON property `primaryKey`
        # @return [String]
        attr_accessor :primary_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] unless args[:columns].nil?
          @primary_geometry = args[:primary_geometry] unless args[:primary_geometry].nil?
          @primary_key = args[:primary_key] unless args[:primary_key].nil?
        end
      end
      
      # Scaled shape size range in pixels. For circles, size corresponds to diameter.
      class SizeRange
        include Google::Apis::Core::Hashable
      
        # Maximum size, in pixels.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # Minimum size, in pixels.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] unless args[:max].nil?
          @min = args[:min] unless args[:min].nil?
        end
      end
      
      # A collection of geographic features, and associated metadata.
      class Table
        include Google::Apis::Core::Hashable
      
        # A rectangular bounding box which contains all of the data in this Table. The
        # box is expressed as \"west, south, east, north\". The numbers represent
        # latitude and longitude in decimal degrees.
        # Corresponds to the JSON property `bbox`
        # @return [Array<Float>]
        attr_accessor :bbox
      
        # The creation time of this table. The value is an RFC 3339 formatted date-time
        # value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `creationTime`
        # @return [DateTime]
        attr_accessor :creation_time
      
        # The email address of the creator of this table. This is only returned on GET
        # requests and not LIST requests.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # The description of this table, supplied by the author.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Deprecated: The name of an access list of the Map Editor type. The user on
        # whose behalf the request is being sent must be an editor on that access list.
        # Note: Google Maps Engine no longer uses access lists. Instead, each asset has
        # its own list of permissions. For backward compatibility, the API still accepts
        # access lists for projects that are already using access lists. If you created
        # a GME account/project after July 14th, 2014, you will not be able to send API
        # requests that include access lists. Note: This is an input field only. It is
        # not returned in response to a list or get request.
        # Corresponds to the JSON property `draftAccessList`
        # @return [String]
        attr_accessor :draft_access_list
      
        # The ETag, used to refer to the current version of the asset.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The files associated with this table.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::MapsengineV1::File>]
        attr_accessor :files
      
        # A globally unique ID, used to refer to this table.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The last modified time of this table. The value is an RFC 3339 formatted date-
        # time value (e.g. 1970-01-01T00:00:00Z).
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [DateTime]
        attr_accessor :last_modified_time
      
        # The email address of the last modifier of this table. This is only returned on
        # GET requests and not LIST requests.
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # The name of this table, supplied by the author.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The processing status of this table.
        # Corresponds to the JSON property `processingStatus`
        # @return [String]
        attr_accessor :processing_status
      
        # The ID of the project to which the table belongs.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Deprecated: The access list to whom view permissions are granted. The value
        # must be the name of a Maps Engine access list of the Map Viewer type, and the
        # user must be a viewer on that list. Note: Google Maps Engine no longer uses
        # access lists. Instead, each asset has its own list of permissions. For
        # backward compatibility, the API still accepts access lists for projects that
        # are already using access lists. If you created a GME account/project after
        # July 14th, 2014, you will not be able to send API requests that include access
        # lists. Note: This is an input field only. It is not returned in response to a
        # list or get request.
        # Corresponds to the JSON property `publishedAccessList`
        # @return [String]
        attr_accessor :published_access_list
      
        # A schema indicating the properties which may be associated with features
        # within a Table, and the types of those properties.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::MapsengineV1::Schema]
        attr_accessor :schema
      
        # Encoding of the uploaded files. Valid values include UTF-8, CP1251, ISO 8859-1,
        # and Shift_JIS.
        # Corresponds to the JSON property `sourceEncoding`
        # @return [String]
        attr_accessor :source_encoding
      
        # An array of text strings, with each string representing a tag. More
        # information about tags can be found in the Tagging data article of the Maps
        # Engine help center.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # If true, WRITERs of the asset are able to edit the asset permissions.
        # Corresponds to the JSON property `writersCanEditPermissions`
        # @return [Boolean]
        attr_accessor :writers_can_edit_permissions
        alias_method :writers_can_edit_permissions?, :writers_can_edit_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bbox = args[:bbox] unless args[:bbox].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @creator_email = args[:creator_email] unless args[:creator_email].nil?
          @description = args[:description] unless args[:description].nil?
          @draft_access_list = args[:draft_access_list] unless args[:draft_access_list].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @files = args[:files] unless args[:files].nil?
          @id = args[:id] unless args[:id].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @last_modifier_email = args[:last_modifier_email] unless args[:last_modifier_email].nil?
          @name = args[:name] unless args[:name].nil?
          @processing_status = args[:processing_status] unless args[:processing_status].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @published_access_list = args[:published_access_list] unless args[:published_access_list].nil?
          @schema = args[:schema] unless args[:schema].nil?
          @source_encoding = args[:source_encoding] unless args[:source_encoding].nil?
          @tags = args[:tags] unless args[:tags].nil?
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] unless args[:writers_can_edit_permissions].nil?
        end
      end
      
      # 
      class TableColumn
        include Google::Apis::Core::Hashable
      
        # The column name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of data stored in this column.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # The response returned by a call to tables.List. Note: The list response does
      # not include all the fields available in a table. Refer to the table resource
      # description for details of the fields that are not included. You'll need to
      # send a get request to retrieve the additional fields for each table.
      class ListTablesResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Resources returned.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::MapsengineV1::Table>]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @tables = args[:tables] unless args[:tables].nil?
        end
      end
      
      # Range of values used for scaling shapes. The min/max values will be drawn as
      # shapes with the min/max size.
      class ValueRange
        include Google::Apis::Core::Hashable
      
        # Maximum value.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # Minimum value.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] unless args[:max].nil?
          @min = args[:min] unless args[:min].nil?
        end
      end
      
      # A vector style contains styling information for vector layer.
      class VectorStyle
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `displayRules`
        # @return [Array<Google::Apis::MapsengineV1::DisplayRule>]
        attr_accessor :display_rules
      
        # A feature info contains information about individual feature.
        # Corresponds to the JSON property `featureInfo`
        # @return [Google::Apis::MapsengineV1::FeatureInfo]
        attr_accessor :feature_info
      
        # The type of the vector style. Currently, only displayRule is supported.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_rules = args[:display_rules] unless args[:display_rules].nil?
          @feature_info = args[:feature_info] unless args[:feature_info].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # Zoom level range. Zoom levels are restricted between 0 and 24, inclusive.
      class ZoomLevels
        include Google::Apis::Core::Hashable
      
        # Maximum zoom level.
        # Corresponds to the JSON property `max`
        # @return [Fixnum]
        attr_accessor :max
      
        # Minimum zoom level.
        # Corresponds to the JSON property `min`
        # @return [Fixnum]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] unless args[:max].nil?
          @min = args[:min] unless args[:min].nil?
        end
      end
    end
  end
end
