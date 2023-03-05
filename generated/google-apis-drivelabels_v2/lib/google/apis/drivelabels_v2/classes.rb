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
      
      # Deletes one of more Label Permissions.
      class GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request message specifying the resources to update.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest>]
        attr_accessor :requests
      
        # Set to `true` in order to use the user's admin credentials. The server will
        # verify the user is an admin for the Label before allowing access. If this is
        # set, the use_admin_access field in the DeleteLabelPermissionRequest messages
        # must either be empty or match this field.
        # Corresponds to the JSON property `useAdminAccess`
        # @return [Boolean]
        attr_accessor :use_admin_access
        alias_method :use_admin_access?, :use_admin_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
          @use_admin_access = args[:use_admin_access] if args.key?(:use_admin_access)
        end
      end
      
      # Updates one or more Label Permissions.
      class GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request message specifying the resources to update.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest>]
        attr_accessor :requests
      
        # Set to `true` in order to use the user's admin credentials. The server will
        # verify the user is an admin for the Label before allowing access. If this is
        # set, the use_admin_access field in the UpdateLabelPermissionRequest messages
        # must either be empty or match this field.
        # Corresponds to the JSON property `useAdminAccess`
        # @return [Boolean]
        attr_accessor :use_admin_access
        alias_method :use_admin_access?, :use_admin_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
          @use_admin_access = args[:use_admin_access] if args.key?(:use_admin_access)
        end
      end
      
      # Response for updating one or more Label Permissions.
      class GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # Required. Permissions updated.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Limits for date Field type.
      class GoogleAppsDriveLabelsV2DateLimits
        include Google::Apis::Core::Hashable
      
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
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
        end
      end
      
      # Deletes a Label Permission. Permissions affect the Label resource as a whole,
      # are not revisioned, and do not require publishing.
      class GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest
        include Google::Apis::Core::Hashable
      
        # Required. Label Permission resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Set to `true` in order to use the user's admin credentials. The server will
        # verify the user is an admin for the Label before allowing access.
        # Corresponds to the JSON property `useAdminAccess`
        # @return [Boolean]
        attr_accessor :use_admin_access
        alias_method :use_admin_access?, :use_admin_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @use_admin_access = args[:use_admin_access] if args.key?(:use_admin_access)
        end
      end
      
      # The set of requests for updating aspects of a Label. If any request is not
      # valid, no requests will be applied.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code to use for evaluating localized Field labels when `
        # include_label_in_response` is `true`.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # A list of updates to apply to the Label. Requests will be applied in the order
        # they are specified.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest>]
        attr_accessor :requests
      
        # Set to `true` in order to use the user's admin credentials. The server will
        # verify the user is an admin for the Label before allowing access.
        # Corresponds to the JSON property `useAdminAccess`
        # @return [Boolean]
        attr_accessor :use_admin_access
        alias_method :use_admin_access?, :use_admin_access
      
        # When specified, only certain fields belonging to the indicated view will be
        # returned.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        # Provides control over how write requests are executed. When not specified, the
        # last write wins.
        # Corresponds to the JSON property `writeControl`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2WriteControl]
        attr_accessor :write_control
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @requests = args[:requests] if args.key?(:requests)
          @use_admin_access = args[:use_admin_access] if args.key?(:use_admin_access)
          @view = args[:view] if args.key?(:view)
          @write_control = args[:write_control] if args.key?(:write_control)
        end
      end
      
      # Request to create a Field within a Label.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest
        include Google::Apis::Core::Hashable
      
        # Defines a field that has a display name, data type, and other configuration
        # options. This field defines the kind of metadata that may be set on a Drive
        # item.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Field]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Request to create a Selection Choice.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest
        include Google::Apis::Core::Hashable
      
        # Selection field choice.
        # Corresponds to the JSON property `choice`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice]
        attr_accessor :choice
      
        # Required. The Selection Field in which a Choice will be created.
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @choice = args[:choice] if args.key?(:choice)
          @field_id = args[:field_id] if args.key?(:field_id)
        end
      end
      
      # Request to delete the Field.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest
        include Google::Apis::Core::Hashable
      
        # Required. ID of the Field to delete.
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
      
      # Request to delete a Choice.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The Selection Field from which a Choice will be deleted.
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # Required. Choice to delete.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_id = args[:field_id] if args.key?(:field_id)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Request to disable the Field.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest
        include Google::Apis::Core::Hashable
      
        # The policy that governs how to treat a disabled label, field, or selection
        # choice in different contexts.
        # Corresponds to the JSON property `disabledPolicy`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LifecycleDisabledPolicy]
        attr_accessor :disabled_policy
      
        # Required. Key of the Field to disable.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The fields that should be updated. At least one field must be specified. The
        # root `disabled_policy` is implied and should not be specified. A single `*`
        # can be used as short-hand for updating every field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled_policy = args[:disabled_policy] if args.key?(:disabled_policy)
          @id = args[:id] if args.key?(:id)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request to disable a Choice.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest
        include Google::Apis::Core::Hashable
      
        # The policy that governs how to treat a disabled label, field, or selection
        # choice in different contexts.
        # Corresponds to the JSON property `disabledPolicy`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LifecycleDisabledPolicy]
        attr_accessor :disabled_policy
      
        # Required. The Selection Field in which a Choice will be disabled.
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # Required. Choice to disable.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The fields that should be updated. At least one field must be specified. The
        # root `disabled_policy` is implied and should not be specified. A single `*`
        # can be used as short-hand for updating every field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled_policy = args[:disabled_policy] if args.key?(:disabled_policy)
          @field_id = args[:field_id] if args.key?(:field_id)
          @id = args[:id] if args.key?(:id)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request to enable the Field.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest
        include Google::Apis::Core::Hashable
      
        # Required. ID of the Field to enable.
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
      
      # Request to enable a Choice.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The Selection Field in which a Choice will be enabled.
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # Required. Choice to enable.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_id = args[:field_id] if args.key?(:field_id)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # A single kind of update to apply to a Label.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest
        include Google::Apis::Core::Hashable
      
        # Request to create a Field within a Label.
        # Corresponds to the JSON property `createField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest]
        attr_accessor :create_field
      
        # Request to create a Selection Choice.
        # Corresponds to the JSON property `createSelectionChoice`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest]
        attr_accessor :create_selection_choice
      
        # Request to delete the Field.
        # Corresponds to the JSON property `deleteField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest]
        attr_accessor :delete_field
      
        # Request to delete a Choice.
        # Corresponds to the JSON property `deleteSelectionChoice`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest]
        attr_accessor :delete_selection_choice
      
        # Request to disable the Field.
        # Corresponds to the JSON property `disableField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest]
        attr_accessor :disable_field
      
        # Request to disable a Choice.
        # Corresponds to the JSON property `disableSelectionChoice`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest]
        attr_accessor :disable_selection_choice
      
        # Request to enable the Field.
        # Corresponds to the JSON property `enableField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest]
        attr_accessor :enable_field
      
        # Request to enable a Choice.
        # Corresponds to the JSON property `enableSelectionChoice`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest]
        attr_accessor :enable_selection_choice
      
        # Request to update Field properties.
        # Corresponds to the JSON property `updateField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest]
        attr_accessor :update_field
      
        # Request to change the type of a Field.
        # Corresponds to the JSON property `updateFieldType`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest]
        attr_accessor :update_field_type
      
        # Updates basic properties of a Label.
        # Corresponds to the JSON property `updateLabel`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest]
        attr_accessor :update_label
      
        # Request to update a Choice properties.
        # Corresponds to the JSON property `updateSelectionChoiceProperties`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest]
        attr_accessor :update_selection_choice_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_field = args[:create_field] if args.key?(:create_field)
          @create_selection_choice = args[:create_selection_choice] if args.key?(:create_selection_choice)
          @delete_field = args[:delete_field] if args.key?(:delete_field)
          @delete_selection_choice = args[:delete_selection_choice] if args.key?(:delete_selection_choice)
          @disable_field = args[:disable_field] if args.key?(:disable_field)
          @disable_selection_choice = args[:disable_selection_choice] if args.key?(:disable_selection_choice)
          @enable_field = args[:enable_field] if args.key?(:enable_field)
          @enable_selection_choice = args[:enable_selection_choice] if args.key?(:enable_selection_choice)
          @update_field = args[:update_field] if args.key?(:update_field)
          @update_field_type = args[:update_field_type] if args.key?(:update_field_type)
          @update_label = args[:update_label] if args.key?(:update_label)
          @update_selection_choice_properties = args[:update_selection_choice_properties] if args.key?(:update_selection_choice_properties)
        end
      end
      
      # Request to update Field properties.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The Field to update.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The basic properties of the field.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldProperties]
        attr_accessor :properties
      
        # The fields that should be updated. At least one field must be specified. The
        # root `properties` is implied and should not be specified. A single `*` can be
        # used as short-hand for updating every field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @properties = args[:properties] if args.key?(:properties)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request to change the type of a Field.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest
        include Google::Apis::Core::Hashable
      
        # Options for the date field type.
        # Corresponds to the JSON property `dateOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldDateOptions]
        attr_accessor :date_options
      
        # Required. The Field to update.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Options for the Integer field type.
        # Corresponds to the JSON property `integerOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldIntegerOptions]
        attr_accessor :integer_options
      
        # Options the Long Text field type.
        # Corresponds to the JSON property `longTextOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldLongTextOptions]
        attr_accessor :long_text_options
      
        # Options for the selection field type.
        # Corresponds to the JSON property `selectionOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptions]
        attr_accessor :selection_options
      
        # Options for the Text field type.
        # Corresponds to the JSON property `textOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldTextOptions]
        attr_accessor :text_options
      
        # The fields that should be updated. At least one field must be specified. The
        # root of `type_options` is implied and should not be specified. A single `*`
        # can be used as short-hand for updating every field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        # Options for the user field type.
        # Corresponds to the JSON property `userOptions`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldUserOptions]
        attr_accessor :user_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_options = args[:date_options] if args.key?(:date_options)
          @id = args[:id] if args.key?(:id)
          @integer_options = args[:integer_options] if args.key?(:integer_options)
          @long_text_options = args[:long_text_options] if args.key?(:long_text_options)
          @selection_options = args[:selection_options] if args.key?(:selection_options)
          @text_options = args[:text_options] if args.key?(:text_options)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
          @user_options = args[:user_options] if args.key?(:user_options)
        end
      end
      
      # Updates basic properties of a Label.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest
        include Google::Apis::Core::Hashable
      
        # Basic properties of the label.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelProperties]
        attr_accessor :properties
      
        # The fields that should be updated. At least one field must be specified. The
        # root `label_properties` is implied and should not be specified. A single `*`
        # can be used as short-hand for updating every field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request to update a Choice properties.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The Selection Field to update.
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # Required. The Choice to update.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Basic properties of the choice.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties]
        attr_accessor :properties
      
        # The fields that should be updated. At least one field must be specified. The
        # root `properties` is implied and should not be specified. A single `*` can be
        # used as short-hand for updating every field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_id = args[:field_id] if args.key?(:field_id)
          @id = args[:id] if args.key?(:id)
          @properties = args[:properties] if args.key?(:properties)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Response for Label update.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse
        include Google::Apis::Core::Hashable
      
        # The reply of the updates. This maps 1:1 with the updates, although responses
        # to some requests may be empty.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse>]
        attr_accessor :responses
      
        # A label defines a taxonomy that can be applied to Drive items in order to
        # organize and search across items. Labels can be simple strings, or can contain
        # fields that describe additional metadata that can be further used to organize
        # and search Drive items.
        # Corresponds to the JSON property `updatedLabel`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2Label]
        attr_accessor :updated_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
          @updated_label = args[:updated_label] if args.key?(:updated_label)
        end
      end
      
      # Response following Field create.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse
        include Google::Apis::Core::Hashable
      
        # The field of the created field. When left blank in a create request, a key
        # will be autogenerated and can be identified here.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The priority of the created field. The priority may change from what was
        # specified to assure contiguous priorities between fields (1-n).
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @priority = args[:priority] if args.key?(:priority)
        end
      end
      
      # Response following Selection Choice create.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse
        include Google::Apis::Core::Hashable
      
        # The server-generated id of the field.
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # The server-generated ID of the created choice within the Field
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_id = args[:field_id] if args.key?(:field_id)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Response following Field delete.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response following Choice delete.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response following Field disable.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response following Choice disable.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response following Field enable.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response following Choice enable.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A single response from an update.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse
        include Google::Apis::Core::Hashable
      
        # Response following Field create.
        # Corresponds to the JSON property `createField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse]
        attr_accessor :create_field
      
        # Response following Selection Choice create.
        # Corresponds to the JSON property `createSelectionChoice`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse]
        attr_accessor :create_selection_choice
      
        # Response following Field delete.
        # Corresponds to the JSON property `deleteField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse]
        attr_accessor :delete_field
      
        # Response following Choice delete.
        # Corresponds to the JSON property `deleteSelectionChoice`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse]
        attr_accessor :delete_selection_choice
      
        # Response following Field disable.
        # Corresponds to the JSON property `disableField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse]
        attr_accessor :disable_field
      
        # Response following Choice disable.
        # Corresponds to the JSON property `disableSelectionChoice`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse]
        attr_accessor :disable_selection_choice
      
        # Response following Field enable.
        # Corresponds to the JSON property `enableField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse]
        attr_accessor :enable_field
      
        # Response following Choice enable.
        # Corresponds to the JSON property `enableSelectionChoice`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse]
        attr_accessor :enable_selection_choice
      
        # Response following update to Field properties.
        # Corresponds to the JSON property `updateField`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse]
        attr_accessor :update_field
      
        # Response following update to Field type.
        # Corresponds to the JSON property `updateFieldType`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse]
        attr_accessor :update_field_type
      
        # Response following update to Label properties.
        # Corresponds to the JSON property `updateLabel`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse]
        attr_accessor :update_label
      
        # Response following update to Selection Choice properties.
        # Corresponds to the JSON property `updateSelectionChoiceProperties`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse]
        attr_accessor :update_selection_choice_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_field = args[:create_field] if args.key?(:create_field)
          @create_selection_choice = args[:create_selection_choice] if args.key?(:create_selection_choice)
          @delete_field = args[:delete_field] if args.key?(:delete_field)
          @delete_selection_choice = args[:delete_selection_choice] if args.key?(:delete_selection_choice)
          @disable_field = args[:disable_field] if args.key?(:disable_field)
          @disable_selection_choice = args[:disable_selection_choice] if args.key?(:disable_selection_choice)
          @enable_field = args[:enable_field] if args.key?(:enable_field)
          @enable_selection_choice = args[:enable_selection_choice] if args.key?(:enable_selection_choice)
          @update_field = args[:update_field] if args.key?(:update_field)
          @update_field_type = args[:update_field_type] if args.key?(:update_field_type)
          @update_label = args[:update_label] if args.key?(:update_label)
          @update_selection_choice_properties = args[:update_selection_choice_properties] if args.key?(:update_selection_choice_properties)
        end
      end
      
      # Response following update to Field properties.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse
        include Google::Apis::Core::Hashable
      
        # The priority of the updated field. The priority may change from what was
        # specified to assure contiguous priorities between fields (1-n).
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @priority = args[:priority] if args.key?(:priority)
        end
      end
      
      # Response following update to Field type.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response following update to Label properties.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response following update to Selection Choice properties.
      class GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse
        include Google::Apis::Core::Hashable
      
        # The priority of the updated choice. The priority may change from what was
        # specified to assure contiguous priorities between choices (1-n).
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @priority = args[:priority] if args.key?(:priority)
        end
      end
      
      # Request to deprecate a published Label.
      class GoogleAppsDriveLabelsV2DisableLabelRequest
        include Google::Apis::Core::Hashable
      
        # The policy that governs how to treat a disabled label, field, or selection
        # choice in different contexts.
        # Corresponds to the JSON property `disabledPolicy`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LifecycleDisabledPolicy]
        attr_accessor :disabled_policy
      
        # The BCP-47 language code to use for evaluating localized field labels. When
        # not specified, values in the default configured language will be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The fields that should be updated. At least one field must be specified. The
        # root `disabled_policy` is implied and should not be specified. A single `*`
        # can be used as short-hand for updating every field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        # Set to `true` in order to use the user's admin credentials. The server will
        # verify the user is an admin for the Label before allowing access.
        # Corresponds to the JSON property `useAdminAccess`
        # @return [Boolean]
        attr_accessor :use_admin_access
        alias_method :use_admin_access?, :use_admin_access
      
        # Provides control over how write requests are executed. When not specified, the
        # last write wins.
        # Corresponds to the JSON property `writeControl`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2WriteControl]
        attr_accessor :write_control
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled_policy = args[:disabled_policy] if args.key?(:disabled_policy)
          @language_code = args[:language_code] if args.key?(:language_code)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
          @use_admin_access = args[:use_admin_access] if args.key?(:use_admin_access)
          @write_control = args[:write_control] if args.key?(:write_control)
        end
      end
      
      # Request to enable a label.
      class GoogleAppsDriveLabelsV2EnableLabelRequest
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code to use for evaluating localized field labels. When
        # not specified, values in the default configured language will be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Set to `true` in order to use the user's admin credentials. The server will
        # verify the user is an admin for the Label before allowing access.
        # Corresponds to the JSON property `useAdminAccess`
        # @return [Boolean]
        attr_accessor :use_admin_access
        alias_method :use_admin_access?, :use_admin_access
      
        # Provides control over how write requests are executed. When not specified, the
        # last write wins.
        # Corresponds to the JSON property `writeControl`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2WriteControl]
        attr_accessor :write_control
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @use_admin_access = args[:use_admin_access] if args.key?(:use_admin_access)
          @write_control = args[:write_control] if args.key?(:write_control)
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
      
      # Field constants governing the structure of a Field; such as, the maximum title
      # length, minimum and maximum field values or length, etc.
      class GoogleAppsDriveLabelsV2FieldLimits
        include Google::Apis::Core::Hashable
      
        # Limits for date Field type.
        # Corresponds to the JSON property `dateLimits`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2DateLimits]
        attr_accessor :date_limits
      
        # Limits for integer Field type.
        # Corresponds to the JSON property `integerLimits`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2IntegerLimits]
        attr_accessor :integer_limits
      
        # Limits for long text Field type.
        # Corresponds to the JSON property `longTextLimits`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LongTextLimits]
        attr_accessor :long_text_limits
      
        # Limits for Field description, also called help text.
        # Corresponds to the JSON property `maxDescriptionLength`
        # @return [Fixnum]
        attr_accessor :max_description_length
      
        # Limits for Field title.
        # Corresponds to the JSON property `maxDisplayNameLength`
        # @return [Fixnum]
        attr_accessor :max_display_name_length
      
        # Max length for the id.
        # Corresponds to the JSON property `maxIdLength`
        # @return [Fixnum]
        attr_accessor :max_id_length
      
        # Limits for selection Field type.
        # Corresponds to the JSON property `selectionLimits`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2SelectionLimits]
        attr_accessor :selection_limits
      
        # Limits for text Field type.
        # Corresponds to the JSON property `textLimits`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2TextLimits]
        attr_accessor :text_limits
      
        # Limits for Field.Type.USER.
        # Corresponds to the JSON property `userLimits`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserLimits]
        attr_accessor :user_limits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_limits = args[:date_limits] if args.key?(:date_limits)
          @integer_limits = args[:integer_limits] if args.key?(:integer_limits)
          @long_text_limits = args[:long_text_limits] if args.key?(:long_text_limits)
          @max_description_length = args[:max_description_length] if args.key?(:max_description_length)
          @max_display_name_length = args[:max_display_name_length] if args.key?(:max_display_name_length)
          @max_id_length = args[:max_id_length] if args.key?(:max_id_length)
          @selection_limits = args[:selection_limits] if args.key?(:selection_limits)
          @text_limits = args[:text_limits] if args.key?(:text_limits)
          @user_limits = args[:user_limits] if args.key?(:user_limits)
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
      
      # Options the Long Text field type.
      class GoogleAppsDriveLabelsV2FieldLongTextOptions
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
      
      # Limits for integer Field type.
      class GoogleAppsDriveLabelsV2IntegerLimits
        include Google::Apis::Core::Hashable
      
        # Maximum value for an integer Field type.
        # Corresponds to the JSON property `maxValue`
        # @return [Fixnum]
        attr_accessor :max_value
      
        # Minimum value for an integer Field type.
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
      
      # Label constraints governing the structure of a Label; such as, the maximum
      # number of Fields allowed and maximum length of the label title.
      class GoogleAppsDriveLabelsV2LabelLimits
        include Google::Apis::Core::Hashable
      
        # Field constants governing the structure of a Field; such as, the maximum title
        # length, minimum and maximum field values or length, etc.
        # Corresponds to the JSON property `fieldLimits`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2FieldLimits]
        attr_accessor :field_limits
      
        # The maximum number of published Fields that can be deleted.
        # Corresponds to the JSON property `maxDeletedFields`
        # @return [Fixnum]
        attr_accessor :max_deleted_fields
      
        # The maximum number of characters allowed for the description.
        # Corresponds to the JSON property `maxDescriptionLength`
        # @return [Fixnum]
        attr_accessor :max_description_length
      
        # The maximum number of draft revisions that will be kept before deleting old
        # drafts.
        # Corresponds to the JSON property `maxDraftRevisions`
        # @return [Fixnum]
        attr_accessor :max_draft_revisions
      
        # The maximum number of Fields allowed within the label.
        # Corresponds to the JSON property `maxFields`
        # @return [Fixnum]
        attr_accessor :max_fields
      
        # The maximum number of characters allowed for the title.
        # Corresponds to the JSON property `maxTitleLength`
        # @return [Fixnum]
        attr_accessor :max_title_length
      
        # Resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_limits = args[:field_limits] if args.key?(:field_limits)
          @max_deleted_fields = args[:max_deleted_fields] if args.key?(:max_deleted_fields)
          @max_description_length = args[:max_description_length] if args.key?(:max_description_length)
          @max_draft_revisions = args[:max_draft_revisions] if args.key?(:max_draft_revisions)
          @max_fields = args[:max_fields] if args.key?(:max_fields)
          @max_title_length = args[:max_title_length] if args.key?(:max_title_length)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A Lock that can be applied to a Label, Field, or Choice.
      class GoogleAppsDriveLabelsV2LabelLock
        include Google::Apis::Core::Hashable
      
        # A description of a user's capabilities on a LabelLock.
        # Corresponds to the JSON property `capabilities`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelLockCapabilities]
        attr_accessor :capabilities
      
        # The ID of the Selection Field Choice that should be locked. If present, `
        # field_id` must also be present.
        # Corresponds to the JSON property `choiceId`
        # @return [String]
        attr_accessor :choice_id
      
        # Output only. The time this LabelLock was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Information about a user.
        # Corresponds to the JSON property `creator`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2UserInfo]
        attr_accessor :creator
      
        # Output only. A timestamp indicating when this LabelLock was scheduled for
        # deletion. This will be present only if this LabelLock is in the DELETING state.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # The ID of the Field that should be locked. Empty if the whole Label should be
        # locked.
        # Corresponds to the JSON property `fieldId`
        # @return [String]
        attr_accessor :field_id
      
        # Output only. Resource name of this LabelLock.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. This LabelLock's state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
          @choice_id = args[:choice_id] if args.key?(:choice_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @field_id = args[:field_id] if args.key?(:field_id)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A description of a user's capabilities on a LabelLock.
      class GoogleAppsDriveLabelsV2LabelLockCapabilities
        include Google::Apis::Core::Hashable
      
        # True if the user is authorized to view the policy.
        # Corresponds to the JSON property `canViewPolicy`
        # @return [Boolean]
        attr_accessor :can_view_policy
        alias_method :can_view_policy?, :can_view_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_view_policy = args[:can_view_policy] if args.key?(:can_view_policy)
        end
      end
      
      # The permission that applies to a principal (user, group, audience) on a label.
      class GoogleAppsDriveLabelsV2LabelPermission
        include Google::Apis::Core::Hashable
      
        # Audience to grant a role to. The magic value of `audiences/default` may be
        # used to apply the role to the default audience in the context of the
        # organization that owns the Label.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # Specifies the email address for a user or group pricinpal. Not populated for
        # audience principals. User and Group permissions may only be inserted using
        # email address. On update requests, if email address is specified, no principal
        # should be specified.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Group resource name.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # Resource name of this permission.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Person resource name.
        # Corresponds to the JSON property `person`
        # @return [String]
        attr_accessor :person
      
        # The role the principal should have.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @email = args[:email] if args.key?(:email)
          @group = args[:group] if args.key?(:group)
          @name = args[:name] if args.key?(:name)
          @person = args[:person] if args.key?(:person)
          @role = args[:role] if args.key?(:role)
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
      
      # The response to a ListLabelLocksRequest.
      class GoogleAppsDriveLabelsV2ListLabelLocksResponse
        include Google::Apis::Core::Hashable
      
        # LabelLocks.
        # Corresponds to the JSON property `labelLocks`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelLock>]
        attr_accessor :label_locks
      
        # The token of the next page in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_locks = args[:label_locks] if args.key?(:label_locks)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for listing the permissions on a Label.
      class GoogleAppsDriveLabelsV2ListLabelPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # Label permissions.
        # Corresponds to the JSON property `labelPermissions`
        # @return [Array<Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission>]
        attr_accessor :label_permissions
      
        # The token of the next page in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_permissions = args[:label_permissions] if args.key?(:label_permissions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
      # Limits for list-variant of a Field type.
      class GoogleAppsDriveLabelsV2ListLimits
        include Google::Apis::Core::Hashable
      
        # Maximum number of values allowed for the Field type.
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
      
      # Limits for long text Field type.
      class GoogleAppsDriveLabelsV2LongTextLimits
        include Google::Apis::Core::Hashable
      
        # Maximum length allowed for a long text Field type.
        # Corresponds to the JSON property `maxLength`
        # @return [Fixnum]
        attr_accessor :max_length
      
        # Minimum length allowed for a long text Field type.
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
      
      # Request to publish a label.
      class GoogleAppsDriveLabelsV2PublishLabelRequest
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code to use for evaluating localized field labels. When
        # not specified, values in the default configured language will be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Set to `true` in order to use the user's admin credentials. The server will
        # verify the user is an admin for the Label before allowing access.
        # Corresponds to the JSON property `useAdminAccess`
        # @return [Boolean]
        attr_accessor :use_admin_access
        alias_method :use_admin_access?, :use_admin_access
      
        # Provides control over how write requests are executed. When not specified, the
        # last write wins.
        # Corresponds to the JSON property `writeControl`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2WriteControl]
        attr_accessor :write_control
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @use_admin_access = args[:use_admin_access] if args.key?(:use_admin_access)
          @write_control = args[:write_control] if args.key?(:write_control)
        end
      end
      
      # Limits for selection Field type.
      class GoogleAppsDriveLabelsV2SelectionLimits
        include Google::Apis::Core::Hashable
      
        # Limits for list-variant of a Field type.
        # Corresponds to the JSON property `listLimits`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLimits]
        attr_accessor :list_limits
      
        # The max number of choices.
        # Corresponds to the JSON property `maxChoices`
        # @return [Fixnum]
        attr_accessor :max_choices
      
        # Maximum number of deleted choices.
        # Corresponds to the JSON property `maxDeletedChoices`
        # @return [Fixnum]
        attr_accessor :max_deleted_choices
      
        # Maximum length for display name.
        # Corresponds to the JSON property `maxDisplayNameLength`
        # @return [Fixnum]
        attr_accessor :max_display_name_length
      
        # Maximum ID length for a selection options.
        # Corresponds to the JSON property `maxIdLength`
        # @return [Fixnum]
        attr_accessor :max_id_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_limits = args[:list_limits] if args.key?(:list_limits)
          @max_choices = args[:max_choices] if args.key?(:max_choices)
          @max_deleted_choices = args[:max_deleted_choices] if args.key?(:max_deleted_choices)
          @max_display_name_length = args[:max_display_name_length] if args.key?(:max_display_name_length)
          @max_id_length = args[:max_id_length] if args.key?(:max_id_length)
        end
      end
      
      # Limits for text Field type.
      class GoogleAppsDriveLabelsV2TextLimits
        include Google::Apis::Core::Hashable
      
        # Maximum length allowed for a text Field type.
        # Corresponds to the JSON property `maxLength`
        # @return [Fixnum]
        attr_accessor :max_length
      
        # Minimum length allowed for a text Field type.
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
      
      # Request to update the `CopyMode` of the given Label. Changes to this policy
      # are not revisioned, do not require publishing, and take effect immediately. \
      class GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest
        include Google::Apis::Core::Hashable
      
        # Required. Indicates how the applied Label, and Field values should be copied
        # when a Drive item is copied.
        # Corresponds to the JSON property `copyMode`
        # @return [String]
        attr_accessor :copy_mode
      
        # The BCP-47 language code to use for evaluating localized field labels. When
        # not specified, values in the default configured language will be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Set to `true` in order to use the user's admin credentials. The server will
        # verify the user is an admin for the Label before allowing access.
        # Corresponds to the JSON property `useAdminAccess`
        # @return [Boolean]
        attr_accessor :use_admin_access
        alias_method :use_admin_access?, :use_admin_access
      
        # When specified, only certain fields belonging to the indicated view will be
        # returned.
        # Corresponds to the JSON property `view`
        # @return [String]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copy_mode = args[:copy_mode] if args.key?(:copy_mode)
          @language_code = args[:language_code] if args.key?(:language_code)
          @use_admin_access = args[:use_admin_access] if args.key?(:use_admin_access)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # Updates a Label Permission. Permissions affect the Label resource as a whole,
      # are not revisioned, and do not require publishing.
      class GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest
        include Google::Apis::Core::Hashable
      
        # The permission that applies to a principal (user, group, audience) on a label.
        # Corresponds to the JSON property `labelPermission`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2LabelPermission]
        attr_accessor :label_permission
      
        # Required. The parent Label resource name.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Set to `true` in order to use the user's admin credentials. The server will
        # verify the user is an admin for the Label before allowing access.
        # Corresponds to the JSON property `useAdminAccess`
        # @return [Boolean]
        attr_accessor :use_admin_access
        alias_method :use_admin_access?, :use_admin_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_permission = args[:label_permission] if args.key?(:label_permission)
          @parent = args[:parent] if args.key?(:parent)
          @use_admin_access = args[:use_admin_access] if args.key?(:use_admin_access)
        end
      end
      
      # The capabilities of a user.
      class GoogleAppsDriveLabelsV2UserCapabilities
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the user is allowed access to the label manager.
        # Corresponds to the JSON property `canAccessLabelManager`
        # @return [Boolean]
        attr_accessor :can_access_label_manager
        alias_method :can_access_label_manager?, :can_access_label_manager
      
        # Output only. Whether the user is an administrator for the shared labels
        # feature.
        # Corresponds to the JSON property `canAdministrateLabels`
        # @return [Boolean]
        attr_accessor :can_administrate_labels
        alias_method :can_administrate_labels?, :can_administrate_labels
      
        # Output only. Whether the user is allowed to create new admin labels.
        # Corresponds to the JSON property `canCreateAdminLabels`
        # @return [Boolean]
        attr_accessor :can_create_admin_labels
        alias_method :can_create_admin_labels?, :can_create_admin_labels
      
        # Output only. Whether the user is allowed to create new shared labels.
        # Corresponds to the JSON property `canCreateSharedLabels`
        # @return [Boolean]
        attr_accessor :can_create_shared_labels
        alias_method :can_create_shared_labels?, :can_create_shared_labels
      
        # Output only. Resource name for the user capabilities.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_access_label_manager = args[:can_access_label_manager] if args.key?(:can_access_label_manager)
          @can_administrate_labels = args[:can_administrate_labels] if args.key?(:can_administrate_labels)
          @can_create_admin_labels = args[:can_create_admin_labels] if args.key?(:can_create_admin_labels)
          @can_create_shared_labels = args[:can_create_shared_labels] if args.key?(:can_create_shared_labels)
          @name = args[:name] if args.key?(:name)
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
      
      # Limits for Field.Type.USER.
      class GoogleAppsDriveLabelsV2UserLimits
        include Google::Apis::Core::Hashable
      
        # Limits for list-variant of a Field type.
        # Corresponds to the JSON property `listLimits`
        # @return [Google::Apis::DrivelabelsV2::GoogleAppsDriveLabelsV2ListLimits]
        attr_accessor :list_limits
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_limits = args[:list_limits] if args.key?(:list_limits)
        end
      end
      
      # Provides control over how write requests are executed. When not specified, the
      # last write wins.
      class GoogleAppsDriveLabelsV2WriteControl
        include Google::Apis::Core::Hashable
      
        # The revision_id of the label that the write request will be applied to. If
        # this is not the latest revision of the label, the request will not be
        # processed and will return a 400 Bad Request error.
        # Corresponds to the JSON property `requiredRevisionId`
        # @return [String]
        attr_accessor :required_revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @required_revision_id = args[:required_revision_id] if args.key?(:required_revision_id)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
