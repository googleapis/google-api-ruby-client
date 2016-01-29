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
          @end = args[:end] if args.key?(:end)
          @precision = args[:precision] if args.key?(:precision)
          @start = args[:start] if args.key?(:start)
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
          @bbox = args[:bbox] if args.key?(:bbox)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @resource = args[:resource] if args.key?(:resource)
          @tags = args[:tags] if args.key?(:tags)
          @type = args[:type] if args.key?(:type)
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] if args.key?(:writers_can_edit_permissions)
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
          @assets = args[:assets] if args.key?(:assets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @color = args[:color] if args.key?(:color)
          @opacity = args[:opacity] if args.key?(:opacity)
          @width = args[:width] if args.key?(:width)
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
          @color = args[:color] if args.key?(:color)
          @opacity = args[:opacity] if args.key?(:opacity)
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
          @id = args[:id] if args.key?(:id)
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
          @filters = args[:filters] if args.key?(:filters)
          @line_options = args[:line_options] if args.key?(:line_options)
          @name = args[:name] if args.key?(:name)
          @point_options = args[:point_options] if args.key?(:point_options)
          @polygon_options = args[:polygon_options] if args.key?(:polygon_options)
          @zoom_levels = args[:zoom_levels] if args.key?(:zoom_levels)
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
          @geometry = args[:geometry] if args.key?(:geometry)
          @properties = args[:properties] if args.key?(:properties)
          @type = args[:type] if args.key?(:type)
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
          @content = args[:content] if args.key?(:content)
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
          @gx_ids = args[:gx_ids] if args.key?(:gx_ids)
          @primary_keys = args[:primary_keys] if args.key?(:primary_keys)
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
          @features = args[:features] if args.key?(:features)
          @normalize_geometries = args[:normalize_geometries] if args.key?(:normalize_geometries)
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
          @features = args[:features] if args.key?(:features)
          @normalize_geometries = args[:normalize_geometries] if args.key?(:normalize_geometries)
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
          @allowed_queries_per_second = args[:allowed_queries_per_second] if args.key?(:allowed_queries_per_second)
          @features = args[:features] if args.key?(:features)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @schema = args[:schema] if args.key?(:schema)
          @type = args[:type] if args.key?(:type)
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
          @filename = args[:filename] if args.key?(:filename)
          @size = args[:size] if args.key?(:size)
          @upload_status = args[:upload_status] if args.key?(:upload_status)
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
          @column = args[:column] if args.key?(:column)
          @operator = args[:operator] if args.key?(:operator)
          @value = args[:value] if args.key?(:value)
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
          @geometries = args[:geometries] if args.key?(:geometries)
          @type = args[:type] if args.key?(:type)
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
          @coordinates = args[:coordinates] if args.key?(:coordinates)
          @type = args[:type] if args.key?(:type)
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
          @coordinates = args[:coordinates] if args.key?(:coordinates)
          @type = args[:type] if args.key?(:type)
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
          @coordinates = args[:coordinates] if args.key?(:coordinates)
          @type = args[:type] if args.key?(:type)
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
          @coordinates = args[:coordinates] if args.key?(:coordinates)
          @type = args[:type] if args.key?(:type)
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
          @coordinates = args[:coordinates] if args.key?(:coordinates)
          @type = args[:type] if args.key?(:type)
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
          @coordinates = args[:coordinates] if args.key?(:coordinates)
          @type = args[:type] if args.key?(:type)
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
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
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
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @scaled_shape = args[:scaled_shape] if args.key?(:scaled_shape)
          @scaling_function = args[:scaling_function] if args.key?(:scaling_function)
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
          @icons = args[:icons] if args.key?(:icons)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @color = args[:color] if args.key?(:color)
          @column = args[:column] if args.key?(:column)
          @font_style = args[:font_style] if args.key?(:font_style)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @opacity = args[:opacity] if args.key?(:opacity)
          @outline = args[:outline] if args.key?(:outline)
          @size = args[:size] if args.key?(:size)
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
          @bbox = args[:bbox] if args.key?(:bbox)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @datasource_type = args[:datasource_type] if args.key?(:datasource_type)
          @datasources = args[:datasources] if args.key?(:datasources)
          @description = args[:description] if args.key?(:description)
          @draft_access_list = args[:draft_access_list] if args.key?(:draft_access_list)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @layer_type = args[:layer_type] if args.key?(:layer_type)
          @name = args[:name] if args.key?(:name)
          @processing_status = args[:processing_status] if args.key?(:processing_status)
          @project_id = args[:project_id] if args.key?(:project_id)
          @published_access_list = args[:published_access_list] if args.key?(:published_access_list)
          @publishing_status = args[:publishing_status] if args.key?(:publishing_status)
          @style = args[:style] if args.key?(:style)
          @tags = args[:tags] if args.key?(:tags)
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] if args.key?(:writers_can_edit_permissions)
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
          @layers = args[:layers] if args.key?(:layers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @border = args[:border] if args.key?(:border)
          @dash = args[:dash] if args.key?(:dash)
          @label = args[:label] if args.key?(:label)
          @stroke = args[:stroke] if args.key?(:stroke)
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
            @color = args[:color] if args.key?(:color)
            @opacity = args[:opacity] if args.key?(:opacity)
            @width = args[:width] if args.key?(:width)
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
          @bbox = args[:bbox] if args.key?(:bbox)
          @contents = args[:contents] if args.key?(:contents)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @default_viewport = args[:default_viewport] if args.key?(:default_viewport)
          @description = args[:description] if args.key?(:description)
          @draft_access_list = args[:draft_access_list] if args.key?(:draft_access_list)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @name = args[:name] if args.key?(:name)
          @processing_status = args[:processing_status] if args.key?(:processing_status)
          @project_id = args[:project_id] if args.key?(:project_id)
          @published_access_list = args[:published_access_list] if args.key?(:published_access_list)
          @publishing_status = args[:publishing_status] if args.key?(:publishing_status)
          @tags = args[:tags] if args.key?(:tags)
          @versions = args[:versions] if args.key?(:versions)
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] if args.key?(:writers_can_edit_permissions)
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
          @contents = args[:contents] if args.key?(:contents)
          @default_viewport = args[:default_viewport] if args.key?(:default_viewport)
          @expandable = args[:expandable] if args.key?(:expandable)
          @key = args[:key] if args.key?(:key)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @visibility = args[:visibility] if args.key?(:visibility)
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
          @default_viewport = args[:default_viewport] if args.key?(:default_viewport)
          @kml_url = args[:kml_url] if args.key?(:kml_url)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @visibility = args[:visibility] if args.key?(:visibility)
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
          @default_viewport = args[:default_viewport] if args.key?(:default_viewport)
          @id = args[:id] if args.key?(:id)
          @key = args[:key] if args.key?(:key)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @visibility = args[:visibility] if args.key?(:visibility)
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
          @maps = args[:maps] if args.key?(:maps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @id = args[:id] if args.key?(:id)
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
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @parents = args[:parents] if args.key?(:parents)
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
          @discoverable = args[:discoverable] if args.key?(:discoverable)
          @id = args[:id] if args.key?(:id)
          @role = args[:role] if args.key?(:role)
          @type = args[:type] if args.key?(:type)
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
          @ids = args[:ids] if args.key?(:ids)
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
          @permissions = args[:permissions] if args.key?(:permissions)
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
          @permissions = args[:permissions] if args.key?(:permissions)
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
          @icon = args[:icon] if args.key?(:icon)
          @label = args[:label] if args.key?(:label)
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
          @fill = args[:fill] if args.key?(:fill)
          @label = args[:label] if args.key?(:label)
          @stroke = args[:stroke] if args.key?(:stroke)
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
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
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
          @projects = args[:projects] if args.key?(:projects)
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
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @layer_type = args[:layer_type] if args.key?(:layer_type)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
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
          @layers = args[:layers] if args.key?(:layers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @contents = args[:contents] if args.key?(:contents)
          @default_viewport = args[:default_viewport] if args.key?(:default_viewport)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
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
          @maps = args[:maps] if args.key?(:maps)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
          @acquisition_time = args[:acquisition_time] if args.key?(:acquisition_time)
          @attribution = args[:attribution] if args.key?(:attribution)
          @bbox = args[:bbox] if args.key?(:bbox)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @description = args[:description] if args.key?(:description)
          @draft_access_list = args[:draft_access_list] if args.key?(:draft_access_list)
          @etag = args[:etag] if args.key?(:etag)
          @files = args[:files] if args.key?(:files)
          @id = args[:id] if args.key?(:id)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @mask_type = args[:mask_type] if args.key?(:mask_type)
          @name = args[:name] if args.key?(:name)
          @processing_status = args[:processing_status] if args.key?(:processing_status)
          @project_id = args[:project_id] if args.key?(:project_id)
          @raster_type = args[:raster_type] if args.key?(:raster_type)
          @tags = args[:tags] if args.key?(:tags)
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] if args.key?(:writers_can_edit_permissions)
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
          @attribution = args[:attribution] if args.key?(:attribution)
          @bbox = args[:bbox] if args.key?(:bbox)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @description = args[:description] if args.key?(:description)
          @draft_access_list = args[:draft_access_list] if args.key?(:draft_access_list)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @mosaic = args[:mosaic] if args.key?(:mosaic)
          @name = args[:name] if args.key?(:name)
          @processing_status = args[:processing_status] if args.key?(:processing_status)
          @project_id = args[:project_id] if args.key?(:project_id)
          @raster_type = args[:raster_type] if args.key?(:raster_type)
          @tags = args[:tags] if args.key?(:tags)
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] if args.key?(:writers_can_edit_permissions)
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
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @raster_collections = args[:raster_collections] if args.key?(:raster_collections)
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
          @bbox = args[:bbox] if args.key?(:bbox)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @raster_type = args[:raster_type] if args.key?(:raster_type)
          @tags = args[:tags] if args.key?(:tags)
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
          @ids = args[:ids] if args.key?(:ids)
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
          @ids = args[:ids] if args.key?(:ids)
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
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rasters = args[:rasters] if args.key?(:rasters)
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
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rasters = args[:rasters] if args.key?(:rasters)
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
          @border = args[:border] if args.key?(:border)
          @fill = args[:fill] if args.key?(:fill)
          @shape = args[:shape] if args.key?(:shape)
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
          @column = args[:column] if args.key?(:column)
          @scaling_type = args[:scaling_type] if args.key?(:scaling_type)
          @size_range = args[:size_range] if args.key?(:size_range)
          @value_range = args[:value_range] if args.key?(:value_range)
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
          @columns = args[:columns] if args.key?(:columns)
          @primary_geometry = args[:primary_geometry] if args.key?(:primary_geometry)
          @primary_key = args[:primary_key] if args.key?(:primary_key)
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
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
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
          @bbox = args[:bbox] if args.key?(:bbox)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @description = args[:description] if args.key?(:description)
          @draft_access_list = args[:draft_access_list] if args.key?(:draft_access_list)
          @etag = args[:etag] if args.key?(:etag)
          @files = args[:files] if args.key?(:files)
          @id = args[:id] if args.key?(:id)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @name = args[:name] if args.key?(:name)
          @processing_status = args[:processing_status] if args.key?(:processing_status)
          @project_id = args[:project_id] if args.key?(:project_id)
          @published_access_list = args[:published_access_list] if args.key?(:published_access_list)
          @schema = args[:schema] if args.key?(:schema)
          @source_encoding = args[:source_encoding] if args.key?(:source_encoding)
          @tags = args[:tags] if args.key?(:tags)
          @writers_can_edit_permissions = args[:writers_can_edit_permissions] if args.key?(:writers_can_edit_permissions)
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
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
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
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tables = args[:tables] if args.key?(:tables)
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
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
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
          @display_rules = args[:display_rules] if args.key?(:display_rules)
          @feature_info = args[:feature_info] if args.key?(:feature_info)
          @type = args[:type] if args.key?(:type)
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
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
    end
  end
end
