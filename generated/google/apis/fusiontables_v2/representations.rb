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
    module FusiontablesV2
      
      class BucketRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ColumnRepresentation < Google::Apis::Core::JsonRepresentation
        
        class BaseColumnRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class ColumnListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GeometryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ImportRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LineRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LineStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PointRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PointStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PolygonRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PolygonStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SqlresponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class StyleFunctionRepresentation < Google::Apis::Core::JsonRepresentation
        
        class GradientRepresentation < Google::Apis::Core::JsonRepresentation
          
          class ColorRepresentation < Google::Apis::Core::JsonRepresentation
            
          end
        end
      end
      
      class StyleSettingRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class StyleSettingListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TableRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TableListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TaskRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TaskListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TemplateRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TemplateListRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class BucketRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :color, as: 'color'
        property :icon, as: 'icon'
        property :max, as: 'max'
        property :min, as: 'min'
        property :opacity, as: 'opacity'
        property :weight, as: 'weight'
      end

      # @private
      class ColumnRepresentation < Google::Apis::Core::JsonRepresentation
        class BaseColumnRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        property :base_column, as: 'baseColumn', class: Google::Apis::FusiontablesV2::Column::BaseColumn, decorator: Google::Apis::FusiontablesV2::ColumnRepresentation::BaseColumnRepresentation
        
        property :column_id, as: 'columnId'
        property :column_json_schema, as: 'columnJsonSchema'
        property :column_properties_json, as: 'columnPropertiesJson'
        property :description, as: 'description'
        property :format_pattern, as: 'formatPattern'
        property :graph_predicate, as: 'graphPredicate'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :type, as: 'type'
        collection :valid_values, as: 'validValues'
        
        property :validate_data, as: 'validateData'
        
        
        # @private
        class BaseColumnRepresentation < Google::Apis::Core::JsonRepresentation
          
          property :column_id, as: 'columnId'
          property :table_index, as: 'tableIndex'
        end
      end

      # @private
      class ColumnListRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::FusiontablesV2::Column, decorator: Google::Apis::FusiontablesV2::ColumnRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
      end

      # @private
      class GeometryRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :geometries, as: 'geometries'
        
        property :geometry, as: 'geometry'
        property :type, as: 'type'
      end

      # @private
      class ImportRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        property :num_rows_received, as: 'numRowsReceived'
      end

      # @private
      class LineRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :coordinates, as: 'coordinates', :class => Array do
          include Representable::JSON::Collection
          items
        end
        
        
        property :type, as: 'type'
      end

      # @private
      class LineStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :stroke_color, as: 'strokeColor'
        property :stroke_color_styler, as: 'strokeColorStyler', class: Google::Apis::FusiontablesV2::StyleFunction, decorator: Google::Apis::FusiontablesV2::StyleFunctionRepresentation
        
        property :stroke_opacity, as: 'strokeOpacity'
        property :stroke_weight, as: 'strokeWeight'
        property :stroke_weight_styler, as: 'strokeWeightStyler', class: Google::Apis::FusiontablesV2::StyleFunction, decorator: Google::Apis::FusiontablesV2::StyleFunctionRepresentation
      end

      # @private
      class PointRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :coordinates, as: 'coordinates'
        
        property :type, as: 'type'
      end

      # @private
      class PointStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :icon_name, as: 'iconName'
        property :icon_styler, as: 'iconStyler', class: Google::Apis::FusiontablesV2::StyleFunction, decorator: Google::Apis::FusiontablesV2::StyleFunctionRepresentation
      end

      # @private
      class PolygonRepresentation < Google::Apis::Core::JsonRepresentation
        
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
      class PolygonStyleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :fill_color, as: 'fillColor'
        property :fill_color_styler, as: 'fillColorStyler', class: Google::Apis::FusiontablesV2::StyleFunction, decorator: Google::Apis::FusiontablesV2::StyleFunctionRepresentation
        
        property :fill_opacity, as: 'fillOpacity'
        property :stroke_color, as: 'strokeColor'
        property :stroke_color_styler, as: 'strokeColorStyler', class: Google::Apis::FusiontablesV2::StyleFunction, decorator: Google::Apis::FusiontablesV2::StyleFunctionRepresentation
        
        property :stroke_opacity, as: 'strokeOpacity'
        property :stroke_weight, as: 'strokeWeight'
        property :stroke_weight_styler, as: 'strokeWeightStyler', class: Google::Apis::FusiontablesV2::StyleFunction, decorator: Google::Apis::FusiontablesV2::StyleFunctionRepresentation
      end

      # @private
      class SqlresponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :columns, as: 'columns'
        
        property :kind, as: 'kind'
        collection :rows, as: 'rows', :class => Array do
          include Representable::JSON::Collection
          items
        end
      end

      # @private
      class StyleFunctionRepresentation < Google::Apis::Core::JsonRepresentation
        class GradientRepresentation < Google::Apis::Core::JsonRepresentation; end
        
        collection :buckets, as: 'buckets', class: Google::Apis::FusiontablesV2::Bucket, decorator: Google::Apis::FusiontablesV2::BucketRepresentation
        
        
        property :column_name, as: 'columnName'
        property :gradient, as: 'gradient', class: Google::Apis::FusiontablesV2::StyleFunction::Gradient, decorator: Google::Apis::FusiontablesV2::StyleFunctionRepresentation::GradientRepresentation
        
        property :kind, as: 'kind'
        
        
        # @private
        class GradientRepresentation < Google::Apis::Core::JsonRepresentation
          class ColorRepresentation < Google::Apis::Core::JsonRepresentation; end
          
          collection :colors, as: 'colors', class: Google::Apis::FusiontablesV2::StyleFunction::Gradient::Color, decorator: Google::Apis::FusiontablesV2::StyleFunctionRepresentation::GradientRepresentation::ColorRepresentation
          
          
          property :max, as: 'max'
          property :min, as: 'min'
          
          
          # @private
          class ColorRepresentation < Google::Apis::Core::JsonRepresentation
            
            property :color, as: 'color'
            property :opacity, as: 'opacity'
          end
        end
      end

      # @private
      class StyleSettingRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        property :marker_options, as: 'markerOptions', class: Google::Apis::FusiontablesV2::PointStyle, decorator: Google::Apis::FusiontablesV2::PointStyleRepresentation
        
        property :name, as: 'name'
        property :polygon_options, as: 'polygonOptions', class: Google::Apis::FusiontablesV2::PolygonStyle, decorator: Google::Apis::FusiontablesV2::PolygonStyleRepresentation
        
        property :polyline_options, as: 'polylineOptions', class: Google::Apis::FusiontablesV2::LineStyle, decorator: Google::Apis::FusiontablesV2::LineStyleRepresentation
        
        property :style_id, as: 'styleId'
        property :table_id, as: 'tableId'
      end

      # @private
      class StyleSettingListRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::FusiontablesV2::StyleSetting, decorator: Google::Apis::FusiontablesV2::StyleSettingRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
      end

      # @private
      class TableRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :attribution, as: 'attribution'
        property :attribution_link, as: 'attributionLink'
        collection :base_table_ids, as: 'baseTableIds'
        
        property :column_properties_json_schema, as: 'columnPropertiesJsonSchema'
        collection :columns, as: 'columns', class: Google::Apis::FusiontablesV2::Column, decorator: Google::Apis::FusiontablesV2::ColumnRepresentation
        
        
        property :description, as: 'description'
        property :is_exportable, as: 'isExportable'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :sql, as: 'sql'
        property :table_id, as: 'tableId'
        property :table_properties_json, as: 'tablePropertiesJson'
        property :table_properties_json_schema, as: 'tablePropertiesJsonSchema'
      end

      # @private
      class TableListRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::FusiontablesV2::Table, decorator: Google::Apis::FusiontablesV2::TableRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class TaskRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :kind, as: 'kind'
        property :progress, as: 'progress'
        property :started, as: 'started'
        property :task_id, as: 'taskId'
        property :type, as: 'type'
      end

      # @private
      class TaskListRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::FusiontablesV2::Task, decorator: Google::Apis::FusiontablesV2::TaskRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
      end

      # @private
      class TemplateRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :automatic_column_names, as: 'automaticColumnNames'
        
        property :body, as: 'body'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :table_id, as: 'tableId'
        property :template_id, as: 'templateId'
      end

      # @private
      class TemplateListRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :items, as: 'items', class: Google::Apis::FusiontablesV2::Template, decorator: Google::Apis::FusiontablesV2::TemplateRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
      end
    end
  end
end
