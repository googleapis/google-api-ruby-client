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
    module AirqualityV1
      
      # The emission sources and health effects of a given pollutant.
      class AdditionalInfo
        include Google::Apis::Core::Hashable
      
        # Text representing the pollutant's main health effects.
        # Corresponds to the JSON property `effects`
        # @return [String]
        attr_accessor :effects
      
        # Text representing the pollutant's main emission sources.
        # Corresponds to the JSON property `sources`
        # @return [String]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effects = args[:effects] if args.key?(:effects)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # The basic object for representing different air quality metrics. When brought
      # together, these metrics provide a snapshot about the current air quality
      # conditions. There are multiple indexes in the world serving different purposes
      # and groups interested in measuring different aspects of air quality.
      class AirQualityIndex
        include Google::Apis::Core::Hashable
      
        # The index's numeric score. Examples: 10, 100. The value is not normalized and
        # should only be interpreted in the context of its related air-quality index.
        # For non-numeric indexes, this field will not be returned. Note: This field
        # should be used for calculations, graph display, etc. For displaying the index
        # score, you should use the AQI display field.
        # Corresponds to the JSON property `aqi`
        # @return [Fixnum]
        attr_accessor :aqi
      
        # Textual representation of the index numeric score, that may include prefix or
        # suffix symbols, which usually represents the worst index score. Example: >100
        # or 10+. Note: This field should be used when you want to display the index
        # score. For non-numeric indexes, this field is empty.
        # Corresponds to the JSON property `aqiDisplay`
        # @return [String]
        attr_accessor :aqi_display
      
        # Textual classification of the index numeric score interpretation. For example:
        # "Excellent air quality".
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The index's code. This field represents the index for programming purposes by
        # using snake case instead of spaces. Examples: "uaqi", "fra_atmo".
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
        # @return [Google::Apis::AirqualityV1::Color]
        attr_accessor :color
      
        # A human readable representation of the index name. Example: "AQI (US)"
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The chemical symbol of the dominant pollutant. For example: "CO".
        # Corresponds to the JSON property `dominantPollutant`
        # @return [String]
        attr_accessor :dominant_pollutant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aqi = args[:aqi] if args.key?(:aqi)
          @aqi_display = args[:aqi_display] if args.key?(:aqi_display)
          @category = args[:category] if args.key?(:category)
          @code = args[:code] if args.key?(:code)
          @color = args[:color] if args.key?(:color)
          @display_name = args[:display_name] if args.key?(:display_name)
          @dominant_pollutant = args[:dominant_pollutant] if args.key?(:dominant_pollutant)
        end
      end
      
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
      
      # The concentration of a given pollutant in the air.
      class Concentration
        include Google::Apis::Core::Hashable
      
        # Units for measuring this pollutant concentration.
        # Corresponds to the JSON property `units`
        # @return [String]
        attr_accessor :units
      
        # Value of pollutant concentration.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @units = args[:units] if args.key?(:units)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Expresses a 'country/region to AQI' relationship. Pairs a country/region with
      # a desired AQI so that air quality data that is required for that country/
      # region will be displayed according to the chosen AQI.
      class CustomLocalAqi
        include Google::Apis::Core::Hashable
      
        # The AQI to associate the country/region with. Value should be a [valid index](/
        # maps/documentation/air-quality/laqis) code.
        # Corresponds to the JSON property `aqi`
        # @return [String]
        attr_accessor :aqi
      
        # The country/region requiring the custom AQI. Value should be provided using [
        # ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aqi = args[:aqi] if args.key?(:aqi)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Health recommendations for different population groups in a free text format.
      # The recommendations are derived from their associated air quality conditions.
      class HealthRecommendations
        include Google::Apis::Core::Hashable
      
        # Sports and other strenuous outdoor activities.
        # Corresponds to the JSON property `athletes`
        # @return [String]
        attr_accessor :athletes
      
        # Younger populations including children, toddlers, and babies.
        # Corresponds to the JSON property `children`
        # @return [String]
        attr_accessor :children
      
        # Retirees and people older than the general population.
        # Corresponds to the JSON property `elderly`
        # @return [String]
        attr_accessor :elderly
      
        # No specific sensitivities.
        # Corresponds to the JSON property `generalPopulation`
        # @return [String]
        attr_accessor :general_population
      
        # Heart and circulatory system diseases.
        # Corresponds to the JSON property `heartDiseasePopulation`
        # @return [String]
        attr_accessor :heart_disease_population
      
        # Respiratory related problems and asthma suffers.
        # Corresponds to the JSON property `lungDiseasePopulation`
        # @return [String]
        attr_accessor :lung_disease_population
      
        # Women at all stages of pregnancy.
        # Corresponds to the JSON property `pregnantWomen`
        # @return [String]
        attr_accessor :pregnant_women
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @athletes = args[:athletes] if args.key?(:athletes)
          @children = args[:children] if args.key?(:children)
          @elderly = args[:elderly] if args.key?(:elderly)
          @general_population = args[:general_population] if args.key?(:general_population)
          @heart_disease_population = args[:heart_disease_population] if args.key?(:heart_disease_population)
          @lung_disease_population = args[:lung_disease_population] if args.key?(:lung_disease_population)
          @pregnant_women = args[:pregnant_women] if args.key?(:pregnant_women)
        end
      end
      
      # Contains the air quality information for each hour in the requested range. For
      # example, if the request is for 48 hours of history there will be 48 elements
      # of hourly info.
      class HourInfo
        include Google::Apis::Core::Hashable
      
        # A rounded down timestamp indicating the time the data refers to in RFC3339 UTC
        # "Zulu" format, with nanosecond resolution and up to nine fractional digits.
        # For example: "2014-10-02T15:00:00Z".
        # Corresponds to the JSON property `dateTime`
        # @return [String]
        attr_accessor :date_time
      
        # Health recommendations for different population groups in a free text format.
        # The recommendations are derived from their associated air quality conditions.
        # Corresponds to the JSON property `healthRecommendations`
        # @return [Google::Apis::AirqualityV1::HealthRecommendations]
        attr_accessor :health_recommendations
      
        # Based on the request parameters, this list will include (up to) two air
        # quality indexes: - Universal AQI. Will be returned if the universalAqi boolean
        # is set to true. - Local AQI. Will be returned if the LOCAL_AQI extra
        # computation is specified.
        # Corresponds to the JSON property `indexes`
        # @return [Array<Google::Apis::AirqualityV1::AirQualityIndex>]
        attr_accessor :indexes
      
        # A list of pollutants affecting the location specified in the request. Note:
        # This field will be returned only for requests that specified one or more of
        # the following extra computations: POLLUTANT_ADDITIONAL_INFO,
        # DOMINANT_POLLUTANT_CONCENTRATION, POLLUTANT_CONCENTRATION.
        # Corresponds to the JSON property `pollutants`
        # @return [Array<Google::Apis::AirqualityV1::Pollutant>]
        attr_accessor :pollutants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_time = args[:date_time] if args.key?(:date_time)
          @health_recommendations = args[:health_recommendations] if args.key?(:health_recommendations)
          @indexes = args[:indexes] if args.key?(:indexes)
          @pollutants = args[:pollutants] if args.key?(:pollutants)
        end
      end
      
      # Contains the air quality information for each hour in the requested range. For
      # example, if the request is for 48 hours of forecast there will be 48 elements
      # of hourly forecasts.
      class HourlyForecast
        include Google::Apis::Core::Hashable
      
        # A rounded down timestamp indicating the time (hour) the data refers to in
        # RFC3339 UTC "Zulu" format. For example: "2014-10-02T15:00:00Z".
        # Corresponds to the JSON property `dateTime`
        # @return [String]
        attr_accessor :date_time
      
        # Health recommendations for different population groups in a free text format.
        # The recommendations are derived from their associated air quality conditions.
        # Corresponds to the JSON property `healthRecommendations`
        # @return [Google::Apis::AirqualityV1::HealthRecommendations]
        attr_accessor :health_recommendations
      
        # Based on the request parameters, this list will include (up to) two air
        # quality indexes: - Universal AQI. Will be returned if the `universal_aqi`
        # boolean is set to true. - Local AQI. Will be returned if the LOCAL_AQI extra
        # computation is specified.
        # Corresponds to the JSON property `indexes`
        # @return [Array<Google::Apis::AirqualityV1::AirQualityIndex>]
        attr_accessor :indexes
      
        # A list of pollutants affecting the location specified in the request. Note:
        # This field will be returned only for requests that specified one or more of
        # the following extra computations: POLLUTANT_ADDITIONAL_INFO,
        # DOMINANT_POLLUTANT_CONCENTRATION, POLLUTANT_CONCENTRATION.
        # Corresponds to the JSON property `pollutants`
        # @return [Array<Google::Apis::AirqualityV1::Pollutant>]
        attr_accessor :pollutants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_time = args[:date_time] if args.key?(:date_time)
          @health_recommendations = args[:health_recommendations] if args.key?(:health_recommendations)
          @indexes = args[:indexes] if args.key?(:indexes)
          @pollutants = args[:pollutants] if args.key?(:pollutants)
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
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class Interval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # The request definition of the air quality current conditions.
      class LookupCurrentConditionsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Expresses a 'country/region to AQI' relationship. Pairs a country/
        # region with a desired AQI so that air quality data that is required for that
        # country/region will be displayed according to the chosen AQI. This parameter
        # can be used to specify a non-default AQI for a given country, for example, to
        # get the US EPA index for Canada rather than the default index for Canada.
        # Corresponds to the JSON property `customLocalAqis`
        # @return [Array<Google::Apis::AirqualityV1::CustomLocalAqi>]
        attr_accessor :custom_local_aqis
      
        # Optional. Additional features that can be optionally enabled. Specifying extra
        # computations will result in the relevant elements and fields to be returned in
        # the response.
        # Corresponds to the JSON property `extraComputations`
        # @return [Array<String>]
        attr_accessor :extra_computations
      
        # Optional. Allows the client to choose the language for the response. If data
        # cannot be provided for that language the API uses the closest match. Allowed
        # values rely on the IETF standard. Default value is en.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::AirqualityV1::LatLng]
        attr_accessor :location
      
        # Optional. Determines the color palette used for data provided by the '
        # Universal Air Quality Index' (UAQI). This color palette is relevant just for
        # UAQI, other AQIs have a predetermined color palette that can't be controlled.
        # Corresponds to the JSON property `uaqiColorPalette`
        # @return [String]
        attr_accessor :uaqi_color_palette
      
        # Optional. If set to true, the Universal AQI will be included in the 'indexes'
        # field of the response. Default value is true.
        # Corresponds to the JSON property `universalAqi`
        # @return [Boolean]
        attr_accessor :universal_aqi
        alias_method :universal_aqi?, :universal_aqi
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_local_aqis = args[:custom_local_aqis] if args.key?(:custom_local_aqis)
          @extra_computations = args[:extra_computations] if args.key?(:extra_computations)
          @language_code = args[:language_code] if args.key?(:language_code)
          @location = args[:location] if args.key?(:location)
          @uaqi_color_palette = args[:uaqi_color_palette] if args.key?(:uaqi_color_palette)
          @universal_aqi = args[:universal_aqi] if args.key?(:universal_aqi)
        end
      end
      
      # 
      class LookupCurrentConditionsResponse
        include Google::Apis::Core::Hashable
      
        # A rounded down timestamp in RFC3339 UTC "Zulu" format, with nanosecond
        # resolution and up to nine fractional digits. For example: "2014-10-02T15:00:
        # 00Z".
        # Corresponds to the JSON property `dateTime`
        # @return [String]
        attr_accessor :date_time
      
        # Health recommendations for different population groups in a free text format.
        # The recommendations are derived from their associated air quality conditions.
        # Corresponds to the JSON property `healthRecommendations`
        # @return [Google::Apis::AirqualityV1::HealthRecommendations]
        attr_accessor :health_recommendations
      
        # Based on the request parameters, this list will include (up to) two air
        # quality indexes: - Universal AQI. Will be returned if the universalAqi boolean
        # is set to true. - Local AQI. Will be returned if the LOCAL_AQI extra
        # computation is specified.
        # Corresponds to the JSON property `indexes`
        # @return [Array<Google::Apis::AirqualityV1::AirQualityIndex>]
        attr_accessor :indexes
      
        # A list of pollutants affecting the location specified in the request. Note:
        # This field will be returned only for requests that specified one or more of
        # the following extra computations: POLLUTANT_ADDITIONAL_INFO,
        # DOMINANT_POLLUTANT_CONCENTRATION, POLLUTANT_CONCENTRATION.
        # Corresponds to the JSON property `pollutants`
        # @return [Array<Google::Apis::AirqualityV1::Pollutant>]
        attr_accessor :pollutants
      
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
          @date_time = args[:date_time] if args.key?(:date_time)
          @health_recommendations = args[:health_recommendations] if args.key?(:health_recommendations)
          @indexes = args[:indexes] if args.key?(:indexes)
          @pollutants = args[:pollutants] if args.key?(:pollutants)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # The request object of the air quality forecast API.
      class LookupForecastRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Expresses a 'country/region to AQI' relationship. Pairs a country/
        # region with a desired AQI so that air quality data that is required for that
        # country/region will be displayed according to the chosen AQI. This parameter
        # can be used to specify a non-default AQI for a given country, for example, to
        # get the US EPA index for Canada rather than the default index for Canada.
        # Corresponds to the JSON property `customLocalAqis`
        # @return [Array<Google::Apis::AirqualityV1::CustomLocalAqi>]
        attr_accessor :custom_local_aqis
      
        # A timestamp for which to return the data for a specific point in time. The
        # timestamp is rounded to the previous exact hour. Note: this will return hourly
        # data for the requested timestamp only (i.e. a single hourly info element). For
        # example, a request sent where the date_time parameter is set to 2023-01-03T11:
        # 05:49Z will be rounded down to 2023-01-03T11:00:00Z.
        # Corresponds to the JSON property `dateTime`
        # @return [String]
        attr_accessor :date_time
      
        # Optional. Additional features that can be optionally enabled. Specifying extra
        # computations will result in the relevant elements and fields to be returned in
        # the response.
        # Corresponds to the JSON property `extraComputations`
        # @return [Array<String>]
        attr_accessor :extra_computations
      
        # Optional. Allows the client to choose the language for the response. If data
        # cannot be provided for that language the API uses the closest match. Allowed
        # values rely on the IETF standard (default = 'en').
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::AirqualityV1::LatLng]
        attr_accessor :location
      
        # Optional. The maximum number of hourly info records to return per page (
        # default = 24).
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token received from a previous forecast call. It is used to
        # retrieve the subsequent page.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `period`
        # @return [Google::Apis::AirqualityV1::Interval]
        attr_accessor :period
      
        # Optional. Determines the color palette used for data provided by the '
        # Universal Air Quality Index' (UAQI). This color palette is relevant just for
        # UAQI, other AQIs have a predetermined color palette that can't be controlled.
        # Corresponds to the JSON property `uaqiColorPalette`
        # @return [String]
        attr_accessor :uaqi_color_palette
      
        # Optional. If set to true, the Universal AQI will be included in the 'indexes'
        # field of the response (default = true).
        # Corresponds to the JSON property `universalAqi`
        # @return [Boolean]
        attr_accessor :universal_aqi
        alias_method :universal_aqi?, :universal_aqi
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_local_aqis = args[:custom_local_aqis] if args.key?(:custom_local_aqis)
          @date_time = args[:date_time] if args.key?(:date_time)
          @extra_computations = args[:extra_computations] if args.key?(:extra_computations)
          @language_code = args[:language_code] if args.key?(:language_code)
          @location = args[:location] if args.key?(:location)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @period = args[:period] if args.key?(:period)
          @uaqi_color_palette = args[:uaqi_color_palette] if args.key?(:uaqi_color_palette)
          @universal_aqi = args[:universal_aqi] if args.key?(:universal_aqi)
        end
      end
      
      # The response object of the air quality forecast API.
      class LookupForecastResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Contains the air quality information for each hour in the requested
        # range. For example, if the request is for 48 hours of forecast there will be
        # 48 elements of hourly forecasts.
        # Corresponds to the JSON property `hourlyForecasts`
        # @return [Array<Google::Apis::AirqualityV1::HourlyForecast>]
        attr_accessor :hourly_forecasts
      
        # Optional. The token to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Optional. The ISO_3166-1 alpha-2 code of the country/region corresponding to
        # the location provided in the request. This field might be omitted from the
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
          @hourly_forecasts = args[:hourly_forecasts] if args.key?(:hourly_forecasts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # The request object of the air quality history API.
      class LookupHistoryRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Expresses a 'country/region to AQI' relationship. Pairs a country/
        # region with a desired AQI so that air quality data that is required for that
        # country/region will be displayed according to the chosen AQI. This parameter
        # can be used to specify a non-default AQI for a given country, for example, to
        # get the US EPA index for Canada rather than the default index for Canada.
        # Corresponds to the JSON property `customLocalAqis`
        # @return [Array<Google::Apis::AirqualityV1::CustomLocalAqi>]
        attr_accessor :custom_local_aqis
      
        # A timestamp for which to return historical data. The timestamp is rounded to
        # the previous exact hour. Note: this will return hourly data for the requested
        # timestamp only (i.e. a single hourly info element). For example, a request
        # sent where the dateTime parameter is set to 2023-01-03T11:05:49Z will be
        # rounded down to 2023-01-03T11:00:00Z. A timestamp in RFC3339 UTC "Zulu" format,
        # with nanosecond resolution and up to nine fractional digits. Examples: "2014-
        # 10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
        # Corresponds to the JSON property `dateTime`
        # @return [String]
        attr_accessor :date_time
      
        # Optional. Additional features that can be optionally enabled. Specifying extra
        # computations will result in the relevant elements and fields to be returned in
        # the response.
        # Corresponds to the JSON property `extraComputations`
        # @return [Array<String>]
        attr_accessor :extra_computations
      
        # Number from 1 to 720 that indicates the hours range for the request. For
        # example: A value of 48 will yield data from the last 48 hours.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Optional. Allows the client to choose the language for the response. If data
        # cannot be provided for that language the API uses the closest match. Allowed
        # values rely on the IETF standard. Default value is en.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::AirqualityV1::LatLng]
        attr_accessor :location
      
        # Optional. The maximum number of hourly info records to return per page. The
        # default is 72 and the max value is 168 (7 days of data).
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token received from a previous history call. It is used to
        # retrieve the subsequent page. Note that when providing a value for this
        # parameter all other parameters provided must match the call that provided the
        # page token (the previous call).
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `period`
        # @return [Google::Apis::AirqualityV1::Interval]
        attr_accessor :period
      
        # Optional. Determines the color palette used for data provided by the '
        # Universal Air Quality Index' (UAQI). This color palette is relevant just for
        # UAQI, other AQIs have a predetermined color palette that can't be controlled.
        # Corresponds to the JSON property `uaqiColorPalette`
        # @return [String]
        attr_accessor :uaqi_color_palette
      
        # Optional. If set to true, the Universal AQI will be included in the 'indexes'
        # field of the response. Default value is true.
        # Corresponds to the JSON property `universalAqi`
        # @return [Boolean]
        attr_accessor :universal_aqi
        alias_method :universal_aqi?, :universal_aqi
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_local_aqis = args[:custom_local_aqis] if args.key?(:custom_local_aqis)
          @date_time = args[:date_time] if args.key?(:date_time)
          @extra_computations = args[:extra_computations] if args.key?(:extra_computations)
          @hours = args[:hours] if args.key?(:hours)
          @language_code = args[:language_code] if args.key?(:language_code)
          @location = args[:location] if args.key?(:location)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @period = args[:period] if args.key?(:period)
          @uaqi_color_palette = args[:uaqi_color_palette] if args.key?(:uaqi_color_palette)
          @universal_aqi = args[:universal_aqi] if args.key?(:universal_aqi)
        end
      end
      
      # 
      class LookupHistoryResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Contains the air quality information for each hour in the requested
        # range. For example, if the request is for 48 hours of history there will be 48
        # elements of hourly info.
        # Corresponds to the JSON property `hoursInfo`
        # @return [Array<Google::Apis::AirqualityV1::HourInfo>]
        attr_accessor :hours_info
      
        # Optional. The token to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Optional. The ISO_3166-1 alpha-2 code of the country/region corresponding to
        # the location provided in the request. This field might be omitted from the
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
          @hours_info = args[:hours_info] if args.key?(:hours_info)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @region_code = args[:region_code] if args.key?(:region_code)
        end
      end
      
      # Data regarding an air quality pollutant.
      class Pollutant
        include Google::Apis::Core::Hashable
      
        # The emission sources and health effects of a given pollutant.
        # Corresponds to the JSON property `additionalInfo`
        # @return [Google::Apis::AirqualityV1::AdditionalInfo]
        attr_accessor :additional_info
      
        # The pollutant's code name. For example: "so2". A list of all available codes
        # could be found [here](/maps/documentation/air-quality/pollutants#
        # reported_pollutants).
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The concentration of a given pollutant in the air.
        # Corresponds to the JSON property `concentration`
        # @return [Google::Apis::AirqualityV1::Concentration]
        attr_accessor :concentration
      
        # The pollutant's display name. For example: "NOx".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The pollutant's full name. For chemical compounds, this is the IUPAC name.
        # Example: "Sulfur Dioxide". For more information about the IUPAC names table,
        # see https://iupac.org/what-we-do/periodic-table-of-elements/
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_info = args[:additional_info] if args.key?(:additional_info)
          @code = args[:code] if args.key?(:code)
          @concentration = args[:concentration] if args.key?(:concentration)
          @display_name = args[:display_name] if args.key?(:display_name)
          @full_name = args[:full_name] if args.key?(:full_name)
        end
      end
    end
  end
end
