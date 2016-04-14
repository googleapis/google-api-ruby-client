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
      
      # The result of moving an embedded object to a sheet.
      class MoveEmbeddedObjectToSheetResponse
        include Google::Apis::Core::Hashable
      
        # Properties of a sheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV1::SheetProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # The result of adding a named range.
      class AddNamedRangeResponse
        include Google::Apis::Core::Hashable
      
        # A named range.
        # Corresponds to the JSON property `namedRange`
        # @return [Google::Apis::SheetsV1::NamedRange]
        attr_accessor :named_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @named_range = args[:named_range] if args.key?(:named_range)
        end
      end
      
      # Updates an existing protected range with the specified protected range id.
      class UpdateProtectedRangeRequest
        include Google::Apis::Core::Hashable
      
        # A protected range.
        # Corresponds to the JSON property `protectedRange`
        # @return [Google::Apis::SheetsV1::ProtectedRange]
        attr_accessor :protected_range
      
        # The fields that should be updated.  At least one field must be specified.
        # The root 'protectedRange' is implied and should not be specified.
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
      
        # The left padding of the cell.
        # Corresponds to the JSON property `left`
        # @return [Fixnum]
        attr_accessor :left
      
        # The right padding of the cell.
        # Corresponds to the JSON property `right`
        # @return [Fixnum]
        attr_accessor :right
      
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
          @left = args[:left] if args.key?(:left)
          @right = args[:right] if args.key?(:right)
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
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
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
        # @return [Google::Apis::SheetsV1::SheetProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Updates a conditional format rule at the given index,
      # or moves a conditional format rule to another index.
      class UpdateConditionalFormatRuleRequest
        include Google::Apis::Core::Hashable
      
        # The sheet of the rule to move.  Required if newIndex is set,
        # unused otherwise.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The 0-based index of the rule that should be replaced or moved.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # A rule describing a conditional format.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::SheetsV1::ConditionalFormatRule]
        attr_accessor :rule
      
        # The 0-based new index the rule should end up at.
        # Corresponds to the JSON property `newIndex`
        # @return [Fixnum]
        attr_accessor :new_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @index = args[:index] if args.key?(:index)
          @rule = args[:rule] if args.key?(:rule)
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
        # @return [Google::Apis::SheetsV1::Color]
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
      
      # A coordinate in a sheet.
      # All indexes are 0-based.
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
      
      # Updates properties of the named range with the specified named range id.
      # It is an error to specify read only fields in the field mask.
      class UpdateNamedRangeRequest
        include Google::Apis::Core::Hashable
      
        # The fields that should be updated.  At least one field must be specified.
        # The root 'namedRange' is implied and should not be specified.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # A named range.
        # Corresponds to the JSON property `namedRange`
        # @return [Google::Apis::SheetsV1::NamedRange]
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
      
      # Properties of a spreadsheet.
      class SpreadsheetProperties
        include Google::Apis::Core::Hashable
      
        # The time zone of the spreadsheet, in CLDR format such as
        # "America/New_York". If the time zone isn't recognized, this may be a
        # custom time zone such as "GMT-07:00".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # The amount of time to wait before volatile functions are recalculated.
        # Corresponds to the JSON property `autoRecalc`
        # @return [String]
        attr_accessor :auto_recalc
      
        # The locale of the spreadsheet in the format of an ISO 639-1 language code
        # (e.g. "en"), an ISO 639-2 language code (e.g. "fil") if no 639-1 code
        # exists, or a combination of the ISO language code and country code
        # (e.g. "en_US").
        # Note: when updating this field, not all locales/languages are supported.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The title of the spreadsheet
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The format of a cell.
        # Corresponds to the JSON property `defaultFormat`
        # @return [Google::Apis::SheetsV1::CellFormat]
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
        # This field is read-only.  (To set it, use a =HYPERLINK formula.)
        # Corresponds to the JSON property `hyperlink`
        # @return [String]
        attr_accessor :hyperlink
      
        # The format of a cell.
        # Corresponds to the JSON property `effectiveFormat`
        # @return [Google::Apis::SheetsV1::CellFormat]
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
      
        # A data validation rule.
        # Corresponds to the JSON property `dataValidation`
        # @return [Google::Apis::SheetsV1::DataValidationRule]
        attr_accessor :data_validation
      
        # Each kind of value a cell in a spreadsheet can have.
        # Corresponds to the JSON property `userEnteredValue`
        # @return [Google::Apis::SheetsV1::ExtendedValue]
        attr_accessor :user_entered_value
      
        # The format of a cell.
        # Corresponds to the JSON property `userEnteredFormat`
        # @return [Google::Apis::SheetsV1::CellFormat]
        attr_accessor :user_entered_format
      
        # Runs of rich text applied to subsections of the cell.
        # Runs start at specific indexes in the text and continue until the next
        # run. Properties of a run will continue unless explicitly changed
        # in a subsequent run (and properties of the first run will continue
        # the properties of the cell unless explicitly changed).
        # When writing, the new runs will overwrite any prior runs.
        # Corresponds to the JSON property `textFormatRuns`
        # @return [Array<Google::Apis::SheetsV1::TextFormatRun>]
        attr_accessor :text_format_runs
      
        # Each kind of value a cell in a spreadsheet can have.
        # Corresponds to the JSON property `effectiveValue`
        # @return [Google::Apis::SheetsV1::ExtendedValue]
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
          @data_validation = args[:data_validation] if args.key?(:data_validation)
          @user_entered_value = args[:user_entered_value] if args.key?(:user_entered_value)
          @user_entered_format = args[:user_entered_format] if args.key?(:user_entered_format)
          @text_format_runs = args[:text_format_runs] if args.key?(:text_format_runs)
          @effective_value = args[:effective_value] if args.key?(:effective_value)
        end
      end
      
      # Unmerges cells in the given range.
      class UnmergeCellsRequest
        include Google::Apis::Core::Hashable
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
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
      
        # The delimiter type to use.
        # Corresponds to the JSON property `delimiterType`
        # @return [String]
        attr_accessor :delimiter_type
      
        # The delimiter to use. Used only if delimiterType is CUSTOM.
        # Corresponds to the JSON property `delimiter`
        # @return [String]
        attr_accessor :delimiter
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delimiter_type = args[:delimiter_type] if args.key?(:delimiter_type)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # The result of adding a new protected range.
      class AddProtectedRangeResponse
        include Google::Apis::Core::Hashable
      
        # A protected range.
        # Corresponds to the JSON property `protectedRange`
        # @return [Google::Apis::SheetsV1::ProtectedRange]
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
        # on the condition type.  Some support zero values, others one or two values,
        # and ONE_OF_LIST supports an arbitrary number of values.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::SheetsV1::ConditionValue>]
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
      
      # Deletes the protected range with the given id.
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
      
      # A range along a single dimension on a sheet.
      # All indexes are 0-based.
      # Indexes are half open, e.g the start index is inclusive
      # and the end index is exclusive -- [start_index, end_index).
      # Missing indexes indicate the range is unbounded on that side.
      class DimensionRange
        include Google::Apis::Core::Hashable
      
        # The end (exclusive) of the span, or not set if unbounded.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # The sheet this span is on.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
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
          @end_index = args[:end_index] if args.key?(:end_index)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @start_index = args[:start_index] if args.key?(:start_index)
          @dimension = args[:dimension] if args.key?(:dimension)
        end
      end
      
      # A single response from an update.
      class Response
        include Google::Apis::Core::Hashable
      
        # The result of adding a filter view.
        # Corresponds to the JSON property `addFilterView`
        # @return [Google::Apis::SheetsV1::AddFilterViewResponse]
        attr_accessor :add_filter_view
      
        # The result of moving an embedded object to a sheet.
        # Corresponds to the JSON property `moveEmbeddedObjectToSheet`
        # @return [Google::Apis::SheetsV1::MoveEmbeddedObjectToSheetResponse]
        attr_accessor :move_embedded_object_to_sheet
      
        # The result of adding a sheet.
        # Corresponds to the JSON property `addSheet`
        # @return [Google::Apis::SheetsV1::AddSheetResponse]
        attr_accessor :add_sheet
      
        # The result of the find/replace.
        # Corresponds to the JSON property `findReplace`
        # @return [Google::Apis::SheetsV1::FindReplaceResponse]
        attr_accessor :find_replace
      
        # The result of adding a new protected range.
        # Corresponds to the JSON property `addProtectedRange`
        # @return [Google::Apis::SheetsV1::AddProtectedRangeResponse]
        attr_accessor :add_protected_range
      
        # The result of updating a conditional format rule.
        # Corresponds to the JSON property `updateConditionalFormatRule`
        # @return [Google::Apis::SheetsV1::UpdateConditionalFormatRuleResponse]
        attr_accessor :update_conditional_format_rule
      
        # The result of deleting a conditional format rule.
        # Corresponds to the JSON property `deleteConditionalFormatRule`
        # @return [Google::Apis::SheetsV1::DeleteConditionalFormatRuleResponse]
        attr_accessor :delete_conditional_format_rule
      
        # The result of duplicating a sheet.
        # Corresponds to the JSON property `duplicateSheet`
        # @return [Google::Apis::SheetsV1::DuplicateSheetResponse]
        attr_accessor :duplicate_sheet
      
        # The result of a filter view being duplicated.
        # Corresponds to the JSON property `duplicateFilterView`
        # @return [Google::Apis::SheetsV1::DuplicateFilterViewResponse]
        attr_accessor :duplicate_filter_view
      
        # The result of adding a named range.
        # Corresponds to the JSON property `addNamedRange`
        # @return [Google::Apis::SheetsV1::AddNamedRangeResponse]
        attr_accessor :add_named_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_filter_view = args[:add_filter_view] if args.key?(:add_filter_view)
          @move_embedded_object_to_sheet = args[:move_embedded_object_to_sheet] if args.key?(:move_embedded_object_to_sheet)
          @add_sheet = args[:add_sheet] if args.key?(:add_sheet)
          @find_replace = args[:find_replace] if args.key?(:find_replace)
          @add_protected_range = args[:add_protected_range] if args.key?(:add_protected_range)
          @update_conditional_format_rule = args[:update_conditional_format_rule] if args.key?(:update_conditional_format_rule)
          @delete_conditional_format_rule = args[:delete_conditional_format_rule] if args.key?(:delete_conditional_format_rule)
          @duplicate_sheet = args[:duplicate_sheet] if args.key?(:duplicate_sheet)
          @duplicate_filter_view = args[:duplicate_filter_view] if args.key?(:duplicate_filter_view)
          @add_named_range = args[:add_named_range] if args.key?(:add_named_range)
        end
      end
      
      # Adds a new conditional format rule at the given index.
      # All subsequent rules' indexes are incremented.
      class AddConditionalFormatRuleRequest
        include Google::Apis::Core::Hashable
      
        # The 0-based index where the rule should be inserted.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # A rule describing a conditional format.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::SheetsV1::ConditionalFormatRule]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index = args[:index] if args.key?(:index)
          @rule = args[:rule] if args.key?(:rule)
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
        # When writing, only one of range or namedRangeId may be set.
        # Corresponds to the JSON property `namedRangeId`
        # @return [Fixnum]
        attr_accessor :named_range_id
      
        # The sort order per column. Later specifications are used when values
        # are equal in the earlier specifications.
        # Corresponds to the JSON property `sortSpecs`
        # @return [Array<Google::Apis::SheetsV1::SortSpec>]
        attr_accessor :sort_specs
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :range
      
        # The criteria for showing/hiding values per column.
        # The map's key is the column index, and the value is the criteria for
        # that column.
        # Corresponds to the JSON property `criteria`
        # @return [Hash<String,Google::Apis::SheetsV1::FilterCriteria>]
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
      
        # The sort order per column. Later specifications are used when values
        # are equal in the earlier specifications.
        # Corresponds to the JSON property `sortSpecs`
        # @return [Array<Google::Apis::SheetsV1::SortSpec>]
        attr_accessor :sort_specs
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sort_specs = args[:sort_specs] if args.key?(:sort_specs)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # A run of a text format. The format of this run continues until explicitly
      # overridden in the next run.
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
        # @return [Google::Apis::SheetsV1::TextFormat]
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
      
        # The fields that should be updated.  At least one field must be specified.
        # The root 'filter' is implied and should not be specified.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # A filter view.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::SheetsV1::FilterView]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # The result of updating a conditional format rule.
      class UpdateConditionalFormatRuleResponse
        include Google::Apis::Core::Hashable
      
        # A rule describing a conditional format.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::SheetsV1::ConditionalFormatRule]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule = args[:rule] if args.key?(:rule)
        end
      end
      
      # Criteria for showing/hiding rows in a filter or filter view.
      class FilterCriteria
        include Google::Apis::Core::Hashable
      
        # A condition that can evaluate to true or false.
        # BooleanConditions are used by conditional formatting,
        # data validation, and the criteria in filters.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::SheetsV1::BooleanCondition]
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
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::DimensionRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # A data validation rule.
      class DataValidationRule
        include Google::Apis::Core::Hashable
      
        # A condition that can evaluate to true or false.
        # BooleanConditions are used by conditional formatting,
        # data validation, and the criteria in filters.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::SheetsV1::BooleanCondition]
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
      # It is an error to specify read only fields in the field mask.
      class UpdateSpreadsheetPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The fields that should be updated.  At least one field must be specified.
        # The root 'properties' is implied and should not be specified.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # Properties of a spreadsheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV1::SpreadsheetProperties]
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
      
      # The request for updating more than one range of values in a spreadsheet.
      class BatchUpdateValuesRequest
        include Google::Apis::Core::Hashable
      
        # The new values to apply to the spreadsheet.
        # Corresponds to the JSON property `data`
        # @return [Array<Google::Apis::SheetsV1::ValueRange>]
        attr_accessor :data
      
        # How the input data should be interpreted.
        # Corresponds to the JSON property `valueInputOption`
        # @return [String]
        attr_accessor :value_input_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @value_input_option = args[:value_input_option] if args.key?(:value_input_option)
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
      
      # A rule describing a conditional format.
      class ConditionalFormatRule
        include Google::Apis::Core::Hashable
      
        # A rule that applies a gradient color scale format, based on
        # the interpolation points listed. The format of a cell will vary
        # based on its contents as compared to the values of the interpolation
        # points.
        # Corresponds to the JSON property `gradientRule`
        # @return [Google::Apis::SheetsV1::GradientRule]
        attr_accessor :gradient_rule
      
        # A rule that may or may not match, depending on the condition.
        # Corresponds to the JSON property `booleanRule`
        # @return [Google::Apis::SheetsV1::BooleanRule]
        attr_accessor :boolean_rule
      
        # The ranges that will be formatted if the condition is true.
        # All the ranges must be on the same grid.
        # Corresponds to the JSON property `ranges`
        # @return [Array<Google::Apis::SheetsV1::GridRange>]
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
      # For example, with two subsequent SetBorderRequests:
      # 1) range: A1:A5 `` top: RED, bottom: WHITE ``
      # 2) range: A1:A5 `` left: BLUE ``
      # That would result in A1:A5 having a borders of
      # `` top: RED, bottom: WHITE, left: BLUE ``.
      # If you want to clear a border, explicitly set the style to `NONE`.
      class UpdateBordersRequest
        include Google::Apis::Core::Hashable
      
        # A border along a cell.
        # Corresponds to the JSON property `right`
        # @return [Google::Apis::SheetsV1::Border]
        attr_accessor :right
      
        # A border along a cell.
        # Corresponds to the JSON property `innerVertical`
        # @return [Google::Apis::SheetsV1::Border]
        attr_accessor :inner_vertical
      
        # A border along a cell.
        # Corresponds to the JSON property `top`
        # @return [Google::Apis::SheetsV1::Border]
        attr_accessor :top
      
        # A border along a cell.
        # Corresponds to the JSON property `innerHorizontal`
        # @return [Google::Apis::SheetsV1::Border]
        attr_accessor :inner_horizontal
      
        # A border along a cell.
        # Corresponds to the JSON property `bottom`
        # @return [Google::Apis::SheetsV1::Border]
        attr_accessor :bottom
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :range
      
        # A border along a cell.
        # Corresponds to the JSON property `left`
        # @return [Google::Apis::SheetsV1::Border]
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
          @bottom = args[:bottom] if args.key?(:bottom)
          @range = args[:range] if args.key?(:range)
          @left = args[:left] if args.key?(:left)
        end
      end
      
      # The borders of the cell.
      class Borders
        include Google::Apis::Core::Hashable
      
        # A border along a cell.
        # Corresponds to the JSON property `right`
        # @return [Google::Apis::SheetsV1::Border]
        attr_accessor :right
      
        # A border along a cell.
        # Corresponds to the JSON property `left`
        # @return [Google::Apis::SheetsV1::Border]
        attr_accessor :left
      
        # A border along a cell.
        # Corresponds to the JSON property `top`
        # @return [Google::Apis::SheetsV1::Border]
        attr_accessor :top
      
        # A border along a cell.
        # Corresponds to the JSON property `bottom`
        # @return [Google::Apis::SheetsV1::Border]
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
      class AddSheetRequest
        include Google::Apis::Core::Hashable
      
        # Properties of a sheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV1::SheetProperties]
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
        # @return [Google::Apis::SheetsV1::ProtectedRange]
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
        # Null and empty values will be skipped.
        # To set a cell to an empty value, set the string value to an empty string.
        # Corresponds to the JSON property `values`
        # @return [Array<Array<Object>>]
        attr_accessor :values
      
        # The range the values cover, in A1 notation.
        # For output, this range indicates the entire requested range,
        # even though the values will exclude trailing rows and columns.
        # Corresponds to the JSON property `range`
        # @return [String]
        attr_accessor :range
      
        # The major dimension of the values.
        # For output, if the spreadsheet data is: A1=1,B1=2,A2=3,B2=4,
        # then requesting range=A1:B2,majorDimension=ROWS will return [[1,2],[3,4]],
        # whereas requesting range=A1:B2,majorDimension=COLUMNS will return
        # [[1,3],[2,4]].
        # For input, with range=A1:B2,majorDimension=ROWS then [[1,2],[3,4]]
        # will set A1=1,B1=2,A2=3,B2=4. With range=A1:B2,majorDimension=COLUMNS
        # then [[1,2],[3,4]] will set A1=1,B1=3,A2=2,B2=4.
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
        # For example, if replacing "e" with o" in "Google Sheets", this would
        # be "3" because "Google Sheets" -> "Googlo Shoots".
        # Corresponds to the JSON property `occurrencesChanged`
        # @return [Fixnum]
        attr_accessor :occurrences_changed
      
        # The number of sheets changed.
        # Corresponds to the JSON property `sheetsChanged`
        # @return [Fixnum]
        attr_accessor :sheets_changed
      
        # The number of formula cells changed.
        # Corresponds to the JSON property `formulasChanged`
        # @return [Fixnum]
        attr_accessor :formulas_changed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values_changed = args[:values_changed] if args.key?(:values_changed)
          @rows_changed = args[:rows_changed] if args.key?(:rows_changed)
          @occurrences_changed = args[:occurrences_changed] if args.key?(:occurrences_changed)
          @sheets_changed = args[:sheets_changed] if args.key?(:sheets_changed)
          @formulas_changed = args[:formulas_changed] if args.key?(:formulas_changed)
        end
      end
      
      # The format of a cell.
      class CellFormat
        include Google::Apis::Core::Hashable
      
        # The horizontal alignment of the value in cell.
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        # How a hyperlink, if it exists, should be displayed in the cell.
        # Corresponds to the JSON property `hyperlinkDisplayType`
        # @return [String]
        attr_accessor :hyperlink_display_type
      
        # The borders of the cell.
        # Corresponds to the JSON property `borders`
        # @return [Google::Apis::SheetsV1::Borders]
        attr_accessor :borders
      
        # The direction of the text in the cell.
        # Corresponds to the JSON property `textDirection`
        # @return [String]
        attr_accessor :text_direction
      
        # The format of a run of text in a cell.
        # Absent values indicate that the field isn't specified.
        # Corresponds to the JSON property `textFormat`
        # @return [Google::Apis::SheetsV1::TextFormat]
        attr_accessor :text_format
      
        # The amount of padding around the cell, in pixels.
        # When updating padding, every field must be specified.
        # Corresponds to the JSON property `padding`
        # @return [Google::Apis::SheetsV1::Padding]
        attr_accessor :padding
      
        # The number format of a cell.
        # When updating, all fields must be set.
        # Corresponds to the JSON property `numberFormat`
        # @return [Google::Apis::SheetsV1::NumberFormat]
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
        # @return [Google::Apis::SheetsV1::Color]
        attr_accessor :background_color
      
        # The vertical alignment of the value in cell.
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
      
        # The 0-based start index of where to move the source data to,
        # based on the coordinates *before* the source data is removed
        # from the grid.  Existing data will be shifted down or right
        # (depending on the dimension) to make room for the moved dimensions.
        # The source dimensions are removed from the grid, so the
        # the data may end up in a different index than specified.
        # For example, given A1..A5 of 0, 1, 2, 3, 4 and wanting to move
        # "1" and "2" to between "3" and "4", the source would be `ROWS [1..3)`,
        # and the destination index would be '4' (the 0-based index of row 5).
        # The end result would be A1..A5 of 0, 3, 1, 2, 4.
        # Corresponds to the JSON property `destinationIndex`
        # @return [Fixnum]
        attr_accessor :destination_index
      
        # A range along a single dimension on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV1::DimensionRange]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_index = args[:destination_index] if args.key?(:destination_index)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Properties about a dimension.
      class DimensionProperties
        include Google::Apis::Core::Hashable
      
        # The height (if a row) or width (if a column) of the dimension in pixels.
        # Corresponds to the JSON property `pixelSize`
        # @return [Fixnum]
        attr_accessor :pixel_size
      
        # True if this dimension is explicitly hidden.
        # Corresponds to the JSON property `hiddenByUser`
        # @return [Boolean]
        attr_accessor :hidden_by_user
        alias_method :hidden_by_user?, :hidden_by_user
      
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
          @pixel_size = args[:pixel_size] if args.key?(:pixel_size)
          @hidden_by_user = args[:hidden_by_user] if args.key?(:hidden_by_user)
          @hidden_by_filter = args[:hidden_by_filter] if args.key?(:hidden_by_filter)
        end
      end
      
      # A single interpolation point a gradient conditional format.
      # These pin the gradient color scale according to the color,
      # type and value chosen.
      class InterpolationPoint
        include Google::Apis::Core::Hashable
      
        # The value this interpolation point uses.  May be a formula.
        # Unused if pointType is MIN or MAX.
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
        # @return [Google::Apis::SheetsV1::Color]
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
      
        # A list of updates to apply to the spreadsheet.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::SheetsV1::Request>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
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
        # This uses a wrapper message rather than simple int32 value
        # so that adding a new sheet can distinguish between adding
        # it at index 0 and adding it at the default (end) location.
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
        # @return [Google::Apis::SheetsV1::GridProperties]
        attr_accessor :grid_properties
      
        # The ID of the sheet.
        # This field cannot be changed once set.
        # This uses a wrapper message rather than simple int32 value because
        # the sheet_id '0' is very common and we want the ID to be explicit.
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
        # @return [Google::Apis::SheetsV1::Color]
        attr_accessor :tab_color
      
        # The type of sheet.
        # This field is read-only.
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
      
      # A protected range.
      class ProtectedRange
        include Google::Apis::Core::Hashable
      
        # The list of unprotected ranges within a protected sheet.
        # Unprotected ranges are only supported on protected sheets.
        # Corresponds to the JSON property `unprotectedRanges`
        # @return [Array<Google::Apis::SheetsV1::GridRange>]
        attr_accessor :unprotected_ranges
      
        # The description of this protected range.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The named range this protected range is backed by, if any.
        # When writing, only one of range or namedRangeId may be set.
        # Corresponds to the JSON property `namedRangeId`
        # @return [Fixnum]
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
        # @return [Google::Apis::SheetsV1::Editors]
        attr_accessor :editors
      
        # The ID of the protected range.
        # This field is read-only.
        # Corresponds to the JSON property `protectedRangeId`
        # @return [Fixnum]
        attr_accessor :protected_range_id
      
        # True if this this protected range will show a warning when editing.
        # Warning-based protection means that every user can edit data in the
        # protected range, except editing will prompt a warning asking the user
        # to confirm the edit.
        # When warning: if this field is true, then `editors` is ignored.
        # Additionally, if this field is changed from true to false and the
        # editors field is not set (nor included in the field mask), then
        # the editors will be set to all the editors in the document.
        # Corresponds to the JSON property `warningOnly`
        # @return [Boolean]
        attr_accessor :warning_only
        alias_method :warning_only?, :warning_only
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
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
      
        # The 0-based index of the rule to be deleted.
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
      
      # A combination of a source range and how to extend that source.
      class SourceAndDestination
        include Google::Apis::Core::Hashable
      
        # The number of rows or columns that data should be filled into.
        # Positive numbers expand beyond the last row or last column
        # of the source.  Negative numbers expand before the first row
        # or first column of the source.
        # Corresponds to the JSON property `fillLength`
        # @return [Fixnum]
        attr_accessor :fill_length
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :source
      
        # The dimension that data should be filled into.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fill_length = args[:fill_length] if args.key?(:fill_length)
          @source = args[:source] if args.key?(:source)
          @dimension = args[:dimension] if args.key?(:dimension)
        end
      end
      
      # The value of the condition.
      class ConditionValue
        include Google::Apis::Core::Hashable
      
        # A relative date (based on the current date).
        # Valid only if the type is DATE_BEFORE, DATE_AFTER,
        # DATE_ON_OR_BEFORE or DATE_ON_OR_AFTER.
        # Relative dates are not supported in data validation.
        # They are supported only in conditional formatting and
        # conditional filters.
        # Corresponds to the JSON property `relativeDate`
        # @return [String]
        attr_accessor :relative_date
      
        # A value the condition is based on.
        # The value will be parsed as if the user typed into a cell.
        # Formulas are supported (and must begin with an '=').
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
        # All indexes are 0-based.
        # Corresponds to the JSON property `coordinate`
        # @return [Google::Apis::SheetsV1::GridCoordinate]
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
        # For example, with cells "Google Sheets" and "Google Docs",
        # searching for "o.* (.*)" with a replacement of "$1 Rocks" would create
        # "GSheets Rocks" and "GDocs Rocks" respectively.
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
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
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
      # When updating, all fields must be set.
      class NumberFormat
        include Google::Apis::Core::Hashable
      
        # Pattern string used for formatting.
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # The type of the number format.
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
      
      # Updates properties of dimensions within the specified range.
      # It is an error to specify read only fields in the field mask.
      class UpdateDimensionPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The fields that should be updated.  At least one field must be specified.
        # The root 'properties' is implied and should not be specified.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # Properties about a dimension.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV1::DimensionProperties]
        attr_accessor :properties
      
        # A range along a single dimension on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::DimensionRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @properties = args[:properties] if args.key?(:properties)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # The editors of a protected range.
      class Editors
        include Google::Apis::Core::Hashable
      
        # True if anyone in the document's domain has edit access to the protected
        # range.  Domain protection is only supported on documents within a domain.
        # Corresponds to the JSON property `domainUsersCanEdit`
        # @return [Boolean]
        attr_accessor :domain_users_can_edit
        alias_method :domain_users_can_edit?, :domain_users_can_edit
      
        # The email addresses of groups with edit access to the protected range.
        # Corresponds to the JSON property `groups`
        # @return [Array<String>]
        attr_accessor :groups
      
        # The email addresses of users with edit access to the protected range.
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_users_can_edit = args[:domain_users_can_edit] if args.key?(:domain_users_can_edit)
          @groups = args[:groups] if args.key?(:groups)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # A spreadsheet.
      class Spreadsheet
        include Google::Apis::Core::Hashable
      
        # The ID of the spreadsheet.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # Properties of a spreadsheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV1::SpreadsheetProperties]
        attr_accessor :properties
      
        # The named ranges in the spreadsheet.
        # Corresponds to the JSON property `namedRanges`
        # @return [Array<Google::Apis::SheetsV1::NamedRange>]
        attr_accessor :named_ranges
      
        # Each sheet in the spreadsheet.
        # Corresponds to the JSON property `sheets`
        # @return [Array<Google::Apis::SheetsV1::Sheet>]
        attr_accessor :sheets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @properties = args[:properties] if args.key?(:properties)
          @named_ranges = args[:named_ranges] if args.key?(:named_ranges)
          @sheets = args[:sheets] if args.key?(:sheets)
        end
      end
      
      # Data in the grid, as well as metadata about the dimensions.
      class GridData
        include Google::Apis::Core::Hashable
      
        # Metadata about the requested columns in the grid, starting with the column
        # in startColumn.
        # Corresponds to the JSON property `columnMetadata`
        # @return [Array<Google::Apis::SheetsV1::DimensionProperties>]
        attr_accessor :column_metadata
      
        # The data in the grid, one entry per row,
        # starting with the row in startRow.
        # The values in RowData will correspond to columns starting
        # at start_column.
        # Corresponds to the JSON property `rowData`
        # @return [Array<Google::Apis::SheetsV1::RowData>]
        attr_accessor :row_data
      
        # Metadata about the requested rows in the grid, starting with the row
        # in startRow.
        # Corresponds to the JSON property `rowMetadata`
        # @return [Array<Google::Apis::SheetsV1::DimensionProperties>]
        attr_accessor :row_metadata
      
        # The first row this GridData refers to, 0-based.
        # Corresponds to the JSON property `startRow`
        # @return [Fixnum]
        attr_accessor :start_row
      
        # The first column this GridData refers to, 0-based.
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
          @row_metadata = args[:row_metadata] if args.key?(:row_metadata)
          @start_row = args[:start_row] if args.key?(:start_row)
          @start_column = args[:start_column] if args.key?(:start_column)
        end
      end
      
      # The default filter associated with a sheet.
      class BasicFilter
        include Google::Apis::Core::Hashable
      
        # The criteria for showing/hiding values per column.
        # The map's key is the column index, and the value is the criteria for
        # that column.
        # Corresponds to the JSON property `criteria`
        # @return [Hash<String,Google::Apis::SheetsV1::FilterCriteria>]
        attr_accessor :criteria
      
        # The sort order per column. Later specifications are used when values
        # are equal in the earlier specifications.
        # Corresponds to the JSON property `sortSpecs`
        # @return [Array<Google::Apis::SheetsV1::SortSpec>]
        attr_accessor :sort_specs
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @criteria = args[:criteria] if args.key?(:criteria)
          @sort_specs = args[:sort_specs] if args.key?(:sort_specs)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Duplicates the contents of a sheet.
      class DuplicateSheetRequest
        include Google::Apis::Core::Hashable
      
        # If set, the ID of the new sheet. If not set, an ID is chosen.
        # If set, the ID must not conflict with any existing sheet ID.
        # Corresponds to the JSON property `newSheetId`
        # @return [Fixnum]
        attr_accessor :new_sheet_id
      
        # The sheet to duplicate.
        # Corresponds to the JSON property `sourceSheetId`
        # @return [Fixnum]
        attr_accessor :source_sheet_id
      
        # The name of the new sheet.  If empty, a new name is chosen for you.
        # Corresponds to the JSON property `newSheetName`
        # @return [String]
        attr_accessor :new_sheet_name
      
        # The 0-based index the new sheet should be inserted at.
        # The index of all sheets after this are incremented.
        # Corresponds to the JSON property `insertSheetIndex`
        # @return [Fixnum]
        attr_accessor :insert_sheet_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_sheet_id = args[:new_sheet_id] if args.key?(:new_sheet_id)
          @source_sheet_id = args[:source_sheet_id] if args.key?(:source_sheet_id)
          @new_sheet_name = args[:new_sheet_name] if args.key?(:new_sheet_name)
          @insert_sheet_index = args[:insert_sheet_index] if args.key?(:insert_sheet_index)
        end
      end
      
      # The result of adding a filter view.
      class AddFilterViewResponse
        include Google::Apis::Core::Hashable
      
        # A filter view.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::SheetsV1::FilterView]
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
        # @return [Google::Apis::SheetsV1::SheetProperties]
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
      
        # The width of the border, in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        # The style of the border.
        # Corresponds to the JSON property `style`
        # @return [String]
        attr_accessor :style
      
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
        # @return [Google::Apis::SheetsV1::Color]
        attr_accessor :color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @width = args[:width] if args.key?(:width)
          @style = args[:style] if args.key?(:style)
          @color = args[:color] if args.key?(:color)
        end
      end
      
      # Adds a named range to the spreadsheet.
      class AddNamedRangeRequest
        include Google::Apis::Core::Hashable
      
        # A named range.
        # Corresponds to the JSON property `namedRange`
        # @return [Google::Apis::SheetsV1::NamedRange]
        attr_accessor :named_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @named_range = args[:named_range] if args.key?(:named_range)
        end
      end
      
      # Adds new cells to the last row with data in a sheet,
      # inserting new rows into the sheet if necessary.
      class AppendCellsRequest
        include Google::Apis::Core::Hashable
      
        # The sheet ID to append the data to.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The data to append.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::SheetsV1::RowData>]
        attr_accessor :rows
      
        # The fields of CellData to that should be updated.
        # At least one field must be specified.
        # The root is the CellData; 'row.values.' should not be specified.
        # Corresponds to the JSON property `cellDataFields`
        # @return [String]
        attr_accessor :cell_data_fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @rows = args[:rows] if args.key?(:rows)
          @cell_data_fields = args[:cell_data_fields] if args.key?(:cell_data_fields)
        end
      end
      
      # Data about each cell in a row.
      class RowData
        include Google::Apis::Core::Hashable
      
        # The values in the row, one per column.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::SheetsV1::CellData>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Updates all cells in the range to the values in the given Cell object.
      # Only the fields set in the fields will be updated.
      # If writing a cell with a formula, the formula's ranges will automatically
      # increment for each field in the range.
      # For example, if writing a cell with formula `=A1` into range B2:C4,
      # B2 would be `=A1`, B3 would be `=A2`, B4 would be `=A3`,
      # C2 would be `=B1`, C3 would be `=B2`, C4 would be `=B3`.
      # To keep the formula's ranges static, use the `$` indicator.
      # For example, if the formula was `=$A$1`, then neither
      # the row nor column would increment.
      class RepeatCellRequest
        include Google::Apis::Core::Hashable
      
        # The fields that should be updated.  At least one field must be specified.
        # The root 'cell' is implied and should not be specified.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # Data about a specific cell.
        # Corresponds to the JSON property `cell`
        # @return [Google::Apis::SheetsV1::CellData]
        attr_accessor :cell
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @cell = args[:cell] if args.key?(:cell)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # A named range.
      class NamedRange
        include Google::Apis::Core::Hashable
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :range
      
        # The ID of the named range.
        # Corresponds to the JSON property `namedRangeId`
        # @return [Fixnum]
        attr_accessor :named_range_id
      
        # The name of the named range.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
          @named_range_id = args[:named_range_id] if args.key?(:named_range_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Sets the basic filter associated with a sheet.
      class SetBasicFilterRequest
        include Google::Apis::Core::Hashable
      
        # The default filter associated with a sheet.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::SheetsV1::BasicFilter]
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
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::SheetsV1::DimensionRange]
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
        # @return [Google::Apis::SheetsV1::FilterView]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # A range on a sheet.
      # All indexes are 0-based.
      # Indexes are half open, e.g the start index is inclusive
      # and the end index is exclusive -- [start_index, end_index).
      # Missing indexes indicate the range is unbounded on that side.
      # For example, if "Sheet1" is grid ID 0, then:
      # Sheet1!A1:A1 == sheet_id: 0,
      # start_row_index: 0, end_row_index: 1,
      # start_column_index: 0, end_column_index: 1
      # Sheet1!A3:B4 == sheet_id: 0,
      # start_row_index: 2, end_row_index: 4,
      # start_column_index: 0, end_column_index: 2
      # Sheet1!A:B == sheet_id: 0,
      # start_column_index: 0, end_column_index: 2
      # Sheet1!A5:B == sheet_id: 0,
      # start_row_index: 4,
      # start_column_index: 0, end_column_index: 2
      # Sheet1 == sheet_id:0
      # The start index must always be less than or equal to the end index.
      # If the start index equals the end index, then the range is empty.
      # Empty ranges are typically not meaningful and are usually rendered in the
      # UI as "#REF!".
      class GridRange
        include Google::Apis::Core::Hashable
      
        # The start column (inclusive) of the range, or not set if unbounded.
        # Corresponds to the JSON property `startColumnIndex`
        # @return [Fixnum]
        attr_accessor :start_column_index
      
        # The sheet this range is on.
        # Corresponds to the JSON property `sheetId`
        # @return [Fixnum]
        attr_accessor :sheet_id
      
        # The end column (exclusive) of the range, or not set if unbounded.
        # Corresponds to the JSON property `endColumnIndex`
        # @return [Fixnum]
        attr_accessor :end_column_index
      
        # The end row (exclusive) of the range, or not set if unbounded.
        # Corresponds to the JSON property `endRowIndex`
        # @return [Fixnum]
        attr_accessor :end_row_index
      
        # The start row (inclusive) of the range, or not set if unbounded.
        # Corresponds to the JSON property `startRowIndex`
        # @return [Fixnum]
        attr_accessor :start_row_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_column_index = args[:start_column_index] if args.key?(:start_column_index)
          @sheet_id = args[:sheet_id] if args.key?(:sheet_id)
          @end_column_index = args[:end_column_index] if args.key?(:end_column_index)
          @end_row_index = args[:end_row_index] if args.key?(:end_row_index)
          @start_row_index = args[:start_row_index] if args.key?(:start_row_index)
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
      
      # Moves an embedded object (such as a chart or image) to its own sheet.
      class MoveEmbeddedObjectToSheetRequest
        include Google::Apis::Core::Hashable
      
        # The sheet to move it to.  If not set, a sheet ID is chosen for you.
        # If set, the ID must not conflict with any existing sheet ID.
        # Corresponds to the JSON property `newSheetId`
        # @return [Fixnum]
        attr_accessor :new_sheet_id
      
        # The id of the object to moved.
        # Corresponds to the JSON property `objectId`
        # @return [Fixnum]
        attr_accessor :object_id_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_sheet_id = args[:new_sheet_id] if args.key?(:new_sheet_id)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
        end
      end
      
      # Updates all cells in a range with new data.
      class UpdateCellsRequest
        include Google::Apis::Core::Hashable
      
        # The data to write.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::SheetsV1::RowData>]
        attr_accessor :rows
      
        # The fields of CellData to that should be updated.
        # At least one field must be specified.
        # The root is the CellData; 'row.values.' should not be specified.
        # Corresponds to the JSON property `cellDataFields`
        # @return [String]
        attr_accessor :cell_data_fields
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :range
      
        # A coordinate in a sheet.
        # All indexes are 0-based.
        # Corresponds to the JSON property `start`
        # @return [Google::Apis::SheetsV1::GridCoordinate]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rows = args[:rows] if args.key?(:rows)
          @cell_data_fields = args[:cell_data_fields] if args.key?(:cell_data_fields)
          @range = args[:range] if args.key?(:range)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Copies data from the source to the destination.
      class CopyPasteRequest
        include Google::Apis::Core::Hashable
      
        # How that data should be oriented when pasting.
        # Corresponds to the JSON property `pasteOrientation`
        # @return [String]
        attr_accessor :paste_orientation
      
        # What kind of data to paste.
        # Corresponds to the JSON property `pasteType`
        # @return [String]
        attr_accessor :paste_type
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :source
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paste_orientation = args[:paste_orientation] if args.key?(:paste_orientation)
          @paste_type = args[:paste_type] if args.key?(:paste_type)
          @source = args[:source] if args.key?(:source)
          @destination = args[:destination] if args.key?(:destination)
        end
      end
      
      # A sheet in a spreadsheet.
      class Sheet
        include Google::Apis::Core::Hashable
      
        # Properties of a sheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV1::SheetProperties]
        attr_accessor :properties
      
        # The filter views in this sheet.
        # Corresponds to the JSON property `filterViews`
        # @return [Array<Google::Apis::SheetsV1::FilterView>]
        attr_accessor :filter_views
      
        # The conditional format rules in this sheet.
        # Corresponds to the JSON property `conditionalFormats`
        # @return [Array<Google::Apis::SheetsV1::ConditionalFormatRule>]
        attr_accessor :conditional_formats
      
        # The protected ranges in this sheet.
        # Corresponds to the JSON property `protectedRanges`
        # @return [Array<Google::Apis::SheetsV1::ProtectedRange>]
        attr_accessor :protected_ranges
      
        # The default filter associated with a sheet.
        # Corresponds to the JSON property `basicFilter`
        # @return [Google::Apis::SheetsV1::BasicFilter]
        attr_accessor :basic_filter
      
        # The ranges that are merged together.
        # Corresponds to the JSON property `merges`
        # @return [Array<Google::Apis::SheetsV1::GridRange>]
        attr_accessor :merges
      
        # Data in the grid, if this is a grid sheet.
        # The number of GridData objects returned is dependent on the number of
        # ranges requested on this sheet. For example, if this is representing
        # Sheet1, and the spreadsheet was requested with ranges
        # Sheet1!A1:C10 and Sheet1!D15:E20, then the first GridData will have a
        # startRow/startColumn of 0, while the second one will have startRow of
        # 14 (0-based row 15), and startColumn 3 (0-based column D).
        # Corresponds to the JSON property `data`
        # @return [Array<Google::Apis::SheetsV1::GridData>]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
          @filter_views = args[:filter_views] if args.key?(:filter_views)
          @conditional_formats = args[:conditional_formats] if args.key?(:conditional_formats)
          @protected_ranges = args[:protected_ranges] if args.key?(:protected_ranges)
          @basic_filter = args[:basic_filter] if args.key?(:basic_filter)
          @merges = args[:merges] if args.key?(:merges)
          @data = args[:data] if args.key?(:data)
        end
      end
      
      # The reply for batch updating a spreadsheet.
      class BatchUpdateSpreadsheetResponse
        include Google::Apis::Core::Hashable
      
        # The spreadsheet the updates were applied to.
        # Corresponds to the JSON property `spreadsheetId`
        # @return [String]
        attr_accessor :spreadsheet_id
      
        # The reply of the updates.  This maps 1:1 with the updates, although
        # replies to some requests may be empty.
        # Corresponds to the JSON property `replies`
        # @return [Array<Google::Apis::SheetsV1::Response>]
        attr_accessor :replies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spreadsheet_id = args[:spreadsheet_id] if args.key?(:spreadsheet_id)
          @replies = args[:replies] if args.key?(:replies)
        end
      end
      
      # Each kind of value a cell in a spreadsheet can have.
      class ExtendedValue
        include Google::Apis::Core::Hashable
      
        # An error in a cell.
        # Corresponds to the JSON property `errorValue`
        # @return [Google::Apis::SheetsV1::ErrorValue]
        attr_accessor :error_value
      
        # Represents a formula.
        # Corresponds to the JSON property `formulaValue`
        # @return [String]
        attr_accessor :formula_value
      
        # Represents a boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Represents a string value.
        # Leading single quotes are not included. For example, if the user typed
        # '123 into the UI, this would be represented as a string_value of "123".
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Represents a double value.
        # Note: Dates, Times and DateTimes are represented as "serial numbers".
        # See the note on GetValuesRequest.RenderedDateTimeOption.SERIAL_TIME for
        # more information.
        # Corresponds to the JSON property `numberValue`
        # @return [Float]
        attr_accessor :number_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_value = args[:error_value] if args.key?(:error_value)
          @formula_value = args[:formula_value] if args.key?(:formula_value)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @number_value = args[:number_value] if args.key?(:number_value)
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
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :source
      
        # A coordinate in a sheet.
        # All indexes are 0-based.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::SheetsV1::GridCoordinate]
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
      
      # A rule that applies a gradient color scale format, based on
      # the interpolation points listed. The format of a cell will vary
      # based on its contents as compared to the values of the interpolation
      # points.
      class GradientRule
        include Google::Apis::Core::Hashable
      
        # A single interpolation point a gradient conditional format.
        # These pin the gradient color scale according to the color,
        # type and value chosen.
        # Corresponds to the JSON property `maxpoint`
        # @return [Google::Apis::SheetsV1::InterpolationPoint]
        attr_accessor :maxpoint
      
        # A single interpolation point a gradient conditional format.
        # These pin the gradient color scale according to the color,
        # type and value chosen.
        # Corresponds to the JSON property `midpoint`
        # @return [Google::Apis::SheetsV1::InterpolationPoint]
        attr_accessor :midpoint
      
        # A single interpolation point a gradient conditional format.
        # These pin the gradient color scale according to the color,
        # type and value chosen.
        # Corresponds to the JSON property `minpoint`
        # @return [Google::Apis::SheetsV1::InterpolationPoint]
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
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
        attr_accessor :range
      
        # A combination of a source range and how to extend that source.
        # Corresponds to the JSON property `sourceAndDestination`
        # @return [Google::Apis::SheetsV1::SourceAndDestination]
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
      
      # Updates properties of the sheet with the specified sheet id.
      # It is an error to specify read only fields in the field mask.
      class UpdateSheetPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # The fields that should be updated.  At least one field must be specified.
        # The root 'properties' is implied and should not be specified.
        # Corresponds to the JSON property `fields`
        # @return [String]
        attr_accessor :fields
      
        # Properties of a sheet.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::SheetsV1::SheetProperties]
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
      
      # A rule that may or may not match, depending on the condition.
      class BooleanRule
        include Google::Apis::Core::Hashable
      
        # A condition that can evaluate to true or false.
        # BooleanConditions are used by conditional formatting,
        # data validation, and the criteria in filters.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::SheetsV1::BooleanCondition]
        attr_accessor :condition
      
        # The format of a cell.
        # Corresponds to the JSON property `format`
        # @return [Google::Apis::SheetsV1::CellFormat]
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
      
      # Adds a filter view.
      class AddFilterViewRequest
        include Google::Apis::Core::Hashable
      
        # A filter view.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::SheetsV1::FilterView]
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
      
        # The number of columns in the grid.
        # Corresponds to the JSON property `columnCount`
        # @return [Fixnum]
        attr_accessor :column_count
      
        # The number of rows in the grid.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # The number of rows that are frozen in the grid.
        # Corresponds to the JSON property `frozenRowCount`
        # @return [Fixnum]
        attr_accessor :frozen_row_count
      
        # True if the grid isn't showing gridlines in the UI.
        # Corresponds to the JSON property `hideGridlines`
        # @return [Boolean]
        attr_accessor :hide_gridlines
        alias_method :hide_gridlines?, :hide_gridlines
      
        # The number of columns that are frozen in the grid.
        # Corresponds to the JSON property `frozenColumnCount`
        # @return [Fixnum]
        attr_accessor :frozen_column_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_count = args[:column_count] if args.key?(:column_count)
          @row_count = args[:row_count] if args.key?(:row_count)
          @frozen_row_count = args[:frozen_row_count] if args.key?(:frozen_row_count)
          @hide_gridlines = args[:hide_gridlines] if args.key?(:hide_gridlines)
          @frozen_column_count = args[:frozen_column_count] if args.key?(:frozen_column_count)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Removes the named range with the given ID from the spreadsheet.
      class DeleteNamedRangeRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the named range to delete.
        # Corresponds to the JSON property `namedRangeId`
        # @return [Fixnum]
        attr_accessor :named_range_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @named_range_id = args[:named_range_id] if args.key?(:named_range_id)
        end
      end
      
      # Sets a data validation rule to every cell in the range.
      # To clear validation in a range, call this with no rule specified.
      class SetDataValidationRequest
        include Google::Apis::Core::Hashable
      
        # A data validation rule.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::SheetsV1::DataValidationRule]
        attr_accessor :rule
      
        # A range on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # For example, if "Sheet1" is grid ID 0, then:
        # Sheet1!A1:A1 == sheet_id: 0,
        # start_row_index: 0, end_row_index: 1,
        # start_column_index: 0, end_column_index: 1
        # Sheet1!A3:B4 == sheet_id: 0,
        # start_row_index: 2, end_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A:B == sheet_id: 0,
        # start_column_index: 0, end_column_index: 2
        # Sheet1!A5:B == sheet_id: 0,
        # start_row_index: 4,
        # start_column_index: 0, end_column_index: 2
        # Sheet1 == sheet_id:0
        # The start index must always be less than or equal to the end index.
        # If the start index equals the end index, then the range is empty.
        # Empty ranges are typically not meaningful and are usually rendered in the
        # UI as "#REF!".
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::GridRange]
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
      
      # The response when retrieving more than one range of values in a spreadsheet.
      class BatchGetValuesResponse
        include Google::Apis::Core::Hashable
      
        # The requested values. The order of the ValueRanges is the same as the
        # order of the requested ranges.
        # Corresponds to the JSON property `valueRanges`
        # @return [Array<Google::Apis::SheetsV1::ValueRange>]
        attr_accessor :value_ranges
      
        # The id of the spreadsheet to retrieve data from.
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
      
      # A single kind of update to apply to a spreadsheet.
      class Request
        include Google::Apis::Core::Hashable
      
        # Removes the named range with the given ID from the spreadsheet.
        # Corresponds to the JSON property `deleteNamedRange`
        # @return [Google::Apis::SheetsV1::DeleteNamedRangeRequest]
        attr_accessor :delete_named_range
      
        # Updates properties of the named range with the specified named range id.
        # It is an error to specify read only fields in the field mask.
        # Corresponds to the JSON property `updateNamedRange`
        # @return [Google::Apis::SheetsV1::UpdateNamedRangeRequest]
        attr_accessor :update_named_range
      
        # Adds a filter view.
        # Corresponds to the JSON property `addFilterView`
        # @return [Google::Apis::SheetsV1::AddFilterViewRequest]
        attr_accessor :add_filter_view
      
        # Updates properties of a spreadsheet.
        # It is an error to specify read only fields in the field mask.
        # Corresponds to the JSON property `updateSpreadsheetProperties`
        # @return [Google::Apis::SheetsV1::UpdateSpreadsheetPropertiesRequest]
        attr_accessor :update_spreadsheet_properties
      
        # Appends rows or columns to the end of a sheet.
        # Corresponds to the JSON property `appendDimension`
        # @return [Google::Apis::SheetsV1::AppendDimensionRequest]
        attr_accessor :append_dimension
      
        # Moves an embedded object (such as a chart or image) to its own sheet.
        # Corresponds to the JSON property `moveEmbeddedObjectToSheet`
        # @return [Google::Apis::SheetsV1::MoveEmbeddedObjectToSheetRequest]
        attr_accessor :move_embedded_object_to_sheet
      
        # Unmerges cells in the given range.
        # Corresponds to the JSON property `unmergeCells`
        # @return [Google::Apis::SheetsV1::UnmergeCellsRequest]
        attr_accessor :unmerge_cells
      
        # Updates an existing protected range with the specified protected range id.
        # Corresponds to the JSON property `updateProtectedRange`
        # @return [Google::Apis::SheetsV1::UpdateProtectedRangeRequest]
        attr_accessor :update_protected_range
      
        # Deletes a particular filter view.
        # Corresponds to the JSON property `deleteFilterView`
        # @return [Google::Apis::SheetsV1::DeleteFilterViewRequest]
        attr_accessor :delete_filter_view
      
        # Clears the basic filter, if any exists on the sheet.
        # Corresponds to the JSON property `clearBasicFilter`
        # @return [Google::Apis::SheetsV1::ClearBasicFilterRequest]
        attr_accessor :clear_basic_filter
      
        # Sorts data in rows based on a sort order per column.
        # Corresponds to the JSON property `sortRange`
        # @return [Google::Apis::SheetsV1::SortRangeRequest]
        attr_accessor :sort_range
      
        # Sets a data validation rule to every cell in the range.
        # To clear validation in a range, call this with no rule specified.
        # Corresponds to the JSON property `setDataValidation`
        # @return [Google::Apis::SheetsV1::SetDataValidationRequest]
        attr_accessor :set_data_validation
      
        # Updates all cells in the range to the values in the given Cell object.
        # Only the fields set in the fields will be updated.
        # If writing a cell with a formula, the formula's ranges will automatically
        # increment for each field in the range.
        # For example, if writing a cell with formula `=A1` into range B2:C4,
        # B2 would be `=A1`, B3 would be `=A2`, B4 would be `=A3`,
        # C2 would be `=B1`, C3 would be `=B2`, C4 would be `=B3`.
        # To keep the formula's ranges static, use the `$` indicator.
        # For example, if the formula was `=$A$1`, then neither
        # the row nor column would increment.
        # Corresponds to the JSON property `repeatCell`
        # @return [Google::Apis::SheetsV1::RepeatCellRequest]
        attr_accessor :repeat_cell
      
        # Updates all cells in a range with new data.
        # Corresponds to the JSON property `updateCells`
        # @return [Google::Apis::SheetsV1::UpdateCellsRequest]
        attr_accessor :update_cells
      
        # Updates properties of the filter view.
        # Corresponds to the JSON property `updateFilterView`
        # @return [Google::Apis::SheetsV1::UpdateFilterViewRequest]
        attr_accessor :update_filter_view
      
        # Adds a new sheet.
        # When a sheet is added at a given index,
        # all subsequent sheets' indexes are incremented.
        # Corresponds to the JSON property `addSheet`
        # @return [Google::Apis::SheetsV1::AddSheetRequest]
        attr_accessor :add_sheet
      
        # Updates properties of the sheet with the specified sheet id.
        # It is an error to specify read only fields in the field mask.
        # Corresponds to the JSON property `updateSheetProperties`
        # @return [Google::Apis::SheetsV1::UpdateSheetPropertiesRequest]
        attr_accessor :update_sheet_properties
      
        # Deletes the requested sheet.
        # Corresponds to the JSON property `deleteSheet`
        # @return [Google::Apis::SheetsV1::DeleteSheetRequest]
        attr_accessor :delete_sheet
      
        # Updates properties of dimensions within the specified range.
        # It is an error to specify read only fields in the field mask.
        # Corresponds to the JSON property `updateDimensionProperties`
        # @return [Google::Apis::SheetsV1::UpdateDimensionPropertiesRequest]
        attr_accessor :update_dimension_properties
      
        # Deletes the protected range with the given id.
        # Corresponds to the JSON property `deleteProtectedRange`
        # @return [Google::Apis::SheetsV1::DeleteProtectedRangeRequest]
        attr_accessor :delete_protected_range
      
        # Adds a new protected range.
        # Corresponds to the JSON property `addProtectedRange`
        # @return [Google::Apis::SheetsV1::AddProtectedRangeRequest]
        attr_accessor :add_protected_range
      
        # Finds and replaces data in cells over a range, sheet, or all sheets.
        # Corresponds to the JSON property `findReplace`
        # @return [Google::Apis::SheetsV1::FindReplaceRequest]
        attr_accessor :find_replace
      
        # Updates a conditional format rule at the given index,
        # or moves a conditional format rule to another index.
        # Corresponds to the JSON property `updateConditionalFormatRule`
        # @return [Google::Apis::SheetsV1::UpdateConditionalFormatRuleRequest]
        attr_accessor :update_conditional_format_rule
      
        # Sets the basic filter associated with a sheet.
        # Corresponds to the JSON property `setBasicFilter`
        # @return [Google::Apis::SheetsV1::SetBasicFilterRequest]
        attr_accessor :set_basic_filter
      
        # Merges all cells in the range.
        # Corresponds to the JSON property `mergeCells`
        # @return [Google::Apis::SheetsV1::MergeCellsRequest]
        attr_accessor :merge_cells
      
        # Deletes a conditional format rule at the given index.
        # All subsequent rules' indexes are decremented.
        # Corresponds to the JSON property `deleteConditionalFormatRule`
        # @return [Google::Apis::SheetsV1::DeleteConditionalFormatRuleRequest]
        attr_accessor :delete_conditional_format_rule
      
        # Deletes the dimensions from the sheet.
        # Corresponds to the JSON property `deleteDimension`
        # @return [Google::Apis::SheetsV1::DeleteDimensionRequest]
        attr_accessor :delete_dimension
      
        # Inserts data into the spreadsheet starting at the specified coordinate.
        # Corresponds to the JSON property `pasteData`
        # @return [Google::Apis::SheetsV1::PasteDataRequest]
        attr_accessor :paste_data
      
        # Deletes the embedded object with the given ID.
        # Corresponds to the JSON property `deleteEmbeddedObject`
        # @return [Google::Apis::SheetsV1::DeleteEmbeddedObjectRequest]
        attr_accessor :delete_embedded_object
      
        # Adds a new conditional format rule at the given index.
        # All subsequent rules' indexes are incremented.
        # Corresponds to the JSON property `addConditionalFormatRule`
        # @return [Google::Apis::SheetsV1::AddConditionalFormatRuleRequest]
        attr_accessor :add_conditional_format_rule
      
        # Updates the borders of a range.
        # If a field is not set in the request, that means the border remains as-is.
        # For example, with two subsequent SetBorderRequests:
        # 1) range: A1:A5 `` top: RED, bottom: WHITE ``
        # 2) range: A1:A5 `` left: BLUE ``
        # That would result in A1:A5 having a borders of
        # `` top: RED, bottom: WHITE, left: BLUE ``.
        # If you want to clear a border, explicitly set the style to `NONE`.
        # Corresponds to the JSON property `updateBorders`
        # @return [Google::Apis::SheetsV1::UpdateBordersRequest]
        attr_accessor :update_borders
      
        # Automatically resizes one or more dimensions based on the contents
        # of the cells in that dimension.
        # Corresponds to the JSON property `autoResizeDimensions`
        # @return [Google::Apis::SheetsV1::AutoResizeDimensionsRequest]
        attr_accessor :auto_resize_dimensions
      
        # Duplicates the contents of a sheet.
        # Corresponds to the JSON property `duplicateSheet`
        # @return [Google::Apis::SheetsV1::DuplicateSheetRequest]
        attr_accessor :duplicate_sheet
      
        # Duplicates a particular filter view.
        # Corresponds to the JSON property `duplicateFilterView`
        # @return [Google::Apis::SheetsV1::DuplicateFilterViewRequest]
        attr_accessor :duplicate_filter_view
      
        # Moves data from the source to the destination.
        # Corresponds to the JSON property `cutPaste`
        # @return [Google::Apis::SheetsV1::CutPasteRequest]
        attr_accessor :cut_paste
      
        # Adds new cells to the last row with data in a sheet,
        # inserting new rows into the sheet if necessary.
        # Corresponds to the JSON property `appendCells`
        # @return [Google::Apis::SheetsV1::AppendCellsRequest]
        attr_accessor :append_cells
      
        # Fills in more data based on existing data.
        # Corresponds to the JSON property `autoFill`
        # @return [Google::Apis::SheetsV1::AutoFillRequest]
        attr_accessor :auto_fill
      
        # Adds a named range to the spreadsheet.
        # Corresponds to the JSON property `addNamedRange`
        # @return [Google::Apis::SheetsV1::AddNamedRangeRequest]
        attr_accessor :add_named_range
      
        # Splits a column of text into multiple columns,
        # based on a delimiter in each cell.
        # Corresponds to the JSON property `textToColumns`
        # @return [Google::Apis::SheetsV1::TextToColumnsRequest]
        attr_accessor :text_to_columns
      
        # Moves one or more rows or columns.
        # Corresponds to the JSON property `moveDimension`
        # @return [Google::Apis::SheetsV1::MoveDimensionRequest]
        attr_accessor :move_dimension
      
        # Inserts rows or columns in a sheet at a particular index.
        # Corresponds to the JSON property `insertDimension`
        # @return [Google::Apis::SheetsV1::InsertDimensionRequest]
        attr_accessor :insert_dimension
      
        # Copies data from the source to the destination.
        # Corresponds to the JSON property `copyPaste`
        # @return [Google::Apis::SheetsV1::CopyPasteRequest]
        attr_accessor :copy_paste
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete_named_range = args[:delete_named_range] if args.key?(:delete_named_range)
          @update_named_range = args[:update_named_range] if args.key?(:update_named_range)
          @add_filter_view = args[:add_filter_view] if args.key?(:add_filter_view)
          @update_spreadsheet_properties = args[:update_spreadsheet_properties] if args.key?(:update_spreadsheet_properties)
          @append_dimension = args[:append_dimension] if args.key?(:append_dimension)
          @move_embedded_object_to_sheet = args[:move_embedded_object_to_sheet] if args.key?(:move_embedded_object_to_sheet)
          @unmerge_cells = args[:unmerge_cells] if args.key?(:unmerge_cells)
          @update_protected_range = args[:update_protected_range] if args.key?(:update_protected_range)
          @delete_filter_view = args[:delete_filter_view] if args.key?(:delete_filter_view)
          @clear_basic_filter = args[:clear_basic_filter] if args.key?(:clear_basic_filter)
          @sort_range = args[:sort_range] if args.key?(:sort_range)
          @set_data_validation = args[:set_data_validation] if args.key?(:set_data_validation)
          @repeat_cell = args[:repeat_cell] if args.key?(:repeat_cell)
          @update_cells = args[:update_cells] if args.key?(:update_cells)
          @update_filter_view = args[:update_filter_view] if args.key?(:update_filter_view)
          @add_sheet = args[:add_sheet] if args.key?(:add_sheet)
          @update_sheet_properties = args[:update_sheet_properties] if args.key?(:update_sheet_properties)
          @delete_sheet = args[:delete_sheet] if args.key?(:delete_sheet)
          @update_dimension_properties = args[:update_dimension_properties] if args.key?(:update_dimension_properties)
          @delete_protected_range = args[:delete_protected_range] if args.key?(:delete_protected_range)
          @add_protected_range = args[:add_protected_range] if args.key?(:add_protected_range)
          @find_replace = args[:find_replace] if args.key?(:find_replace)
          @update_conditional_format_rule = args[:update_conditional_format_rule] if args.key?(:update_conditional_format_rule)
          @set_basic_filter = args[:set_basic_filter] if args.key?(:set_basic_filter)
          @merge_cells = args[:merge_cells] if args.key?(:merge_cells)
          @delete_conditional_format_rule = args[:delete_conditional_format_rule] if args.key?(:delete_conditional_format_rule)
          @delete_dimension = args[:delete_dimension] if args.key?(:delete_dimension)
          @paste_data = args[:paste_data] if args.key?(:paste_data)
          @delete_embedded_object = args[:delete_embedded_object] if args.key?(:delete_embedded_object)
          @add_conditional_format_rule = args[:add_conditional_format_rule] if args.key?(:add_conditional_format_rule)
          @update_borders = args[:update_borders] if args.key?(:update_borders)
          @auto_resize_dimensions = args[:auto_resize_dimensions] if args.key?(:auto_resize_dimensions)
          @duplicate_sheet = args[:duplicate_sheet] if args.key?(:duplicate_sheet)
          @duplicate_filter_view = args[:duplicate_filter_view] if args.key?(:duplicate_filter_view)
          @cut_paste = args[:cut_paste] if args.key?(:cut_paste)
          @append_cells = args[:append_cells] if args.key?(:append_cells)
          @auto_fill = args[:auto_fill] if args.key?(:auto_fill)
          @add_named_range = args[:add_named_range] if args.key?(:add_named_range)
          @text_to_columns = args[:text_to_columns] if args.key?(:text_to_columns)
          @move_dimension = args[:move_dimension] if args.key?(:move_dimension)
          @insert_dimension = args[:insert_dimension] if args.key?(:insert_dimension)
          @copy_paste = args[:copy_paste] if args.key?(:copy_paste)
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
        # either the green or red background.  If inheritFromBefore is true,
        # the two new rows will be red (because the row before the insertion point
        # was red), whereas if inheritFromBefore is false, the two new rows will
        # be green (because the rows after the insertion point were green).
        # Corresponds to the JSON property `inheritFromBefore`
        # @return [Boolean]
        attr_accessor :inherit_from_before
        alias_method :inherit_from_before?, :inherit_from_before
      
        # A range along a single dimension on a sheet.
        # All indexes are 0-based.
        # Indexes are half open, e.g the start index is inclusive
        # and the end index is exclusive -- [start_index, end_index).
        # Missing indexes indicate the range is unbounded on that side.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::SheetsV1::DimensionRange]
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
      
      # The result of deleting a conditional format rule.
      class DeleteConditionalFormatRuleResponse
        include Google::Apis::Core::Hashable
      
        # A rule describing a conditional format.
        # Corresponds to the JSON property `deleted`
        # @return [Google::Apis::SheetsV1::ConditionalFormatRule]
        attr_accessor :deleted
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] if args.key?(:deleted)
        end
      end
    end
  end
end
