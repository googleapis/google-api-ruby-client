# Copyright 2020 Google LLC
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
    module DrivelabelsV2
      
      # The color derived from BadgeConfig and changed to the closest recommended
      # supported color.
      class GoogleAppsDriveLabelsV2BadgeColors
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DrivelabelsV2::GoogleTypeColor]
        attr_accessor :background_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `foregroundColor`
        # @return [Google::Apis::DrivelabelsV2::GoogleTypeColor]
        attr_accessor :foreground_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `soloColor`
        # @return [Google::Apis::DrivelabelsV2::GoogleTypeColor]
        attr_accessor :solo_color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @foreground_color = args[:foreground_color] if args.key?(:foreground_color)
          @solo_color = args[:solo_color] if args.key?(:solo_color)
        end
      end
      
      # Badge status of the label.
      class GoogleAppsDriveLabelsV2BadgeConfig
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::DrivelabelsV2::GoogleTypeColor]
        attr_accessor :color
      
        # Override the default global priority of this badge. When set to 0, the default
        # priority heuristic is used.
        # Corresponds to the JSON property `priorityOverride`
        # @return [Fixnum]
        attr_accessor :priority_override
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color = args[:color] if args.key?(:color)
          @priority_override = args[:priority_override] if args.key?(:priority_override)
        end
      end
      
      # Defines a field that has a display name, data type, and other configuration
      # options. This field defines the kind of metadata that may be set on a Drive
      # item.
      class GoogleAppsDriveLabelsV2Field
        include Google::Apis::Core::Hashable
      
        # The capabilities related to this field on applied metadata.
        # Corresponds to the JSON property `appliedCapabilities`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldAppliedCapabilities]
        attr_accessor :applied_capabilities
      
        # Output only. The time this field was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Information about a user.
        # Corresponds to the JSON property `creator`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :creator
      
        # Options for the date field type.
        # Corresponds to the JSON property `dateOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldDateOptions]
        attr_accessor :date_options
      
        # Output only. The time this field was disabled. This value has no meaning when
        # the field is not disabled.
        # Corresponds to the JSON property `disableTime`
        # @return [String]
        attr_accessor :disable_time
      
        # Information about a user.
        # Corresponds to the JSON property `disabler`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :disabler
      
        # UI display hints for rendering a field.
        # Corresponds to the JSON property `displayHints`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldDisplayHints]
        attr_accessor :display_hints
      
        # Output only. The key of a field, unique within a label or library. This value
        # is autogenerated. Matches the regex: `([a-zA-Z0-9])+`
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Options for the Integer field type.
        # Corresponds to the JSON property `integerOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldIntegerOptions]
        attr_accessor :integer_options
      
        # The lifecycle state of an object, such as label, field, or choice. The
        # lifecycle enforces the following transitions: * `UNPUBLISHED_DRAFT` (starting
        # state) * `UNPUBLISHED_DRAFT` -> `PUBLISHED` * `UNPUBLISHED_DRAFT` -> (Deleted)
        # * `PUBLISHED` -> `DISABLED` * `DISABLED` -> `PUBLISHED` * `DISABLED` -> (
        # Deleted) The published and disabled states have some distinct characteristics:
        # * Published—Some kinds of changes might be made to an object in this state, in
        # which case `has_unpublished_changes` will be true. Also, some kinds of changes
        # are not permitted. Generally, any change that would invalidate or cause new
        # restrictions on existing metadata related to the label are rejected. *
        # Disabled—When disabled, the configured `DisabledPolicy` takes effect.
        # Corresponds to the JSON property `lifecycle`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Lifecycle]
        attr_accessor :lifecycle
      
        # Contains information about whether a label component should be considered
        # locked.
        # Corresponds to the JSON property `lockStatus`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LockStatus]
        attr_accessor :lock_status
      
        # The basic properties of the field.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldProperties]
        attr_accessor :properties
      
        # Information about a user.
        # Corresponds to the JSON property `publisher`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :publisher
      
        # Output only. The key to use when constructing Drive search queries to find
        # files based on values defined for this field on files. For example, "``
        # query_key`` > 2001-01-01".
        # Corresponds to the JSON property `queryKey`
        # @return [String]
        attr_accessor :query_key
      
        # The capabilities related to this field when editing the field.
        # Corresponds to the JSON property `schemaCapabilities`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSchemaCapabilities]
        attr_accessor :schema_capabilities
      
        # Options for the selection field type.
        # Corresponds to the JSON property `selectionOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptions]
        attr_accessor :selection_options
      
        # Options for the Text field type.
        # Corresponds to the JSON property `textOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldTextOptions]
        attr_accessor :text_options
      
        # Output only. The time this field was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Information about a user.
        # Corresponds to the JSON property `updater`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :updater
      
        # Options for the user field type.
        # Corresponds to the JSON property `userOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldUserOptions]
        attr_accessor :user_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_capabilities = args[:applied_capabilities] if args.key?(:applied_capabilities)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @date_options = args[:date_options] if args.key?(:date_options)
          @disable_time = args[:disable_time] if args.key?(:disable_time)
          @disabler = args[:disabler] if args.key?(:disabler)
          @display_hints = args[:display_hints] if args.key?(:display_hints)
          @id = args[:id] if args.key?(:id)
          @integer_options = args[:integer_options] if args.key?(:integer_options)
          @lifecycle = args[:lifecycle] if args.key?(:lifecycle)
          @lock_status = args[:lock_status] if args.key?(:lock_status)
          @properties = args[:properties] if args.key?(:properties)
          @publisher = args[:publisher] if args.key?(:publisher)
          @query_key = args[:query_key] if args.key?(:query_key)
          @schema_capabilities = args[:schema_capabilities] if args.key?(:schema_capabilities)
          @selection_options = args[:selection_options] if args.key?(:selection_options)
          @text_options = args[:text_options] if args.key?(:text_options)
          @update_time = args[:update_time] if args.key?(:update_time)
          @updater = args[:updater] if args.key?(:updater)
          @user_options = args[:user_options] if args.key?(:user_options)
        end
      end
      
      # The capabilities related to this field on applied metadata.
      class GoogleAppsDriveLabelsV2FieldAppliedCapabilities
        include Google::Apis::Core::Hashable
      
        # Whether the user can read related applied metadata on items.
        # Corresponds to the JSON property `canRead`
        # @return [Boolean]
        attr_accessor :can_read
        alias_method :can_read?, :can_read
      
        # Whether the user can search for Drive items referencing this field.
        # Corresponds to the JSON property `canSearch`
        # @return [Boolean]
        attr_accessor :can_search
        alias_method :can_search?, :can_search
      
        # Whether the user can set this field on Drive items.
        # Corresponds to the JSON property `canWrite`
        # @return [Boolean]
        attr_accessor :can_write
        alias_method :can_write?, :can_write
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_read = args[:can_read] if args.key?(:can_read)
          @can_search = args[:can_search] if args.key?(:can_search)
          @can_write = args[:can_write] if args.key?(:can_write)
        end
      end
      
      # Options for the date field type.
      class GoogleAppsDriveLabelsV2FieldDateOptions
        include Google::Apis::Core::Hashable
      
        # Output only. ICU date format.
        # Corresponds to the JSON property `dateFormat`
        # @return [String]
        attr_accessor :date_format
      
        # Localized date formatting option. Field values are rendered in this format
        # according to their locale.
        # Corresponds to the JSON property `dateFormatType`
        # @return [String]
        attr_accessor :date_format_type
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `maxValue`
        # @return [Google::Apis::DrivelabelsV2::GoogleTypeDate]
        attr_accessor :max_value
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `minValue`
        # @return [Google::Apis::DrivelabelsV2::GoogleTypeDate]
        attr_accessor :min_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_format = args[:date_format] if args.key?(:date_format)
          @date_format_type = args[:date_format_type] if args.key?(:date_format_type)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
        end
      end
      
      # UI display hints for rendering a field.
      class GoogleAppsDriveLabelsV2FieldDisplayHints
        include Google::Apis::Core::Hashable
      
        # Whether the field should be shown in the UI as disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # This field should be hidden in the search menu when searching for Drive items.
        # Corresponds to the JSON property `hiddenInSearch`
        # @return [Boolean]
        attr_accessor :hidden_in_search
        alias_method :hidden_in_search?, :hidden_in_search
      
        # Whether the field should be shown as required in the UI.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # This field should be shown in the apply menu when applying values to a Drive
        # item.
        # Corresponds to the JSON property `shownInApply`
        # @return [Boolean]
        attr_accessor :shown_in_apply
        alias_method :shown_in_apply?, :shown_in_apply
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @hidden_in_search = args[:hidden_in_search] if args.key?(:hidden_in_search)
          @required = args[:required] if args.key?(:required)
          @shown_in_apply = args[:shown_in_apply] if args.key?(:shown_in_apply)
        end
      end
      
      # Options for the Integer field type.
      class GoogleAppsDriveLabelsV2FieldIntegerOptions
        include Google::Apis::Core::Hashable
      
        # Output only. The maximum valid value for the integer field.
        # Corresponds to the JSON property `maxValue`
        # @return [Fixnum]
        attr_accessor :max_value
      
        # Output only. The minimum valid value for the integer field.
        # Corresponds to the JSON property `minValue`
        # @return [Fixnum]
        attr_accessor :min_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
        end
      end
      
      # Options for a multi-valued variant of an associated field type.
      class GoogleAppsDriveLabelsV2FieldListOptions
        include Google::Apis::Core::Hashable
      
        # Maximum number of entries permitted.
        # Corresponds to the JSON property `maxEntries`
        # @return [Fixnum]
        attr_accessor :max_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_entries = args[:max_entries] if args.key?(:max_entries)
        end
      end
      
      # The basic properties of the field.
      class GoogleAppsDriveLabelsV2FieldProperties
        include Google::Apis::Core::Hashable
      
        # Required. The display text to show in the UI identifying this field.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Input only. Insert or move this field before the indicated field. If empty,
        # the field is placed at the end of the list.
        # Corresponds to the JSON property `insertBeforeField`
        # @return [String]
        attr_accessor :insert_before_field
      
        # Whether the field should be marked as required.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @insert_before_field = args[:insert_before_field] if args.key?(:insert_before_field)
          @required = args[:required] if args.key?(:required)
        end
      end
      
      # The capabilities related to this field when editing the field.
      class GoogleAppsDriveLabelsV2FieldSchemaCapabilities
        include Google::Apis::Core::Hashable
      
        # Whether the user can delete this field. The user must have permission and the
        # field must be deprecated.
        # Corresponds to the JSON property `canDelete`
        # @return [Boolean]
        attr_accessor :can_delete
        alias_method :can_delete?, :can_delete
      
        # Whether the user can disable this field. The user must have permission and
        # this field must not already be disabled.
        # Corresponds to the JSON property `canDisable`
        # @return [Boolean]
        attr_accessor :can_disable
        alias_method :can_disable?, :can_disable
      
        # Whether the user can enable this field. The user must have permission and this
        # field must be disabled.
        # Corresponds to the JSON property `canEnable`
        # @return [Boolean]
        attr_accessor :can_enable
        alias_method :can_enable?, :can_enable
      
        # Whether the user can change this field.
        # Corresponds to the JSON property `canUpdate`
        # @return [Boolean]
        attr_accessor :can_update
        alias_method :can_update?, :can_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_delete = args[:can_delete] if args.key?(:can_delete)
          @can_disable = args[:can_disable] if args.key?(:can_disable)
          @can_enable = args[:can_enable] if args.key?(:can_enable)
          @can_update = args[:can_update] if args.key?(:can_update)
        end
      end
      
      # Options for the selection field type.
      class GoogleAppsDriveLabelsV2FieldSelectionOptions
        include Google::Apis::Core::Hashable
      
        # The options available for this selection field. The list order is consistent,
        # and modified with `insert_before_choice`.
        # Corresponds to the JSON property `choices`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice>]
        attr_accessor :choices
      
        # Options for a multi-valued variant of an associated field type.
        # Corresponds to the JSON property `listOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldListOptions]
        attr_accessor :list_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @choices = args[:choices] if args.key?(:choices)
          @list_options = args[:list_options] if args.key?(:list_options)
        end
      end
      
      # Selection field choice.
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice
        include Google::Apis::Core::Hashable
      
        # The capabilities related to this choice on applied metadata.
        # Corresponds to the JSON property `appliedCapabilities`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities]
        attr_accessor :applied_capabilities
      
        # Output only. The time this choice was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Information about a user.
        # Corresponds to the JSON property `creator`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :creator
      
        # Output only. The time this choice was disabled. This value has no meaning when
        # the choice is not disabled.
        # Corresponds to the JSON property `disableTime`
        # @return [String]
        attr_accessor :disable_time
      
        # Information about a user.
        # Corresponds to the JSON property `disabler`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :disabler
      
        # UI display hints for rendering an option.
        # Corresponds to the JSON property `displayHints`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints]
        attr_accessor :display_hints
      
        # The unique value of the choice. This ID is autogenerated. Matches the regex: `(
        # [a-zA-Z0-9_])+`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The lifecycle state of an object, such as label, field, or choice. The
        # lifecycle enforces the following transitions: * `UNPUBLISHED_DRAFT` (starting
        # state) * `UNPUBLISHED_DRAFT` -> `PUBLISHED` * `UNPUBLISHED_DRAFT` -> (Deleted)
        # * `PUBLISHED` -> `DISABLED` * `DISABLED` -> `PUBLISHED` * `DISABLED` -> (
        # Deleted) The published and disabled states have some distinct characteristics:
        # * Published—Some kinds of changes might be made to an object in this state, in
        # which case `has_unpublished_changes` will be true. Also, some kinds of changes
        # are not permitted. Generally, any change that would invalidate or cause new
        # restrictions on existing metadata related to the label are rejected. *
        # Disabled—When disabled, the configured `DisabledPolicy` takes effect.
        # Corresponds to the JSON property `lifecycle`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Lifecycle]
        attr_accessor :lifecycle
      
        # Contains information about whether a label component should be considered
        # locked.
        # Corresponds to the JSON property `lockStatus`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LockStatus]
        attr_accessor :lock_status
      
        # Basic properties of the choice.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties]
        attr_accessor :properties
      
        # Output only. The time this choice was published. This value has no meaning
        # when the choice is not published.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        # Information about a user.
        # Corresponds to the JSON property `publisher`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :publisher
      
        # The capabilities related to this choice when editing the choice.
        # Corresponds to the JSON property `schemaCapabilities`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities]
        attr_accessor :schema_capabilities
      
        # Output only. The time this choice was updated last.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Information about a user.
        # Corresponds to the JSON property `updater`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :updater
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_capabilities = args[:applied_capabilities] if args.key?(:applied_capabilities)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @disable_time = args[:disable_time] if args.key?(:disable_time)
          @disabler = args[:disabler] if args.key?(:disabler)
          @display_hints = args[:display_hints] if args.key?(:display_hints)
          @id = args[:id] if args.key?(:id)
          @lifecycle = args[:lifecycle] if args.key?(:lifecycle)
          @lock_status = args[:lock_status] if args.key?(:lock_status)
          @properties = args[:properties] if args.key?(:properties)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
          @publisher = args[:publisher] if args.key?(:publisher)
          @schema_capabilities = args[:schema_capabilities] if args.key?(:schema_capabilities)
          @update_time = args[:update_time] if args.key?(:update_time)
          @updater = args[:updater] if args.key?(:updater)
        end
      end
      
      # The capabilities related to this choice on applied metadata.
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities
        include Google::Apis::Core::Hashable
      
        # Whether the user can read related applied metadata on items.
        # Corresponds to the JSON property `canRead`
        # @return [Boolean]
        attr_accessor :can_read
        alias_method :can_read?, :can_read
      
        # Whether the user can use this choice in search queries.
        # Corresponds to the JSON property `canSearch`
        # @return [Boolean]
        attr_accessor :can_search
        alias_method :can_search?, :can_search
      
        # Whether the user can select this choice on an item.
        # Corresponds to the JSON property `canSelect`
        # @return [Boolean]
        attr_accessor :can_select
        alias_method :can_select?, :can_select
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_read = args[:can_read] if args.key?(:can_read)
          @can_search = args[:can_search] if args.key?(:can_search)
          @can_select = args[:can_select] if args.key?(:can_select)
        end
      end
      
      # UI display hints for rendering an option.
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints
        include Google::Apis::Core::Hashable
      
        # The color derived from BadgeConfig and changed to the closest recommended
        # supported color.
        # Corresponds to the JSON property `badgeColors`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BadgeColors]
        attr_accessor :badge_colors
      
        # The priority of this badge. Used to compare and sort between multiple badges.
        # A lower number means the badge should be shown first. When a badging
        # configuration is not present, this will be 0. Otherwise, this will be set to `
        # BadgeConfig.priority_override` or the default heuristic which prefers creation
        # date of the label, and field and option priority.
        # Corresponds to the JSON property `badgePriority`
        # @return [Fixnum]
        attr_accessor :badge_priority
      
        # The color derived from BadgeConfig and changed to the closest recommended
        # supported color.
        # Corresponds to the JSON property `darkBadgeColors`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BadgeColors]
        attr_accessor :dark_badge_colors
      
        # Whether the option should be shown in the UI as disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # This option should be hidden in the search menu when searching for Drive items.
        # Corresponds to the JSON property `hiddenInSearch`
        # @return [Boolean]
        attr_accessor :hidden_in_search
        alias_method :hidden_in_search?, :hidden_in_search
      
        # This option should be shown in the apply menu when applying values to a Drive
        # item.
        # Corresponds to the JSON property `shownInApply`
        # @return [Boolean]
        attr_accessor :shown_in_apply
        alias_method :shown_in_apply?, :shown_in_apply
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @badge_colors = args[:badge_colors] if args.key?(:badge_colors)
          @badge_priority = args[:badge_priority] if args.key?(:badge_priority)
          @dark_badge_colors = args[:dark_badge_colors] if args.key?(:dark_badge_colors)
          @disabled = args[:disabled] if args.key?(:disabled)
          @hidden_in_search = args[:hidden_in_search] if args.key?(:hidden_in_search)
          @shown_in_apply = args[:shown_in_apply] if args.key?(:shown_in_apply)
        end
      end
      
      # Basic properties of the choice.
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties
        include Google::Apis::Core::Hashable
      
        # Badge status of the label.
        # Corresponds to the JSON property `badgeConfig`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2BadgeConfig]
        attr_accessor :badge_config
      
        # The description of this label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display text to show in the UI identifying this field.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Input only. Insert or move this choice before the indicated choice. If empty,
        # the choice is placed at the end of the list.
        # Corresponds to the JSON property `insertBeforeChoice`
        # @return [String]
        attr_accessor :insert_before_choice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @badge_config = args[:badge_config] if args.key?(:badge_config)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @insert_before_choice = args[:insert_before_choice] if args.key?(:insert_before_choice)
        end
      end
      
      # The capabilities related to this choice when editing the choice.
      class GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities
        include Google::Apis::Core::Hashable
      
        # Whether the user can delete this choice.
        # Corresponds to the JSON property `canDelete`
        # @return [Boolean]
        attr_accessor :can_delete
        alias_method :can_delete?, :can_delete
      
        # Whether the user can disable this choice.
        # Corresponds to the JSON property `canDisable`
        # @return [Boolean]
        attr_accessor :can_disable
        alias_method :can_disable?, :can_disable
      
        # Whether the user can enable this choice.
        # Corresponds to the JSON property `canEnable`
        # @return [Boolean]
        attr_accessor :can_enable
        alias_method :can_enable?, :can_enable
      
        # Whether the user can update this choice.
        # Corresponds to the JSON property `canUpdate`
        # @return [Boolean]
        attr_accessor :can_update
        alias_method :can_update?, :can_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_delete = args[:can_delete] if args.key?(:can_delete)
          @can_disable = args[:can_disable] if args.key?(:can_disable)
          @can_enable = args[:can_enable] if args.key?(:can_enable)
          @can_update = args[:can_update] if args.key?(:can_update)
        end
      end
      
      # Options for the Text field type.
      class GoogleAppsDriveLabelsV2FieldTextOptions
        include Google::Apis::Core::Hashable
      
        # Output only. The maximum valid length of values for the text field.
        # Corresponds to the JSON property `maxLength`
        # @return [Fixnum]
        attr_accessor :max_length
      
        # Output only. The minimum valid length of values for the text field.
        # Corresponds to the JSON property `minLength`
        # @return [Fixnum]
        attr_accessor :min_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_length = args[:max_length] if args.key?(:max_length)
          @min_length = args[:min_length] if args.key?(:min_length)
        end
      end
      
      # Options for the user field type.
      class GoogleAppsDriveLabelsV2FieldUserOptions
        include Google::Apis::Core::Hashable
      
        # Options for a multi-valued variant of an associated field type.
        # Corresponds to the JSON property `listOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldListOptions]
        attr_accessor :list_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_options = args[:list_options] if args.key?(:list_options)
        end
      end
      
      # A label defines a taxonomy that can be applied to Drive items in order to
      # organize and search across items. Labels can be simple strings, or can contain
      # fields that describe additional metadata that can be further used to organize
      # and search Drive items.
      class GoogleAppsDriveLabelsV2Label
        include Google::Apis::Core::Hashable
      
        # The capabilities a user has on this label's applied metadata.
        # Corresponds to the JSON property `appliedCapabilities`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelAppliedCapabilities]
        attr_accessor :applied_capabilities
      
        # Behavior of this label when it's applied to Drive items.
        # Corresponds to the JSON property `appliedLabelPolicy`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy]
        attr_accessor :applied_label_policy
      
        # Output only. The time this label was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Information about a user.
        # Corresponds to the JSON property `creator`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :creator
      
        # Output only. The time this label was disabled. This value has no meaning when
        # the label is not disabled.
        # Corresponds to the JSON property `disableTime`
        # @return [String]
        attr_accessor :disable_time
      
        # Information about a user.
        # Corresponds to the JSON property `disabler`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :disabler
      
        # UI display hints for rendering the label.
        # Corresponds to the JSON property `displayHints`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelDisplayHints]
        attr_accessor :display_hints
      
        # List of fields in descending priority order.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Field>]
        attr_accessor :fields
      
        # Output only. Globally unique identifier of this label. ID makes up part of the
        # label `name`, but unlike `name`, ID is consistent between revisions. Matches
        # the regex: `([a-zA-Z0-9])+`
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The type of label.
        # Corresponds to the JSON property `labelType`
        # @return [String]
        attr_accessor :label_type
      
        # Custom URL to present to users to allow them to learn more about this label
        # and how it should be used.
        # Corresponds to the JSON property `learnMoreUri`
        # @return [String]
        attr_accessor :learn_more_uri
      
        # The lifecycle state of an object, such as label, field, or choice. The
        # lifecycle enforces the following transitions: * `UNPUBLISHED_DRAFT` (starting
        # state) * `UNPUBLISHED_DRAFT` -> `PUBLISHED` * `UNPUBLISHED_DRAFT` -> (Deleted)
        # * `PUBLISHED` -> `DISABLED` * `DISABLED` -> `PUBLISHED` * `DISABLED` -> (
        # Deleted) The published and disabled states have some distinct characteristics:
        # * Published—Some kinds of changes might be made to an object in this state, in
        # which case `has_unpublished_changes` will be true. Also, some kinds of changes
        # are not permitted. Generally, any change that would invalidate or cause new
        # restrictions on existing metadata related to the label are rejected. *
        # Disabled—When disabled, the configured `DisabledPolicy` takes effect.
        # Corresponds to the JSON property `lifecycle`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Lifecycle]
        attr_accessor :lifecycle
      
        # Contains information about whether a label component should be considered
        # locked.
        # Corresponds to the JSON property `lockStatus`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LockStatus]
        attr_accessor :lock_status
      
        # Output only. Resource name of the label. Will be in the form of either: `
        # labels/`id`` or `labels/`id`@`revision_id`` depending on the request. See `id`
        # and `revision_id` below.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Basic properties of the label.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelProperties]
        attr_accessor :properties
      
        # Output only. The time this label was published. This value has no meaning when
        # the label is not published.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        # Information about a user.
        # Corresponds to the JSON property `publisher`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :publisher
      
        # Output only. The time this label revision was created.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Information about a user.
        # Corresponds to the JSON property `revisionCreator`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :revision_creator
      
        # Output only. Revision ID of the label. Revision ID might be part of the label `
        # name` depending on the request issued. A new revision is created whenever
        # revisioned properties of a label are changed. Matches the regex: `([a-zA-Z0-9])
        # +`
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # The capabilities related to this label when editing the label.
        # Corresponds to the JSON property `schemaCapabilities`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelSchemaCapabilities]
        attr_accessor :schema_capabilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_capabilities = args[:applied_capabilities] if args.key?(:applied_capabilities)
          @applied_label_policy = args[:applied_label_policy] if args.key?(:applied_label_policy)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @disable_time = args[:disable_time] if args.key?(:disable_time)
          @disabler = args[:disabler] if args.key?(:disabler)
          @display_hints = args[:display_hints] if args.key?(:display_hints)
          @fields = args[:fields] if args.key?(:fields)
          @id = args[:id] if args.key?(:id)
          @label_type = args[:label_type] if args.key?(:label_type)
          @learn_more_uri = args[:learn_more_uri] if args.key?(:learn_more_uri)
          @lifecycle = args[:lifecycle] if args.key?(:lifecycle)
          @lock_status = args[:lock_status] if args.key?(:lock_status)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
          @publisher = args[:publisher] if args.key?(:publisher)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_creator = args[:revision_creator] if args.key?(:revision_creator)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @schema_capabilities = args[:schema_capabilities] if args.key?(:schema_capabilities)
        end
      end
      
      # The capabilities a user has on this label's applied metadata.
      class GoogleAppsDriveLabelsV2LabelAppliedCapabilities
        include Google::Apis::Core::Hashable
      
        # Whether the user can apply this label to items.
        # Corresponds to the JSON property `canApply`
        # @return [Boolean]
        attr_accessor :can_apply
        alias_method :can_apply?, :can_apply
      
        # Whether the user can read applied metadata related to this label.
        # Corresponds to the JSON property `canRead`
        # @return [Boolean]
        attr_accessor :can_read
        alias_method :can_read?, :can_read
      
        # Whether the user can remove this label from items.
        # Corresponds to the JSON property `canRemove`
        # @return [Boolean]
        attr_accessor :can_remove
        alias_method :can_remove?, :can_remove
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_apply = args[:can_apply] if args.key?(:can_apply)
          @can_read = args[:can_read] if args.key?(:can_read)
          @can_remove = args[:can_remove] if args.key?(:can_remove)
        end
      end
      
      # Behavior of this label when it's applied to Drive items.
      class GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy
        include Google::Apis::Core::Hashable
      
        # Indicates how the applied label and field values should be copied when a Drive
        # item is copied.
        # Corresponds to the JSON property `copyMode`
        # @return [String]
        attr_accessor :copy_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copy_mode = args[:copy_mode] if args.key?(:copy_mode)
        end
      end
      
      # UI display hints for rendering the label.
      class GoogleAppsDriveLabelsV2LabelDisplayHints
        include Google::Apis::Core::Hashable
      
        # Whether the label should be shown in the UI as disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # This label should be hidden in the search menu when searching for Drive items.
        # Corresponds to the JSON property `hiddenInSearch`
        # @return [Boolean]
        attr_accessor :hidden_in_search
        alias_method :hidden_in_search?, :hidden_in_search
      
        # Order to display label in a list.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # This label should be shown in the apply menu when applying values to a Drive
        # item.
        # Corresponds to the JSON property `shownInApply`
        # @return [Boolean]
        attr_accessor :shown_in_apply
        alias_method :shown_in_apply?, :shown_in_apply
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @hidden_in_search = args[:hidden_in_search] if args.key?(:hidden_in_search)
          @priority = args[:priority] if args.key?(:priority)
          @shown_in_apply = args[:shown_in_apply] if args.key?(:shown_in_apply)
        end
      end
      
      # Basic properties of the label.
      class GoogleAppsDriveLabelsV2LabelProperties
        include Google::Apis::Core::Hashable
      
        # The description of the label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Title of the label.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The capabilities related to this label when editing the label.
      class GoogleAppsDriveLabelsV2LabelSchemaCapabilities
        include Google::Apis::Core::Hashable
      
        # Whether the user can delete this label. The user must have permission and the
        # label must be disabled.
        # Corresponds to the JSON property `canDelete`
        # @return [Boolean]
        attr_accessor :can_delete
        alias_method :can_delete?, :can_delete
      
        # Whether the user can disable this label. The user must have permission and
        # this label must not already be disabled.
        # Corresponds to the JSON property `canDisable`
        # @return [Boolean]
        attr_accessor :can_disable
        alias_method :can_disable?, :can_disable
      
        # Whether the user can enable this label. The user must have permission and this
        # label must be disabled.
        # Corresponds to the JSON property `canEnable`
        # @return [Boolean]
        attr_accessor :can_enable
        alias_method :can_enable?, :can_enable
      
        # Whether the user can change this label.
        # Corresponds to the JSON property `canUpdate`
        # @return [Boolean]
        attr_accessor :can_update
        alias_method :can_update?, :can_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_delete = args[:can_delete] if args.key?(:can_delete)
          @can_disable = args[:can_disable] if args.key?(:can_disable)
          @can_enable = args[:can_enable] if args.key?(:can_enable)
          @can_update = args[:can_update] if args.key?(:can_update)
        end
      end
      
      # The lifecycle state of an object, such as label, field, or choice. The
      # lifecycle enforces the following transitions: * `UNPUBLISHED_DRAFT` (starting
      # state) * `UNPUBLISHED_DRAFT` -> `PUBLISHED` * `UNPUBLISHED_DRAFT` -> (Deleted)
      # * `PUBLISHED` -> `DISABLED` * `DISABLED` -> `PUBLISHED` * `DISABLED` -> (
      # Deleted) The published and disabled states have some distinct characteristics:
      # * Published—Some kinds of changes might be made to an object in this state, in
      # which case `has_unpublished_changes` will be true. Also, some kinds of changes
      # are not permitted. Generally, any change that would invalidate or cause new
      # restrictions on existing metadata related to the label are rejected. *
      # Disabled—When disabled, the configured `DisabledPolicy` takes effect.
      class GoogleAppsDriveLabelsV2Lifecycle
        include Google::Apis::Core::Hashable
      
        # The policy that governs how to treat a disabled label, field, or selection
        # choice in different contexts.
        # Corresponds to the JSON property `disabledPolicy`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LifecycleDisabledPolicy]
        attr_accessor :disabled_policy
      
        # Output only. Whether the object associated with this lifecycle has unpublished
        # changes.
        # Corresponds to the JSON property `hasUnpublishedChanges`
        # @return [Boolean]
        attr_accessor :has_unpublished_changes
        alias_method :has_unpublished_changes?, :has_unpublished_changes
      
        # Output only. The state of the object associated with this lifecycle.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled_policy = args[:disabled_policy] if args.key?(:disabled_policy)
          @has_unpublished_changes = args[:has_unpublished_changes] if args.key?(:has_unpublished_changes)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The policy that governs how to treat a disabled label, field, or selection
      # choice in different contexts.
      class GoogleAppsDriveLabelsV2LifecycleDisabledPolicy
        include Google::Apis::Core::Hashable
      
        # Whether to hide this disabled object in the search menu for Drive items. *
        # When `false`, the object is generally shown in the UI as disabled but it
        # appears in the search results when searching for Drive items. * When `true`,
        # the object is generally hidden in the UI when searching for Drive items.
        # Corresponds to the JSON property `hideInSearch`
        # @return [Boolean]
        attr_accessor :hide_in_search
        alias_method :hide_in_search?, :hide_in_search
      
        # Whether to show this disabled object in the apply menu on Drive items. * When `
        # true`, the object is generally shown in the UI as disabled and is unselectable.
        # * When `false`, the object is generally hidden in the UI.
        # Corresponds to the JSON property `showInApply`
        # @return [Boolean]
        attr_accessor :show_in_apply
        alias_method :show_in_apply?, :show_in_apply
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hide_in_search = args[:hide_in_search] if args.key?(:hide_in_search)
          @show_in_apply = args[:show_in_apply] if args.key?(:show_in_apply)
        end
      end
      
      # Response for listing Labels.
      class GoogleAppsDriveLabelsV2ListLabelsResponse
        include Google::Apis::Core::Hashable
      
        # Labels.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label>]
        attr_accessor :labels
      
        # The token of the next page in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Contains information about whether a label component should be considered
      # locked.
      class GoogleAppsDriveLabelsV2LockStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether this label component is the (direct) target of
        # a LabelLock. A label component can be implicitly locked even if it's not the
        # direct target of a LabelLock, in which case this field is set to false.
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locked = args[:locked] if args.key?(:locked)
        end
      end
      
      # Information about a user.
      class GoogleAppsDriveLabelsV2UserInfo
        include Google::Apis::Core::Hashable
      
        # The identifier for this user that can be used with the People API to get more
        # information. For example, people/12345678.
        # Corresponds to the JSON property `person`
        # @return [String]
        attr_accessor :person
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @person = args[:person] if args.key?(:person)
        end
      end
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to/from color representations in various
      # languages over compactness. For example, the fields of this representation can
      # be trivially provided to the constructor of `java.awt.Color` in Java; it can
      # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
      # method in iOS; and, with just a little work, it can be easily formatted into a
      # CSS `rgba()` string in JavaScript. This reference page doesn't carry
      # information about the absolute color space that should be used to interpret
      # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
      # applications should assume the sRGB color space. When color equality needs to
      # be decided, implementations, unless documented otherwise, treat two colors as
      # equal if all their red, green, blue, and alpha values each differ by at most
      # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
      # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
      # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
      # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
      # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
      # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
      # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
      # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
      # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
      # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
      # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
      # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
      # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
      # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
      # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
      # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
      # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
      # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
      # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
      # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
      # autorelease]; return result; ` // ... Example (JavaScript): // ... var
      # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
      # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
      # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
      # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
      # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
      # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
      # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
      # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
      # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
      # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
      # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
      # / ...
      class GoogleTypeColor
        include Google::Apis::Core::Hashable
      
        # The fraction of this color that should be applied to the pixel. That is, the
        # final pixel color is defined by the equation: `pixel color = alpha * (this
        # color) + (1.0 - alpha) * (background color)` This means that a value of 1.0
        # corresponds to a solid color, whereas a value of 0.0 corresponds to a
        # completely transparent color. This uses a wrapper message rather than a simple
        # float scalar so that it is possible to distinguish between a default value and
        # the value being unset. If omitted, this color object is rendered as a solid
        # color (as if the alpha value had been explicitly given a value of 1.0).
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        # The amount of blue in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The amount of green in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The amount of red in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpha = args[:alpha] if args.key?(:alpha)
          @blue = args[:blue] if args.key?(:blue)
          @green = args[:green] if args.key?(:green)
          @red = args[:red] if args.key?(:red)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
    end
  end
end
