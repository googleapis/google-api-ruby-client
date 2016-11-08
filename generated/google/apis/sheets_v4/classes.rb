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
    module SheetsV4
      
      # The result of adding a named range.
      class AddNamedRangeResponse
        include Google::Apis::Core::Hashable
      
        # A named range.
        # Corresponds to the JSON property `namedRange`
        # @return [Google::Apis::SheetsV4::NamedRange]
        attr_accessor :named_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @named_range = args[:named_range] if args.key?(:named_range)
        end
      end
      
      # Updates an existing protected range with the specified
      # protectedRangeId.
      class UpdateProtectedRangeRequest
        include Google::Apis::Core::Hashable
      
        # A protected range.
        # Corresponds to the JSON property `protectedRange`
        # @return [Google::Apis::SheetsV4::ProtectedRange]
        attr_accessor :protected_range
      
        # The fields that should be updated.  At least one field must be specified.
        # The root `protectedRange` is implied and should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @protected_range = args[:protected_range] if args.key?(:protected_range)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # The amount of padding around the cell, in pixels.
      # When updating padding, every field must be specified.
      class Padding
        include Google::Apis::Core::Hashable
      
        # The right padding of the cell.
        # Corresponds to the JSON property `right`
        # @return [Fixnum]
        attr_accessor :right
      
        # The left padding of the cell.
        # Corresponds to the JSON property `left`
        # @return [Fixnum]
        attr_accessor :left
      
        # The top padding of the cell.
        # Corresponds to the JSON property `top`
        # @return [Fixnum]
        attr_accessor :top
      
        # The bottom padding of the cell.
        # Corresponds to the JSON property `bottom`
        # @return [Fixnum]
        attr_accessor :bottom
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @right = args[:right] if args.key?(:right)
          @left = args[:left] if args.key?(:left)
          @top = args[:top] if args.key?(:top)
          @bottom = args[:bottom] if args.key?(:bottom)
        end
      end
      
      # Merges all cells in the range.
      class MergeCellsRequest
        include Google::Apis::Core::Hashable
      
        # How the cells should be merged.
        # Corresponds to the JSON property `mergeType`
        # @return [String]
        attr_accessor :merge_type
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merge_type = args[:merge_type] if args.key?(:merge_type)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # The result of adding a sheet.
      class AddSheetResponse
        include Google::Apis::Core::Hashable
      
        # Properties of a sheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV4::SheetProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Metadata about a value in a pivot grouping.
      class PivotGroupValueMetadata
        include Google::Apis::Core::Hashable
      
        # The kinds of value that a cell in a spreadsheet can have.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::SheetsV4::ExtendedValue]
        attr_accessor :value
      
        # True if the data corresponding to the value is collapsed.
        # Corresponds to the JSON property `collapsed`
        # @return [Boolean]
        attr_accessor :collapsed
        alias_method :collapsed?, :collapsed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @collapsed = args[:collapsed] if args.key?(:collapsed)
        end
      end
      
      # The result of updating an embedded object's position.
      class UpdateEmbeddedObjectPositionResponse
        include Google::Apis::Core::Hashable
      
        # The position of an embedded object such as a chart.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::SheetsV4::EmbeddedObjectPosition]
        attr_accessor :position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @position = args[:position] if args.key?(:position)
        end
      end
      
      # The response when clearing a range of values in a spreadsheet.
      class ClearValuesResponse
        include Google::Apis::Core::Hashable
      
        # The spreadsheet the updates were applied to.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # The range (in A1 notation) that was cleared.
        # (If the request was for an unbounded range or a ranger larger
        # than the bounds of the sheet, this will be the actual range
        # that was cleared, bounded to the sheet's limits.)
        # Corresponds to the JSON property `clearedRange`
        # @return [String]
        attr_accessor :cleared_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @cleared_range = args[:cleared_range] if args.key?(:cleared_range)
        end
      end
      
      # Updates a conditional format rule at the given index,
      # or moves a conditional format rule to another index.
      class UpdateConditionalFormatRuleRequest
        include Google::Apis::Core::Hashable
      
        # The sheet of the rule to move.  Required if new_index is set,
        # unused otherwise.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # A rule describing a conditional format.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::SheetsV4::ConditionalFormatRule]
        attr_accessor :rule
      
        # The zero-based index of the rule that should be replaced or moved.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The zero-based new index the rule should end up at.
        # Corresponds to the JSON property `newIndex`
        # @return [Fixnum]
        attr_accessor :new_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @rule = args[:rule] if args.key?(:rule)
          @index = args[:index] if args.key?(:index)
          @new_index = args[:new_index] if args.key?(:new_index)
        end
      end
      
      # The format of a run of text in a cell.
      # Absent values indicate that the field isn't specified.
      class TextFormat
        include Google::Apis::Core::Hashable
      
        # True if the text is bold.
        # Corresponds to the JSON property `bold`
        # @return [Boolean]
        attr_accessor :bold
        alias_method :bold?, :bold
      
        # True if the text is italicized.
        # Corresponds to the JSON property `italic`
        # @return [Boolean]
        attr_accessor :italic
        alias_method :italic?, :italic
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `foregroundColor`
        # @return [Google::Apis::SheetsV4::Color]
        attr_accessor :foreground_color
      
        # The font family.
        # Corresponds to the JSON property `fontFamily`
        # @return [String]
        attr_accessor :font_family
      
        # True if the text has a strikethrough.
        # Corresponds to the JSON property `strikethrough`
        # @return [Boolean]
        attr_accessor :strikethrough
        alias_method :strikethrough?, :strikethrough
      
        # The size of the font.
        # Corresponds to the JSON property `fontSize`
        # @return [Fixnum]
        attr_accessor :font_size
      
        # True if the text is underlined.
        # Corresponds to the JSON property `underline`
        # @return [Boolean]
        attr_accessor :underline
        alias_method :underline?, :underline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bold = args[:bold] if args.key?(:bold)
          @italic = args[:italic] if args.key?(:italic)
          @foreground_color = args[:foreground_color] if args.key?(:foreground_color)
          @font_family = args[:font_family] if args.key?(:font_family)
          @strikethrough = args[:strikethrough] if args.key?(:strikethrough)
          @font_size = args[:font_size] if args.key?(:font_size)
          @underline = args[:underline] if args.key?(:underline)
        end
      end
      
      # Updates a chart's specifications.
      # (This does not move or resize a chart. To move or resize a chart, use
      # UpdateEmbeddedObjectPositionRequest.)
      class UpdateChartSpecRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the chart to update.
        # Corresponds to the JSON property `chartId`
        # @return [Fixnum]
        attr_accessor :chart_id
      
        # The specifications of a chart.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::SheetsV4::ChartSpec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_id = args[:chart_id] if args.key?(:chart_id)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # A coordinate in a sheet.
      # All indexes are zero-based.
      class GridCoordinate
        include Google::Apis::Core::Hashable
      
        # The sheet this coordinate is on.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The row index of the coordinate.
        # Corresponds to the JSON property `rowIndex`
        # @return [Fixnum]
        attr_accessor :row_index
      
        # The column index of the coordinate.
        # Corresponds to the JSON property `columnIndex`
        # @return [Fixnum]
        attr_accessor :column_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @row_index = args[:row_index] if args.key?(:row_index)
          @column_index = args[:column_index] if args.key?(:column_index)
        end
      end
      
      # Deletes a particular filter view.
      class DeleteFilterViewRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the filter to delete.
        # Corresponds to the JSON property `filterId`
        # @return [Fixnum]
        attr_accessor :filter_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_id = args[:filter_id] if args.key?(:filter_id)
        end
      end
      
      # The response when updating a range of values in a spreadsheet.
      class BatchUpdateValuesResponse
        include Google::Apis::Core::Hashable
      
        # The total number of sheets where at least one cell in the sheet was
        # updated.
        # Corresponds to the JSON property `totalUpdatedSheets`
        # @return [Fixnum]
        attr_accessor :total_updated_sheets
      
        # The total number of columns where at least one cell in the column was
        # updated.
        # Corresponds to the JSON property `totalUpdatedColumns`
        # @return [Fixnum]
        attr_accessor :total_updated_columns
      
        # One UpdateValuesResponse per requested range, in the same order as
        # the requests appeared.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::SheetsV4::UpdateValuesResponse>]
        attr_accessor :responses
      
        # The total number of cells updated.
        # Corresponds to the JSON property `totalUpdatedCells`
        # @return [Fixnum]
        attr_accessor :total_updated_cells
      
        # The spreadsheet the updates were applied to.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # The total number of rows where at least one cell in the row was updated.
        # Corresponds to the JSON property `totalUpdatedRows`
        # @return [Fixnum]
        attr_accessor :total_updated_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_updated_sheets = args[:total_updated_sheets] if args.key?(:total_updated_sheets)
          @total_updated_columns = args[:total_updated_columns] if args.key?(:total_updated_columns)
          @responses = args[:responses] if args.key?(:responses)
          @total_updated_cells = args[:total_updated_cells] if args.key?(:total_updated_cells)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @total_updated_rows = args[:total_updated_rows] if args.key?(:total_updated_rows)
        end
      end
      
      # Updates properties of the named range with the specified
      # namedRangeId.
      class UpdateNamedRangeRequest
        include Google::Apis::Core::Hashable
      
        # The fields that should be updated.  At least one field must be specified.
        # The root `namedRange` is implied and should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # A named range.
        # Corresponds to the JSON property `namedRange`
        # @return [Google::Apis::SheetsV4::NamedRange]
        attr_accessor :named_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @named_range = args[:named_range] if args.key?(:named_range)
        end
      end
      
      # The response when updating a range of values in a spreadsheet.
      class UpdateValuesResponse
        include Google::Apis::Core::Hashable
      
        # The number of columns where at least one cell in the column was updated.
        # Corresponds to the JSON property `updatedColumns`
        # @return [Fixnum]
        attr_accessor :updated_columns
      
        # The number of cells updated.
        # Corresponds to the JSON property `updatedCells`
        # @return [Fixnum]
        attr_accessor :updated_cells
      
        # Data within a range of the spreadsheet.
        # Corresponds to the JSON property `updatedData`
        # @return [Google::Apis::SheetsV4::ValueRange]
        attr_accessor :updated_data
      
        # The range (in A1 notation) that updates were applied to.
        # Corresponds to the JSON property `updatedRange`
        # @return [String]
        attr_accessor :updated_range
      
        # The spreadsheet the updates were applied to.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # The number of rows where at least one cell in the row was updated.
        # Corresponds to the JSON property `updatedRows`
        # @return [Fixnum]
        attr_accessor :updated_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @updated_columns = args[:updated_columns] if args.key?(:updated_columns)
          @updated_cells = args[:updated_cells] if args.key?(:updated_cells)
          @updated_data = args[:updated_data] if args.key?(:updated_data)
          @updated_range = args[:updated_range] if args.key?(:updated_range)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @updated_rows = args[:updated_rows] if args.key?(:updated_rows)
        end
      end
      
      # Properties of a spreadsheet.
      class SpreadsheetProperties
        include Google::Apis::Core::Hashable
      
        # The time zone of the spreadsheet, in CLDR format such as
        # `America/New_York`. If the time zone isn't recognized, this may
        # be a custom time zone such as `GMT-07:00`.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # The amount of time to wait before volatile functions are recalculated.
        # Corresponds to the JSON property `autoRecalc`
        # @return [String]
        attr_accessor :auto_recalc
      
        # The locale of the spreadsheet in one of the following formats:
        # * an ISO 639-1 language code such as `en`
        # * an ISO 639-2 language code such as `fil`, if no 639-1 code exists
        # * a combination of the ISO language code and country code, such as `en_US`
        # Note: when updating this field, not all locales/languages are supported.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The title of the spreadsheet.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The format of a cell.
        # Corresponds to the JSON property `defaultFormat`
        # @return [Google::Apis::SheetsV4::CellFormat]
        attr_accessor :default_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @auto_recalc = args[:auto_recalc] if args.key?(:auto_recalc)
          @locale = args[:locale] if args.key?(:locale)
          @title = args[:title] if args.key?(:title)
          @default_format = args[:default_format] if args.key?(:default_format)
        end
      end
      
      # Data about a specific cell.
      class CellData
        include Google::Apis::Core::Hashable
      
        # A hyperlink this cell points to, if any.
        # This field is read-only.  (To set it, use a `=HYPERLINK` formula.)
        # Corresponds to the JSON property `hyperlink`
        # @return [String]
        attr_accessor :hyperlink
      
        # The format of a cell.
        # Corresponds to the JSON property `effectiveFormat`
        # @return [Google::Apis::SheetsV4::CellFormat]
        attr_accessor :effective_format
      
        # Any note on the cell.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        # The formatted value of the cell.
        # This is the value as it's shown to the user.
        # This field is read-only.
        # Corresponds to the JSON property `formattedValue`
        # @return [String]
        attr_accessor :formatted_value
      
        # The kinds of value that a cell in a spreadsheet can have.
        # Corresponds to the JSON property `userEnteredValue`
        # @return [Google::Apis::SheetsV4::ExtendedValue]
        attr_accessor :user_entered_value
      
        # A data validation rule.
        # Corresponds to the JSON property `dataValidation`
        # @return [Google::Apis::SheetsV4::DataValidationRule]
        attr_accessor :data_validation
      
        # The format of a cell.
        # Corresponds to the JSON property `userEnteredFormat`
        # @return [Google::Apis::SheetsV4::CellFormat]
        attr_accessor :user_entered_format
      
        # A pivot table.
        # Corresponds to the JSON property `pivotTable`
        # @return [Google::Apis::SheetsV4::PivotTable]
        attr_accessor :pivot_table
      
        # Runs of rich text applied to subsections of the cell.  Runs are only valid
        # on user entered strings, not formulas, bools, or numbers.
        # Runs start at specific indexes in the text and continue until the next
        # run. Properties of a run will continue unless explicitly changed
        # in a subsequent run (and properties of the first run will continue
        # the properties of the cell unless explicitly changed).
        # When writing, the new runs will overwrite any prior runs.  When writing a
        # new user_entered_value, previous runs will be erased.
        # Corresponds to the JSON property `textFormatRuns`
        # @return [Array<Google::Apis::SheetsV4::TextFormatRun>]
        attr_accessor :text_format_runs
      
        # The kinds of value that a cell in a spreadsheet can have.
        # Corresponds to the JSON property `effectiveValue`
        # @return [Google::Apis::SheetsV4::ExtendedValue]
        attr_accessor :effective_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hyperlink = args[:hyperlink] if args.key?(:hyperlink)
          @effective_format = args[:effective_format] if args.key?(:effective_format)
          @note = args[:note] if args.key?(:note)
          @formatted_value = args[:formatted_value] if args.key?(:formatted_value)
          @user_entered_value = args[:user_entered_value] if args.key?(:user_entered_value)
          @data_validation = args[:data_validation] if args.key?(:data_validation)
          @user_entered_format = args[:user_entered_format] if args.key?(:user_entered_format)
          @pivot_table = args[:pivot_table] if args.key?(:pivot_table)
          @text_format_runs = args[:text_format_runs] if args.key?(:text_format_runs)
          @effective_value = args[:effective_value] if args.key?(:effective_value)
        end
      end
      
      # Unmerges cells in the given range.
      class UnmergeCellsRequest
        include Google::Apis::Core::Hashable
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Splits a column of text into multiple columns,
      # based on a delimiter in each cell.
      class TextToColumnsRequest
        include Google::Apis::Core::Hashable
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :source
      
        # The delimiter to use. Used only if delimiterType is
        # CUSTOM.
        # Corresponds to the JSON property `delimiter`
        # @return [String]
        attr_accessor :delimiter
      
        # The delimiter type to use.
        # Corresponds to the JSON property `delimiterType`
        # @return [String]
        attr_accessor :delimiter_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
          @delimiter_type = args[:delimiter_type] if args.key?(:delimiter_type)
        end
      end
      
      # The result of adding a new protected range.
      class AddProtectedRangeResponse
        include Google::Apis::Core::Hashable
      
        # A protected range.
        # Corresponds to the JSON property `protectedRange`
        # @return [Google::Apis::SheetsV4::ProtectedRange]
        attr_accessor :protected_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @protected_range = args[:protected_range] if args.key?(:protected_range)
        end
      end
      
      # A condition that can evaluate to true or false.
      # BooleanConditions are used by conditional formatting,
      # data validation, and the criteria in filters.
      class BooleanCondition
        include Google::Apis::Core::Hashable
      
        # The values of the condition. The number of supported values depends
        # on the condition type.  Some support zero values,
        # others one or two values,
        # and ConditionType.ONE_OF_LIST supports an arbitrary number of values.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::SheetsV4::ConditionValue>]
        attr_accessor :values
      
        # The type of condition.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Deletes the protected range with the given ID.
      class DeleteProtectedRangeRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the protected range to delete.
        # Corresponds to the JSON property `protectedRangeId`
        # @return [Fixnum]
        attr_accessor :protected_range_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @protected_range_id = args[:protected_range_id] if args.key?(:protected_range_id)
        end
      end
      
      # The domain of a chart.
      # For example, if charting stock prices over time, this would be the date.
      class BasicChartDomain
        include Google::Apis::Core::Hashable
      
        # The data included in a domain or series.
        # Corresponds to the JSON property `domain`
        # @return [Google::Apis::SheetsV4::ChartData]
        attr_accessor :domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
        end
      end
      
      # A range along a single dimension on a sheet.
      # All indexes are zero-based.
      # Indexes are half open: the start index is inclusive
      # and the end index is exclusive.
      # Missing indexes indicate the range is unbounded on that side.
      class DimensionRange
        include Google::Apis::Core::Hashable
      
        # The sheet this span is on.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The end (exclusive) of the span, or not set if unbounded.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # The start (inclusive) of the span, or not set if unbounded.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The dimension of the span.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
          @dimension = args[:dimension] if args.key?(:dimension)
        end
      end
      
      # A single response from an update.
      class Response
        include Google::Apis::Core::Hashable
      
        # The result of updating an embedded object's position.
        # Corresponds to the JSON property `updateEmbeddedObjectPosition`
        # @return [Google::Apis::SheetsV4::UpdateEmbeddedObjectPositionResponse]
        attr_accessor :update_embedded_object_position
      
        # The result of adding a filter view.
        # Corresponds to the JSON property `addFilterView`
        # @return [Google::Apis::SheetsV4::AddFilterViewResponse]
        attr_accessor :add_filter_view
      
        # The result of adding a sheet.
        # Corresponds to the JSON property `addSheet`
        # @return [Google::Apis::SheetsV4::AddSheetResponse]
        attr_accessor :add_sheet
      
        # The result of the find/replace.
        # Corresponds to the JSON property `findReplace`
        # @return [Google::Apis::SheetsV4::FindReplaceResponse]
        attr_accessor :find_replace
      
        # The result of adding a new protected range.
        # Corresponds to the JSON property `addProtectedRange`
        # @return [Google::Apis::SheetsV4::AddProtectedRangeResponse]
        attr_accessor :add_protected_range
      
        # The result of updating a conditional format rule.
        # Corresponds to the JSON property `updateConditionalFormatRule`
        # @return [Google::Apis::SheetsV4::UpdateConditionalFormatRuleResponse]
        attr_accessor :update_conditional_format_rule
      
        # The result of adding a chart to a spreadsheet.
        # Corresponds to the JSON property `addChart`
        # @return [Google::Apis::SheetsV4::AddChartResponse]
        attr_accessor :add_chart
      
        # The result of deleting a conditional format rule.
        # Corresponds to the JSON property `deleteConditionalFormatRule`
        # @return [Google::Apis::SheetsV4::DeleteConditionalFormatRuleResponse]
        attr_accessor :delete_conditional_format_rule
      
        # The result of adding a banded range.
        # Corresponds to the JSON property `addBanding`
        # @return [Google::Apis::SheetsV4::AddBandingResponse]
        attr_accessor :add_banding
      
        # The result of duplicating a sheet.
        # Corresponds to the JSON property `duplicateSheet`
        # @return [Google::Apis::SheetsV4::DuplicateSheetResponse]
        attr_accessor :duplicate_sheet
      
        # The result of a filter view being duplicated.
        # Corresponds to the JSON property `duplicateFilterView`
        # @return [Google::Apis::SheetsV4::DuplicateFilterViewResponse]
        attr_accessor :duplicate_filter_view
      
        # The result of adding a named range.
        # Corresponds to the JSON property `addNamedRange`
        # @return [Google::Apis::SheetsV4::AddNamedRangeResponse]
        attr_accessor :add_named_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_embedded_object_position = args[:update_embedded_object_position] if args.key?(:update_embedded_object_position)
          @add_filter_view = args[:add_filter_view] if args.key?(:add_filter_view)
          @add_sheet = args[:add_sheet] if args.key?(:add_sheet)
          @find_replace = args[:find_replace] if args.key?(:find_replace)
          @add_protected_range = args[:add_protected_range] if args.key?(:add_protected_range)
          @update_conditional_format_rule = args[:update_conditional_format_rule] if args.key?(:update_conditional_format_rule)
          @add_chart = args[:add_chart] if args.key?(:add_chart)
          @delete_conditional_format_rule = args[:delete_conditional_format_rule] if args.key?(:delete_conditional_format_rule)
          @add_banding = args[:add_banding] if args.key?(:add_banding)
          @duplicate_sheet = args[:duplicate_sheet] if args.key?(:duplicate_sheet)
          @duplicate_filter_view = args[:duplicate_filter_view] if args.key?(:duplicate_filter_view)
          @add_named_range = args[:add_named_range] if args.key?(:add_named_range)
        end
      end
      
      # Adds a new conditional format rule at the given index.
      # All subsequent rules' indexes are incremented.
      class AddConditionalFormatRuleRequest
        include Google::Apis::Core::Hashable
      
        # A rule describing a conditional format.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::SheetsV4::ConditionalFormatRule]
        attr_accessor :rule
      
        # The zero-based index where the rule should be inserted.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule = args[:rule] if args.key?(:rule)
          @index = args[:index] if args.key?(:index)
        end
      end
      
      # A filter view.
      class FilterView
        include Google::Apis::Core::Hashable
      
        # The name of the filter view.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The named range this filter view is backed by, if any.
        # When writing, only one of range or named_range_id
        # may be set.
        # Corresponds to the JSON property `namedRangeId`
        # @return [String]
        attr_accessor :named_range_id
      
        # The sort order per column. Later specifications are used when values
        # are equal in the earlier specifications.
        # Corresponds to the JSON property `sortSpecs`
        # @return [Array<Google::Apis::SheetsV4::SortSpec>]
        attr_accessor :sort_specs
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        # The criteria for showing/hiding values per column.
        # The map's key is the column index, and the value is the criteria for
        # that column.
        # Corresponds to the JSON property `criteria`
        # @return [Hash<String,Google::Apis::SheetsV4::FilterCriteria>]
        attr_accessor :criteria
      
        # The ID of the filter view.
        # Corresponds to the JSON property `filterViewId`
        # @return [Fixnum]
        attr_accessor :filter_view_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @named_range_id = args[:named_range_id] if args.key?(:named_range_id)
          @sort_specs = args[:sort_specs] if args.key?(:sort_specs)
          @range = args[:range] if args.key?(:range)
          @criteria = args[:criteria] if args.key?(:criteria)
          @filter_view_id = args[:filter_view_id] if args.key?(:filter_view_id)
        end
      end
      
      # Sorts data in rows based on a sort order per column.
      class SortRangeRequest
        include Google::Apis::Core::Hashable
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        # The sort order per column. Later specifications are used when values
        # are equal in the earlier specifications.
        # Corresponds to the JSON property `sortSpecs`
        # @return [Array<Google::Apis::SheetsV4::SortSpec>]
        attr_accessor :sort_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
          @sort_specs = args[:sort_specs] if args.key?(:sort_specs)
        end
      end
      
      # The result of adding a banded range.
      class AddBandingResponse
        include Google::Apis::Core::Hashable
      
        # A banded (alternating colors) range in a sheet.
        # Corresponds to the JSON property `bandedRange`
        # @return [Google::Apis::SheetsV4::BandedRange]
        attr_accessor :banded_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @banded_range = args[:banded_range] if args.key?(:banded_range)
        end
      end
      
      # A run of a text format. The format of this run continues until the start
      # index of the next run.
      # When updating, all fields must be set.
      class TextFormatRun
        include Google::Apis::Core::Hashable
      
        # The character index where this run starts.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The format of a run of text in a cell.
        # Absent values indicate that the field isn't specified.
        # Corresponds to the JSON property `format`
        # @return [Google::Apis::SheetsV4::TextFormat]
        attr_accessor :format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_index = args[:start_index] if args.key?(:start_index)
          @format = args[:format] if args.key?(:format)
        end
      end
      
      # Updates properties of the filter view.
      class UpdateFilterViewRequest
        include Google::Apis::Core::Hashable
      
        # A filter view.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::SheetsV4::FilterView]
        attr_accessor :filter
      
        # The fields that should be updated.  At least one field must be specified.
        # The root `filter` is implied and should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # The result of updating a conditional format rule.
      class UpdateConditionalFormatRuleResponse
        include Google::Apis::Core::Hashable
      
        # The old index of the rule. Not set if a rule was replaced
        # (because it is the same as new_index).
        # Corresponds to the JSON property `oldIndex`
        # @return [Fixnum]
        attr_accessor :old_index
      
        # A rule describing a conditional format.
        # Corresponds to the JSON property `newRule`
        # @return [Google::Apis::SheetsV4::ConditionalFormatRule]
        attr_accessor :new_rule
      
        # A rule describing a conditional format.
        # Corresponds to the JSON property `oldRule`
        # @return [Google::Apis::SheetsV4::ConditionalFormatRule]
        attr_accessor :old_rule
      
        # The index of the new rule.
        # Corresponds to the JSON property `newIndex`
        # @return [Fixnum]
        attr_accessor :new_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @old_index = args[:old_index] if args.key?(:old_index)
          @new_rule = args[:new_rule] if args.key?(:new_rule)
          @old_rule = args[:old_rule] if args.key?(:old_rule)
          @new_index = args[:new_index] if args.key?(:new_index)
        end
      end
      
      # Criteria for showing/hiding rows in a filter or filter view.
      class FilterCriteria
        include Google::Apis::Core::Hashable
      
        # A condition that can evaluate to true or false.
        # BooleanConditions are used by conditional formatting,
        # data validation, and the criteria in filters.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::SheetsV4::BooleanCondition]
        attr_accessor :condition
      
        # Values that should be hidden.
        # Corresponds to the JSON property `hiddenValues`
        # @return [Array<String>]
        attr_accessor :hidden_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @hidden_values = args[:hidden_values] if args.key?(:hidden_values)
        end
      end
      
      # Deletes the dimensions from the sheet.
      class DeleteDimensionRequest
        include Google::Apis::Core::Hashable
      
        # A range along a single dimension on a sheet.
        # All indexes are zero-based.
        # Indexes are half open: the start index is inclusive
        # and the end index is exclusive.
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::DimensionRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # A pivot table.
      class PivotTable
        include Google::Apis::Core::Hashable
      
        # Whether values should be listed horizontally (as columns)
        # or vertically (as rows).
        # Corresponds to the JSON property `valueLayout`
        # @return [String]
        attr_accessor :value_layout
      
        # Each column grouping in the pivot table.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::SheetsV4::PivotGroup>]
        attr_accessor :columns
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :source
      
        # Each row grouping in the pivot table.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::SheetsV4::PivotGroup>]
        attr_accessor :rows
      
        # A list of values to include in the pivot table.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::SheetsV4::PivotValue>]
        attr_accessor :values
      
        # An optional mapping of filters per source column offset.
        # The filters will be applied before aggregating data into the pivot table.
        # The map's key is the column offset of the source range that you want to
        # filter, and the value is the criteria for that column.
        # For example, if the source was `C10:E15`, a key of `0` will have the filter
        # for column `C`, whereas the key `1` is for column `D`.
        # Corresponds to the JSON property `criteria`
        # @return [Hash<String,Google::Apis::SheetsV4::PivotFilterCriteria>]
        attr_accessor :criteria
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value_layout = args[:value_layout] if args.key?(:value_layout)
          @columns = args[:columns] if args.key?(:columns)
          @source = args[:source] if args.key?(:source)
          @rows = args[:rows] if args.key?(:rows)
          @values = args[:values] if args.key?(:values)
          @criteria = args[:criteria] if args.key?(:criteria)
        end
      end
      
      # A data validation rule.
      class DataValidationRule
        include Google::Apis::Core::Hashable
      
        # A condition that can evaluate to true or false.
        # BooleanConditions are used by conditional formatting,
        # data validation, and the criteria in filters.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::SheetsV4::BooleanCondition]
        attr_accessor :condition
      
        # A message to show the user when adding data to the cell.
        # Corresponds to the JSON property `inputMessage`
        # @return [String]
        attr_accessor :input_message
      
        # True if the UI should be customized based on the kind of condition.
        # If true, "List" conditions will show a dropdown.
        # Corresponds to the JSON property `showCustomUi`
        # @return [Boolean]
        attr_accessor :show_custom_ui
        alias_method :show_custom_ui?, :show_custom_ui
      
        # True if invalid data should be rejected.
        # Corresponds to the JSON property `strict`
        # @return [Boolean]
        attr_accessor :strict
        alias_method :strict?, :strict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @input_message = args[:input_message] if args.key?(:input_message)
          @show_custom_ui = args[:show_custom_ui] if args.key?(:show_custom_ui)
          @strict = args[:strict] if args.key?(:strict)
        end
      end
      
      # Updates properties of a spreadsheet.
      class UpdateSpreadsheetPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The fields that should be updated.  At least one field must be specified.
        # The root 'properties' is implied and should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # Properties of a spreadsheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV4::SpreadsheetProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Source ranges for a chart.
      class ChartSourceRange
        include Google::Apis::Core::Hashable
      
        # The ranges of data for a series or domain.
        # Exactly one dimension must have a length of 1,
        # and all sources in the list must have the same dimension
        # with length 1.
        # The domain (if it exists) & all series must have the same number
        # of source ranges. If using more than one source range, then the source
        # range at a given offset must be contiguous across the domain and series.
        # For example, these are valid configurations:
        # domain sources: A1:A5
        # series1 sources: B1:B5
        # series2 sources: D6:D10
        # domain sources: A1:A5, C10:C12
        # series1 sources: B1:B5, D10:D12
        # series2 sources: C1:C5, E10:E12
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::SheetsV4::GridRange>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # The request for updating more than one range of values in a spreadsheet.
      class BatchUpdateValuesRequest
        include Google::Apis::Core::Hashable
      
        # How the input data should be interpreted.
        # Corresponds to the JSON property `valueInputOption`
        # @return [String]
        attr_accessor :value_input_option
      
        # The new values to apply to the spreadsheet.
        # Corresponds to the JSON property `data`
        # @return [Array<Google::Apis::SheetsV4::ValueRange>]
        attr_accessor :data
      
        # Determines how values in the response should be rendered.
        # The default render option is ValueRenderOption.FORMATTED_VALUE.
        # Corresponds to the JSON property `responseValueRenderOption`
        # @return [String]
        attr_accessor :response_value_render_option
      
        # Determines how dates, times, and durations in the response should be
        # rendered. This is ignored if response_value_render_option is
        # FORMATTED_VALUE.
        # The default dateTime render option is [DateTimeRenderOption.SERIAL_NUMBER].
        # Corresponds to the JSON property `responseDateTimeRenderOption`
        # @return [String]
        attr_accessor :response_date_time_render_option
      
        # Determines if the update response should include the values
        # of the cells that were updated. By default, responses
        # do not include the updated values. The `updatedData` field within
        # each of the BatchUpdateValuesResponse.responses will contain
        # the updated values. If the range to write was larger than than the range
        # actually written, the response will include all values in the requested
        # range (excluding trailing empty rows and columns).
        # Corresponds to the JSON property `includeValuesInResponse`
        # @return [Boolean]
        attr_accessor :include_values_in_response
        alias_method :include_values_in_response?, :include_values_in_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value_input_option = args[:value_input_option] if args.key?(:value_input_option)
          @data = args[:data] if args.key?(:data)
          @response_value_render_option = args[:response_value_render_option] if args.key?(:response_value_render_option)
          @response_date_time_render_option = args[:response_date_time_render_option] if args.key?(:response_date_time_render_option)
          @include_values_in_response = args[:include_values_in_response] if args.key?(:include_values_in_response)
        end
      end
      
      # Clears the basic filter, if any exists on the sheet.
      class ClearBasicFilterRequest
        include Google::Apis::Core::Hashable
      
        # The sheet ID on which the basic filter should be cleared.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
        end
      end
      
      # The response when updating a range of values in a spreadsheet.
      class BatchClearValuesResponse
        include Google::Apis::Core::Hashable
      
        # The spreadsheet the updates were applied to.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # The ranges that were cleared, in A1 notation.
        # (If the requests were for an unbounded range or a ranger larger
        # than the bounds of the sheet, this will be the actual ranges
        # that were cleared, bounded to the sheet's limits.)
        # Corresponds to the JSON property `clearedRanges`
        # @return [Array<String>]
        attr_accessor :cleared_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @cleared_ranges = args[:cleared_ranges] if args.key?(:cleared_ranges)
        end
      end
      
      # A rule describing a conditional format.
      class ConditionalFormatRule
        include Google::Apis::Core::Hashable
      
        # A rule that applies a gradient color scale format, based on
        # the interpolation points listed. The format of a cell will vary
        # based on its contents as compared to the values of the interpolation
        # points.
        # Corresponds to the JSON property `gradientRule`
        # @return [Google::Apis::SheetsV4::GradientRule]
        attr_accessor :gradient_rule
      
        # A rule that may or may not match, depending on the condition.
        # Corresponds to the JSON property `booleanRule`
        # @return [Google::Apis::SheetsV4::BooleanRule]
        attr_accessor :boolean_rule
      
        # The ranges that will be formatted if the condition is true.
        # All the ranges must be on the same grid.
        # Corresponds to the JSON property `ranges`
        # @return [Array<Google::Apis::SheetsV4::GridRange>]
        attr_accessor :ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gradient_rule = args[:gradient_rule] if args.key?(:gradient_rule)
          @boolean_rule = args[:boolean_rule] if args.key?(:boolean_rule)
          @ranges = args[:ranges] if args.key?(:ranges)
        end
      end
      
      # Updates the borders of a range.
      # If a field is not set in the request, that means the border remains as-is.
      # For example, with two subsequent UpdateBordersRequest:
      # 1. range: A1:A5 `` top: RED, bottom: WHITE ``
      # 2. range: A1:A5 `` left: BLUE ``
      # That would result in A1:A5 having a borders of
      # `` top: RED, bottom: WHITE, left: BLUE ``.
      # If you want to clear a border, explicitly set the style to
      # NONE.
      class UpdateBordersRequest
        include Google::Apis::Core::Hashable
      
        # A border along a cell.
        # Corresponds to the JSON property `right`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :right
      
        # A border along a cell.
        # Corresponds to the JSON property `innerVertical`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :inner_vertical
      
        # A border along a cell.
        # Corresponds to the JSON property `top`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :top
      
        # A border along a cell.
        # Corresponds to the JSON property `innerHorizontal`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :inner_horizontal
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        # A border along a cell.
        # Corresponds to the JSON property `bottom`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :bottom
      
        # A border along a cell.
        # Corresponds to the JSON property `left`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :left
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @right = args[:right] if args.key?(:right)
          @inner_vertical = args[:inner_vertical] if args.key?(:inner_vertical)
          @top = args[:top] if args.key?(:top)
          @inner_horizontal = args[:inner_horizontal] if args.key?(:inner_horizontal)
          @range = args[:range] if args.key?(:range)
          @bottom = args[:bottom] if args.key?(:bottom)
          @left = args[:left] if args.key?(:left)
        end
      end
      
      # Criteria for showing/hiding rows in a pivot table.
      class PivotFilterCriteria
        include Google::Apis::Core::Hashable
      
        # Values that should be included.  Values not listed here are excluded.
        # Corresponds to the JSON property `visibleValues`
        # @return [Array<String>]
        attr_accessor :visible_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @visible_values = args[:visible_values] if args.key?(:visible_values)
        end
      end
      
      # The borders of the cell.
      class Borders
        include Google::Apis::Core::Hashable
      
        # A border along a cell.
        # Corresponds to the JSON property `left`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :left
      
        # A border along a cell.
        # Corresponds to the JSON property `right`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :right
      
        # A border along a cell.
        # Corresponds to the JSON property `top`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :top
      
        # A border along a cell.
        # Corresponds to the JSON property `bottom`
        # @return [Google::Apis::SheetsV4::Border]
        attr_accessor :bottom
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @left = args[:left] if args.key?(:left)
          @right = args[:right] if args.key?(:right)
          @top = args[:top] if args.key?(:top)
          @bottom = args[:bottom] if args.key?(:bottom)
        end
      end
      
      # A chart embedded in a sheet.
      class EmbeddedChart
        include Google::Apis::Core::Hashable
      
        # The ID of the chart.
        # Corresponds to the JSON property `chartId`
        # @return [Fixnum]
        attr_accessor :chart_id
      
        # The position of an embedded object such as a chart.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::SheetsV4::EmbeddedObjectPosition]
        attr_accessor :position
      
        # The specifications of a chart.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::SheetsV4::ChartSpec]
        attr_accessor :spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_id = args[:chart_id] if args.key?(:chart_id)
          @position = args[:position] if args.key?(:position)
          @spec = args[:spec] if args.key?(:spec)
        end
      end
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to/from color representations in various
      # languages over compactness; for example, the fields of this representation
      # can be trivially provided to the constructor of "java.awt.Color" in Java; it
      # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
      # method in iOS; and, with just a little work, it can be easily formatted into
      # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
      # Example (Java):
      # import com.google.type.Color;
      # // ...
      # public static java.awt.Color fromProto(Color protocolor) `
      # float alpha = protocolor.hasAlpha()
      # ? protocolor.getAlpha().getValue()
      # : 1.0;
      # return new java.awt.Color(
      # protocolor.getRed(),
      # protocolor.getGreen(),
      # protocolor.getBlue(),
      # alpha);
      # `
      # public static Color toProto(java.awt.Color color) `
      # float red = (float) color.getRed();
      # float green = (float) color.getGreen();
      # float blue = (float) color.getBlue();
      # float denominator = 255.0;
      # Color.Builder resultBuilder =
      # Color
      # .newBuilder()
      # .setRed(red / denominator)
      # .setGreen(green / denominator)
      # .setBlue(blue / denominator);
      # int alpha = color.getAlpha();
      # if (alpha != 255) `
      # result.setAlpha(
      # FloatValue
      # .newBuilder()
      # .setValue(((float) alpha) / denominator)
      # .build());
      # `
      # return resultBuilder.build();
      # `
      # // ...
      # Example (iOS / Obj-C):
      # // ...
      # static UIColor* fromProto(Color* protocolor) `
      # float red = [protocolor red];
      # float green = [protocolor green];
      # float blue = [protocolor blue];
      # FloatValue* alpha_wrapper = [protocolor alpha];
      # float alpha = 1.0;
      # if (alpha_wrapper != nil) `
      # alpha = [alpha_wrapper value];
      # `
      # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
      # `
      # static Color* toProto(UIColor* color) `
      # CGFloat red, green, blue, alpha;
      # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
      # return nil;
      # `
      # Color* result = [Color alloc] init];
      # [result setRed:red];
      # [result setGreen:green];
      # [result setBlue:blue];
      # if (alpha <= 0.9999) `
      # [result setAlpha:floatWrapperWithValue(alpha)];
      # `
      # [result autorelease];
      # return result;
      # `
      # // ...
      # Example (JavaScript):
      # // ...
      # var protoToCssColor = function(rgb_color) `
      # var redFrac = rgb_color.red || 0.0;
      # var greenFrac = rgb_color.green || 0.0;
      # var blueFrac = rgb_color.blue || 0.0;
      # var red = Math.floor(redFrac * 255);
      # var green = Math.floor(greenFrac * 255);
      # var blue = Math.floor(blueFrac * 255);
      # if (!('alpha' in rgb_color)) `
      # return rgbToCssColor_(red, green, blue);
      # `
      # var alphaFrac = rgb_color.alpha.value || 0.0;
      # var rgbParams = [red, green, blue].join(',');
      # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
      # `;
      # var rgbToCssColor_ = function(red, green, blue) `
      # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
      # var hexString = rgbNumber.toString(16);
      # var missingZeros = 6 - hexString.length;
      # var resultBuilder = ['#'];
      # for (var i = 0; i < missingZeros; i++) `
      # resultBuilder.push('0');
      # `
      # resultBuilder.push(hexString);
      # return resultBuilder.join('');
      # `;
      # // ...
      class Color
        include Google::Apis::Core::Hashable
      
        # The amount of green in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The amount of blue in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The amount of red in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        # The fraction of this color that should be applied to the pixel. That is,
        # the final pixel color is defined by the equation:
        # pixel color = alpha * (this color) + (1.0 - alpha) * (background color)
        # This means that a value of 1.0 corresponds to a solid color, whereas
        # a value of 0.0 corresponds to a completely transparent color. This
        # uses a wrapper message rather than a simple float scalar so that it is
        # possible to distinguish between a default value and the value being unset.
        # If omitted, this color object is to be rendered as a solid color
        # (as if the alpha value had been explicitly given with a value of 1.0).
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @green = args[:green] if args.key?(:green)
          @blue = args[:blue] if args.key?(:blue)
          @red = args[:red] if args.key?(:red)
          @alpha = args[:alpha] if args.key?(:alpha)
        end
      end
      
      # Adds a new sheet.
      # When a sheet is added at a given index,
      # all subsequent sheets' indexes are incremented.
      # To add an object sheet, use AddChartRequest instead and specify
      # EmbeddedObjectPosition.sheetId or
      # EmbeddedObjectPosition.newSheet.
      class AddSheetRequest
        include Google::Apis::Core::Hashable
      
        # Properties of a sheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV4::SheetProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Adds a new protected range.
      class AddProtectedRangeRequest
        include Google::Apis::Core::Hashable
      
        # A protected range.
        # Corresponds to the JSON property `protectedRange`
        # @return [Google::Apis::SheetsV4::ProtectedRange]
        attr_accessor :protected_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @protected_range = args[:protected_range] if args.key?(:protected_range)
        end
      end
      
      # Data within a range of the spreadsheet.
      class ValueRange
        include Google::Apis::Core::Hashable
      
        # The data that was read or to be written.  This is an array of arrays,
        # the outer array representing all the data and each inner array
        # representing a major dimension. Each item in the inner array
        # corresponds with one cell.
        # For output, empty trailing rows and columns will not be included.
        # For input, supported value types are: bool, string, and double.
        # Null values will be skipped.
        # To set a cell to an empty value, set the string value to an empty string.
        # Corresponds to the JSON property `values`
        # @return [Array<Array<Object>>]
        attr_accessor :values
      
        # The range the values cover, in A1 notation.
        # For output, this range indicates the entire requested range,
        # even though the values will exclude trailing rows and columns.
        # When appending values, this field represents the range to search for a
        # table, after which values will be appended.
        # Corresponds to the JSON property `range`
        # @return [String]
        attr_accessor :range
      
        # The major dimension of the values.
        # For output, if the spreadsheet data is: `A1=1,B1=2,A2=3,B2=4`,
        # then requesting `range=A1:B2,majorDimension=ROWS` will return
        # `[[1,2],[3,4]]`,
        # whereas requesting `range=A1:B2,majorDimension=COLUMNS` will return
        # `[[1,3],[2,4]]`.
        # For input, with `range=A1:B2,majorDimension=ROWS` then `[[1,2],[3,4]]`
        # will set `A1=1,B1=2,A2=3,B2=4`. With `range=A1:B2,majorDimension=COLUMNS`
        # then `[[1,2],[3,4]]` will set `A1=1,B1=3,A2=2,B2=4`.
        # When writing, if this field is not set, it defaults to ROWS.
        # Corresponds to the JSON property `majorDimension`
        # @return [String]
        attr_accessor :major_dimension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
          @range = args[:range] if args.key?(:range)
          @major_dimension = args[:major_dimension] if args.key?(:major_dimension)
        end
      end
      
      # The result of the find/replace.
      class FindReplaceResponse
        include Google::Apis::Core::Hashable
      
        # The number of non-formula cells changed.
        # Corresponds to the JSON property `valuesChanged`
        # @return [Fixnum]
        attr_accessor :values_changed
      
        # The number of rows changed.
        # Corresponds to the JSON property `rowsChanged`
        # @return [Fixnum]
        attr_accessor :rows_changed
      
        # The number of occurrences (possibly multiple within a cell) changed.
        # For example, if replacing `"e"` with `"o"` in `"Google Sheets"`, this would
        # be `"3"` because `"Google Sheets"` -> `"Googlo Shoots"`.
        # Corresponds to the JSON property `occurrencesChanged`
        # @return [Fixnum]
        attr_accessor :occurrences_changed
      
        # The number of formula cells changed.
        # Corresponds to the JSON property `formulasChanged`
        # @return [Fixnum]
        attr_accessor :formulas_changed
      
        # The number of sheets changed.
        # Corresponds to the JSON property `sheetsChanged`
        # @return [Fixnum]
        attr_accessor :sheets_changed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values_changed = args[:values_changed] if args.key?(:values_changed)
          @rows_changed = args[:rows_changed] if args.key?(:rows_changed)
          @occurrences_changed = args[:occurrences_changed] if args.key?(:occurrences_changed)
          @formulas_changed = args[:formulas_changed] if args.key?(:formulas_changed)
          @sheets_changed = args[:sheets_changed] if args.key?(:sheets_changed)
        end
      end
      
      # The response when updating a range of values in a spreadsheet.
      class AppendValuesResponse
        include Google::Apis::Core::Hashable
      
        # The spreadsheet the updates were applied to.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # The range (in A1 notation) of the table that values are being appended to
        # (before the values were appended).
        # Empty if no table was found.
        # Corresponds to the JSON property `tableRange`
        # @return [String]
        attr_accessor :table_range
      
        # The response when updating a range of values in a spreadsheet.
        # Corresponds to the JSON property `updates`
        # @return [Google::Apis::SheetsV4::UpdateValuesResponse]
        attr_accessor :updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @table_range = args[:table_range] if args.key?(:table_range)
          @updates = args[:updates] if args.key?(:updates)
        end
      end
      
      # The format of a cell.
      class CellFormat
        include Google::Apis::Core::Hashable
      
        # The horizontal alignment of the value in the cell.
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        # How a hyperlink, if it exists, should be displayed in the cell.
        # Corresponds to the JSON property `hyperlinkDisplayType`
        # @return [String]
        attr_accessor :hyperlink_display_type
      
        # The borders of the cell.
        # Corresponds to the JSON property `borders`
        # @return [Google::Apis::SheetsV4::Borders]
        attr_accessor :borders
      
        # The direction of the text in the cell.
        # Corresponds to the JSON property `textDirection`
        # @return [String]
        attr_accessor :text_direction
      
        # The format of a run of text in a cell.
        # Absent values indicate that the field isn't specified.
        # Corresponds to the JSON property `textFormat`
        # @return [Google::Apis::SheetsV4::TextFormat]
        attr_accessor :text_format
      
        # The amount of padding around the cell, in pixels.
        # When updating padding, every field must be specified.
        # Corresponds to the JSON property `padding`
        # @return [Google::Apis::SheetsV4::Padding]
        attr_accessor :padding
      
        # The number format of a cell.
        # Corresponds to the JSON property `numberFormat`
        # @return [Google::Apis::SheetsV4::NumberFormat]
        attr_accessor :number_format
      
        # The wrap strategy for the value in the cell.
        # Corresponds to the JSON property `wrapStrategy`
        # @return [String]
        attr_accessor :wrap_strategy
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::SheetsV4::Color]
        attr_accessor :background_color
      
        # The vertical alignment of the value in the cell.
        # Corresponds to the JSON property `verticalAlignment`
        # @return [String]
        attr_accessor :vertical_alignment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
          @hyperlink_display_type = args[:hyperlink_display_type] if args.key?(:hyperlink_display_type)
          @borders = args[:borders] if args.key?(:borders)
          @text_direction = args[:text_direction] if args.key?(:text_direction)
          @text_format = args[:text_format] if args.key?(:text_format)
          @padding = args[:padding] if args.key?(:padding)
          @number_format = args[:number_format] if args.key?(:number_format)
          @wrap_strategy = args[:wrap_strategy] if args.key?(:wrap_strategy)
          @background_color = args[:background_color] if args.key?(:background_color)
          @vertical_alignment = args[:vertical_alignment] if args.key?(:vertical_alignment)
        end
      end
      
      # Moves one or more rows or columns.
      class MoveDimensionRequest
        include Google::Apis::Core::Hashable
      
        # A range along a single dimension on a sheet.
        # All indexes are zero-based.
        # Indexes are half open: the start index is inclusive
        # and the end index is exclusive.
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV4::DimensionRange]
        attr_accessor :source
      
        # The zero-based start index of where to move the source data to,
        # based on the coordinates *before* the source data is removed
        # from the grid.  Existing data will be shifted down or right
        # (depending on the dimension) to make room for the moved dimensions.
        # The source dimensions are removed from the grid, so the
        # the data may end up in a different index than specified.
        # For example, given `A1..A5` of `0, 1, 2, 3, 4` and wanting to move
        # `"1"` and `"2"` to between `"3"` and `"4"`, the source would be
        # `ROWS [1..3)`,and the destination index would be `"4"`
        # (the zero-based index of row 5).
        # The end result would be `A1..A5` of `0, 3, 1, 2, 4`.
        # Corresponds to the JSON property `destinationIndex`
        # @return [Fixnum]
        attr_accessor :destination_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @destination_index = args[:destination_index] if args.key?(:destination_index)
        end
      end
      
      # An axis of the chart.
      # A chart may not have more than one axis per
      # axis position.
      class BasicChartAxis
        include Google::Apis::Core::Hashable
      
        # The position of this axis.
        # Corresponds to the JSON property `position`
        # @return [String]
        attr_accessor :position
      
        # The title of this axis. If set, this overrides any title inferred
        # from headers of the data.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The format of a run of text in a cell.
        # Absent values indicate that the field isn't specified.
        # Corresponds to the JSON property `format`
        # @return [Google::Apis::SheetsV4::TextFormat]
        attr_accessor :format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @position = args[:position] if args.key?(:position)
          @title = args[:title] if args.key?(:title)
          @format = args[:format] if args.key?(:format)
        end
      end
      
      # Information about which values in a pivot group should be used for sorting.
      class PivotGroupSortValueBucket
        include Google::Apis::Core::Hashable
      
        # Determines the bucket from which values are chosen to sort.
        # For example, in a pivot table with one row group & two column groups,
        # the row group can list up to two values. The first value corresponds
        # to a value within the first column group, and the second value
        # corresponds to a value in the second column group.  If no values
        # are listed, this would indicate that the row should be sorted according
        # to the "Grand Total" over the column groups. If a single value is listed,
        # this would correspond to using the "Total" of that bucket.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::SheetsV4::ExtendedValue>]
        attr_accessor :buckets
      
        # The offset in the PivotTable.values list which the values in this
        # grouping should be sorted by.
        # Corresponds to the JSON property `valuesIndex`
        # @return [Fixnum]
        attr_accessor :values_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
          @values_index = args[:values_index] if args.key?(:values_index)
        end
      end
      
      # Properties about a dimension.
      class DimensionProperties
        include Google::Apis::Core::Hashable
      
        # True if this dimension is explicitly hidden.
        # Corresponds to the JSON property `hiddenByUser`
        # @return [Boolean]
        attr_accessor :hidden_by_user
        alias_method :hidden_by_user?, :hidden_by_user
      
        # The height (if a row) or width (if a column) of the dimension in pixels.
        # Corresponds to the JSON property `pixelSize`
        # @return [Fixnum]
        attr_accessor :pixel_size
      
        # True if this dimension is being filtered.
        # This field is read-only.
        # Corresponds to the JSON property `hiddenByFilter`
        # @return [Boolean]
        attr_accessor :hidden_by_filter
        alias_method :hidden_by_filter?, :hidden_by_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hidden_by_user = args[:hidden_by_user] if args.key?(:hidden_by_user)
          @pixel_size = args[:pixel_size] if args.key?(:pixel_size)
          @hidden_by_filter = args[:hidden_by_filter] if args.key?(:hidden_by_filter)
        end
      end
      
      # The position of an embedded object such as a chart.
      class EmbeddedObjectPosition
        include Google::Apis::Core::Hashable
      
        # The sheet this is on. Set only if the embedded object
        # is on its own sheet. Must be non-negative.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The location an object is overlaid on top of a grid.
        # Corresponds to the JSON property `overlayPosition`
        # @return [Google::Apis::SheetsV4::OverlayPosition]
        attr_accessor :overlay_position
      
        # If true, the embedded object will be put on a new sheet whose ID
        # is chosen for you. Used only when writing.
        # Corresponds to the JSON property `newSheet`
        # @return [Boolean]
        attr_accessor :new_sheet
        alias_method :new_sheet?, :new_sheet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @overlay_position = args[:overlay_position] if args.key?(:overlay_position)
          @new_sheet = args[:new_sheet] if args.key?(:new_sheet)
        end
      end
      
      # A single interpolation point on a gradient conditional format.
      # These pin the gradient color scale according to the color,
      # type and value chosen.
      class InterpolationPoint
        include Google::Apis::Core::Hashable
      
        # The value this interpolation point uses.  May be a formula.
        # Unused if type is MIN or
        # MAX.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::SheetsV4::Color]
        attr_accessor :color
      
        # How the value should be interpreted.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @color = args[:color] if args.key?(:color)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An error in a cell.
      class ErrorValue
        include Google::Apis::Core::Hashable
      
        # The type of error.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A message with more information about the error
        # (in the spreadsheet's locale).
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Duplicates a particular filter view.
      class DuplicateFilterViewRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the filter being duplicated.
        # Corresponds to the JSON property `filterId`
        # @return [Fixnum]
        attr_accessor :filter_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_id = args[:filter_id] if args.key?(:filter_id)
        end
      end
      
      # The request for updating any aspect of a spreadsheet.
      class BatchUpdateSpreadsheetRequest
        include Google::Apis::Core::Hashable
      
        # Determines if the update response should include the spreadsheet
        # resource.
        # Corresponds to the JSON property `includeSpreadsheetInResponse`
        # @return [Boolean]
        attr_accessor :include_spreadsheet_in_response
        alias_method :include_spreadsheet_in_response?, :include_spreadsheet_in_response
      
        # A list of updates to apply to the spreadsheet.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::SheetsV4::Request>]
        attr_accessor :requests
      
        # Limits the ranges included in the response spreadsheet.
        # Meaningful only if include_spreadsheet_response is 'true'.
        # Corresponds to the JSON property `responseRanges`
        # @return [Array<String>]
        attr_accessor :response_ranges
      
        # True if grid data should be returned. Meaningful only if
        # if include_spreadsheet_response is 'true'.
        # This parameter is ignored if a field mask was set in the request.
        # Corresponds to the JSON property `responseIncludeGridData`
        # @return [Boolean]
        attr_accessor :response_include_grid_data
        alias_method :response_include_grid_data?, :response_include_grid_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_spreadsheet_in_response = args[:include_spreadsheet_in_response] if args.key?(:include_spreadsheet_in_response)
          @requests = args[:requests] if args.key?(:requests)
          @response_ranges = args[:response_ranges] if args.key?(:response_ranges)
          @response_include_grid_data = args[:response_include_grid_data] if args.key?(:response_include_grid_data)
        end
      end
      
      # Properties of a sheet.
      class SheetProperties
        include Google::Apis::Core::Hashable
      
        # The name of the sheet.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The index of the sheet within the spreadsheet.
        # When adding or updating sheet properties, if this field
        # is excluded then the sheet will be added or moved to the end
        # of the sheet list.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # True if the sheet is hidden in the UI, false if it's visible.
        # Corresponds to the JSON property `hidden`
        # @return [Boolean]
        attr_accessor :hidden
        alias_method :hidden?, :hidden
      
        # Properties of a grid.
        # Corresponds to the JSON property `gridProperties`
        # @return [Google::Apis::SheetsV4::GridProperties]
        attr_accessor :grid_properties
      
        # The ID of the sheet. Must be non-negative.
        # This field cannot be changed once set.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # True if the sheet is an RTL sheet instead of an LTR sheet.
        # Corresponds to the JSON property `rightToLeft`
        # @return [Boolean]
        attr_accessor :right_to_left
        alias_method :right_to_left?, :right_to_left
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `tabColor`
        # @return [Google::Apis::SheetsV4::Color]
        attr_accessor :tab_color
      
        # The type of sheet. Defaults to GRID.
        # This field cannot be changed once set.
        # Corresponds to the JSON property `sheetType`
        # @return [String]
        attr_accessor :sheet_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @index = args[:index] if args.key?(:index)
          @hidden = args[:hidden] if args.key?(:hidden)
          @grid_properties = args[:grid_properties] if args.key?(:grid_properties)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @right_to_left = args[:right_to_left] if args.key?(:right_to_left)
          @tab_color = args[:tab_color] if args.key?(:tab_color)
          @sheet_type = args[:sheet_type] if args.key?(:sheet_type)
        end
      end
      
      # The request for clearing a range of values in a spreadsheet.
      class ClearValuesRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A protected range.
      class ProtectedRange
        include Google::Apis::Core::Hashable
      
        # The list of unprotected ranges within a protected sheet.
        # Unprotected ranges are only supported on protected sheets.
        # Corresponds to the JSON property `unprotectedRanges`
        # @return [Array<Google::Apis::SheetsV4::GridRange>]
        attr_accessor :unprotected_ranges
      
        # The description of this protected range.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The named range this protected range is backed by, if any.
        # When writing, only one of range or named_range_id
        # may be set.
        # Corresponds to the JSON property `namedRangeId`
        # @return [String]
        attr_accessor :named_range_id
      
        # True if the user who requested this protected range can edit the
        # protected area.
        # This field is read-only.
        # Corresponds to the JSON property `requestingUserCanEdit`
        # @return [Boolean]
        attr_accessor :requesting_user_can_edit
        alias_method :requesting_user_can_edit?, :requesting_user_can_edit
      
        # The editors of a protected range.
        # Corresponds to the JSON property `editors`
        # @return [Google::Apis::SheetsV4::Editors]
        attr_accessor :editors
      
        # The ID of the protected range.
        # This field is read-only.
        # Corresponds to the JSON property `protectedRangeId`
        # @return [Fixnum]
        attr_accessor :protected_range_id
      
        # True if this protected range will show a warning when editing.
        # Warning-based protection means that every user can edit data in the
        # protected range, except editing will prompt a warning asking the user
        # to confirm the edit.
        # When writing: if this field is true, then editors is ignored.
        # Additionally, if this field is changed from true to false and the
        # `editors` field is not set (nor included in the field mask), then
        # the editors will be set to all the editors in the document.
        # Corresponds to the JSON property `warningOnly`
        # @return [Boolean]
        attr_accessor :warning_only
        alias_method :warning_only?, :warning_only
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unprotected_ranges = args[:unprotected_ranges] if args.key?(:unprotected_ranges)
          @description = args[:description] if args.key?(:description)
          @named_range_id = args[:named_range_id] if args.key?(:named_range_id)
          @requesting_user_can_edit = args[:requesting_user_can_edit] if args.key?(:requesting_user_can_edit)
          @editors = args[:editors] if args.key?(:editors)
          @protected_range_id = args[:protected_range_id] if args.key?(:protected_range_id)
          @warning_only = args[:warning_only] if args.key?(:warning_only)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Deletes a conditional format rule at the given index.
      # All subsequent rules' indexes are decremented.
      class DeleteConditionalFormatRuleRequest
        include Google::Apis::Core::Hashable
      
        # The sheet the rule is being deleted from.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The zero-based index of the rule to be deleted.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @index = args[:index] if args.key?(:index)
        end
      end
      
      # The specifications of a chart.
      class ChartSpec
        include Google::Apis::Core::Hashable
      
        # Determines how the charts will use hidden rows or columns.
        # Corresponds to the JSON property `hiddenDimensionStrategy`
        # @return [String]
        attr_accessor :hidden_dimension_strategy
      
        # The specification for a basic chart.  See BasicChartType for the list
        # of charts this supports.
        # Corresponds to the JSON property `basicChart`
        # @return [Google::Apis::SheetsV4::BasicChartSpec]
        attr_accessor :basic_chart
      
        # The title of the chart.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # A <a href="/chart/interactive/docs/gallery/piechart">pie chart</a>.
        # Corresponds to the JSON property `pieChart`
        # @return [Google::Apis::SheetsV4::PieChartSpec]
        attr_accessor :pie_chart
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hidden_dimension_strategy = args[:hidden_dimension_strategy] if args.key?(:hidden_dimension_strategy)
          @basic_chart = args[:basic_chart] if args.key?(:basic_chart)
          @title = args[:title] if args.key?(:title)
          @pie_chart = args[:pie_chart] if args.key?(:pie_chart)
        end
      end
      
      # A combination of a source range and how to extend that source.
      class SourceAndDestination
        include Google::Apis::Core::Hashable
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :source
      
        # The number of rows or columns that data should be filled into.
        # Positive numbers expand beyond the last row or last column
        # of the source.  Negative numbers expand before the first row
        # or first column of the source.
        # Corresponds to the JSON property `fillLength`
        # @return [Fixnum]
        attr_accessor :fill_length
      
        # The dimension that data should be filled into.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @fill_length = args[:fill_length] if args.key?(:fill_length)
          @dimension = args[:dimension] if args.key?(:dimension)
        end
      end
      
      # The value of the condition.
      class ConditionValue
        include Google::Apis::Core::Hashable
      
        # A relative date (based on the current date).
        # Valid only if the type is
        # DATE_BEFORE,
        # DATE_AFTER,
        # DATE_ON_OR_BEFORE or
        # DATE_ON_OR_AFTER.
        # Relative dates are not supported in data validation.
        # They are supported only in conditional formatting and
        # conditional filters.
        # Corresponds to the JSON property `relativeDate`
        # @return [String]
        attr_accessor :relative_date
      
        # A value the condition is based on.
        # The value will be parsed as if the user typed into a cell.
        # Formulas are supported (and must begin with an `=`).
        # Corresponds to the JSON property `userEnteredValue`
        # @return [String]
        attr_accessor :user_entered_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @relative_date = args[:relative_date] if args.key?(:relative_date)
          @user_entered_value = args[:user_entered_value] if args.key?(:user_entered_value)
        end
      end
      
      # Inserts data into the spreadsheet starting at the specified coordinate.
      class PasteDataRequest
        include Google::Apis::Core::Hashable
      
        # The data to insert.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # A coordinate in a sheet.
        # All indexes are zero-based.
        # Corresponds to the JSON property `coordinate`
        # @return [Google::Apis::SheetsV4::GridCoordinate]
        attr_accessor :coordinate
      
        # The delimiter in the data.
        # Corresponds to the JSON property `delimiter`
        # @return [String]
        attr_accessor :delimiter
      
        # How the data should be pasted.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # True if the data is HTML.
        # Corresponds to the JSON property `html`
        # @return [Boolean]
        attr_accessor :html
        alias_method :html?, :html
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @coordinate = args[:coordinate] if args.key?(:coordinate)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
          @type = args[:type] if args.key?(:type)
          @html = args[:html] if args.key?(:html)
        end
      end
      
      # Finds and replaces data in cells over a range, sheet, or all sheets.
      class FindReplaceRequest
        include Google::Apis::Core::Hashable
      
        # The value to search.
        # Corresponds to the JSON property `find`
        # @return [String]
        attr_accessor :find
      
        # The value to use as the replacement.
        # Corresponds to the JSON property `replacement`
        # @return [String]
        attr_accessor :replacement
      
        # True if the find value is a regex.
        # The regular expression and replacement should follow Java regex rules
        # at https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html.
        # The replacement string is allowed to refer to capturing groups.
        # For example, if one cell has the contents `"Google Sheets"` and another
        # has `"Google Docs"`, then searching for `"o.* (.*)"` with a replacement of
        # `"$1 Rocks"` would change the contents of the cells to
        # `"GSheets Rocks"` and `"GDocs Rocks"` respectively.
        # Corresponds to the JSON property `searchByRegex`
        # @return [Boolean]
        attr_accessor :search_by_regex
        alias_method :search_by_regex?, :search_by_regex
      
        # The sheet to find/replace over.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # True to find/replace over all sheets.
        # Corresponds to the JSON property `allSheets`
        # @return [Boolean]
        attr_accessor :all_sheets
        alias_method :all_sheets?, :all_sheets
      
        # True if the search is case sensitive.
        # Corresponds to the JSON property `matchCase`
        # @return [Boolean]
        attr_accessor :match_case
        alias_method :match_case?, :match_case
      
        # True if the search should include cells with formulas.
        # False to skip cells with formulas.
        # Corresponds to the JSON property `includeFormulas`
        # @return [Boolean]
        attr_accessor :include_formulas
        alias_method :include_formulas?, :include_formulas
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        # True if the find value should match the entire cell.
        # Corresponds to the JSON property `matchEntireCell`
        # @return [Boolean]
        attr_accessor :match_entire_cell
        alias_method :match_entire_cell?, :match_entire_cell
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @find = args[:find] if args.key?(:find)
          @replacement = args[:replacement] if args.key?(:replacement)
          @search_by_regex = args[:search_by_regex] if args.key?(:search_by_regex)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @all_sheets = args[:all_sheets] if args.key?(:all_sheets)
          @match_case = args[:match_case] if args.key?(:match_case)
          @include_formulas = args[:include_formulas] if args.key?(:include_formulas)
          @range = args[:range] if args.key?(:range)
          @match_entire_cell = args[:match_entire_cell] if args.key?(:match_entire_cell)
        end
      end
      
      # A sort order associated with a specific column or row.
      class SortSpec
        include Google::Apis::Core::Hashable
      
        # The order data should be sorted.
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        # The dimension the sort should be applied to.
        # Corresponds to the JSON property `dimensionIndex`
        # @return [Fixnum]
        attr_accessor :dimension_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sort_order = args[:sort_order] if args.key?(:sort_order)
          @dimension_index = args[:dimension_index] if args.key?(:dimension_index)
        end
      end
      
      # The request to copy a sheet across spreadsheets.
      class CopySheetToAnotherSpreadsheetRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the spreadsheet to copy the sheet to.
        # Corresponds to the JSON property `destinationSpreadsheetId`
        # @return [String]
        attr_accessor :destination_spreadsheet_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_spreadsheet_id = args[:destination_spreadsheet_id] if args.key?(:destination_spreadsheet_id)
        end
      end
      
      # The number format of a cell.
      class NumberFormat
        include Google::Apis::Core::Hashable
      
        # Pattern string used for formatting.  If not set, a default pattern based on
        # the user's locale will be used if necessary for the given type.
        # See the [Date and Number Formats guide](/sheets/guides/formats) for more
        # information about the supported patterns.
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # The type of the number format.
        # When writing, this field must be set.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pattern = args[:pattern] if args.key?(:pattern)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The request for clearing more than one range of values in a spreadsheet.
      class BatchClearValuesRequest
        include Google::Apis::Core::Hashable
      
        # The ranges to clear, in A1 notation.
        # Corresponds to the JSON property `ranges`
        # @return [Array<String>]
        attr_accessor :ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ranges = args[:ranges] if args.key?(:ranges)
        end
      end
      
      # Updates properties of dimensions within the specified range.
      class UpdateDimensionPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The fields that should be updated.  At least one field must be specified.
        # The root `properties` is implied and should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # A range along a single dimension on a sheet.
        # All indexes are zero-based.
        # Indexes are half open: the start index is inclusive
        # and the end index is exclusive.
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::DimensionRange]
        attr_accessor :range
      
        # Properties about a dimension.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV4::DimensionProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @range = args[:range] if args.key?(:range)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # The editors of a protected range.
      class Editors
        include Google::Apis::Core::Hashable
      
        # The email addresses of users with edit access to the protected range.
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        # The email addresses of groups with edit access to the protected range.
        # Corresponds to the JSON property `groups`
        # @return [Array<String>]
        attr_accessor :groups
      
        # True if anyone in the document's domain has edit access to the protected
        # range.  Domain protection is only supported on documents within a domain.
        # Corresponds to the JSON property `domainUsersCanEdit`
        # @return [Boolean]
        attr_accessor :domain_users_can_edit
        alias_method :domain_users_can_edit?, :domain_users_can_edit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @users = args[:users] if args.key?(:users)
          @groups = args[:groups] if args.key?(:groups)
          @domain_users_can_edit = args[:domain_users_can_edit] if args.key?(:domain_users_can_edit)
        end
      end
      
      # Resource that represents a spreadsheet.
      class Spreadsheet
        include Google::Apis::Core::Hashable
      
        # The ID of the spreadsheet.
        # This field is read-only.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # Properties of a spreadsheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV4::SpreadsheetProperties]
        attr_accessor :properties
      
        # The sheets that are part of a spreadsheet.
        # Corresponds to the JSON property `sheets`
        # @return [Array<Google::Apis::SheetsV4::Sheet>]
        attr_accessor :sheets
      
        # The named ranges defined in a spreadsheet.
        # Corresponds to the JSON property `namedRanges`
        # @return [Array<Google::Apis::SheetsV4::NamedRange>]
        attr_accessor :named_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @properties = args[:properties] if args.key?(:properties)
          @sheets = args[:sheets] if args.key?(:sheets)
          @named_ranges = args[:named_ranges] if args.key?(:named_ranges)
        end
      end
      
      # Data in the grid, as well as metadata about the dimensions.
      class GridData
        include Google::Apis::Core::Hashable
      
        # Metadata about the requested columns in the grid, starting with the column
        # in start_column.
        # Corresponds to the JSON property `columnMetadata`
        # @return [Array<Google::Apis::SheetsV4::DimensionProperties>]
        attr_accessor :column_metadata
      
        # The data in the grid, one entry per row,
        # starting with the row in startRow.
        # The values in RowData will correspond to columns starting
        # at start_column.
        # Corresponds to the JSON property `rowData`
        # @return [Array<Google::Apis::SheetsV4::RowData>]
        attr_accessor :row_data
      
        # The first row this GridData refers to, zero-based.
        # Corresponds to the JSON property `startRow`
        # @return [Fixnum]
        attr_accessor :start_row
      
        # Metadata about the requested rows in the grid, starting with the row
        # in start_row.
        # Corresponds to the JSON property `rowMetadata`
        # @return [Array<Google::Apis::SheetsV4::DimensionProperties>]
        attr_accessor :row_metadata
      
        # The first column this GridData refers to, zero-based.
        # Corresponds to the JSON property `startColumn`
        # @return [Fixnum]
        attr_accessor :start_column
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_metadata = args[:column_metadata] if args.key?(:column_metadata)
          @row_data = args[:row_data] if args.key?(:row_data)
          @start_row = args[:start_row] if args.key?(:start_row)
          @row_metadata = args[:row_metadata] if args.key?(:row_metadata)
          @start_column = args[:start_column] if args.key?(:start_column)
        end
      end
      
      # The definition of how a value in a pivot table should be calculated.
      class PivotValue
        include Google::Apis::Core::Hashable
      
        # A custom formula to calculate the value.  The formula must start
        # with an `=` character.
        # Corresponds to the JSON property `formula`
        # @return [String]
        attr_accessor :formula
      
        # The column offset of the source range that this value reads from.
        # For example, if the source was `C10:E15`, a `sourceColumnOffset` of `0`
        # means this value refers to column `C`, whereas the offset `1` would
        # refer to column `D`.
        # Corresponds to the JSON property `sourceColumnOffset`
        # @return [Fixnum]
        attr_accessor :source_column_offset
      
        # A function to summarize the value.
        # If formula is set, the only supported values are
        # SUM and
        # CUSTOM.
        # If sourceColumnOffset is set, then `CUSTOM`
        # is not supported.
        # Corresponds to the JSON property `summarizeFunction`
        # @return [String]
        attr_accessor :summarize_function
      
        # A name to use for the value. This is only used if formula was set.
        # Otherwise, the column name is used.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formula = args[:formula] if args.key?(:formula)
          @source_column_offset = args[:source_column_offset] if args.key?(:source_column_offset)
          @summarize_function = args[:summarize_function] if args.key?(:summarize_function)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Removes the banded range with the given ID from the spreadsheet.
      class DeleteBandingRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the banded range to delete.
        # Corresponds to the JSON property `bandedRangeId`
        # @return [Fixnum]
        attr_accessor :banded_range_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @banded_range_id = args[:banded_range_id] if args.key?(:banded_range_id)
        end
      end
      
      # The default filter associated with a sheet.
      class BasicFilter
        include Google::Apis::Core::Hashable
      
        # The criteria for showing/hiding values per column.
        # The map's key is the column index, and the value is the criteria for
        # that column.
        # Corresponds to the JSON property `criteria`
        # @return [Hash<String,Google::Apis::SheetsV4::FilterCriteria>]
        attr_accessor :criteria
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        # The sort order per column. Later specifications are used when values
        # are equal in the earlier specifications.
        # Corresponds to the JSON property `sortSpecs`
        # @return [Array<Google::Apis::SheetsV4::SortSpec>]
        attr_accessor :sort_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @criteria = args[:criteria] if args.key?(:criteria)
          @range = args[:range] if args.key?(:range)
          @sort_specs = args[:sort_specs] if args.key?(:sort_specs)
        end
      end
      
      # Duplicates the contents of a sheet.
      class DuplicateSheetRequest
        include Google::Apis::Core::Hashable
      
        # The sheet to duplicate.
        # Corresponds to the JSON property `sourceSheetId`
        # @return [Fixnum]
        attr_accessor :source_sheet_id
      
        # If set, the ID of the new sheet. If not set, an ID is chosen.
        # If set, the ID must not conflict with any existing sheet ID.
        # If set, it must be non-negative.
        # Corresponds to the JSON property `newSheetId`
        # @return [Fixnum]
        attr_accessor :new_sheet_id
      
        # The zero-based index where the new sheet should be inserted.
        # The index of all sheets after this are incremented.
        # Corresponds to the JSON property `insertSheetIndex`
        # @return [Fixnum]
        attr_accessor :insert_sheet_index
      
        # The name of the new sheet.  If empty, a new name is chosen for you.
        # Corresponds to the JSON property `newSheetName`
        # @return [String]
        attr_accessor :new_sheet_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_sheet_id = args[:source_sheet_id] if args.key?(:source_sheet_id)
          @new_sheet_id = args[:new_sheet_id] if args.key?(:new_sheet_id)
          @insert_sheet_index = args[:insert_sheet_index] if args.key?(:insert_sheet_index)
          @new_sheet_name = args[:new_sheet_name] if args.key?(:new_sheet_name)
        end
      end
      
      # The result of adding a filter view.
      class AddFilterViewResponse
        include Google::Apis::Core::Hashable
      
        # A filter view.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::SheetsV4::FilterView]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # The result of duplicating a sheet.
      class DuplicateSheetResponse
        include Google::Apis::Core::Hashable
      
        # Properties of a sheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV4::SheetProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # A border along a cell.
      class Border
        include Google::Apis::Core::Hashable
      
        # The style of the border.
        # Corresponds to the JSON property `style`
        # @return [String]
        attr_accessor :style
      
        # The width of the border, in pixels.
        # Deprecated; the width is determined by the "style" field.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::SheetsV4::Color]
        attr_accessor :color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @style = args[:style] if args.key?(:style)
          @width = args[:width] if args.key?(:width)
          @color = args[:color] if args.key?(:color)
        end
      end
      
      # Adds a named range to the spreadsheet.
      class AddNamedRangeRequest
        include Google::Apis::Core::Hashable
      
        # A named range.
        # Corresponds to the JSON property `namedRange`
        # @return [Google::Apis::SheetsV4::NamedRange]
        attr_accessor :named_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @named_range = args[:named_range] if args.key?(:named_range)
        end
      end
      
      # The result of adding a chart to a spreadsheet.
      class AddChartResponse
        include Google::Apis::Core::Hashable
      
        # A chart embedded in a sheet.
        # Corresponds to the JSON property `chart`
        # @return [Google::Apis::SheetsV4::EmbeddedChart]
        attr_accessor :chart
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart = args[:chart] if args.key?(:chart)
        end
      end
      
      # Adds a new banded range to the spreadsheet.
      class AddBandingRequest
        include Google::Apis::Core::Hashable
      
        # A banded (alternating colors) range in a sheet.
        # Corresponds to the JSON property `bandedRange`
        # @return [Google::Apis::SheetsV4::BandedRange]
        attr_accessor :banded_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @banded_range = args[:banded_range] if args.key?(:banded_range)
        end
      end
      
      # Adds new cells after the last row with data in a sheet,
      # inserting new rows into the sheet if necessary.
      class AppendCellsRequest
        include Google::Apis::Core::Hashable
      
        # The sheet ID to append the data to.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The data to append.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::SheetsV4::RowData>]
        attr_accessor :rows
      
        # The fields of CellData that should be updated.
        # At least one field must be specified.
        # The root is the CellData; 'row.values.' should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @rows = args[:rows] if args.key?(:rows)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Data about each cell in a row.
      class RowData
        include Google::Apis::Core::Hashable
      
        # The values in the row, one per column.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::SheetsV4::CellData>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A single series of data in a chart.
      # For example, if charting stock prices over time, multiple series may exist,
      # one for the "Open Price", "High Price", "Low Price" and "Close Price".
      class BasicChartSeries
        include Google::Apis::Core::Hashable
      
        # The data included in a domain or series.
        # Corresponds to the JSON property `series`
        # @return [Google::Apis::SheetsV4::ChartData]
        attr_accessor :series
      
        # The minor axis that will specify the range of values for this series.
        # For example, if charting stocks over time, the "Volume" series
        # may want to be pinned to the right with the prices pinned to the left,
        # because the scale of trading volume is different than the scale of
        # prices.
        # It is an error to specify an axis that isn't a valid minor axis
        # for the chart's type.
        # Corresponds to the JSON property `targetAxis`
        # @return [String]
        attr_accessor :target_axis
      
        # The type of this series. Valid only if the
        # chartType is
        # COMBO.
        # Different types will change the way the series is visualized.
        # Only LINE, AREA,
        # and COLUMN are supported.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @series = args[:series] if args.key?(:series)
          @target_axis = args[:target_axis] if args.key?(:target_axis)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Updates all cells in the range to the values in the given Cell object.
      # Only the fields listed in the fields field are updated; others are
      # unchanged.
      # If writing a cell with a formula, the formula's ranges will automatically
      # increment for each field in the range.
      # For example, if writing a cell with formula `=A1` into range B2:C4,
      # B2 would be `=A1`, B3 would be `=A2`, B4 would be `=A3`,
      # C2 would be `=B1`, C3 would be `=B2`, C4 would be `=B3`.
      # To keep the formula's ranges static, use the `$` indicator.
      # For example, use the formula `=$A$1` to prevent both the row and the
      # column from incrementing.
      class RepeatCellRequest
        include Google::Apis::Core::Hashable
      
        # Data about a specific cell.
        # Corresponds to the JSON property `cell`
        # @return [Google::Apis::SheetsV4::CellData]
        attr_accessor :cell
      
        # The fields that should be updated.  At least one field must be specified.
        # The root `cell` is implied and should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cell = args[:cell] if args.key?(:cell)
          @fields = args[:fields] if args.key?(:fields)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # The specification for a basic chart.  See BasicChartType for the list
      # of charts this supports.
      class BasicChartSpec
        include Google::Apis::Core::Hashable
      
        # The type of the chart.
        # Corresponds to the JSON property `chartType`
        # @return [String]
        attr_accessor :chart_type
      
        # The domain of data this is charting.
        # Only a single domain is currently supported.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::SheetsV4::BasicChartDomain>]
        attr_accessor :domains
      
        # The number of rows or columns in the data that are "headers".
        # If not set, Google Sheets will guess how many rows are headers based
        # on the data.
        # (Note that BasicChartAxis.title may override the axis title
        # inferred from the header values.)
        # Corresponds to the JSON property `headerCount`
        # @return [Fixnum]
        attr_accessor :header_count
      
        # The data this chart is visualizing.
        # Corresponds to the JSON property `series`
        # @return [Array<Google::Apis::SheetsV4::BasicChartSeries>]
        attr_accessor :series
      
        # The position of the chart legend.
        # Corresponds to the JSON property `legendPosition`
        # @return [String]
        attr_accessor :legend_position
      
        # The axis on the chart.
        # Corresponds to the JSON property `axis`
        # @return [Array<Google::Apis::SheetsV4::BasicChartAxis>]
        attr_accessor :axis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_type = args[:chart_type] if args.key?(:chart_type)
          @domains = args[:domains] if args.key?(:domains)
          @header_count = args[:header_count] if args.key?(:header_count)
          @series = args[:series] if args.key?(:series)
          @legend_position = args[:legend_position] if args.key?(:legend_position)
          @axis = args[:axis] if args.key?(:axis)
        end
      end
      
      # A named range.
      class NamedRange
        include Google::Apis::Core::Hashable
      
        # The ID of the named range.
        # Corresponds to the JSON property `namedRangeId`
        # @return [String]
        attr_accessor :named_range_id
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        # The name of the named range.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @named_range_id = args[:named_range_id] if args.key?(:named_range_id)
          @range = args[:range] if args.key?(:range)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Update an embedded object's position (such as a moving or resizing a
      # chart or image).
      class UpdateEmbeddedObjectPositionRequest
        include Google::Apis::Core::Hashable
      
        # The position of an embedded object such as a chart.
        # Corresponds to the JSON property `newPosition`
        # @return [Google::Apis::SheetsV4::EmbeddedObjectPosition]
        attr_accessor :new_position
      
        # The ID of the object to moved.
        # Corresponds to the JSON property `objectId`
        # @return [Fixnum]
        attr_accessor :object_id_prop
      
        # The fields of OverlayPosition
        # that should be updated when setting a new position. Used only if
        # newPosition.overlayPosition
        # is set, in which case at least one field must
        # be specified.  The root `newPosition.overlayPosition` is implied and
        # should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_position = args[:new_position] if args.key?(:new_position)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Sets the basic filter associated with a sheet.
      class SetBasicFilterRequest
        include Google::Apis::Core::Hashable
      
        # The default filter associated with a sheet.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::SheetsV4::BasicFilter]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Automatically resizes one or more dimensions based on the contents
      # of the cells in that dimension.
      class AutoResizeDimensionsRequest
        include Google::Apis::Core::Hashable
      
        # A range along a single dimension on a sheet.
        # All indexes are zero-based.
        # Indexes are half open: the start index is inclusive
        # and the end index is exclusive.
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::SheetsV4::DimensionRange]
        attr_accessor :dimensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
        end
      end
      
      # The result of a filter view being duplicated.
      class DuplicateFilterViewResponse
        include Google::Apis::Core::Hashable
      
        # A filter view.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::SheetsV4::FilterView]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Properties referring a single dimension (either row or column). If both
      # BandedRange.row_properties and BandedRange.column_properties are
      # set, the fill colors are applied to cells according to the following rules:
      # * header_color and footer_color take priority over band colors.
      # * first_band_color takes priority over second_band_color.
      # * row_properties takes priority over column_properties.
      # For example, the first row color takes priority over the first column
      # color, but the first column color takes priority over the second row color.
      # Similarly, the row header takes priority over the column header in the
      # top left cell, but the column header takes priority over the first row
      # color if the row header is not set.
      class BandingProperties
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `footerColor`
        # @return [Google::Apis::SheetsV4::Color]
        attr_accessor :footer_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `headerColor`
        # @return [Google::Apis::SheetsV4::Color]
        attr_accessor :header_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `secondBandColor`
        # @return [Google::Apis::SheetsV4::Color]
        attr_accessor :second_band_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness; for example, the fields of this representation
        # can be trivially provided to the constructor of "java.awt.Color" in Java; it
        # can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
        # method in iOS; and, with just a little work, it can be easily formatted into
        # a CSS "rgba()" string in JavaScript, as well. Here are some examples:
        # Example (Java):
        # import com.google.type.Color;
        # // ...
        # public static java.awt.Color fromProto(Color protocolor) `
        # float alpha = protocolor.hasAlpha()
        # ? protocolor.getAlpha().getValue()
        # : 1.0;
        # return new java.awt.Color(
        # protocolor.getRed(),
        # protocolor.getGreen(),
        # protocolor.getBlue(),
        # alpha);
        # `
        # public static Color toProto(java.awt.Color color) `
        # float red = (float) color.getRed();
        # float green = (float) color.getGreen();
        # float blue = (float) color.getBlue();
        # float denominator = 255.0;
        # Color.Builder resultBuilder =
        # Color
        # .newBuilder()
        # .setRed(red / denominator)
        # .setGreen(green / denominator)
        # .setBlue(blue / denominator);
        # int alpha = color.getAlpha();
        # if (alpha != 255) `
        # result.setAlpha(
        # FloatValue
        # .newBuilder()
        # .setValue(((float) alpha) / denominator)
        # .build());
        # `
        # return resultBuilder.build();
        # `
        # // ...
        # Example (iOS / Obj-C):
        # // ...
        # static UIColor* fromProto(Color* protocolor) `
        # float red = [protocolor red];
        # float green = [protocolor green];
        # float blue = [protocolor blue];
        # FloatValue* alpha_wrapper = [protocolor alpha];
        # float alpha = 1.0;
        # if (alpha_wrapper != nil) `
        # alpha = [alpha_wrapper value];
        # `
        # return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        # `
        # static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha;
        # if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) `
        # return nil;
        # `
        # Color* result = [Color alloc] init];
        # [result setRed:red];
        # [result setGreen:green];
        # [result setBlue:blue];
        # if (alpha <= 0.9999) `
        # [result setAlpha:floatWrapperWithValue(alpha)];
        # `
        # [result autorelease];
        # return result;
        # `
        # // ...
        # Example (JavaScript):
        # // ...
        # var protoToCssColor = function(rgb_color) `
        # var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0;
        # var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255);
        # var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255);
        # if (!('alpha' in rgb_color)) `
        # return rgbToCssColor_(red, green, blue);
        # `
        # var alphaFrac = rgb_color.alpha.value || 0.0;
        # var rgbParams = [red, green, blue].join(',');
        # return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
        # `;
        # var rgbToCssColor_ = function(red, green, blue) `
        # var rgbNumber = new Number((red << 16) | (green << 8) | blue);
        # var hexString = rgbNumber.toString(16);
        # var missingZeros = 6 - hexString.length;
        # var resultBuilder = ['#'];
        # for (var i = 0; i < missingZeros; i++) `
        # resultBuilder.push('0');
        # `
        # resultBuilder.push(hexString);
        # return resultBuilder.join('');
        # `;
        # // ...
        # Corresponds to the JSON property `firstBandColor`
        # @return [Google::Apis::SheetsV4::Color]
        attr_accessor :first_band_color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @footer_color = args[:footer_color] if args.key?(:footer_color)
          @header_color = args[:header_color] if args.key?(:header_color)
          @second_band_color = args[:second_band_color] if args.key?(:second_band_color)
          @first_band_color = args[:first_band_color] if args.key?(:first_band_color)
        end
      end
      
      # A single grouping (either row or column) in a pivot table.
      class PivotGroup
        include Google::Apis::Core::Hashable
      
        # The order the values in this group should be sorted.
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        # The column offset of the source range that this grouping is based on.
        # For example, if the source was `C10:E15`, a `sourceColumnOffset` of `0`
        # means this group refers to column `C`, whereas the offset `1` would refer
        # to column `D`.
        # Corresponds to the JSON property `sourceColumnOffset`
        # @return [Fixnum]
        attr_accessor :source_column_offset
      
        # True if the pivot table should include the totals for this grouping.
        # Corresponds to the JSON property `showTotals`
        # @return [Boolean]
        attr_accessor :show_totals
        alias_method :show_totals?, :show_totals
      
        # Information about which values in a pivot group should be used for sorting.
        # Corresponds to the JSON property `valueBucket`
        # @return [Google::Apis::SheetsV4::PivotGroupSortValueBucket]
        attr_accessor :value_bucket
      
        # Metadata about values in the grouping.
        # Corresponds to the JSON property `valueMetadata`
        # @return [Array<Google::Apis::SheetsV4::PivotGroupValueMetadata>]
        attr_accessor :value_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sort_order = args[:sort_order] if args.key?(:sort_order)
          @source_column_offset = args[:source_column_offset] if args.key?(:source_column_offset)
          @show_totals = args[:show_totals] if args.key?(:show_totals)
          @value_bucket = args[:value_bucket] if args.key?(:value_bucket)
          @value_metadata = args[:value_metadata] if args.key?(:value_metadata)
        end
      end
      
      # A range on a sheet.
      # All indexes are zero-based.
      # Indexes are half open, e.g the start index is inclusive
      # and the end index is exclusive -- [start_index, end_index).
      # Missing indexes indicate the range is unbounded on that side.
      # For example, if `"Sheet1"` is sheet ID 0, then:
      # `Sheet1!A1:A1 == sheet_id: 0,
      # start_row_index: 0, end_row_index: 1,
      # start_column_index: 0, end_column_index: 1`
      # `Sheet1!A3:B4 == sheet_id: 0,
      # start_row_index: 2, end_row_index: 4,
      # start_column_index: 0, end_column_index: 2`
      # `Sheet1!A:B == sheet_id: 0,
      # start_column_index: 0, end_column_index: 2`
      # `Sheet1!A5:B == sheet_id: 0,
      # start_row_index: 4,
      # start_column_index: 0, end_column_index: 2`
      # `Sheet1 == sheet_id:0`
      # The start index must always be less than or equal to the end index.
      # If the start index equals the end index, then the range is empty.
      # Empty ranges are typically not meaningful and are usually rendered in the
      # UI as `#REF!`.
      class GridRange
        include Google::Apis::Core::Hashable
      
        # The sheet this range is on.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The start column (inclusive) of the range, or not set if unbounded.
        # Corresponds to the JSON property `startColumnIndex`
        # @return [Fixnum]
        attr_accessor :start_column_index
      
        # The start row (inclusive) of the range, or not set if unbounded.
        # Corresponds to the JSON property `startRowIndex`
        # @return [Fixnum]
        attr_accessor :start_row_index
      
        # The end row (exclusive) of the range, or not set if unbounded.
        # Corresponds to the JSON property `endRowIndex`
        # @return [Fixnum]
        attr_accessor :end_row_index
      
        # The end column (exclusive) of the range, or not set if unbounded.
        # Corresponds to the JSON property `endColumnIndex`
        # @return [Fixnum]
        attr_accessor :end_column_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @start_column_index = args[:start_column_index] if args.key?(:start_column_index)
          @start_row_index = args[:start_row_index] if args.key?(:start_row_index)
          @end_row_index = args[:end_row_index] if args.key?(:end_row_index)
          @end_column_index = args[:end_column_index] if args.key?(:end_column_index)
        end
      end
      
      # Deletes the requested sheet.
      class DeleteSheetRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the sheet to delete.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
        end
      end
      
      # Updates properties of the supplied banded range.
      class UpdateBandingRequest
        include Google::Apis::Core::Hashable
      
        # A banded (alternating colors) range in a sheet.
        # Corresponds to the JSON property `bandedRange`
        # @return [Google::Apis::SheetsV4::BandedRange]
        attr_accessor :banded_range
      
        # The fields that should be updated.  At least one field must be specified.
        # The root `bandedRange` is implied and should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @banded_range = args[:banded_range] if args.key?(:banded_range)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # The data included in a domain or series.
      class ChartData
        include Google::Apis::Core::Hashable
      
        # Source ranges for a chart.
        # Corresponds to the JSON property `sourceRange`
        # @return [Google::Apis::SheetsV4::ChartSourceRange]
        attr_accessor :source_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_range = args[:source_range] if args.key?(:source_range)
        end
      end
      
      # A sheet in a spreadsheet.
      class Sheet
        include Google::Apis::Core::Hashable
      
        # Properties of a sheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV4::SheetProperties]
        attr_accessor :properties
      
        # The specifications of every chart on this sheet.
        # Corresponds to the JSON property `charts`
        # @return [Array<Google::Apis::SheetsV4::EmbeddedChart>]
        attr_accessor :charts
      
        # The filter views in this sheet.
        # Corresponds to the JSON property `filterViews`
        # @return [Array<Google::Apis::SheetsV4::FilterView>]
        attr_accessor :filter_views
      
        # The conditional format rules in this sheet.
        # Corresponds to the JSON property `conditionalFormats`
        # @return [Array<Google::Apis::SheetsV4::ConditionalFormatRule>]
        attr_accessor :conditional_formats
      
        # The protected ranges in this sheet.
        # Corresponds to the JSON property `protectedRanges`
        # @return [Array<Google::Apis::SheetsV4::ProtectedRange>]
        attr_accessor :protected_ranges
      
        # The default filter associated with a sheet.
        # Corresponds to the JSON property `basicFilter`
        # @return [Google::Apis::SheetsV4::BasicFilter]
        attr_accessor :basic_filter
      
        # The ranges that are merged together.
        # Corresponds to the JSON property `merges`
        # @return [Array<Google::Apis::SheetsV4::GridRange>]
        attr_accessor :merges
      
        # Data in the grid, if this is a grid sheet.
        # The number of GridData objects returned is dependent on the number of
        # ranges requested on this sheet. For example, if this is representing
        # `Sheet1`, and the spreadsheet was requested with ranges
        # `Sheet1!A1:C10` and `Sheet1!D15:E20`, then the first GridData will have a
        # startRow/startColumn of `0`,
        # while the second one will have `startRow 14` (zero-based row 15),
        # and `startColumn 3` (zero-based column D).
        # Corresponds to the JSON property `data`
        # @return [Array<Google::Apis::SheetsV4::GridData>]
        attr_accessor :data
      
        # The banded (i.e. alternating colors) ranges on this sheet.
        # Corresponds to the JSON property `bandedRanges`
        # @return [Array<Google::Apis::SheetsV4::BandedRange>]
        attr_accessor :banded_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
          @charts = args[:charts] if args.key?(:charts)
          @filter_views = args[:filter_views] if args.key?(:filter_views)
          @conditional_formats = args[:conditional_formats] if args.key?(:conditional_formats)
          @protected_ranges = args[:protected_ranges] if args.key?(:protected_ranges)
          @basic_filter = args[:basic_filter] if args.key?(:basic_filter)
          @merges = args[:merges] if args.key?(:merges)
          @data = args[:data] if args.key?(:data)
          @banded_ranges = args[:banded_ranges] if args.key?(:banded_ranges)
        end
      end
      
      # Copies data from the source to the destination.
      class CopyPasteRequest
        include Google::Apis::Core::Hashable
      
        # What kind of data to paste.
        # Corresponds to the JSON property `pasteType`
        # @return [String]
        attr_accessor :paste_type
      
        # How that data should be oriented when pasting.
        # Corresponds to the JSON property `pasteOrientation`
        # @return [String]
        attr_accessor :paste_orientation
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :source
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paste_type = args[:paste_type] if args.key?(:paste_type)
          @paste_orientation = args[:paste_orientation] if args.key?(:paste_orientation)
          @source = args[:source] if args.key?(:source)
          @destination = args[:destination] if args.key?(:destination)
        end
      end
      
      # Updates all cells in a range with new data.
      class UpdateCellsRequest
        include Google::Apis::Core::Hashable
      
        # The data to write.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::SheetsV4::RowData>]
        attr_accessor :rows
      
        # The fields of CellData that should be updated.
        # At least one field must be specified.
        # The root is the CellData; 'row.values.' should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # A coordinate in a sheet.
        # All indexes are zero-based.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::SheetsV4::GridCoordinate]
        attr_accessor :start
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rows = args[:rows] if args.key?(:rows)
          @fields = args[:fields] if args.key?(:fields)
          @start = args[:start] if args.key?(:start)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # The kinds of value that a cell in a spreadsheet can have.
      class ExtendedValue
        include Google::Apis::Core::Hashable
      
        # Represents a formula.
        # Corresponds to the JSON property `formulaValue`
        # @return [String]
        attr_accessor :formula_value
      
        # An error in a cell.
        # Corresponds to the JSON property `errorValue`
        # @return [Google::Apis::SheetsV4::ErrorValue]
        attr_accessor :error_value
      
        # Represents a boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Represents a double value.
        # Note: Dates, Times and DateTimes are represented as doubles in
        # "serial number" format.
        # Corresponds to the JSON property `numberValue`
        # @return [Float]
        attr_accessor :number_value
      
        # Represents a string value.
        # Leading single quotes are not included. For example, if the user typed
        # `'123` into the UI, this would be represented as a `stringValue` of
        # `"123"`.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formula_value = args[:formula_value] if args.key?(:formula_value)
          @error_value = args[:error_value] if args.key?(:error_value)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @number_value = args[:number_value] if args.key?(:number_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # The reply for batch updating a spreadsheet.
      class BatchUpdateSpreadsheetResponse
        include Google::Apis::Core::Hashable
      
        # The spreadsheet the updates were applied to.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # Resource that represents a spreadsheet.
        # Corresponds to the JSON property `updatedSpreadsheet`
        # @return [Google::Apis::SheetsV4::Spreadsheet]
        attr_accessor :updated_spreadsheet
      
        # The reply of the updates.  This maps 1:1 with the updates, although
        # replies to some requests may be empty.
        # Corresponds to the JSON property `replies`
        # @return [Array<Google::Apis::SheetsV4::Response>]
        attr_accessor :replies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @updated_spreadsheet = args[:updated_spreadsheet] if args.key?(:updated_spreadsheet)
          @replies = args[:replies] if args.key?(:replies)
        end
      end
      
      # A rule that applies a gradient color scale format, based on
      # the interpolation points listed. The format of a cell will vary
      # based on its contents as compared to the values of the interpolation
      # points.
      class GradientRule
        include Google::Apis::Core::Hashable
      
        # A single interpolation point on a gradient conditional format.
        # These pin the gradient color scale according to the color,
        # type and value chosen.
        # Corresponds to the JSON property `maxpoint`
        # @return [Google::Apis::SheetsV4::InterpolationPoint]
        attr_accessor :maxpoint
      
        # A single interpolation point on a gradient conditional format.
        # These pin the gradient color scale according to the color,
        # type and value chosen.
        # Corresponds to the JSON property `midpoint`
        # @return [Google::Apis::SheetsV4::InterpolationPoint]
        attr_accessor :midpoint
      
        # A single interpolation point on a gradient conditional format.
        # These pin the gradient color scale according to the color,
        # type and value chosen.
        # Corresponds to the JSON property `minpoint`
        # @return [Google::Apis::SheetsV4::InterpolationPoint]
        attr_accessor :minpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maxpoint = args[:maxpoint] if args.key?(:maxpoint)
          @midpoint = args[:midpoint] if args.key?(:midpoint)
          @minpoint = args[:minpoint] if args.key?(:minpoint)
        end
      end
      
      # Moves data from the source to the destination.
      class CutPasteRequest
        include Google::Apis::Core::Hashable
      
        # What kind of data to paste.  All the source data will be cut, regardless
        # of what is pasted.
        # Corresponds to the JSON property `pasteType`
        # @return [String]
        attr_accessor :paste_type
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :source
      
        # A coordinate in a sheet.
        # All indexes are zero-based.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::SheetsV4::GridCoordinate]
        attr_accessor :destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paste_type = args[:paste_type] if args.key?(:paste_type)
          @source = args[:source] if args.key?(:source)
          @destination = args[:destination] if args.key?(:destination)
        end
      end
      
      # The location an object is overlaid on top of a grid.
      class OverlayPosition
        include Google::Apis::Core::Hashable
      
        # The width of the object, in pixels. Defaults to 600.
        # Corresponds to the JSON property `widthPixels`
        # @return [Fixnum]
        attr_accessor :width_pixels
      
        # A coordinate in a sheet.
        # All indexes are zero-based.
        # Corresponds to the JSON property `anchorCell`
        # @return [Google::Apis::SheetsV4::GridCoordinate]
        attr_accessor :anchor_cell
      
        # The horizontal offset, in pixels, that the object is offset
        # from the anchor cell.
        # Corresponds to the JSON property `offsetXPixels`
        # @return [Fixnum]
        attr_accessor :offset_x_pixels
      
        # The height of the object, in pixels. Defaults to 371.
        # Corresponds to the JSON property `heightPixels`
        # @return [Fixnum]
        attr_accessor :height_pixels
      
        # The vertical offset, in pixels, that the object is offset
        # from the anchor cell.
        # Corresponds to the JSON property `offsetYPixels`
        # @return [Fixnum]
        attr_accessor :offset_y_pixels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @width_pixels = args[:width_pixels] if args.key?(:width_pixels)
          @anchor_cell = args[:anchor_cell] if args.key?(:anchor_cell)
          @offset_x_pixels = args[:offset_x_pixels] if args.key?(:offset_x_pixels)
          @height_pixels = args[:height_pixels] if args.key?(:height_pixels)
          @offset_y_pixels = args[:offset_y_pixels] if args.key?(:offset_y_pixels)
        end
      end
      
      # Fills in more data based on existing data.
      class AutoFillRequest
        include Google::Apis::Core::Hashable
      
        # True if we should generate data with the "alternate" series.
        # This differs based on the type and amount of source data.
        # Corresponds to the JSON property `useAlternateSeries`
        # @return [Boolean]
        attr_accessor :use_alternate_series
        alias_method :use_alternate_series?, :use_alternate_series
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        # A combination of a source range and how to extend that source.
        # Corresponds to the JSON property `sourceAndDestination`
        # @return [Google::Apis::SheetsV4::SourceAndDestination]
        attr_accessor :source_and_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @use_alternate_series = args[:use_alternate_series] if args.key?(:use_alternate_series)
          @range = args[:range] if args.key?(:range)
          @source_and_destination = args[:source_and_destination] if args.key?(:source_and_destination)
        end
      end
      
      # A <a href="/chart/interactive/docs/gallery/piechart">pie chart</a>.
      class PieChartSpec
        include Google::Apis::Core::Hashable
      
        # Where the legend of the pie chart should be drawn.
        # Corresponds to the JSON property `legendPosition`
        # @return [String]
        attr_accessor :legend_position
      
        # The data included in a domain or series.
        # Corresponds to the JSON property `series`
        # @return [Google::Apis::SheetsV4::ChartData]
        attr_accessor :series
      
        # The size of the hole in the pie chart.
        # Corresponds to the JSON property `pieHole`
        # @return [Float]
        attr_accessor :pie_hole
      
        # True if the pie is three dimensional.
        # Corresponds to the JSON property `threeDimensional`
        # @return [Boolean]
        attr_accessor :three_dimensional
        alias_method :three_dimensional?, :three_dimensional
      
        # The data included in a domain or series.
        # Corresponds to the JSON property `domain`
        # @return [Google::Apis::SheetsV4::ChartData]
        attr_accessor :domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @legend_position = args[:legend_position] if args.key?(:legend_position)
          @series = args[:series] if args.key?(:series)
          @pie_hole = args[:pie_hole] if args.key?(:pie_hole)
          @three_dimensional = args[:three_dimensional] if args.key?(:three_dimensional)
          @domain = args[:domain] if args.key?(:domain)
        end
      end
      
      # Updates properties of the sheet with the specified
      # sheetId.
      class UpdateSheetPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The fields that should be updated.  At least one field must be specified.
        # The root `properties` is implied and should not be specified.
        # A single `"*"` can be used as short-hand for listing every field.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # Properties of a sheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV4::SheetProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # A rule that may or may not match, depending on the condition.
      class BooleanRule
        include Google::Apis::Core::Hashable
      
        # A condition that can evaluate to true or false.
        # BooleanConditions are used by conditional formatting,
        # data validation, and the criteria in filters.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::SheetsV4::BooleanCondition]
        attr_accessor :condition
      
        # The format of a cell.
        # Corresponds to the JSON property `format`
        # @return [Google::Apis::SheetsV4::CellFormat]
        attr_accessor :format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @format = args[:format] if args.key?(:format)
        end
      end
      
      # Appends rows or columns to the end of a sheet.
      class AppendDimensionRequest
        include Google::Apis::Core::Hashable
      
        # The sheet to append rows or columns to.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The number of rows or columns to append.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Whether rows or columns should be appended.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @length = args[:length] if args.key?(:length)
          @dimension = args[:dimension] if args.key?(:dimension)
        end
      end
      
      # Adds a filter view.
      class AddFilterViewRequest
        include Google::Apis::Core::Hashable
      
        # A filter view.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::SheetsV4::FilterView]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Properties of a grid.
      class GridProperties
        include Google::Apis::Core::Hashable
      
        # The number of rows in the grid.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # The number of columns in the grid.
        # Corresponds to the JSON property `columnCount`
        # @return [Fixnum]
        attr_accessor :column_count
      
        # The number of rows that are frozen in the grid.
        # Corresponds to the JSON property `frozenRowCount`
        # @return [Fixnum]
        attr_accessor :frozen_row_count
      
        # The number of columns that are frozen in the grid.
        # Corresponds to the JSON property `frozenColumnCount`
        # @return [Fixnum]
        attr_accessor :frozen_column_count
      
        # True if the grid isn't showing gridlines in the UI.
        # Corresponds to the JSON property `hideGridlines`
        # @return [Boolean]
        attr_accessor :hide_gridlines
        alias_method :hide_gridlines?, :hide_gridlines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_count = args[:row_count] if args.key?(:row_count)
          @column_count = args[:column_count] if args.key?(:column_count)
          @frozen_row_count = args[:frozen_row_count] if args.key?(:frozen_row_count)
          @frozen_column_count = args[:frozen_column_count] if args.key?(:frozen_column_count)
          @hide_gridlines = args[:hide_gridlines] if args.key?(:hide_gridlines)
        end
      end
      
      # Removes the named range with the given ID from the spreadsheet.
      class DeleteNamedRangeRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the named range to delete.
        # Corresponds to the JSON property `namedRangeId`
        # @return [String]
        attr_accessor :named_range_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @named_range_id = args[:named_range_id] if args.key?(:named_range_id)
        end
      end
      
      # Adds a chart to a sheet in the spreadsheet.
      class AddChartRequest
        include Google::Apis::Core::Hashable
      
        # A chart embedded in a sheet.
        # Corresponds to the JSON property `chart`
        # @return [Google::Apis::SheetsV4::EmbeddedChart]
        attr_accessor :chart
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart = args[:chart] if args.key?(:chart)
        end
      end
      
      # Sets a data validation rule to every cell in the range.
      # To clear validation in a range, call this with no rule specified.
      class SetDataValidationRequest
        include Google::Apis::Core::Hashable
      
        # A data validation rule.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::SheetsV4::DataValidationRule]
        attr_accessor :rule
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule = args[:rule] if args.key?(:rule)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # A single kind of update to apply to a spreadsheet.
      class Request
        include Google::Apis::Core::Hashable
      
        # Update an embedded object's position (such as a moving or resizing a
        # chart or image).
        # Corresponds to the JSON property `updateEmbeddedObjectPosition`
        # @return [Google::Apis::SheetsV4::UpdateEmbeddedObjectPositionRequest]
        attr_accessor :update_embedded_object_position
      
        # Removes the named range with the given ID from the spreadsheet.
        # Corresponds to the JSON property `deleteNamedRange`
        # @return [Google::Apis::SheetsV4::DeleteNamedRangeRequest]
        attr_accessor :delete_named_range
      
        # Updates properties of the named range with the specified
        # namedRangeId.
        # Corresponds to the JSON property `updateNamedRange`
        # @return [Google::Apis::SheetsV4::UpdateNamedRangeRequest]
        attr_accessor :update_named_range
      
        # Adds a filter view.
        # Corresponds to the JSON property `addFilterView`
        # @return [Google::Apis::SheetsV4::AddFilterViewRequest]
        attr_accessor :add_filter_view
      
        # Updates properties of a spreadsheet.
        # Corresponds to the JSON property `updateSpreadsheetProperties`
        # @return [Google::Apis::SheetsV4::UpdateSpreadsheetPropertiesRequest]
        attr_accessor :update_spreadsheet_properties
      
        # Appends rows or columns to the end of a sheet.
        # Corresponds to the JSON property `appendDimension`
        # @return [Google::Apis::SheetsV4::AppendDimensionRequest]
        attr_accessor :append_dimension
      
        # Unmerges cells in the given range.
        # Corresponds to the JSON property `unmergeCells`
        # @return [Google::Apis::SheetsV4::UnmergeCellsRequest]
        attr_accessor :unmerge_cells
      
        # Updates an existing protected range with the specified
        # protectedRangeId.
        # Corresponds to the JSON property `updateProtectedRange`
        # @return [Google::Apis::SheetsV4::UpdateProtectedRangeRequest]
        attr_accessor :update_protected_range
      
        # Deletes a particular filter view.
        # Corresponds to the JSON property `deleteFilterView`
        # @return [Google::Apis::SheetsV4::DeleteFilterViewRequest]
        attr_accessor :delete_filter_view
      
        # Clears the basic filter, if any exists on the sheet.
        # Corresponds to the JSON property `clearBasicFilter`
        # @return [Google::Apis::SheetsV4::ClearBasicFilterRequest]
        attr_accessor :clear_basic_filter
      
        # Sorts data in rows based on a sort order per column.
        # Corresponds to the JSON property `sortRange`
        # @return [Google::Apis::SheetsV4::SortRangeRequest]
        attr_accessor :sort_range
      
        # Updates all cells in the range to the values in the given Cell object.
        # Only the fields listed in the fields field are updated; others are
        # unchanged.
        # If writing a cell with a formula, the formula's ranges will automatically
        # increment for each field in the range.
        # For example, if writing a cell with formula `=A1` into range B2:C4,
        # B2 would be `=A1`, B3 would be `=A2`, B4 would be `=A3`,
        # C2 would be `=B1`, C3 would be `=B2`, C4 would be `=B3`.
        # To keep the formula's ranges static, use the `$` indicator.
        # For example, use the formula `=$A$1` to prevent both the row and the
        # column from incrementing.
        # Corresponds to the JSON property `repeatCell`
        # @return [Google::Apis::SheetsV4::RepeatCellRequest]
        attr_accessor :repeat_cell
      
        # Sets a data validation rule to every cell in the range.
        # To clear validation in a range, call this with no rule specified.
        # Corresponds to the JSON property `setDataValidation`
        # @return [Google::Apis::SheetsV4::SetDataValidationRequest]
        attr_accessor :set_data_validation
      
        # Updates all cells in a range with new data.
        # Corresponds to the JSON property `updateCells`
        # @return [Google::Apis::SheetsV4::UpdateCellsRequest]
        attr_accessor :update_cells
      
        # Adds a new sheet.
        # When a sheet is added at a given index,
        # all subsequent sheets' indexes are incremented.
        # To add an object sheet, use AddChartRequest instead and specify
        # EmbeddedObjectPosition.sheetId or
        # EmbeddedObjectPosition.newSheet.
        # Corresponds to the JSON property `addSheet`
        # @return [Google::Apis::SheetsV4::AddSheetRequest]
        attr_accessor :add_sheet
      
        # Updates properties of the filter view.
        # Corresponds to the JSON property `updateFilterView`
        # @return [Google::Apis::SheetsV4::UpdateFilterViewRequest]
        attr_accessor :update_filter_view
      
        # Updates properties of the sheet with the specified
        # sheetId.
        # Corresponds to the JSON property `updateSheetProperties`
        # @return [Google::Apis::SheetsV4::UpdateSheetPropertiesRequest]
        attr_accessor :update_sheet_properties
      
        # Updates properties of dimensions within the specified range.
        # Corresponds to the JSON property `updateDimensionProperties`
        # @return [Google::Apis::SheetsV4::UpdateDimensionPropertiesRequest]
        attr_accessor :update_dimension_properties
      
        # Deletes the requested sheet.
        # Corresponds to the JSON property `deleteSheet`
        # @return [Google::Apis::SheetsV4::DeleteSheetRequest]
        attr_accessor :delete_sheet
      
        # Finds and replaces data in cells over a range, sheet, or all sheets.
        # Corresponds to the JSON property `findReplace`
        # @return [Google::Apis::SheetsV4::FindReplaceRequest]
        attr_accessor :find_replace
      
        # Adds a new protected range.
        # Corresponds to the JSON property `addProtectedRange`
        # @return [Google::Apis::SheetsV4::AddProtectedRangeRequest]
        attr_accessor :add_protected_range
      
        # Deletes the protected range with the given ID.
        # Corresponds to the JSON property `deleteProtectedRange`
        # @return [Google::Apis::SheetsV4::DeleteProtectedRangeRequest]
        attr_accessor :delete_protected_range
      
        # Updates a conditional format rule at the given index,
        # or moves a conditional format rule to another index.
        # Corresponds to the JSON property `updateConditionalFormatRule`
        # @return [Google::Apis::SheetsV4::UpdateConditionalFormatRuleRequest]
        attr_accessor :update_conditional_format_rule
      
        # Sets the basic filter associated with a sheet.
        # Corresponds to the JSON property `setBasicFilter`
        # @return [Google::Apis::SheetsV4::SetBasicFilterRequest]
        attr_accessor :set_basic_filter
      
        # Merges all cells in the range.
        # Corresponds to the JSON property `mergeCells`
        # @return [Google::Apis::SheetsV4::MergeCellsRequest]
        attr_accessor :merge_cells
      
        # Updates properties of the supplied banded range.
        # Corresponds to the JSON property `updateBanding`
        # @return [Google::Apis::SheetsV4::UpdateBandingRequest]
        attr_accessor :update_banding
      
        # Adds a chart to a sheet in the spreadsheet.
        # Corresponds to the JSON property `addChart`
        # @return [Google::Apis::SheetsV4::AddChartRequest]
        attr_accessor :add_chart
      
        # Deletes a conditional format rule at the given index.
        # All subsequent rules' indexes are decremented.
        # Corresponds to the JSON property `deleteConditionalFormatRule`
        # @return [Google::Apis::SheetsV4::DeleteConditionalFormatRuleRequest]
        attr_accessor :delete_conditional_format_rule
      
        # Adds a new banded range to the spreadsheet.
        # Corresponds to the JSON property `addBanding`
        # @return [Google::Apis::SheetsV4::AddBandingRequest]
        attr_accessor :add_banding
      
        # Removes the banded range with the given ID from the spreadsheet.
        # Corresponds to the JSON property `deleteBanding`
        # @return [Google::Apis::SheetsV4::DeleteBandingRequest]
        attr_accessor :delete_banding
      
        # Updates a chart's specifications.
        # (This does not move or resize a chart. To move or resize a chart, use
        # UpdateEmbeddedObjectPositionRequest.)
        # Corresponds to the JSON property `updateChartSpec`
        # @return [Google::Apis::SheetsV4::UpdateChartSpecRequest]
        attr_accessor :update_chart_spec
      
        # Deletes the dimensions from the sheet.
        # Corresponds to the JSON property `deleteDimension`
        # @return [Google::Apis::SheetsV4::DeleteDimensionRequest]
        attr_accessor :delete_dimension
      
        # Deletes the embedded object with the given ID.
        # Corresponds to the JSON property `deleteEmbeddedObject`
        # @return [Google::Apis::SheetsV4::DeleteEmbeddedObjectRequest]
        attr_accessor :delete_embedded_object
      
        # Inserts data into the spreadsheet starting at the specified coordinate.
        # Corresponds to the JSON property `pasteData`
        # @return [Google::Apis::SheetsV4::PasteDataRequest]
        attr_accessor :paste_data
      
        # Adds a new conditional format rule at the given index.
        # All subsequent rules' indexes are incremented.
        # Corresponds to the JSON property `addConditionalFormatRule`
        # @return [Google::Apis::SheetsV4::AddConditionalFormatRuleRequest]
        attr_accessor :add_conditional_format_rule
      
        # Updates the borders of a range.
        # If a field is not set in the request, that means the border remains as-is.
        # For example, with two subsequent UpdateBordersRequest:
        # 1. range: A1:A5 `` top: RED, bottom: WHITE ``
        # 2. range: A1:A5 `` left: BLUE ``
        # That would result in A1:A5 having a borders of
        # `` top: RED, bottom: WHITE, left: BLUE ``.
        # If you want to clear a border, explicitly set the style to
        # NONE.
        # Corresponds to the JSON property `updateBorders`
        # @return [Google::Apis::SheetsV4::UpdateBordersRequest]
        attr_accessor :update_borders
      
        # Automatically resizes one or more dimensions based on the contents
        # of the cells in that dimension.
        # Corresponds to the JSON property `autoResizeDimensions`
        # @return [Google::Apis::SheetsV4::AutoResizeDimensionsRequest]
        attr_accessor :auto_resize_dimensions
      
        # Duplicates the contents of a sheet.
        # Corresponds to the JSON property `duplicateSheet`
        # @return [Google::Apis::SheetsV4::DuplicateSheetRequest]
        attr_accessor :duplicate_sheet
      
        # Duplicates a particular filter view.
        # Corresponds to the JSON property `duplicateFilterView`
        # @return [Google::Apis::SheetsV4::DuplicateFilterViewRequest]
        attr_accessor :duplicate_filter_view
      
        # Moves data from the source to the destination.
        # Corresponds to the JSON property `cutPaste`
        # @return [Google::Apis::SheetsV4::CutPasteRequest]
        attr_accessor :cut_paste
      
        # Adds new cells after the last row with data in a sheet,
        # inserting new rows into the sheet if necessary.
        # Corresponds to the JSON property `appendCells`
        # @return [Google::Apis::SheetsV4::AppendCellsRequest]
        attr_accessor :append_cells
      
        # Adds a named range to the spreadsheet.
        # Corresponds to the JSON property `addNamedRange`
        # @return [Google::Apis::SheetsV4::AddNamedRangeRequest]
        attr_accessor :add_named_range
      
        # Fills in more data based on existing data.
        # Corresponds to the JSON property `autoFill`
        # @return [Google::Apis::SheetsV4::AutoFillRequest]
        attr_accessor :auto_fill
      
        # Moves one or more rows or columns.
        # Corresponds to the JSON property `moveDimension`
        # @return [Google::Apis::SheetsV4::MoveDimensionRequest]
        attr_accessor :move_dimension
      
        # Splits a column of text into multiple columns,
        # based on a delimiter in each cell.
        # Corresponds to the JSON property `textToColumns`
        # @return [Google::Apis::SheetsV4::TextToColumnsRequest]
        attr_accessor :text_to_columns
      
        # Inserts rows or columns in a sheet at a particular index.
        # Corresponds to the JSON property `insertDimension`
        # @return [Google::Apis::SheetsV4::InsertDimensionRequest]
        attr_accessor :insert_dimension
      
        # Copies data from the source to the destination.
        # Corresponds to the JSON property `copyPaste`
        # @return [Google::Apis::SheetsV4::CopyPasteRequest]
        attr_accessor :copy_paste
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_embedded_object_position = args[:update_embedded_object_position] if args.key?(:update_embedded_object_position)
          @delete_named_range = args[:delete_named_range] if args.key?(:delete_named_range)
          @update_named_range = args[:update_named_range] if args.key?(:update_named_range)
          @add_filter_view = args[:add_filter_view] if args.key?(:add_filter_view)
          @update_spreadsheet_properties = args[:update_spreadsheet_properties] if args.key?(:update_spreadsheet_properties)
          @append_dimension = args[:append_dimension] if args.key?(:append_dimension)
          @unmerge_cells = args[:unmerge_cells] if args.key?(:unmerge_cells)
          @update_protected_range = args[:update_protected_range] if args.key?(:update_protected_range)
          @delete_filter_view = args[:delete_filter_view] if args.key?(:delete_filter_view)
          @clear_basic_filter = args[:clear_basic_filter] if args.key?(:clear_basic_filter)
          @sort_range = args[:sort_range] if args.key?(:sort_range)
          @repeat_cell = args[:repeat_cell] if args.key?(:repeat_cell)
          @set_data_validation = args[:set_data_validation] if args.key?(:set_data_validation)
          @update_cells = args[:update_cells] if args.key?(:update_cells)
          @add_sheet = args[:add_sheet] if args.key?(:add_sheet)
          @update_filter_view = args[:update_filter_view] if args.key?(:update_filter_view)
          @update_sheet_properties = args[:update_sheet_properties] if args.key?(:update_sheet_properties)
          @update_dimension_properties = args[:update_dimension_properties] if args.key?(:update_dimension_properties)
          @delete_sheet = args[:delete_sheet] if args.key?(:delete_sheet)
          @find_replace = args[:find_replace] if args.key?(:find_replace)
          @add_protected_range = args[:add_protected_range] if args.key?(:add_protected_range)
          @delete_protected_range = args[:delete_protected_range] if args.key?(:delete_protected_range)
          @update_conditional_format_rule = args[:update_conditional_format_rule] if args.key?(:update_conditional_format_rule)
          @set_basic_filter = args[:set_basic_filter] if args.key?(:set_basic_filter)
          @merge_cells = args[:merge_cells] if args.key?(:merge_cells)
          @update_banding = args[:update_banding] if args.key?(:update_banding)
          @add_chart = args[:add_chart] if args.key?(:add_chart)
          @delete_conditional_format_rule = args[:delete_conditional_format_rule] if args.key?(:delete_conditional_format_rule)
          @add_banding = args[:add_banding] if args.key?(:add_banding)
          @delete_banding = args[:delete_banding] if args.key?(:delete_banding)
          @update_chart_spec = args[:update_chart_spec] if args.key?(:update_chart_spec)
          @delete_dimension = args[:delete_dimension] if args.key?(:delete_dimension)
          @delete_embedded_object = args[:delete_embedded_object] if args.key?(:delete_embedded_object)
          @paste_data = args[:paste_data] if args.key?(:paste_data)
          @add_conditional_format_rule = args[:add_conditional_format_rule] if args.key?(:add_conditional_format_rule)
          @update_borders = args[:update_borders] if args.key?(:update_borders)
          @auto_resize_dimensions = args[:auto_resize_dimensions] if args.key?(:auto_resize_dimensions)
          @duplicate_sheet = args[:duplicate_sheet] if args.key?(:duplicate_sheet)
          @duplicate_filter_view = args[:duplicate_filter_view] if args.key?(:duplicate_filter_view)
          @cut_paste = args[:cut_paste] if args.key?(:cut_paste)
          @append_cells = args[:append_cells] if args.key?(:append_cells)
          @add_named_range = args[:add_named_range] if args.key?(:add_named_range)
          @auto_fill = args[:auto_fill] if args.key?(:auto_fill)
          @move_dimension = args[:move_dimension] if args.key?(:move_dimension)
          @text_to_columns = args[:text_to_columns] if args.key?(:text_to_columns)
          @insert_dimension = args[:insert_dimension] if args.key?(:insert_dimension)
          @copy_paste = args[:copy_paste] if args.key?(:copy_paste)
        end
      end
      
      # The response when retrieving more than one range of values in a spreadsheet.
      class BatchGetValuesResponse
        include Google::Apis::Core::Hashable
      
        # The requested values. The order of the ValueRanges is the same as the
        # order of the requested ranges.
        # Corresponds to the JSON property `valueRanges`
        # @return [Array<Google::Apis::SheetsV4::ValueRange>]
        attr_accessor :value_ranges
      
        # The ID of the spreadsheet the data was retrieved from.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value_ranges = args[:value_ranges] if args.key?(:value_ranges)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
        end
      end
      
      # Inserts rows or columns in a sheet at a particular index.
      class InsertDimensionRequest
        include Google::Apis::Core::Hashable
      
        # Whether dimension properties should be extended from the dimensions
        # before or after the newly inserted dimensions.
        # True to inherit from the dimensions before (in which case the start
        # index must be greater than 0), and false to inherit from the dimensions
        # after.
        # For example, if row index 0 has red background and row index 1
        # has a green background, then inserting 2 rows at index 1 can inherit
        # either the green or red background.  If `inheritFromBefore` is true,
        # the two new rows will be red (because the row before the insertion point
        # was red), whereas if `inheritFromBefore` is false, the two new rows will
        # be green (because the row after the insertion point was green).
        # Corresponds to the JSON property `inheritFromBefore`
        # @return [Boolean]
        attr_accessor :inherit_from_before
        alias_method :inherit_from_before?, :inherit_from_before
      
        # A range along a single dimension on a sheet.
        # All indexes are zero-based.
        # Indexes are half open: the start index is inclusive
        # and the end index is exclusive.
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::DimensionRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inherit_from_before = args[:inherit_from_before] if args.key?(:inherit_from_before)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Deletes the embedded object with the given ID.
      class DeleteEmbeddedObjectRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the embedded object to delete.
        # Corresponds to the JSON property `objectId`
        # @return [Fixnum]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # A banded (alternating colors) range in a sheet.
      class BandedRange
        include Google::Apis::Core::Hashable
      
        # The id of the banded range.
        # Corresponds to the JSON property `bandedRangeId`
        # @return [Fixnum]
        attr_accessor :banded_range_id
      
        # Properties referring a single dimension (either row or column). If both
        # BandedRange.row_properties and BandedRange.column_properties are
        # set, the fill colors are applied to cells according to the following rules:
        # * header_color and footer_color take priority over band colors.
        # * first_band_color takes priority over second_band_color.
        # * row_properties takes priority over column_properties.
        # For example, the first row color takes priority over the first column
        # color, but the first column color takes priority over the second row color.
        # Similarly, the row header takes priority over the column header in the
        # top left cell, but the column header takes priority over the first row
        # color if the row header is not set.
        # Corresponds to the JSON property `rowProperties`
        # @return [Google::Apis::SheetsV4::BandingProperties]
        attr_accessor :row_properties
      
        # Properties referring a single dimension (either row or column). If both
        # BandedRange.row_properties and BandedRange.column_properties are
        # set, the fill colors are applied to cells according to the following rules:
        # * header_color and footer_color take priority over band colors.
        # * first_band_color takes priority over second_band_color.
        # * row_properties takes priority over column_properties.
        # For example, the first row color takes priority over the first column
        # color, but the first column color takes priority over the second row color.
        # Similarly, the row header takes priority over the column header in the
        # top left cell, but the column header takes priority over the first row
        # color if the row header is not set.
        # Corresponds to the JSON property `columnProperties`
        # @return [Google::Apis::SheetsV4::BandingProperties]
        attr_accessor :column_properties
      
        # A range on a sheet.
        # All indexes are zero-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if `"Sheet1"` is sheet ID 0, then:
        # `Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1`
        # `Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2`
        # `Sheet1 == sheet_id:0`
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as `#REF!`.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV4::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @banded_range_id = args[:banded_range_id] if args.key?(:banded_range_id)
          @row_properties = args[:row_properties] if args.key?(:row_properties)
          @column_properties = args[:column_properties] if args.key?(:column_properties)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # The result of deleting a conditional format rule.
      class DeleteConditionalFormatRuleResponse
        include Google::Apis::Core::Hashable
      
        # A rule describing a conditional format.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::SheetsV4::ConditionalFormatRule]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule = args[:rule] if args.key?(:rule)
        end
      end
    end
  end
end
