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
    module VisionV1
      
      # External image source (Google Cloud Storage image location).
      class ImageSource
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage image URI. It must be in the following form:
        # `gs://bucket_name/object_name`. For more
        # details, please see: https://cloud.google.com/storage/docs/reference-uris.
        # NOTE: Cloud Storage object versioning is not supported!
        # Corresponds to the JSON property `gcsImageUri`
        # @return [String]
        attr_accessor :gcs_image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_image_uri = args[:gcs_image_uri] if args.key?(:gcs_image_uri)
        end
      end
      
      # Request for performing Google Cloud Vision API tasks over a user-provided
      # image, with user-requested features.
      class AnnotateImageRequest
        include Google::Apis::Core::Hashable
      
        # Client image to perform Google Cloud Vision API tasks over.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::VisionV1::Image]
        attr_accessor :image
      
        # Image context and/or feature-specific parameters.
        # Corresponds to the JSON property `imageContext`
        # @return [Google::Apis::VisionV1::ImageContext]
        attr_accessor :image_context
      
        # Requested features.
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::VisionV1::Feature>]
        attr_accessor :features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image = args[:image] if args.key?(:image)
          @image_context = args[:image_context] if args.key?(:image_context)
          @features = args[:features] if args.key?(:features)
        end
      end
      
      # Response to an image annotation request.
      class AnnotateImageResponse
        include Google::Apis::Core::Hashable
      
        # If present, label detection completed successfully.
        # Corresponds to the JSON property `labelAnnotations`
        # @return [Array<Google::Apis::VisionV1::EntityAnnotation>]
        attr_accessor :label_annotations
      
        # If present, landmark detection completed successfully.
        # Corresponds to the JSON property `landmarkAnnotations`
        # @return [Array<Google::Apis::VisionV1::EntityAnnotation>]
        attr_accessor :landmark_annotations
      
        # Set of features pertaining to the image, computed by various computer vision
        # methods over safe-search verticals (for example, adult, spoof, medical,
        # violence).
        # Corresponds to the JSON property `safeSearchAnnotation`
        # @return [Google::Apis::VisionV1::SafeSearchAnnotation]
        attr_accessor :safe_search_annotation
      
        # Stores image properties (e.g. dominant colors).
        # Corresponds to the JSON property `imagePropertiesAnnotation`
        # @return [Google::Apis::VisionV1::ImageProperties]
        attr_accessor :image_properties_annotation
      
        # If present, text (OCR) detection completed successfully.
        # Corresponds to the JSON property `textAnnotations`
        # @return [Array<Google::Apis::VisionV1::EntityAnnotation>]
        attr_accessor :text_annotations
      
        # If present, logo detection completed successfully.
        # Corresponds to the JSON property `logoAnnotations`
        # @return [Array<Google::Apis::VisionV1::EntityAnnotation>]
        attr_accessor :logo_annotations
      
        # If present, face detection completed successfully.
        # Corresponds to the JSON property `faceAnnotations`
        # @return [Array<Google::Apis::VisionV1::FaceAnnotation>]
        attr_accessor :face_annotations
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` which can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting purpose.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::VisionV1::Status]
        attr_accessor :error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_annotations = args[:label_annotations] if args.key?(:label_annotations)
          @landmark_annotations = args[:landmark_annotations] if args.key?(:landmark_annotations)
          @safe_search_annotation = args[:safe_search_annotation] if args.key?(:safe_search_annotation)
          @image_properties_annotation = args[:image_properties_annotation] if args.key?(:image_properties_annotation)
          @text_annotations = args[:text_annotations] if args.key?(:text_annotations)
          @logo_annotations = args[:logo_annotations] if args.key?(:logo_annotations)
          @face_annotations = args[:face_annotations] if args.key?(:face_annotations)
          @error = args[:error] if args.key?(:error)
        end
      end
      
      # Rectangle determined by min and max LatLng pairs.
      class LatLongRect
        include Google::Apis::Core::Hashable
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Example of normalization code in Python:
        # def NormalizeLongitude(longitude):
        # """Wraps decimal degrees longitude to [-180.0, 180.0]."""
        # q, r = divmod(longitude, 360.0)
        # if r > 180.0 or (r == 180.0 and q <= -1.0):
        # return r - 360.0
        # return r
        # def NormalizeLatLng(latitude, longitude):
        # """Wraps decimal degrees latitude and longitude to
        # [-90.0, 90.0] and [-180.0, 180.0], respectively."""
        # r = latitude % 360.0
        # if r <= 90.0:
        # return r, NormalizeLongitude(longitude)
        # elif r >= 270.0:
        # return r - 360, NormalizeLongitude(longitude)
        # else:
        # return 180 - r, NormalizeLongitude(longitude + 180.0)
        # assert 180.0 == NormalizeLongitude(180.0)
        # assert -180.0 == NormalizeLongitude(-180.0)
        # assert -179.0 == NormalizeLongitude(181.0)
        # assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
        # assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
        # assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
        # assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
        # assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
        # assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
        # Corresponds to the JSON property `maxLatLng`
        # @return [Google::Apis::VisionV1::LatLng]
        attr_accessor :max_lat_lng
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Example of normalization code in Python:
        # def NormalizeLongitude(longitude):
        # """Wraps decimal degrees longitude to [-180.0, 180.0]."""
        # q, r = divmod(longitude, 360.0)
        # if r > 180.0 or (r == 180.0 and q <= -1.0):
        # return r - 360.0
        # return r
        # def NormalizeLatLng(latitude, longitude):
        # """Wraps decimal degrees latitude and longitude to
        # [-90.0, 90.0] and [-180.0, 180.0], respectively."""
        # r = latitude % 360.0
        # if r <= 90.0:
        # return r, NormalizeLongitude(longitude)
        # elif r >= 270.0:
        # return r - 360, NormalizeLongitude(longitude)
        # else:
        # return 180 - r, NormalizeLongitude(longitude + 180.0)
        # assert 180.0 == NormalizeLongitude(180.0)
        # assert -180.0 == NormalizeLongitude(-180.0)
        # assert -179.0 == NormalizeLongitude(181.0)
        # assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
        # assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
        # assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
        # assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
        # assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
        # assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
        # Corresponds to the JSON property `minLatLng`
        # @return [Google::Apis::VisionV1::LatLng]
        attr_accessor :min_lat_lng
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_lat_lng = args[:max_lat_lng] if args.key?(:max_lat_lng)
          @min_lat_lng = args[:min_lat_lng] if args.key?(:min_lat_lng)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` which can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting purpose.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There will be a
        # common set of message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A face annotation object contains the results of face detection.
      class FaceAnnotation
        include Google::Apis::Core::Hashable
      
        # Pitch angle. Indicates the upwards/downwards angle that the face is
        # pointing
        # relative to the image's horizontal plane. Range [-180,180].
        # Corresponds to the JSON property `tiltAngle`
        # @return [Float]
        attr_accessor :tilt_angle
      
        # Under-exposed likelihood.
        # Corresponds to the JSON property `underExposedLikelihood`
        # @return [String]
        attr_accessor :under_exposed_likelihood
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `fdBoundingPoly`
        # @return [Google::Apis::VisionV1::BoundingPoly]
        attr_accessor :fd_bounding_poly
      
        # Face landmarking confidence. Range [0, 1].
        # Corresponds to the JSON property `landmarkingConfidence`
        # @return [Float]
        attr_accessor :landmarking_confidence
      
        # Joy likelihood.
        # Corresponds to the JSON property `joyLikelihood`
        # @return [String]
        attr_accessor :joy_likelihood
      
        # Detection confidence. Range [0, 1].
        # Corresponds to the JSON property `detectionConfidence`
        # @return [Float]
        attr_accessor :detection_confidence
      
        # Surprise likelihood.
        # Corresponds to the JSON property `surpriseLikelihood`
        # @return [String]
        attr_accessor :surprise_likelihood
      
        # Anger likelihood.
        # Corresponds to the JSON property `angerLikelihood`
        # @return [String]
        attr_accessor :anger_likelihood
      
        # Headwear likelihood.
        # Corresponds to the JSON property `headwearLikelihood`
        # @return [String]
        attr_accessor :headwear_likelihood
      
        # Yaw angle. Indicates the leftward/rightward angle that the face is
        # pointing, relative to the vertical plane perpendicular to the image. Range
        # [-180,180].
        # Corresponds to the JSON property `panAngle`
        # @return [Float]
        attr_accessor :pan_angle
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::VisionV1::BoundingPoly]
        attr_accessor :bounding_poly
      
        # Detected face landmarks.
        # Corresponds to the JSON property `landmarks`
        # @return [Array<Google::Apis::VisionV1::Landmark>]
        attr_accessor :landmarks
      
        # Blurred likelihood.
        # Corresponds to the JSON property `blurredLikelihood`
        # @return [String]
        attr_accessor :blurred_likelihood
      
        # Roll angle. Indicates the amount of clockwise/anti-clockwise rotation of
        # the
        # face relative to the image vertical, about the axis perpendicular to the
        # face. Range [-180,180].
        # Corresponds to the JSON property `rollAngle`
        # @return [Float]
        attr_accessor :roll_angle
      
        # Sorrow likelihood.
        # Corresponds to the JSON property `sorrowLikelihood`
        # @return [String]
        attr_accessor :sorrow_likelihood
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tilt_angle = args[:tilt_angle] if args.key?(:tilt_angle)
          @under_exposed_likelihood = args[:under_exposed_likelihood] if args.key?(:under_exposed_likelihood)
          @fd_bounding_poly = args[:fd_bounding_poly] if args.key?(:fd_bounding_poly)
          @landmarking_confidence = args[:landmarking_confidence] if args.key?(:landmarking_confidence)
          @joy_likelihood = args[:joy_likelihood] if args.key?(:joy_likelihood)
          @detection_confidence = args[:detection_confidence] if args.key?(:detection_confidence)
          @surprise_likelihood = args[:surprise_likelihood] if args.key?(:surprise_likelihood)
          @anger_likelihood = args[:anger_likelihood] if args.key?(:anger_likelihood)
          @headwear_likelihood = args[:headwear_likelihood] if args.key?(:headwear_likelihood)
          @pan_angle = args[:pan_angle] if args.key?(:pan_angle)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @landmarks = args[:landmarks] if args.key?(:landmarks)
          @blurred_likelihood = args[:blurred_likelihood] if args.key?(:blurred_likelihood)
          @roll_angle = args[:roll_angle] if args.key?(:roll_angle)
          @sorrow_likelihood = args[:sorrow_likelihood] if args.key?(:sorrow_likelihood)
        end
      end
      
      # A vertex represents a 2D point in the image.
      # NOTE: the vertex coordinates are in the same scale as the original image.
      class Vertex
        include Google::Apis::Core::Hashable
      
        # Y coordinate.
        # Corresponds to the JSON property `y`
        # @return [Fixnum]
        attr_accessor :y
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @y = args[:y] if args.key?(:y)
          @x = args[:x] if args.key?(:x)
        end
      end
      
      # Color information consists of RGB channels, score and fraction of
      # image the color occupies in the image.
      class ColorInfo
        include Google::Apis::Core::Hashable
      
        # Stores the fraction of pixels the color occupies in the image.
        # Value in range [0, 1].
        # Corresponds to the JSON property `pixelFraction`
        # @return [Float]
        attr_accessor :pixel_fraction
      
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
        # @return [Google::Apis::VisionV1::Color]
        attr_accessor :color
      
        # Image-specific score for this color. Value in range [0, 1].
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pixel_fraction = args[:pixel_fraction] if args.key?(:pixel_fraction)
          @color = args[:color] if args.key?(:color)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # A bounding polygon for the detected image annotation.
      class BoundingPoly
        include Google::Apis::Core::Hashable
      
        # The bounding polygon vertices.
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::VisionV1::Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # A face-specific landmark (for example, a face feature).
      # Landmark positions may fall outside the bounds of the image
      # when the face is near one or more edges of the image.
      # Therefore it is NOT guaranteed that 0 <= x < width or 0 <= y < height.
      class Landmark
        include Google::Apis::Core::Hashable
      
        # A 3D position in the image, used primarily for Face detection landmarks.
        # A valid Position must have both x and y coordinates.
        # The position coordinates are in the same scale as the original image.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::VisionV1::Position]
        attr_accessor :position
      
        # Face landmark type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @position = args[:position] if args.key?(:position)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Image context and/or feature-specific parameters.
      class ImageContext
        include Google::Apis::Core::Hashable
      
        # Rectangle determined by min and max LatLng pairs.
        # Corresponds to the JSON property `latLongRect`
        # @return [Google::Apis::VisionV1::LatLongRect]
        attr_accessor :lat_long_rect
      
        # List of languages to use for TEXT_DETECTION. In most cases, an empty value
        # yields the best results since it enables automatic language detection. For
        # languages based on the Latin alphabet, setting `language_hints` is not
        # needed. In rare cases, when the language of the text in the image is known,
        # setting a hint will help get better results (although it will be a
        # significant hindrance if the hint is wrong). Text detection returns an
        # error if one or more of the specified languages is not one of the
        # [supported
        # languages](/translate/v2/translate-reference#supported_languages).
        # Corresponds to the JSON property `languageHints`
        # @return [Array<String>]
        attr_accessor :language_hints
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lat_long_rect = args[:lat_long_rect] if args.key?(:lat_long_rect)
          @language_hints = args[:language_hints] if args.key?(:language_hints)
        end
      end
      
      # Multiple image annotation requests are batched into a single service call.
      class BatchAnnotateImagesRequest
        include Google::Apis::Core::Hashable
      
        # Individual image annotation requests for this batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::VisionV1::AnnotateImageRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Set of detected entity features.
      class EntityAnnotation
        include Google::Apis::Core::Hashable
      
        # Opaque entity ID. Some IDs might be available in Knowledge Graph(KG).
        # For more details on KG please see:
        # https://developers.google.com/knowledge-graph/
        # Corresponds to the JSON property `mid`
        # @return [String]
        attr_accessor :mid
      
        # Entity textual description, expressed in its <code>locale</code> language.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The relevancy of the ICA (Image Content Annotation) label to the
        # image. For example, the relevancy of 'tower' to an image containing
        # 'Eiffel Tower' is likely higher than an image containing a distant towering
        # building, though the confidence that there is a tower may be the same.
        # Range [0, 1].
        # Corresponds to the JSON property `topicality`
        # @return [Float]
        attr_accessor :topicality
      
        # The language code for the locale in which the entity textual
        # <code>description</code> (next field) is expressed.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Some entities can have additional optional <code>Property</code> fields.
        # For example a different kind of score or string that qualifies the entity.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::VisionV1::Property>]
        attr_accessor :properties
      
        # Overall score of the result. Range [0, 1].
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::VisionV1::BoundingPoly]
        attr_accessor :bounding_poly
      
        # The location information for the detected entity. Multiple
        # <code>LocationInfo</code> elements can be present since one location may
        # indicate the location of the scene in the query image, and another the
        # location of the place where the query image was taken. Location information
        # is usually present for landmarks.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::VisionV1::LocationInfo>]
        attr_accessor :locations
      
        # The accuracy of the entity detection in an image.
        # For example, for an image containing 'Eiffel Tower,' this field represents
        # the confidence that there is a tower in the query image. Range [0, 1].
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mid = args[:mid] if args.key?(:mid)
          @description = args[:description] if args.key?(:description)
          @topicality = args[:topicality] if args.key?(:topicality)
          @locale = args[:locale] if args.key?(:locale)
          @properties = args[:properties] if args.key?(:properties)
          @score = args[:score] if args.key?(:score)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @locations = args[:locations] if args.key?(:locations)
          @confidence = args[:confidence] if args.key?(:confidence)
        end
      end
      
      # Arbitrary name/value pair.
      class Property
        include Google::Apis::Core::Hashable
      
        # Value of the property.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Name of the property.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @name = args[:name] if args.key?(:name)
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
      
      # Detected entity location information.
      class LocationInfo
        include Google::Apis::Core::Hashable
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Example of normalization code in Python:
        # def NormalizeLongitude(longitude):
        # """Wraps decimal degrees longitude to [-180.0, 180.0]."""
        # q, r = divmod(longitude, 360.0)
        # if r > 180.0 or (r == 180.0 and q <= -1.0):
        # return r - 360.0
        # return r
        # def NormalizeLatLng(latitude, longitude):
        # """Wraps decimal degrees latitude and longitude to
        # [-90.0, 90.0] and [-180.0, 180.0], respectively."""
        # r = latitude % 360.0
        # if r <= 90.0:
        # return r, NormalizeLongitude(longitude)
        # elif r >= 270.0:
        # return r - 360, NormalizeLongitude(longitude)
        # else:
        # return 180 - r, NormalizeLongitude(longitude + 180.0)
        # assert 180.0 == NormalizeLongitude(180.0)
        # assert -180.0 == NormalizeLongitude(-180.0)
        # assert -179.0 == NormalizeLongitude(181.0)
        # assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
        # assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
        # assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
        # assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
        # assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
        # assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
        # assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
        # assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::VisionV1::LatLng]
        attr_accessor :lat_lng
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lat_lng = args[:lat_lng] if args.key?(:lat_lng)
        end
      end
      
      # Set of features pertaining to the image, computed by various computer vision
      # methods over safe-search verticals (for example, adult, spoof, medical,
      # violence).
      class SafeSearchAnnotation
        include Google::Apis::Core::Hashable
      
        # Likelihood this is a medical image.
        # Corresponds to the JSON property `medical`
        # @return [String]
        attr_accessor :medical
      
        # Spoof likelihood. The likelihood that an obvious modification
        # was made to the image's canonical version to make it appear
        # funny or offensive.
        # Corresponds to the JSON property `spoof`
        # @return [String]
        attr_accessor :spoof
      
        # Violence likelihood.
        # Corresponds to the JSON property `violence`
        # @return [String]
        attr_accessor :violence
      
        # Represents the adult contents likelihood for the image.
        # Corresponds to the JSON property `adult`
        # @return [String]
        attr_accessor :adult
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @medical = args[:medical] if args.key?(:medical)
          @spoof = args[:spoof] if args.key?(:spoof)
          @violence = args[:violence] if args.key?(:violence)
          @adult = args[:adult] if args.key?(:adult)
        end
      end
      
      # Client image to perform Google Cloud Vision API tasks over.
      class Image
        include Google::Apis::Core::Hashable
      
        # External image source (Google Cloud Storage image location).
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::VisionV1::ImageSource]
        attr_accessor :source
      
        # Image content, represented as a stream of bytes.
        # Note: as with all `bytes` fields, protobuffers use a pure binary
        # representation, whereas JSON representations use base64.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # Set of dominant colors and their corresponding scores.
      class DominantColorsAnnotation
        include Google::Apis::Core::Hashable
      
        # RGB color values, with their score and pixel fraction.
        # Corresponds to the JSON property `colors`
        # @return [Array<Google::Apis::VisionV1::ColorInfo>]
        attr_accessor :colors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @colors = args[:colors] if args.key?(:colors)
        end
      end
      
      # The <em>Feature</em> indicates what type of image detection task to perform.
      # Users describe the type of Google Cloud Vision API tasks to perform over
      # images by using <em>Feature</em>s. Features encode the Cloud Vision API
      # vertical to operate on and the number of top-scoring results to return.
      class Feature
        include Google::Apis::Core::Hashable
      
        # The feature type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Maximum number of results of this type.
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @max_results = args[:max_results] if args.key?(:max_results)
        end
      end
      
      # Response to a batch image annotation request.
      class BatchAnnotateImagesResponse
        include Google::Apis::Core::Hashable
      
        # Individual responses to image annotation requests within the batch.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::VisionV1::AnnotateImageResponse>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
      # Stores image properties (e.g. dominant colors).
      class ImageProperties
        include Google::Apis::Core::Hashable
      
        # Set of dominant colors and their corresponding scores.
        # Corresponds to the JSON property `dominantColors`
        # @return [Google::Apis::VisionV1::DominantColorsAnnotation]
        attr_accessor :dominant_colors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dominant_colors = args[:dominant_colors] if args.key?(:dominant_colors)
        end
      end
      
      # An object representing a latitude/longitude pair. This is expressed as a pair
      # of doubles representing degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the
      # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
      # standard</a>. Values must be within normalized ranges.
      # Example of normalization code in Python:
      # def NormalizeLongitude(longitude):
      # """Wraps decimal degrees longitude to [-180.0, 180.0]."""
      # q, r = divmod(longitude, 360.0)
      # if r > 180.0 or (r == 180.0 and q <= -1.0):
      # return r - 360.0
      # return r
      # def NormalizeLatLng(latitude, longitude):
      # """Wraps decimal degrees latitude and longitude to
      # [-90.0, 90.0] and [-180.0, 180.0], respectively."""
      # r = latitude % 360.0
      # if r <= 90.0:
      # return r, NormalizeLongitude(longitude)
      # elif r >= 270.0:
      # return r - 360, NormalizeLongitude(longitude)
      # else:
      # return 180 - r, NormalizeLongitude(longitude + 180.0)
      # assert 180.0 == NormalizeLongitude(180.0)
      # assert -180.0 == NormalizeLongitude(-180.0)
      # assert -179.0 == NormalizeLongitude(181.0)
      # assert (0.0, 0.0) == NormalizeLatLng(360.0, 0.0)
      # assert (0.0, 0.0) == NormalizeLatLng(-360.0, 0.0)
      # assert (85.0, 180.0) == NormalizeLatLng(95.0, 0.0)
      # assert (-85.0, -170.0) == NormalizeLatLng(-95.0, 10.0)
      # assert (90.0, 10.0) == NormalizeLatLng(90.0, 10.0)
      # assert (-90.0, -10.0) == NormalizeLatLng(-90.0, -10.0)
      # assert (0.0, -170.0) == NormalizeLatLng(-180.0, 10.0)
      # assert (0.0, -170.0) == NormalizeLatLng(180.0, 10.0)
      # assert (-90.0, 10.0) == NormalizeLatLng(270.0, 10.0)
      # assert (90.0, 10.0) == NormalizeLatLng(-270.0, 10.0)
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
      
      # A 3D position in the image, used primarily for Face detection landmarks.
      # A valid Position must have both x and y coordinates.
      # The position coordinates are in the same scale as the original image.
      class Position
        include Google::Apis::Core::Hashable
      
        # Y coordinate.
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Z coordinate (or depth).
        # Corresponds to the JSON property `z`
        # @return [Float]
        attr_accessor :z
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @y = args[:y] if args.key?(:y)
          @x = args[:x] if args.key?(:x)
          @z = args[:z] if args.key?(:z)
        end
      end
    end
  end
end
