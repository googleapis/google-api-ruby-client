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
    module SheetsV1
      
      class MoveEmbeddedObjectToSheetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddNamedRangeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateProtectedRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Padding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MergeCellsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddSheetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateConditionalFormatRuleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GridCoordinate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteFilterViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateNamedRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpreadsheetProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CellData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnmergeCellsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextToColumnsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddProtectedRangeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BooleanCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteProtectedRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Response
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddConditionalFormatRuleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SortRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextFormatRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateFilterViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateConditionalFormatRuleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterCriteria
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteDimensionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataValidationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSpreadsheetPropertiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClearBasicFilterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConditionalFormatRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateBordersRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Borders
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddSheetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddProtectedRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValueRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindReplaceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CellFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveDimensionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DimensionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InterpolationPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DuplicateFilterViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateSpreadsheetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SheetProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProtectedRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteConditionalFormatRuleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceAndDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConditionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PasteDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindReplaceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SortSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopySheetToAnotherSpreadsheetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NumberFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateDimensionPropertiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Editors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Spreadsheet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GridData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasicFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DuplicateSheetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddFilterViewResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DuplicateSheetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Border
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddNamedRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppendCellsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepeatCellRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NamedRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetBasicFilterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoResizeDimensionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DuplicateFilterViewResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GridRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteSheetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveEmbeddedObjectToSheetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateCellsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CopyPasteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sheet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateSpreadsheetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtendedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CutPasteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GradientRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutoFillRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSheetPropertiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppendDimensionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BooleanRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddFilterViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GridProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteNamedRangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetDataValidationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Request
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertDimensionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteEmbeddedObjectRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteConditionalFormatRuleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveEmbeddedObjectToSheetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :properties, as: 'properties', class: Google::Apis::SheetsV1::SheetProperties, decorator: Google::Apis::SheetsV1::SheetProperties::Representation
      
        end
      end
      
      class AddNamedRangeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :named_range, as: 'namedRange', class: Google::Apis::SheetsV1::NamedRange, decorator: Google::Apis::SheetsV1::NamedRange::Representation
      
        end
      end
      
      class UpdateProtectedRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :protected_range, as: 'protectedRange', class: Google::Apis::SheetsV1::ProtectedRange, decorator: Google::Apis::SheetsV1::ProtectedRange::Representation
      
          property :fields, as: 'fields'
        end
      end
      
      class Padding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :left, as: 'left'
          property :right, as: 'right'
          property :top, as: 'top'
          property :bottom, as: 'bottom'
        end
      end
      
      class MergeCellsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merge_type, as: 'mergeType'
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class AddSheetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :properties, as: 'properties', class: Google::Apis::SheetsV1::SheetProperties, decorator: Google::Apis::SheetsV1::SheetProperties::Representation
      
        end
      end
      
      class UpdateConditionalFormatRuleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sheet_id, as: 'sheetId'
          property :index, as: 'index'
          property :rule, as: 'rule', class: Google::Apis::SheetsV1::ConditionalFormatRule, decorator: Google::Apis::SheetsV1::ConditionalFormatRule::Representation
      
          property :new_index, as: 'newIndex'
        end
      end
      
      class TextFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bold, as: 'bold'
          property :italic, as: 'italic'
          property :foreground_color, as: 'foregroundColor', class: Google::Apis::SheetsV1::Color, decorator: Google::Apis::SheetsV1::Color::Representation
      
          property :font_family, as: 'fontFamily'
          property :strikethrough, as: 'strikethrough'
          property :font_size, as: 'fontSize'
          property :underline, as: 'underline'
        end
      end
      
      class GridCoordinate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sheet_id, as: 'sheetId'
          property :row_index, as: 'rowIndex'
          property :column_index, as: 'columnIndex'
        end
      end
      
      class DeleteFilterViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter_id, as: 'filterId'
        end
      end
      
      class UpdateNamedRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fields, as: 'fields'
          property :named_range, as: 'namedRange', class: Google::Apis::SheetsV1::NamedRange, decorator: Google::Apis::SheetsV1::NamedRange::Representation
      
        end
      end
      
      class SpreadsheetProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_zone, as: 'timeZone'
          property :auto_recalc, as: 'autoRecalc'
          property :locale, as: 'locale'
          property :title, as: 'title'
          property :default_format, as: 'defaultFormat', class: Google::Apis::SheetsV1::CellFormat, decorator: Google::Apis::SheetsV1::CellFormat::Representation
      
        end
      end
      
      class CellData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hyperlink, as: 'hyperlink'
          property :effective_format, as: 'effectiveFormat', class: Google::Apis::SheetsV1::CellFormat, decorator: Google::Apis::SheetsV1::CellFormat::Representation
      
          property :note, as: 'note'
          property :formatted_value, as: 'formattedValue'
          property :data_validation, as: 'dataValidation', class: Google::Apis::SheetsV1::DataValidationRule, decorator: Google::Apis::SheetsV1::DataValidationRule::Representation
      
          property :user_entered_value, as: 'userEnteredValue', class: Google::Apis::SheetsV1::ExtendedValue, decorator: Google::Apis::SheetsV1::ExtendedValue::Representation
      
          property :user_entered_format, as: 'userEnteredFormat', class: Google::Apis::SheetsV1::CellFormat, decorator: Google::Apis::SheetsV1::CellFormat::Representation
      
          collection :text_format_runs, as: 'textFormatRuns', class: Google::Apis::SheetsV1::TextFormatRun, decorator: Google::Apis::SheetsV1::TextFormatRun::Representation
      
          property :effective_value, as: 'effectiveValue', class: Google::Apis::SheetsV1::ExtendedValue, decorator: Google::Apis::SheetsV1::ExtendedValue::Representation
      
        end
      end
      
      class UnmergeCellsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class TextToColumnsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delimiter_type, as: 'delimiterType'
          property :delimiter, as: 'delimiter'
          property :source, as: 'source', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class AddProtectedRangeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :protected_range, as: 'protectedRange', class: Google::Apis::SheetsV1::ProtectedRange, decorator: Google::Apis::SheetsV1::ProtectedRange::Representation
      
        end
      end
      
      class BooleanCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::SheetsV1::ConditionValue, decorator: Google::Apis::SheetsV1::ConditionValue::Representation
      
          property :type, as: 'type'
        end
      end
      
      class DeleteProtectedRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :protected_range_id, as: 'protectedRangeId'
        end
      end
      
      class DimensionRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :sheet_id, as: 'sheetId'
          property :start_index, as: 'startIndex'
          property :dimension, as: 'dimension'
        end
      end
      
      class Response
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_filter_view, as: 'addFilterView', class: Google::Apis::SheetsV1::AddFilterViewResponse, decorator: Google::Apis::SheetsV1::AddFilterViewResponse::Representation
      
          property :move_embedded_object_to_sheet, as: 'moveEmbeddedObjectToSheet', class: Google::Apis::SheetsV1::MoveEmbeddedObjectToSheetResponse, decorator: Google::Apis::SheetsV1::MoveEmbeddedObjectToSheetResponse::Representation
      
          property :add_sheet, as: 'addSheet', class: Google::Apis::SheetsV1::AddSheetResponse, decorator: Google::Apis::SheetsV1::AddSheetResponse::Representation
      
          property :find_replace, as: 'findReplace', class: Google::Apis::SheetsV1::FindReplaceResponse, decorator: Google::Apis::SheetsV1::FindReplaceResponse::Representation
      
          property :add_protected_range, as: 'addProtectedRange', class: Google::Apis::SheetsV1::AddProtectedRangeResponse, decorator: Google::Apis::SheetsV1::AddProtectedRangeResponse::Representation
      
          property :update_conditional_format_rule, as: 'updateConditionalFormatRule', class: Google::Apis::SheetsV1::UpdateConditionalFormatRuleResponse, decorator: Google::Apis::SheetsV1::UpdateConditionalFormatRuleResponse::Representation
      
          property :delete_conditional_format_rule, as: 'deleteConditionalFormatRule', class: Google::Apis::SheetsV1::DeleteConditionalFormatRuleResponse, decorator: Google::Apis::SheetsV1::DeleteConditionalFormatRuleResponse::Representation
      
          property :duplicate_sheet, as: 'duplicateSheet', class: Google::Apis::SheetsV1::DuplicateSheetResponse, decorator: Google::Apis::SheetsV1::DuplicateSheetResponse::Representation
      
          property :duplicate_filter_view, as: 'duplicateFilterView', class: Google::Apis::SheetsV1::DuplicateFilterViewResponse, decorator: Google::Apis::SheetsV1::DuplicateFilterViewResponse::Representation
      
          property :add_named_range, as: 'addNamedRange', class: Google::Apis::SheetsV1::AddNamedRangeResponse, decorator: Google::Apis::SheetsV1::AddNamedRangeResponse::Representation
      
        end
      end
      
      class AddConditionalFormatRuleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index, as: 'index'
          property :rule, as: 'rule', class: Google::Apis::SheetsV1::ConditionalFormatRule, decorator: Google::Apis::SheetsV1::ConditionalFormatRule::Representation
      
        end
      end
      
      class FilterView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :named_range_id, as: 'namedRangeId'
          collection :sort_specs, as: 'sortSpecs', class: Google::Apis::SheetsV1::SortSpec, decorator: Google::Apis::SheetsV1::SortSpec::Representation
      
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          hash :criteria, as: 'criteria', class: Google::Apis::SheetsV1::FilterCriteria, decorator: Google::Apis::SheetsV1::FilterCriteria::Representation
      
          property :filter_view_id, as: 'filterViewId'
        end
      end
      
      class SortRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sort_specs, as: 'sortSpecs', class: Google::Apis::SheetsV1::SortSpec, decorator: Google::Apis::SheetsV1::SortSpec::Representation
      
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class TextFormatRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_index, as: 'startIndex'
          property :format, as: 'format', class: Google::Apis::SheetsV1::TextFormat, decorator: Google::Apis::SheetsV1::TextFormat::Representation
      
        end
      end
      
      class UpdateFilterViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fields, as: 'fields'
          property :filter, as: 'filter', class: Google::Apis::SheetsV1::FilterView, decorator: Google::Apis::SheetsV1::FilterView::Representation
      
        end
      end
      
      class UpdateConditionalFormatRuleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rule, as: 'rule', class: Google::Apis::SheetsV1::ConditionalFormatRule, decorator: Google::Apis::SheetsV1::ConditionalFormatRule::Representation
      
        end
      end
      
      class FilterCriteria
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::SheetsV1::BooleanCondition, decorator: Google::Apis::SheetsV1::BooleanCondition::Representation
      
          collection :hidden_values, as: 'hiddenValues'
        end
      end
      
      class DeleteDimensionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range, as: 'range', class: Google::Apis::SheetsV1::DimensionRange, decorator: Google::Apis::SheetsV1::DimensionRange::Representation
      
        end
      end
      
      class DataValidationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::SheetsV1::BooleanCondition, decorator: Google::Apis::SheetsV1::BooleanCondition::Representation
      
          property :input_message, as: 'inputMessage'
          property :show_custom_ui, as: 'showCustomUi'
          property :strict, as: 'strict'
        end
      end
      
      class UpdateSpreadsheetPropertiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fields, as: 'fields'
          property :properties, as: 'properties', class: Google::Apis::SheetsV1::SpreadsheetProperties, decorator: Google::Apis::SheetsV1::SpreadsheetProperties::Representation
      
        end
      end
      
      class BatchUpdateValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data, as: 'data', class: Google::Apis::SheetsV1::ValueRange, decorator: Google::Apis::SheetsV1::ValueRange::Representation
      
          property :value_input_option, as: 'valueInputOption'
        end
      end
      
      class ClearBasicFilterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sheet_id, as: 'sheetId'
        end
      end
      
      class ConditionalFormatRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gradient_rule, as: 'gradientRule', class: Google::Apis::SheetsV1::GradientRule, decorator: Google::Apis::SheetsV1::GradientRule::Representation
      
          property :boolean_rule, as: 'booleanRule', class: Google::Apis::SheetsV1::BooleanRule, decorator: Google::Apis::SheetsV1::BooleanRule::Representation
      
          collection :ranges, as: 'ranges', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class UpdateBordersRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :right, as: 'right', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
          property :inner_vertical, as: 'innerVertical', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
          property :top, as: 'top', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
          property :inner_horizontal, as: 'innerHorizontal', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
          property :bottom, as: 'bottom', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          property :left, as: 'left', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
        end
      end
      
      class Borders
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :right, as: 'right', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
          property :left, as: 'left', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
          property :top, as: 'top', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
          property :bottom, as: 'bottom', class: Google::Apis::SheetsV1::Border, decorator: Google::Apis::SheetsV1::Border::Representation
      
        end
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :green, as: 'green'
          property :blue, as: 'blue'
          property :red, as: 'red'
          property :alpha, as: 'alpha'
        end
      end
      
      class AddSheetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :properties, as: 'properties', class: Google::Apis::SheetsV1::SheetProperties, decorator: Google::Apis::SheetsV1::SheetProperties::Representation
      
        end
      end
      
      class AddProtectedRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :protected_range, as: 'protectedRange', class: Google::Apis::SheetsV1::ProtectedRange, decorator: Google::Apis::SheetsV1::ProtectedRange::Representation
      
        end
      end
      
      class ValueRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          property :range, as: 'range'
          property :major_dimension, as: 'majorDimension'
        end
      end
      
      class FindReplaceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :values_changed, as: 'valuesChanged'
          property :rows_changed, as: 'rowsChanged'
          property :occurrences_changed, as: 'occurrencesChanged'
          property :sheets_changed, as: 'sheetsChanged'
          property :formulas_changed, as: 'formulasChanged'
        end
      end
      
      class CellFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :horizontal_alignment, as: 'horizontalAlignment'
          property :hyperlink_display_type, as: 'hyperlinkDisplayType'
          property :borders, as: 'borders', class: Google::Apis::SheetsV1::Borders, decorator: Google::Apis::SheetsV1::Borders::Representation
      
          property :text_direction, as: 'textDirection'
          property :text_format, as: 'textFormat', class: Google::Apis::SheetsV1::TextFormat, decorator: Google::Apis::SheetsV1::TextFormat::Representation
      
          property :padding, as: 'padding', class: Google::Apis::SheetsV1::Padding, decorator: Google::Apis::SheetsV1::Padding::Representation
      
          property :number_format, as: 'numberFormat', class: Google::Apis::SheetsV1::NumberFormat, decorator: Google::Apis::SheetsV1::NumberFormat::Representation
      
          property :wrap_strategy, as: 'wrapStrategy'
          property :background_color, as: 'backgroundColor', class: Google::Apis::SheetsV1::Color, decorator: Google::Apis::SheetsV1::Color::Representation
      
          property :vertical_alignment, as: 'verticalAlignment'
        end
      end
      
      class MoveDimensionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_index, as: 'destinationIndex'
          property :source, as: 'source', class: Google::Apis::SheetsV1::DimensionRange, decorator: Google::Apis::SheetsV1::DimensionRange::Representation
      
        end
      end
      
      class DimensionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pixel_size, as: 'pixelSize'
          property :hidden_by_user, as: 'hiddenByUser'
          property :hidden_by_filter, as: 'hiddenByFilter'
        end
      end
      
      class InterpolationPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
          property :color, as: 'color', class: Google::Apis::SheetsV1::Color, decorator: Google::Apis::SheetsV1::Color::Representation
      
          property :type, as: 'type'
        end
      end
      
      class ErrorValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :message, as: 'message'
        end
      end
      
      class DuplicateFilterViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter_id, as: 'filterId'
        end
      end
      
      class BatchUpdateSpreadsheetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::SheetsV1::Request, decorator: Google::Apis::SheetsV1::Request::Representation
      
        end
      end
      
      class SheetProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :index, as: 'index'
          property :hidden, as: 'hidden'
          property :grid_properties, as: 'gridProperties', class: Google::Apis::SheetsV1::GridProperties, decorator: Google::Apis::SheetsV1::GridProperties::Representation
      
          property :sheet_id, as: 'sheetId'
          property :right_to_left, as: 'rightToLeft'
          property :tab_color, as: 'tabColor', class: Google::Apis::SheetsV1::Color, decorator: Google::Apis::SheetsV1::Color::Representation
      
          property :sheet_type, as: 'sheetType'
        end
      end
      
      class ProtectedRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :unprotected_ranges, as: 'unprotectedRanges', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          property :description, as: 'description'
          property :named_range_id, as: 'namedRangeId'
          property :requesting_user_can_edit, as: 'requestingUserCanEdit'
          property :editors, as: 'editors', class: Google::Apis::SheetsV1::Editors, decorator: Google::Apis::SheetsV1::Editors::Representation
      
          property :protected_range_id, as: 'protectedRangeId'
          property :warning_only, as: 'warningOnly'
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class DeleteConditionalFormatRuleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sheet_id, as: 'sheetId'
          property :index, as: 'index'
        end
      end
      
      class SourceAndDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fill_length, as: 'fillLength'
          property :source, as: 'source', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          property :dimension, as: 'dimension'
        end
      end
      
      class ConditionValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :relative_date, as: 'relativeDate'
          property :user_entered_value, as: 'userEnteredValue'
        end
      end
      
      class PasteDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data'
          property :coordinate, as: 'coordinate', class: Google::Apis::SheetsV1::GridCoordinate, decorator: Google::Apis::SheetsV1::GridCoordinate::Representation
      
          property :delimiter, as: 'delimiter'
          property :type, as: 'type'
          property :html, as: 'html'
        end
      end
      
      class FindReplaceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :find, as: 'find'
          property :replacement, as: 'replacement'
          property :search_by_regex, as: 'searchByRegex'
          property :sheet_id, as: 'sheetId'
          property :all_sheets, as: 'allSheets'
          property :match_case, as: 'matchCase'
          property :include_formulas, as: 'includeFormulas'
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          property :match_entire_cell, as: 'matchEntireCell'
        end
      end
      
      class SortSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sort_order, as: 'sortOrder'
          property :dimension_index, as: 'dimensionIndex'
        end
      end
      
      class CopySheetToAnotherSpreadsheetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_spreadsheet_id, as: 'destinationSpreadsheetId'
        end
      end
      
      class NumberFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pattern, as: 'pattern'
          property :type, as: 'type'
        end
      end
      
      class UpdateDimensionPropertiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fields, as: 'fields'
          property :properties, as: 'properties', class: Google::Apis::SheetsV1::DimensionProperties, decorator: Google::Apis::SheetsV1::DimensionProperties::Representation
      
          property :range, as: 'range', class: Google::Apis::SheetsV1::DimensionRange, decorator: Google::Apis::SheetsV1::DimensionRange::Representation
      
        end
      end
      
      class Editors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_users_can_edit, as: 'domainUsersCanEdit'
          collection :groups, as: 'groups'
          collection :users, as: 'users'
        end
      end
      
      class Spreadsheet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spreadsheet_id, as: 'spreadsheetId'
          property :properties, as: 'properties', class: Google::Apis::SheetsV1::SpreadsheetProperties, decorator: Google::Apis::SheetsV1::SpreadsheetProperties::Representation
      
          collection :named_ranges, as: 'namedRanges', class: Google::Apis::SheetsV1::NamedRange, decorator: Google::Apis::SheetsV1::NamedRange::Representation
      
          collection :sheets, as: 'sheets', class: Google::Apis::SheetsV1::Sheet, decorator: Google::Apis::SheetsV1::Sheet::Representation
      
        end
      end
      
      class GridData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :column_metadata, as: 'columnMetadata', class: Google::Apis::SheetsV1::DimensionProperties, decorator: Google::Apis::SheetsV1::DimensionProperties::Representation
      
          collection :row_data, as: 'rowData', class: Google::Apis::SheetsV1::RowData, decorator: Google::Apis::SheetsV1::RowData::Representation
      
          collection :row_metadata, as: 'rowMetadata', class: Google::Apis::SheetsV1::DimensionProperties, decorator: Google::Apis::SheetsV1::DimensionProperties::Representation
      
          property :start_row, as: 'startRow'
          property :start_column, as: 'startColumn'
        end
      end
      
      class BasicFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :criteria, as: 'criteria', class: Google::Apis::SheetsV1::FilterCriteria, decorator: Google::Apis::SheetsV1::FilterCriteria::Representation
      
          collection :sort_specs, as: 'sortSpecs', class: Google::Apis::SheetsV1::SortSpec, decorator: Google::Apis::SheetsV1::SortSpec::Representation
      
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class DuplicateSheetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_sheet_id, as: 'newSheetId'
          property :source_sheet_id, as: 'sourceSheetId'
          property :new_sheet_name, as: 'newSheetName'
          property :insert_sheet_index, as: 'insertSheetIndex'
        end
      end
      
      class AddFilterViewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter', class: Google::Apis::SheetsV1::FilterView, decorator: Google::Apis::SheetsV1::FilterView::Representation
      
        end
      end
      
      class DuplicateSheetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :properties, as: 'properties', class: Google::Apis::SheetsV1::SheetProperties, decorator: Google::Apis::SheetsV1::SheetProperties::Representation
      
        end
      end
      
      class Border
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :width, as: 'width'
          property :style, as: 'style'
          property :color, as: 'color', class: Google::Apis::SheetsV1::Color, decorator: Google::Apis::SheetsV1::Color::Representation
      
        end
      end
      
      class AddNamedRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :named_range, as: 'namedRange', class: Google::Apis::SheetsV1::NamedRange, decorator: Google::Apis::SheetsV1::NamedRange::Representation
      
        end
      end
      
      class AppendCellsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sheet_id, as: 'sheetId'
          collection :rows, as: 'rows', class: Google::Apis::SheetsV1::RowData, decorator: Google::Apis::SheetsV1::RowData::Representation
      
          property :cell_data_fields, as: 'cellDataFields'
        end
      end
      
      class RowData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::SheetsV1::CellData, decorator: Google::Apis::SheetsV1::CellData::Representation
      
        end
      end
      
      class RepeatCellRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fields, as: 'fields'
          property :cell, as: 'cell', class: Google::Apis::SheetsV1::CellData, decorator: Google::Apis::SheetsV1::CellData::Representation
      
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class NamedRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          property :named_range_id, as: 'namedRangeId'
          property :name, as: 'name'
        end
      end
      
      class SetBasicFilterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter', class: Google::Apis::SheetsV1::BasicFilter, decorator: Google::Apis::SheetsV1::BasicFilter::Representation
      
        end
      end
      
      class AutoResizeDimensionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimensions, as: 'dimensions', class: Google::Apis::SheetsV1::DimensionRange, decorator: Google::Apis::SheetsV1::DimensionRange::Representation
      
        end
      end
      
      class DuplicateFilterViewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter', class: Google::Apis::SheetsV1::FilterView, decorator: Google::Apis::SheetsV1::FilterView::Representation
      
        end
      end
      
      class GridRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_column_index, as: 'startColumnIndex'
          property :sheet_id, as: 'sheetId'
          property :end_column_index, as: 'endColumnIndex'
          property :end_row_index, as: 'endRowIndex'
          property :start_row_index, as: 'startRowIndex'
        end
      end
      
      class DeleteSheetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sheet_id, as: 'sheetId'
        end
      end
      
      class MoveEmbeddedObjectToSheetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_sheet_id, as: 'newSheetId'
          property :object_id_prop, as: 'objectId'
        end
      end
      
      class UpdateCellsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rows, as: 'rows', class: Google::Apis::SheetsV1::RowData, decorator: Google::Apis::SheetsV1::RowData::Representation
      
          property :cell_data_fields, as: 'cellDataFields'
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          property :start, as: 'start', class: Google::Apis::SheetsV1::GridCoordinate, decorator: Google::Apis::SheetsV1::GridCoordinate::Representation
      
        end
      end
      
      class CopyPasteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :paste_orientation, as: 'pasteOrientation'
          property :paste_type, as: 'pasteType'
          property :source, as: 'source', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          property :destination, as: 'destination', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class Sheet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :properties, as: 'properties', class: Google::Apis::SheetsV1::SheetProperties, decorator: Google::Apis::SheetsV1::SheetProperties::Representation
      
          collection :filter_views, as: 'filterViews', class: Google::Apis::SheetsV1::FilterView, decorator: Google::Apis::SheetsV1::FilterView::Representation
      
          collection :conditional_formats, as: 'conditionalFormats', class: Google::Apis::SheetsV1::ConditionalFormatRule, decorator: Google::Apis::SheetsV1::ConditionalFormatRule::Representation
      
          collection :protected_ranges, as: 'protectedRanges', class: Google::Apis::SheetsV1::ProtectedRange, decorator: Google::Apis::SheetsV1::ProtectedRange::Representation
      
          property :basic_filter, as: 'basicFilter', class: Google::Apis::SheetsV1::BasicFilter, decorator: Google::Apis::SheetsV1::BasicFilter::Representation
      
          collection :merges, as: 'merges', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          collection :data, as: 'data', class: Google::Apis::SheetsV1::GridData, decorator: Google::Apis::SheetsV1::GridData::Representation
      
        end
      end
      
      class BatchUpdateSpreadsheetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :spreadsheet_id, as: 'spreadsheetId'
          collection :replies, as: 'replies', class: Google::Apis::SheetsV1::Response, decorator: Google::Apis::SheetsV1::Response::Representation
      
        end
      end
      
      class ExtendedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_value, as: 'errorValue', class: Google::Apis::SheetsV1::ErrorValue, decorator: Google::Apis::SheetsV1::ErrorValue::Representation
      
          property :formula_value, as: 'formulaValue'
          property :bool_value, as: 'boolValue'
          property :string_value, as: 'stringValue'
          property :number_value, as: 'numberValue'
        end
      end
      
      class CutPasteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :paste_type, as: 'pasteType'
          property :source, as: 'source', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          property :destination, as: 'destination', class: Google::Apis::SheetsV1::GridCoordinate, decorator: Google::Apis::SheetsV1::GridCoordinate::Representation
      
        end
      end
      
      class GradientRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maxpoint, as: 'maxpoint', class: Google::Apis::SheetsV1::InterpolationPoint, decorator: Google::Apis::SheetsV1::InterpolationPoint::Representation
      
          property :midpoint, as: 'midpoint', class: Google::Apis::SheetsV1::InterpolationPoint, decorator: Google::Apis::SheetsV1::InterpolationPoint::Representation
      
          property :minpoint, as: 'minpoint', class: Google::Apis::SheetsV1::InterpolationPoint, decorator: Google::Apis::SheetsV1::InterpolationPoint::Representation
      
        end
      end
      
      class AutoFillRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_alternate_series, as: 'useAlternateSeries'
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
          property :source_and_destination, as: 'sourceAndDestination', class: Google::Apis::SheetsV1::SourceAndDestination, decorator: Google::Apis::SheetsV1::SourceAndDestination::Representation
      
        end
      end
      
      class UpdateSheetPropertiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fields, as: 'fields'
          property :properties, as: 'properties', class: Google::Apis::SheetsV1::SheetProperties, decorator: Google::Apis::SheetsV1::SheetProperties::Representation
      
        end
      end
      
      class AppendDimensionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sheet_id, as: 'sheetId'
          property :length, as: 'length'
          property :dimension, as: 'dimension'
        end
      end
      
      class BooleanRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::SheetsV1::BooleanCondition, decorator: Google::Apis::SheetsV1::BooleanCondition::Representation
      
          property :format, as: 'format', class: Google::Apis::SheetsV1::CellFormat, decorator: Google::Apis::SheetsV1::CellFormat::Representation
      
        end
      end
      
      class AddFilterViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter', class: Google::Apis::SheetsV1::FilterView, decorator: Google::Apis::SheetsV1::FilterView::Representation
      
        end
      end
      
      class GridProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_count, as: 'columnCount'
          property :row_count, as: 'rowCount'
          property :frozen_row_count, as: 'frozenRowCount'
          property :hide_gridlines, as: 'hideGridlines'
          property :frozen_column_count, as: 'frozenColumnCount'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeleteNamedRangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :named_range_id, as: 'namedRangeId'
        end
      end
      
      class SetDataValidationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rule, as: 'rule', class: Google::Apis::SheetsV1::DataValidationRule, decorator: Google::Apis::SheetsV1::DataValidationRule::Representation
      
          property :range, as: 'range', class: Google::Apis::SheetsV1::GridRange, decorator: Google::Apis::SheetsV1::GridRange::Representation
      
        end
      end
      
      class BatchGetValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value_ranges, as: 'valueRanges', class: Google::Apis::SheetsV1::ValueRange, decorator: Google::Apis::SheetsV1::ValueRange::Representation
      
          property :spreadsheet_id, as: 'spreadsheetId'
        end
      end
      
      class Request
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_named_range, as: 'deleteNamedRange', class: Google::Apis::SheetsV1::DeleteNamedRangeRequest, decorator: Google::Apis::SheetsV1::DeleteNamedRangeRequest::Representation
      
          property :update_named_range, as: 'updateNamedRange', class: Google::Apis::SheetsV1::UpdateNamedRangeRequest, decorator: Google::Apis::SheetsV1::UpdateNamedRangeRequest::Representation
      
          property :add_filter_view, as: 'addFilterView', class: Google::Apis::SheetsV1::AddFilterViewRequest, decorator: Google::Apis::SheetsV1::AddFilterViewRequest::Representation
      
          property :update_spreadsheet_properties, as: 'updateSpreadsheetProperties', class: Google::Apis::SheetsV1::UpdateSpreadsheetPropertiesRequest, decorator: Google::Apis::SheetsV1::UpdateSpreadsheetPropertiesRequest::Representation
      
          property :append_dimension, as: 'appendDimension', class: Google::Apis::SheetsV1::AppendDimensionRequest, decorator: Google::Apis::SheetsV1::AppendDimensionRequest::Representation
      
          property :move_embedded_object_to_sheet, as: 'moveEmbeddedObjectToSheet', class: Google::Apis::SheetsV1::MoveEmbeddedObjectToSheetRequest, decorator: Google::Apis::SheetsV1::MoveEmbeddedObjectToSheetRequest::Representation
      
          property :unmerge_cells, as: 'unmergeCells', class: Google::Apis::SheetsV1::UnmergeCellsRequest, decorator: Google::Apis::SheetsV1::UnmergeCellsRequest::Representation
      
          property :update_protected_range, as: 'updateProtectedRange', class: Google::Apis::SheetsV1::UpdateProtectedRangeRequest, decorator: Google::Apis::SheetsV1::UpdateProtectedRangeRequest::Representation
      
          property :delete_filter_view, as: 'deleteFilterView', class: Google::Apis::SheetsV1::DeleteFilterViewRequest, decorator: Google::Apis::SheetsV1::DeleteFilterViewRequest::Representation
      
          property :clear_basic_filter, as: 'clearBasicFilter', class: Google::Apis::SheetsV1::ClearBasicFilterRequest, decorator: Google::Apis::SheetsV1::ClearBasicFilterRequest::Representation
      
          property :sort_range, as: 'sortRange', class: Google::Apis::SheetsV1::SortRangeRequest, decorator: Google::Apis::SheetsV1::SortRangeRequest::Representation
      
          property :set_data_validation, as: 'setDataValidation', class: Google::Apis::SheetsV1::SetDataValidationRequest, decorator: Google::Apis::SheetsV1::SetDataValidationRequest::Representation
      
          property :repeat_cell, as: 'repeatCell', class: Google::Apis::SheetsV1::RepeatCellRequest, decorator: Google::Apis::SheetsV1::RepeatCellRequest::Representation
      
          property :update_cells, as: 'updateCells', class: Google::Apis::SheetsV1::UpdateCellsRequest, decorator: Google::Apis::SheetsV1::UpdateCellsRequest::Representation
      
          property :update_filter_view, as: 'updateFilterView', class: Google::Apis::SheetsV1::UpdateFilterViewRequest, decorator: Google::Apis::SheetsV1::UpdateFilterViewRequest::Representation
      
          property :add_sheet, as: 'addSheet', class: Google::Apis::SheetsV1::AddSheetRequest, decorator: Google::Apis::SheetsV1::AddSheetRequest::Representation
      
          property :update_sheet_properties, as: 'updateSheetProperties', class: Google::Apis::SheetsV1::UpdateSheetPropertiesRequest, decorator: Google::Apis::SheetsV1::UpdateSheetPropertiesRequest::Representation
      
          property :delete_sheet, as: 'deleteSheet', class: Google::Apis::SheetsV1::DeleteSheetRequest, decorator: Google::Apis::SheetsV1::DeleteSheetRequest::Representation
      
          property :update_dimension_properties, as: 'updateDimensionProperties', class: Google::Apis::SheetsV1::UpdateDimensionPropertiesRequest, decorator: Google::Apis::SheetsV1::UpdateDimensionPropertiesRequest::Representation
      
          property :delete_protected_range, as: 'deleteProtectedRange', class: Google::Apis::SheetsV1::DeleteProtectedRangeRequest, decorator: Google::Apis::SheetsV1::DeleteProtectedRangeRequest::Representation
      
          property :add_protected_range, as: 'addProtectedRange', class: Google::Apis::SheetsV1::AddProtectedRangeRequest, decorator: Google::Apis::SheetsV1::AddProtectedRangeRequest::Representation
      
          property :find_replace, as: 'findReplace', class: Google::Apis::SheetsV1::FindReplaceRequest, decorator: Google::Apis::SheetsV1::FindReplaceRequest::Representation
      
          property :update_conditional_format_rule, as: 'updateConditionalFormatRule', class: Google::Apis::SheetsV1::UpdateConditionalFormatRuleRequest, decorator: Google::Apis::SheetsV1::UpdateConditionalFormatRuleRequest::Representation
      
          property :set_basic_filter, as: 'setBasicFilter', class: Google::Apis::SheetsV1::SetBasicFilterRequest, decorator: Google::Apis::SheetsV1::SetBasicFilterRequest::Representation
      
          property :merge_cells, as: 'mergeCells', class: Google::Apis::SheetsV1::MergeCellsRequest, decorator: Google::Apis::SheetsV1::MergeCellsRequest::Representation
      
          property :delete_conditional_format_rule, as: 'deleteConditionalFormatRule', class: Google::Apis::SheetsV1::DeleteConditionalFormatRuleRequest, decorator: Google::Apis::SheetsV1::DeleteConditionalFormatRuleRequest::Representation
      
          property :delete_dimension, as: 'deleteDimension', class: Google::Apis::SheetsV1::DeleteDimensionRequest, decorator: Google::Apis::SheetsV1::DeleteDimensionRequest::Representation
      
          property :paste_data, as: 'pasteData', class: Google::Apis::SheetsV1::PasteDataRequest, decorator: Google::Apis::SheetsV1::PasteDataRequest::Representation
      
          property :delete_embedded_object, as: 'deleteEmbeddedObject', class: Google::Apis::SheetsV1::DeleteEmbeddedObjectRequest, decorator: Google::Apis::SheetsV1::DeleteEmbeddedObjectRequest::Representation
      
          property :add_conditional_format_rule, as: 'addConditionalFormatRule', class: Google::Apis::SheetsV1::AddConditionalFormatRuleRequest, decorator: Google::Apis::SheetsV1::AddConditionalFormatRuleRequest::Representation
      
          property :update_borders, as: 'updateBorders', class: Google::Apis::SheetsV1::UpdateBordersRequest, decorator: Google::Apis::SheetsV1::UpdateBordersRequest::Representation
      
          property :auto_resize_dimensions, as: 'autoResizeDimensions', class: Google::Apis::SheetsV1::AutoResizeDimensionsRequest, decorator: Google::Apis::SheetsV1::AutoResizeDimensionsRequest::Representation
      
          property :duplicate_sheet, as: 'duplicateSheet', class: Google::Apis::SheetsV1::DuplicateSheetRequest, decorator: Google::Apis::SheetsV1::DuplicateSheetRequest::Representation
      
          property :duplicate_filter_view, as: 'duplicateFilterView', class: Google::Apis::SheetsV1::DuplicateFilterViewRequest, decorator: Google::Apis::SheetsV1::DuplicateFilterViewRequest::Representation
      
          property :cut_paste, as: 'cutPaste', class: Google::Apis::SheetsV1::CutPasteRequest, decorator: Google::Apis::SheetsV1::CutPasteRequest::Representation
      
          property :append_cells, as: 'appendCells', class: Google::Apis::SheetsV1::AppendCellsRequest, decorator: Google::Apis::SheetsV1::AppendCellsRequest::Representation
      
          property :auto_fill, as: 'autoFill', class: Google::Apis::SheetsV1::AutoFillRequest, decorator: Google::Apis::SheetsV1::AutoFillRequest::Representation
      
          property :add_named_range, as: 'addNamedRange', class: Google::Apis::SheetsV1::AddNamedRangeRequest, decorator: Google::Apis::SheetsV1::AddNamedRangeRequest::Representation
      
          property :text_to_columns, as: 'textToColumns', class: Google::Apis::SheetsV1::TextToColumnsRequest, decorator: Google::Apis::SheetsV1::TextToColumnsRequest::Representation
      
          property :move_dimension, as: 'moveDimension', class: Google::Apis::SheetsV1::MoveDimensionRequest, decorator: Google::Apis::SheetsV1::MoveDimensionRequest::Representation
      
          property :insert_dimension, as: 'insertDimension', class: Google::Apis::SheetsV1::InsertDimensionRequest, decorator: Google::Apis::SheetsV1::InsertDimensionRequest::Representation
      
          property :copy_paste, as: 'copyPaste', class: Google::Apis::SheetsV1::CopyPasteRequest, decorator: Google::Apis::SheetsV1::CopyPasteRequest::Representation
      
        end
      end
      
      class InsertDimensionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inherit_from_before, as: 'inheritFromBefore'
          property :range, as: 'range', class: Google::Apis::SheetsV1::DimensionRange, decorator: Google::Apis::SheetsV1::DimensionRange::Representation
      
        end
      end
      
      class DeleteEmbeddedObjectRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_id_prop, as: 'objectId'
        end
      end
      
      class DeleteConditionalFormatRuleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deleted, as: 'deleted', class: Google::Apis::SheetsV1::ConditionalFormatRule, decorator: Google::Apis::SheetsV1::ConditionalFormatRule::Representation
      
        end
      end
    end
  end
end
