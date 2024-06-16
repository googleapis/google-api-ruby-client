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
    module PollenV1
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to and from color representations in various
      # languages over compactness. For example, the fields of this representation can
      # be trivially provided to the constructor of `java.awt.Color` in Java; it can
      # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
      # method in iOS; and, with just a little work, it can be easily formatted into a
      # CSS `rgba()` string in JavaScript. This reference page doesn't have
      # information about the absolute color space that should be used to interpret
      # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
      # applications should assume the sRGB color space. When color equality needs to
      # be decided, implementations, unless documented otherwise, treat two colors as
      # equal if all their red, green, blue, and alpha values each differ by at most `
      # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
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
      class Color
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
      class Date
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
      
      # This object contains the daily forecast information for each day requested.
      class DayInfo
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::PollenV1::Date]
        attr_accessor :date
      
        # This list will include (up to) 15 pollen species affecting the location
        # specified in the request.
        # Corresponds to the JSON property `plantInfo`
        # @return [Array<Google::Apis::PollenV1::PlantInfo>]
        attr_accessor :plant_info
      
        # This list will include (up to) three pollen types (grass, weed, tree)
        # affecting the location specified in the request.
        # Corresponds to the JSON property `pollenTypeInfo`
        # @return [Array<Google::Apis::PollenV1::PollenTypeInfo>]
        attr_accessor :pollen_type_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date = args[:date] if args.key?(:date)
          @plant_info = args[:plant_info] if args.key?(:plant_info)
          @pollen_type_info = args[:pollen_type_info] if args.key?(:pollen_type_info)
        end
      end
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class HttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # This object contains data representing specific pollen index value, category
      # and description.
      class IndexInfo
        include Google::Apis::Core::Hashable
      
        # Text classification of index numerical score interpretation. The index
        # consists of six categories: * 0: "None" * 1: "Very low" * 2: "Low" * 3: "
        # Moderate" * 4: "High" * 5: "Very high
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The index's code. This field represents the index for programming purposes by
        # using snake cases instead of spaces. Example: "UPI".
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to and from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't have
        # information about the absolute color space that should be used to interpret
        # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most `
        # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
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
        # @return [Google::Apis::PollenV1::Color]
        attr_accessor :color
      
        # A human readable representation of the index name. Example: "Universal Pollen
        # Index".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Textual explanation of current index level.
        # Corresponds to the JSON property `indexDescription`
        # @return [String]
        attr_accessor :index_description
      
        # The index's numeric score. Numeric range is between 0 and 5.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @code = args[:code] if args.key?(:code)
          @color = args[:color] if args.key?(:color)
          @display_name = args[:display_name] if args.key?(:display_name)
          @index_description = args[:index_description] if args.key?(:index_description)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class LookupForecastResponse
        include Google::Apis::Core::Hashable
      
        # Required. This object contains the daily forecast information for each day
        # requested.
        # Corresponds to the JSON property `dailyInfo`
        # @return [Array<Google::Apis::PollenV1::DayInfo>]
        attr_accessor :daily_info
      
        # Optional. The token to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The ISO_3166-1 alpha-2 code of the country/region corresponding to the
        # location provided in the request. This field might be omitted from the
        # response if the location provided in the request resides in a disputed
        # territory.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_info = args[:daily_info] if args.key?(:daily_info)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Contains general information about plants, including details on their
      # seasonality, special shapes and colors, information about allergic cross-
      # reactions, and plant photos.
      class PlantDescription
        include Google::Apis::Core::Hashable
      
        # Textual description of pollen cross reaction plants. Example: Alder, Hazel,
        # Hornbeam, Beech, Willow, and Oak pollen.
        # Corresponds to the JSON property `crossReaction`
        # @return [String]
        attr_accessor :cross_reaction
      
        # A human readable representation of the plant family name. Example: "Betulaceae
        # (the Birch family)".
        # Corresponds to the JSON property `family`
        # @return [String]
        attr_accessor :family
      
        # Link to the picture of the plant.
        # Corresponds to the JSON property `picture`
        # @return [String]
        attr_accessor :picture
      
        # Link to a closeup picture of the plant.
        # Corresponds to the JSON property `pictureCloseup`
        # @return [String]
        attr_accessor :picture_closeup
      
        # Textual list of explanations of seasons where the pollen is active. Example: "
        # Late winter, spring".
        # Corresponds to the JSON property `season`
        # @return [String]
        attr_accessor :season
      
        # Textual description of the plants' colors of leaves, bark, flowers or seeds
        # that helps identify the plant.
        # Corresponds to the JSON property `specialColors`
        # @return [String]
        attr_accessor :special_colors
      
        # Textual description of the plants' shapes of leaves, bark, flowers or seeds
        # that helps identify the plant.
        # Corresponds to the JSON property `specialShapes`
        # @return [String]
        attr_accessor :special_shapes
      
        # The plant's pollen type. For example: "GRASS". A list of all available codes
        # could be found here.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cross_reaction = args[:cross_reaction] if args.key?(:cross_reaction)
          @family = args[:family] if args.key?(:family)
          @picture = args[:picture] if args.key?(:picture)
          @picture_closeup = args[:picture_closeup] if args.key?(:picture_closeup)
          @season = args[:season] if args.key?(:season)
          @special_colors = args[:special_colors] if args.key?(:special_colors)
          @special_shapes = args[:special_shapes] if args.key?(:special_shapes)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # This object contains the daily information on specific plant.
      class PlantInfo
        include Google::Apis::Core::Hashable
      
        # The plant code name. For example: "COTTONWOOD". A list of all available codes
        # could be found here.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A human readable representation of the plant name. Example: “Cottonwood".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indication of either the plant is in season or not.
        # Corresponds to the JSON property `inSeason`
        # @return [Boolean]
        attr_accessor :in_season
        alias_method :in_season?, :in_season
      
        # This object contains data representing specific pollen index value, category
        # and description.
        # Corresponds to the JSON property `indexInfo`
        # @return [Google::Apis::PollenV1::IndexInfo]
        attr_accessor :index_info
      
        # Contains general information about plants, including details on their
        # seasonality, special shapes and colors, information about allergic cross-
        # reactions, and plant photos.
        # Corresponds to the JSON property `plantDescription`
        # @return [Google::Apis::PollenV1::PlantDescription]
        attr_accessor :plant_description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @display_name = args[:display_name] if args.key?(:display_name)
          @in_season = args[:in_season] if args.key?(:in_season)
          @index_info = args[:index_info] if args.key?(:index_info)
          @plant_description = args[:plant_description] if args.key?(:plant_description)
        end
      end
      
      # This object contains the pollen type index and health recommendation
      # information on specific pollen type.
      class PollenTypeInfo
        include Google::Apis::Core::Hashable
      
        # The pollen type's code name. For example: "GRASS"
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A human readable representation of the pollen type name. Example: "Grass"
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Textual list of explanations, related to health insights based on the current
        # pollen levels.
        # Corresponds to the JSON property `healthRecommendations`
        # @return [Array<String>]
        attr_accessor :health_recommendations
      
        # Indication whether the plant is in season or not.
        # Corresponds to the JSON property `inSeason`
        # @return [Boolean]
        attr_accessor :in_season
        alias_method :in_season?, :in_season
      
        # This object contains data representing specific pollen index value, category
        # and description.
        # Corresponds to the JSON property `indexInfo`
        # @return [Google::Apis::PollenV1::IndexInfo]
        attr_accessor :index_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @display_name = args[:display_name] if args.key?(:display_name)
          @health_recommendations = args[:health_recommendations] if args.key?(:health_recommendations)
          @in_season = args[:in_season] if args.key?(:in_season)
          @index_info = args[:index_info] if args.key?(:index_info)
        end
      end
    end
  end
end
