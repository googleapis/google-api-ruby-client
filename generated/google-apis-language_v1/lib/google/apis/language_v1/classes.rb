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
    module LanguageV1
      
      # The entity analysis request message.
      class AnalyzeEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
        end
      end
      
      # The entity analysis response message.
      class AnalyzeEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # The recognized entities in the input document.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::LanguageV1::Entity>]
        attr_accessor :entities
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @language = args[:language] if args.key?(:language)
        end
      end
      
      # The entity-level sentiment analysis request message.
      class AnalyzeEntitySentimentRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
        end
      end
      
      # The entity-level sentiment analysis response message.
      class AnalyzeEntitySentimentResponse
        include Google::Apis::Core::Hashable
      
        # The recognized entities in the input document with associated sentiments.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::LanguageV1::Entity>]
        attr_accessor :entities
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @language = args[:language] if args.key?(:language)
        end
      end
      
      # The sentiment analysis request message.
      class AnalyzeSentimentRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate sentence offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
        end
      end
      
      # The sentiment analysis response message.
      class AnalyzeSentimentResponse
        include Google::Apis::Core::Hashable
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `documentSentiment`
        # @return [Google::Apis::LanguageV1::Sentiment]
        attr_accessor :document_sentiment
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The sentiment for all the sentences in the document.
        # Corresponds to the JSON property `sentences`
        # @return [Array<Google::Apis::LanguageV1::Sentence>]
        attr_accessor :sentences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_sentiment = args[:document_sentiment] if args.key?(:document_sentiment)
          @language = args[:language] if args.key?(:language)
          @sentences = args[:sentences] if args.key?(:sentences)
        end
      end
      
      # The syntax analysis request message.
      class AnalyzeSyntaxRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
        end
      end
      
      # The syntax analysis response message.
      class AnalyzeSyntaxResponse
        include Google::Apis::Core::Hashable
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Sentences in the input document.
        # Corresponds to the JSON property `sentences`
        # @return [Array<Google::Apis::LanguageV1::Sentence>]
        attr_accessor :sentences
      
        # Tokens, along with their syntactic information, in the input document.
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::LanguageV1::Token>]
        attr_accessor :tokens
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language = args[:language] if args.key?(:language)
          @sentences = args[:sentences] if args.key?(:sentences)
          @tokens = args[:tokens] if args.key?(:tokens)
        end
      end
      
      # The request message for the text annotation API, which can perform multiple
      # analysis types (sentiment, entities, and syntax) in one call.
      class AnnotateTextRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1::Document]
        attr_accessor :document
      
        # The encoding type used by the API to calculate offsets.
        # Corresponds to the JSON property `encodingType`
        # @return [String]
        attr_accessor :encoding_type
      
        # All available features for sentiment, syntax, and semantic analysis. Setting
        # each one to true will enable that specific analysis for the input.
        # Corresponds to the JSON property `features`
        # @return [Google::Apis::LanguageV1::AnnotateTextRequestFeatures]
        attr_accessor :features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @encoding_type = args[:encoding_type] if args.key?(:encoding_type)
          @features = args[:features] if args.key?(:features)
        end
      end
      
      # All available features for sentiment, syntax, and semantic analysis. Setting
      # each one to true will enable that specific analysis for the input.
      class AnnotateTextRequestFeatures
        include Google::Apis::Core::Hashable
      
        # Model options available for classification requests.
        # Corresponds to the JSON property `classificationModelOptions`
        # @return [Google::Apis::LanguageV1::ClassificationModelOptions]
        attr_accessor :classification_model_options
      
        # Classify the full document into categories.
        # Corresponds to the JSON property `classifyText`
        # @return [Boolean]
        attr_accessor :classify_text
        alias_method :classify_text?, :classify_text
      
        # Extract document-level sentiment.
        # Corresponds to the JSON property `extractDocumentSentiment`
        # @return [Boolean]
        attr_accessor :extract_document_sentiment
        alias_method :extract_document_sentiment?, :extract_document_sentiment
      
        # Extract entities.
        # Corresponds to the JSON property `extractEntities`
        # @return [Boolean]
        attr_accessor :extract_entities
        alias_method :extract_entities?, :extract_entities
      
        # Extract entities and their associated sentiment.
        # Corresponds to the JSON property `extractEntitySentiment`
        # @return [Boolean]
        attr_accessor :extract_entity_sentiment
        alias_method :extract_entity_sentiment?, :extract_entity_sentiment
      
        # Extract syntax information.
        # Corresponds to the JSON property `extractSyntax`
        # @return [Boolean]
        attr_accessor :extract_syntax
        alias_method :extract_syntax?, :extract_syntax
      
        # Moderate the document for harmful and sensitive categories.
        # Corresponds to the JSON property `moderateText`
        # @return [Boolean]
        attr_accessor :moderate_text
        alias_method :moderate_text?, :moderate_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification_model_options = args[:classification_model_options] if args.key?(:classification_model_options)
          @classify_text = args[:classify_text] if args.key?(:classify_text)
          @extract_document_sentiment = args[:extract_document_sentiment] if args.key?(:extract_document_sentiment)
          @extract_entities = args[:extract_entities] if args.key?(:extract_entities)
          @extract_entity_sentiment = args[:extract_entity_sentiment] if args.key?(:extract_entity_sentiment)
          @extract_syntax = args[:extract_syntax] if args.key?(:extract_syntax)
          @moderate_text = args[:moderate_text] if args.key?(:moderate_text)
        end
      end
      
      # The text annotations response message.
      class AnnotateTextResponse
        include Google::Apis::Core::Hashable
      
        # Categories identified in the input document.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::LanguageV1::ClassificationCategory>]
        attr_accessor :categories
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `documentSentiment`
        # @return [Google::Apis::LanguageV1::Sentiment]
        attr_accessor :document_sentiment
      
        # Entities, along with their semantic information, in the input document.
        # Populated if the user enables AnnotateTextRequest.Features.extract_entities.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::LanguageV1::Entity>]
        attr_accessor :entities
      
        # The language of the text, which will be the same as the language specified in
        # the request or, if not specified, the automatically-detected language. See
        # Document.language field for more details.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Harmful and sensitive categories identified in the input document.
        # Corresponds to the JSON property `moderationCategories`
        # @return [Array<Google::Apis::LanguageV1::ClassificationCategory>]
        attr_accessor :moderation_categories
      
        # Sentences in the input document. Populated if the user enables
        # AnnotateTextRequest.Features.extract_syntax.
        # Corresponds to the JSON property `sentences`
        # @return [Array<Google::Apis::LanguageV1::Sentence>]
        attr_accessor :sentences
      
        # Tokens, along with their syntactic information, in the input document.
        # Populated if the user enables AnnotateTextRequest.Features.extract_syntax.
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::LanguageV1::Token>]
        attr_accessor :tokens
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @document_sentiment = args[:document_sentiment] if args.key?(:document_sentiment)
          @entities = args[:entities] if args.key?(:entities)
          @language = args[:language] if args.key?(:language)
          @moderation_categories = args[:moderation_categories] if args.key?(:moderation_categories)
          @sentences = args[:sentences] if args.key?(:sentences)
          @tokens = args[:tokens] if args.key?(:tokens)
        end
      end
      
      # Represents a category returned from the text classifier.
      class ClassificationCategory
        include Google::Apis::Core::Hashable
      
        # The classifier's confidence of the category. Number represents how certain the
        # classifier is that this category represents the given text.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The name of the category representing the document.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Model options available for classification requests.
      class ClassificationModelOptions
        include Google::Apis::Core::Hashable
      
        # Options for the V1 model.
        # Corresponds to the JSON property `v1Model`
        # @return [Google::Apis::LanguageV1::ClassificationModelOptionsV1Model]
        attr_accessor :v1_model
      
        # Options for the V2 model.
        # Corresponds to the JSON property `v2Model`
        # @return [Google::Apis::LanguageV1::ClassificationModelOptionsV2Model]
        attr_accessor :v2_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @v1_model = args[:v1_model] if args.key?(:v1_model)
          @v2_model = args[:v2_model] if args.key?(:v2_model)
        end
      end
      
      # Options for the V1 model.
      class ClassificationModelOptionsV1Model
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Options for the V2 model.
      class ClassificationModelOptionsV2Model
        include Google::Apis::Core::Hashable
      
        # The content categories used for classification.
        # Corresponds to the JSON property `contentCategoriesVersion`
        # @return [String]
        attr_accessor :content_categories_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_categories_version = args[:content_categories_version] if args.key?(:content_categories_version)
        end
      end
      
      # The document classification request message.
      class ClassifyTextRequest
        include Google::Apis::Core::Hashable
      
        # Model options available for classification requests.
        # Corresponds to the JSON property `classificationModelOptions`
        # @return [Google::Apis::LanguageV1::ClassificationModelOptions]
        attr_accessor :classification_model_options
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1::Document]
        attr_accessor :document
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification_model_options = args[:classification_model_options] if args.key?(:classification_model_options)
          @document = args[:document] if args.key?(:document)
        end
      end
      
      # The document classification response message.
      class ClassifyTextResponse
        include Google::Apis::Core::Hashable
      
        # Categories representing the input document.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::LanguageV1::ClassificationCategory>]
        attr_accessor :categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
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
      
      # Metric for billing reports.
      class CpuMetric
        include Google::Apis::Core::Hashable
      
        # Required. Number of CPU cores.
        # Corresponds to the JSON property `coreNumber`
        # @return [Fixnum]
        attr_accessor :core_number
      
        # Required. Total seconds of core usage, e.g. 4.
        # Corresponds to the JSON property `coreSec`
        # @return [Fixnum]
        attr_accessor :core_sec
      
        # Required. Type of cpu, e.g. N2.
        # Corresponds to the JSON property `cpuType`
        # @return [String]
        attr_accessor :cpu_type
      
        # Required. Machine spec, e.g. N1_STANDARD_4.
        # Corresponds to the JSON property `machineSpec`
        # @return [String]
        attr_accessor :machine_spec
      
        # Billing tracking labels. They do not contain any user data but only the labels
        # set by Vertex Core Infra itself. Tracking labels' keys are defined with
        # special format: goog-[\p`Ll`\p`N`]+ E.g. "key": "goog-k8s-cluster-name","value"
        # : "us-east1-b4rk"
        # Corresponds to the JSON property `trackingLabels`
        # @return [Hash<String,String>]
        attr_accessor :tracking_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @core_number = args[:core_number] if args.key?(:core_number)
          @core_sec = args[:core_sec] if args.key?(:core_sec)
          @cpu_type = args[:cpu_type] if args.key?(:cpu_type)
          @machine_spec = args[:machine_spec] if args.key?(:machine_spec)
          @tracking_labels = args[:tracking_labels] if args.key?(:tracking_labels)
        end
      end
      
      # Represents dependency parse tree information for a token. (For more
      # information on dependency labels, see http://www.aclweb.org/anthology/P13-2017
      class DependencyEdge
        include Google::Apis::Core::Hashable
      
        # Represents the head of this token in the dependency tree. This is the index of
        # the token which has an arc going to this token. The index is the position of
        # the token in the array of tokens returned by the API method. If this token is
        # a root token, then the `head_token_index` is its own index.
        # Corresponds to the JSON property `headTokenIndex`
        # @return [Fixnum]
        attr_accessor :head_token_index
      
        # The parse label for the token.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @head_token_index = args[:head_token_index] if args.key?(:head_token_index)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # 
      class DiskMetric
        include Google::Apis::Core::Hashable
      
        # Required. Type of Disk, e.g. REGIONAL_SSD.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Required. Seconds of physical disk usage, e.g. 3600.
        # Corresponds to the JSON property `gibSec`
        # @return [Fixnum]
        attr_accessor :gib_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @gib_sec = args[:gib_sec] if args.key?(:gib_sec)
        end
      end
      
      # Represents the input to API methods.
      class Document
        include Google::Apis::Core::Hashable
      
        # The content of the input in string format. Cloud audit logging exempt since it
        # is based on user data.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The Google Cloud Storage URI where the file content is located. This URI must
        # be of the form: gs://bucket_name/object_name. For more details, see https://
        # cloud.google.com/storage/docs/reference-uris. NOTE: Cloud Storage object
        # versioning is not supported.
        # Corresponds to the JSON property `gcsContentUri`
        # @return [String]
        attr_accessor :gcs_content_uri
      
        # The language of the document (if not specified, the language is automatically
        # detected). Both ISO and BCP-47 language codes are accepted. [Language Support](
        # https://cloud.google.com/natural-language/docs/languages) lists currently
        # supported languages for each API method. If the language (either specified by
        # the caller or automatically detected) is not supported by the called API
        # method, an `INVALID_ARGUMENT` error is returned.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Required. If the type is not set or is `TYPE_UNSPECIFIED`, returns an `
        # INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @gcs_content_uri = args[:gcs_content_uri] if args.key?(:gcs_content_uri)
          @language = args[:language] if args.key?(:language)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a phrase in the text that is a known entity, such as a person, an
      # organization, or location. The API associates information, such as salience
      # and mentions, with entities.
      class Entity
        include Google::Apis::Core::Hashable
      
        # The mentions of this entity in the input document. The API currently supports
        # proper noun mentions.
        # Corresponds to the JSON property `mentions`
        # @return [Array<Google::Apis::LanguageV1::EntityMention>]
        attr_accessor :mentions
      
        # Metadata associated with the entity. For most entity types, the metadata is a
        # Wikipedia URL (`wikipedia_url`) and Knowledge Graph MID (`mid`), if they are
        # available. For the metadata associated with other entity types, see the Type
        # table below.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The representative name for the entity.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The salience score associated with the entity in the [0, 1.0] range. The
        # salience score for an entity provides information about the importance or
        # centrality of that entity to the entire document text. Scores closer to 0 are
        # less salient, while scores closer to 1.0 are highly salient.
        # Corresponds to the JSON property `salience`
        # @return [Float]
        attr_accessor :salience
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::LanguageV1::Sentiment]
        attr_accessor :sentiment
      
        # The entity type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mentions = args[:mentions] if args.key?(:mentions)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @salience = args[:salience] if args.key?(:salience)
          @sentiment = args[:sentiment] if args.key?(:sentiment)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a mention for an entity in the text. Currently, proper noun
      # mentions are supported.
      class EntityMention
        include Google::Apis::Core::Hashable
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::LanguageV1::Sentiment]
        attr_accessor :sentiment
      
        # Represents a text span in the input document.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::LanguageV1::TextSpan]
        attr_accessor :text
      
        # The type of the entity mention.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sentiment = args[:sentiment] if args.key?(:sentiment)
          @text = args[:text] if args.key?(:text)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GpuMetric
        include Google::Apis::Core::Hashable
      
        # Required. Seconds of GPU usage, e.g. 3600.
        # Corresponds to the JSON property `gpuSec`
        # @return [Fixnum]
        attr_accessor :gpu_sec
      
        # Required. Type of GPU, e.g. NVIDIA_TESLA_V100.
        # Corresponds to the JSON property `gpuType`
        # @return [String]
        attr_accessor :gpu_type
      
        # Required. Machine spec, e.g. N1_STANDARD_4.
        # Corresponds to the JSON property `machineSpec`
        # @return [String]
        attr_accessor :machine_spec
      
        # Billing tracking labels. They do not contain any user data but only the labels
        # set by Vertex Core Infra itself. Tracking labels' keys are defined with
        # special format: goog-[\p`Ll`\p`N`]+ E.g. "key": "goog-k8s-cluster-name","value"
        # : "us-east1-b4rk"
        # Corresponds to the JSON property `trackingLabels`
        # @return [Hash<String,String>]
        attr_accessor :tracking_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gpu_sec = args[:gpu_sec] if args.key?(:gpu_sec)
          @gpu_type = args[:gpu_type] if args.key?(:gpu_type)
          @machine_spec = args[:machine_spec] if args.key?(:machine_spec)
          @tracking_labels = args[:tracking_labels] if args.key?(:tracking_labels)
        end
      end
      
      # Infra Usage of billing metrics. Next ID: 6
      class InfraUsage
        include Google::Apis::Core::Hashable
      
        # Aggregated core metrics since requested start_time.
        # Corresponds to the JSON property `cpuMetrics`
        # @return [Array<Google::Apis::LanguageV1::CpuMetric>]
        attr_accessor :cpu_metrics
      
        # Aggregated persistent disk metrics since requested start_time.
        # Corresponds to the JSON property `diskMetrics`
        # @return [Array<Google::Apis::LanguageV1::DiskMetric>]
        attr_accessor :disk_metrics
      
        # Aggregated gpu metrics since requested start_time.
        # Corresponds to the JSON property `gpuMetrics`
        # @return [Array<Google::Apis::LanguageV1::GpuMetric>]
        attr_accessor :gpu_metrics
      
        # Aggregated ram metrics since requested start_time.
        # Corresponds to the JSON property `ramMetrics`
        # @return [Array<Google::Apis::LanguageV1::RamMetric>]
        attr_accessor :ram_metrics
      
        # Aggregated tpu metrics since requested start_time.
        # Corresponds to the JSON property `tpuMetrics`
        # @return [Array<Google::Apis::LanguageV1::TpuMetric>]
        attr_accessor :tpu_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_metrics = args[:cpu_metrics] if args.key?(:cpu_metrics)
          @disk_metrics = args[:disk_metrics] if args.key?(:disk_metrics)
          @gpu_metrics = args[:gpu_metrics] if args.key?(:gpu_metrics)
          @ram_metrics = args[:ram_metrics] if args.key?(:ram_metrics)
          @tpu_metrics = args[:tpu_metrics] if args.key?(:tpu_metrics)
        end
      end
      
      # The document moderation request message.
      class ModerateTextRequest
        include Google::Apis::Core::Hashable
      
        # Represents the input to API methods.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::LanguageV1::Document]
        attr_accessor :document
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
        end
      end
      
      # The document moderation response message.
      class ModerateTextResponse
        include Google::Apis::Core::Hashable
      
        # Harmful and sensitive categories representing the input document.
        # Corresponds to the JSON property `moderationCategories`
        # @return [Array<Google::Apis::LanguageV1::ClassificationCategory>]
        attr_accessor :moderation_categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @moderation_categories = args[:moderation_categories] if args.key?(:moderation_categories)
        end
      end
      
      # Represents part of speech information for a token. Parts of speech are as
      # defined in http://www.lrec-conf.org/proceedings/lrec2012/pdf/274_Paper.pdf
      class PartOfSpeech
        include Google::Apis::Core::Hashable
      
        # The grammatical aspect.
        # Corresponds to the JSON property `aspect`
        # @return [String]
        attr_accessor :aspect
      
        # The grammatical case.
        # Corresponds to the JSON property `case`
        # @return [String]
        attr_accessor :case
      
        # The grammatical form.
        # Corresponds to the JSON property `form`
        # @return [String]
        attr_accessor :form
      
        # The grammatical gender.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # The grammatical mood.
        # Corresponds to the JSON property `mood`
        # @return [String]
        attr_accessor :mood
      
        # The grammatical number.
        # Corresponds to the JSON property `number`
        # @return [String]
        attr_accessor :number
      
        # The grammatical person.
        # Corresponds to the JSON property `person`
        # @return [String]
        attr_accessor :person
      
        # The grammatical properness.
        # Corresponds to the JSON property `proper`
        # @return [String]
        attr_accessor :proper
      
        # The grammatical reciprocity.
        # Corresponds to the JSON property `reciprocity`
        # @return [String]
        attr_accessor :reciprocity
      
        # The part of speech tag.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # The grammatical tense.
        # Corresponds to the JSON property `tense`
        # @return [String]
        attr_accessor :tense
      
        # The grammatical voice.
        # Corresponds to the JSON property `voice`
        # @return [String]
        attr_accessor :voice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect = args[:aspect] if args.key?(:aspect)
          @case = args[:case] if args.key?(:case)
          @form = args[:form] if args.key?(:form)
          @gender = args[:gender] if args.key?(:gender)
          @mood = args[:mood] if args.key?(:mood)
          @number = args[:number] if args.key?(:number)
          @person = args[:person] if args.key?(:person)
          @proper = args[:proper] if args.key?(:proper)
          @reciprocity = args[:reciprocity] if args.key?(:reciprocity)
          @tag = args[:tag] if args.key?(:tag)
          @tense = args[:tense] if args.key?(:tense)
          @voice = args[:voice] if args.key?(:voice)
        end
      end
      
      # 
      class RamMetric
        include Google::Apis::Core::Hashable
      
        # Required. VM memory in Gigabyte second, e.g. 3600. Using int64 type to match
        # billing metrics definition.
        # Corresponds to the JSON property `gibSec`
        # @return [Fixnum]
        attr_accessor :gib_sec
      
        # Required. Machine spec, e.g. N1_STANDARD_4.
        # Corresponds to the JSON property `machineSpec`
        # @return [String]
        attr_accessor :machine_spec
      
        # Required. VM memory in gb.
        # Corresponds to the JSON property `memories`
        # @return [Float]
        attr_accessor :memories
      
        # Required. Type of ram.
        # Corresponds to the JSON property `ramType`
        # @return [String]
        attr_accessor :ram_type
      
        # Billing tracking labels. They do not contain any user data but only the labels
        # set by Vertex Core Infra itself. Tracking labels' keys are defined with
        # special format: goog-[\p`Ll`\p`N`]+ E.g. "key": "goog-k8s-cluster-name","value"
        # : "us-east1-b4rk"
        # Corresponds to the JSON property `trackingLabels`
        # @return [Hash<String,String>]
        attr_accessor :tracking_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gib_sec = args[:gib_sec] if args.key?(:gib_sec)
          @machine_spec = args[:machine_spec] if args.key?(:machine_spec)
          @memories = args[:memories] if args.key?(:memories)
          @ram_type = args[:ram_type] if args.key?(:ram_type)
          @tracking_labels = args[:tracking_labels] if args.key?(:tracking_labels)
        end
      end
      
      # Represents a sentence in the input document.
      class Sentence
        include Google::Apis::Core::Hashable
      
        # Represents the feeling associated with the entire text or entities in the text.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::LanguageV1::Sentiment]
        attr_accessor :sentiment
      
        # Represents a text span in the input document.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::LanguageV1::TextSpan]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sentiment = args[:sentiment] if args.key?(:sentiment)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents the feeling associated with the entire text or entities in the text.
      class Sentiment
        include Google::Apis::Core::Hashable
      
        # A non-negative number in the [0, +inf) range, which represents the absolute
        # magnitude of sentiment regardless of score (positive or negative).
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
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
      
      # Represents a text span in the input document.
      class TextSpan
        include Google::Apis::Core::Hashable
      
        # The API calculates the beginning offset of the content in the original
        # document according to the EncodingType specified in the API request.
        # Corresponds to the JSON property `beginOffset`
        # @return [Fixnum]
        attr_accessor :begin_offset
      
        # The content of the text span, which is a substring of the document.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @begin_offset = args[:begin_offset] if args.key?(:begin_offset)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # Represents the smallest syntactic building block of the text.
      class Token
        include Google::Apis::Core::Hashable
      
        # Represents dependency parse tree information for a token. (For more
        # information on dependency labels, see http://www.aclweb.org/anthology/P13-2017
        # Corresponds to the JSON property `dependencyEdge`
        # @return [Google::Apis::LanguageV1::DependencyEdge]
        attr_accessor :dependency_edge
      
        # [Lemma](https://en.wikipedia.org/wiki/Lemma_%28morphology%29) of the token.
        # Corresponds to the JSON property `lemma`
        # @return [String]
        attr_accessor :lemma
      
        # Represents part of speech information for a token. Parts of speech are as
        # defined in http://www.lrec-conf.org/proceedings/lrec2012/pdf/274_Paper.pdf
        # Corresponds to the JSON property `partOfSpeech`
        # @return [Google::Apis::LanguageV1::PartOfSpeech]
        attr_accessor :part_of_speech
      
        # Represents a text span in the input document.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::LanguageV1::TextSpan]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependency_edge = args[:dependency_edge] if args.key?(:dependency_edge)
          @lemma = args[:lemma] if args.key?(:lemma)
          @part_of_speech = args[:part_of_speech] if args.key?(:part_of_speech)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # 
      class TpuMetric
        include Google::Apis::Core::Hashable
      
        # Required. Seconds of TPU usage, e.g. 3600.
        # Corresponds to the JSON property `tpuSec`
        # @return [Fixnum]
        attr_accessor :tpu_sec
      
        # Required. Type of TPU, e.g. TPU_V2, TPU_V3_POD.
        # Corresponds to the JSON property `tpuType`
        # @return [String]
        attr_accessor :tpu_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tpu_sec = args[:tpu_sec] if args.key?(:tpu_sec)
          @tpu_type = args[:tpu_type] if args.key?(:tpu_type)
        end
      end
      
      # The data statistics of a series of ARRAY values.
      class XpsArrayStats
        include Google::Apis::Core::Hashable
      
        # Common statistics for a column with a specified data type.
        # Corresponds to the JSON property `commonStats`
        # @return [Google::Apis::LanguageV1::XpsCommonStats]
        attr_accessor :common_stats
      
        # The data statistics of a series of values that share the same DataType.
        # Corresponds to the JSON property `memberStats`
        # @return [Google::Apis::LanguageV1::XpsDataStats]
        attr_accessor :member_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_stats = args[:common_stats] if args.key?(:common_stats)
          @member_stats = args[:member_stats] if args.key?(:member_stats)
        end
      end
      
      # 
      class XpsBatchPredictResponse
        include Google::Apis::Core::Hashable
      
        # Set of examples or input sources.
        # Corresponds to the JSON property `exampleSet`
        # @return [Google::Apis::LanguageV1::XpsExampleSet]
        attr_accessor :example_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_set = args[:example_set] if args.key?(:example_set)
        end
      end
      
      # Bounding box matching model metrics for a single intersection-over-union
      # threshold and multiple label match confidence thresholds.
      class XpsBoundingBoxMetricsEntry
        include Google::Apis::Core::Hashable
      
        # Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,
        # 0.97,0.98,0.99.
        # Corresponds to the JSON property `confidenceMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsBoundingBoxMetricsEntryConfidenceMetricsEntry>]
        attr_accessor :confidence_metrics_entries
      
        # The intersection-over-union threshold value used to compute this metrics entry.
        # Corresponds to the JSON property `iouThreshold`
        # @return [Float]
        attr_accessor :iou_threshold
      
        # The mean average precision.
        # Corresponds to the JSON property `meanAveragePrecision`
        # @return [Float]
        attr_accessor :mean_average_precision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_metrics_entries = args[:confidence_metrics_entries] if args.key?(:confidence_metrics_entries)
          @iou_threshold = args[:iou_threshold] if args.key?(:iou_threshold)
          @mean_average_precision = args[:mean_average_precision] if args.key?(:mean_average_precision)
        end
      end
      
      # Metrics for a single confidence threshold.
      class XpsBoundingBoxMetricsEntryConfidenceMetricsEntry
        include Google::Apis::Core::Hashable
      
        # The confidence threshold value used to compute the metrics.
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # The harmonic mean of recall and precision.
        # Corresponds to the JSON property `f1Score`
        # @return [Float]
        attr_accessor :f1_score
      
        # Precision for the given confidence threshold.
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # Recall for the given confidence threshold.
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @f1_score = args[:f1_score] if args.key?(:f1_score)
          @precision = args[:precision] if args.key?(:precision)
          @recall = args[:recall] if args.key?(:recall)
        end
      end
      
      # The data statistics of a series of CATEGORY values.
      class XpsCategoryStats
        include Google::Apis::Core::Hashable
      
        # Common statistics for a column with a specified data type.
        # Corresponds to the JSON property `commonStats`
        # @return [Google::Apis::LanguageV1::XpsCommonStats]
        attr_accessor :common_stats
      
        # The statistics of the top 20 CATEGORY values, ordered by CategoryStats.
        # SingleCategoryStats.count.
        # Corresponds to the JSON property `topCategoryStats`
        # @return [Array<Google::Apis::LanguageV1::XpsCategoryStatsSingleCategoryStats>]
        attr_accessor :top_category_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_stats = args[:common_stats] if args.key?(:common_stats)
          @top_category_stats = args[:top_category_stats] if args.key?(:top_category_stats)
        end
      end
      
      # The statistics of a single CATEGORY value.
      class XpsCategoryStatsSingleCategoryStats
        include Google::Apis::Core::Hashable
      
        # The number of occurrences of this value in the series.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The CATEGORY value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Model evaluation metrics for classification problems. It can be used for image
      # and video classification. Next tag: 9.
      class XpsClassificationEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # The Area under precision recall curve metric.
        # Corresponds to the JSON property `auPrc`
        # @return [Float]
        attr_accessor :au_prc
      
        # The Area Under Receiver Operating Characteristic curve metric. Micro-averaged
        # for the overall evaluation.
        # Corresponds to the JSON property `auRoc`
        # @return [Float]
        attr_accessor :au_roc
      
        # The Area under precision recall curve metric based on priors.
        # Corresponds to the JSON property `baseAuPrc`
        # @return [Float]
        attr_accessor :base_au_prc
      
        # Metrics that have confidence thresholds. Precision-recall curve can be derived
        # from it.
        # Corresponds to the JSON property `confidenceMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsConfidenceMetricsEntry>]
        attr_accessor :confidence_metrics_entries
      
        # Confusion matrix of the model running the classification.
        # Corresponds to the JSON property `confusionMatrix`
        # @return [Google::Apis::LanguageV1::XpsConfusionMatrix]
        attr_accessor :confusion_matrix
      
        # The number of examples used for model evaluation.
        # Corresponds to the JSON property `evaluatedExamplesCount`
        # @return [Fixnum]
        attr_accessor :evaluated_examples_count
      
        # The Log Loss metric.
        # Corresponds to the JSON property `logLoss`
        # @return [Float]
        attr_accessor :log_loss
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @au_prc = args[:au_prc] if args.key?(:au_prc)
          @au_roc = args[:au_roc] if args.key?(:au_roc)
          @base_au_prc = args[:base_au_prc] if args.key?(:base_au_prc)
          @confidence_metrics_entries = args[:confidence_metrics_entries] if args.key?(:confidence_metrics_entries)
          @confusion_matrix = args[:confusion_matrix] if args.key?(:confusion_matrix)
          @evaluated_examples_count = args[:evaluated_examples_count] if args.key?(:evaluated_examples_count)
          @log_loss = args[:log_loss] if args.key?(:log_loss)
        end
      end
      
      # Map from color to display name. Will only be used by Image Segmentation for
      # uCAIP.
      class XpsColorMap
        include Google::Apis::Core::Hashable
      
        # Should be used during training.
        # Corresponds to the JSON property `annotationSpecIdToken`
        # @return [String]
        attr_accessor :annotation_spec_id_token
      
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
        # @return [Google::Apis::LanguageV1::Color]
        attr_accessor :color
      
        # Should be used during preprocessing.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # RGB color and each channel is represented by an integer.
        # Corresponds to the JSON property `intColor`
        # @return [Google::Apis::LanguageV1::XpsColorMapIntColor]
        attr_accessor :int_color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_id_token = args[:annotation_spec_id_token] if args.key?(:annotation_spec_id_token)
          @color = args[:color] if args.key?(:color)
          @display_name = args[:display_name] if args.key?(:display_name)
          @int_color = args[:int_color] if args.key?(:int_color)
        end
      end
      
      # RGB color and each channel is represented by an integer.
      class XpsColorMapIntColor
        include Google::Apis::Core::Hashable
      
        # The value should be in range of [0, 255].
        # Corresponds to the JSON property `blue`
        # @return [Fixnum]
        attr_accessor :blue
      
        # The value should be in range of [0, 255].
        # Corresponds to the JSON property `green`
        # @return [Fixnum]
        attr_accessor :green
      
        # The value should be in range of [0, 255].
        # Corresponds to the JSON property `red`
        # @return [Fixnum]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blue = args[:blue] if args.key?(:blue)
          @green = args[:green] if args.key?(:green)
          @red = args[:red] if args.key?(:red)
        end
      end
      
      # 
      class XpsColumnSpec
        include Google::Apis::Core::Hashable
      
        # The unique id of the column. When Preprocess, the Tables BE will popuate the
        # order id of the column, which reflects the order of the column inside the
        # table, i.e. 0 means the first column in the table, N-1 means the last column.
        # AutoML BE will persist this order id in Spanner and set the order id here when
        # calling RefreshTablesStats and Train. Note: it's different than the
        # column_spec_id that is generated in AutoML BE.
        # Corresponds to the JSON property `columnId`
        # @return [Fixnum]
        attr_accessor :column_id
      
        # The data statistics of a series of values that share the same DataType.
        # Corresponds to the JSON property `dataStats`
        # @return [Google::Apis::LanguageV1::XpsDataStats]
        attr_accessor :data_stats
      
        # Indicated the type of data that can be stored in a structured data entity (e.g.
        # a table).
        # Corresponds to the JSON property `dataType`
        # @return [Google::Apis::LanguageV1::XpsDataType]
        attr_accessor :data_type
      
        # The display name of the column. It's outputed in Preprocess and a required
        # input for RefreshTablesStats and Train.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # =========================================================================== #
        # The fields below are used exclusively for Forecasting.
        # Corresponds to the JSON property `forecastingMetadata`
        # @return [Google::Apis::LanguageV1::XpsColumnSpecForecastingMetadata]
        attr_accessor :forecasting_metadata
      
        # It's outputed in RefreshTablesStats, and a required input in Train.
        # Corresponds to the JSON property `topCorrelatedColumns`
        # @return [Array<Google::Apis::LanguageV1::XpsColumnSpecCorrelatedColumn>]
        attr_accessor :top_correlated_columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_id = args[:column_id] if args.key?(:column_id)
          @data_stats = args[:data_stats] if args.key?(:data_stats)
          @data_type = args[:data_type] if args.key?(:data_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @forecasting_metadata = args[:forecasting_metadata] if args.key?(:forecasting_metadata)
          @top_correlated_columns = args[:top_correlated_columns] if args.key?(:top_correlated_columns)
        end
      end
      
      # Identifies a table's column, and its correlation with the column this
      # ColumnSpec describes.
      class XpsColumnSpecCorrelatedColumn
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `columnId`
        # @return [Fixnum]
        attr_accessor :column_id
      
        # A correlation statistics between two series of DataType values. The series may
        # have differing DataType-s, but within a single series the DataType must be the
        # same.
        # Corresponds to the JSON property `correlationStats`
        # @return [Google::Apis::LanguageV1::XpsCorrelationStats]
        attr_accessor :correlation_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_id = args[:column_id] if args.key?(:column_id)
          @correlation_stats = args[:correlation_stats] if args.key?(:correlation_stats)
        end
      end
      
      # =========================================================================== #
      # The fields below are used exclusively for Forecasting.
      class XpsColumnSpecForecastingMetadata
        include Google::Apis::Core::Hashable
      
        # The type of the column for FORECASTING model training purposes.
        # Corresponds to the JSON property `columnType`
        # @return [String]
        attr_accessor :column_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_type = args[:column_type] if args.key?(:column_type)
        end
      end
      
      # Common statistics for a column with a specified data type.
      class XpsCommonStats
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `distinctValueCount`
        # @return [Fixnum]
        attr_accessor :distinct_value_count
      
        # 
        # Corresponds to the JSON property `nullValueCount`
        # @return [Fixnum]
        attr_accessor :null_value_count
      
        # 
        # Corresponds to the JSON property `validValueCount`
        # @return [Fixnum]
        attr_accessor :valid_value_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distinct_value_count = args[:distinct_value_count] if args.key?(:distinct_value_count)
          @null_value_count = args[:null_value_count] if args.key?(:null_value_count)
          @valid_value_count = args[:valid_value_count] if args.key?(:valid_value_count)
        end
      end
      
      # ConfidenceMetricsEntry includes generic precision, recall, f1 score etc. Next
      # tag: 16.
      class XpsConfidenceMetricsEntry
        include Google::Apis::Core::Hashable
      
        # Metrics are computed with an assumption that the model never return
        # predictions with score lower than this value.
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # The harmonic mean of recall and precision.
        # Corresponds to the JSON property `f1Score`
        # @return [Float]
        attr_accessor :f1_score
      
        # The harmonic mean of recall_at1 and precision_at1.
        # Corresponds to the JSON property `f1ScoreAt1`
        # @return [Float]
        attr_accessor :f1_score_at1
      
        # The number of ground truth labels that are not matched by a model created
        # label.
        # Corresponds to the JSON property `falseNegativeCount`
        # @return [Fixnum]
        attr_accessor :false_negative_count
      
        # The number of model created labels that do not match a ground truth label.
        # Corresponds to the JSON property `falsePositiveCount`
        # @return [Fixnum]
        attr_accessor :false_positive_count
      
        # False Positive Rate for the given confidence threshold.
        # Corresponds to the JSON property `falsePositiveRate`
        # @return [Float]
        attr_accessor :false_positive_rate
      
        # The False Positive Rate when only considering the label that has the highest
        # prediction score and not below the confidence threshold for each example.
        # Corresponds to the JSON property `falsePositiveRateAt1`
        # @return [Float]
        attr_accessor :false_positive_rate_at1
      
        # Metrics are computed with an assumption that the model always returns at most
        # this many predictions (ordered by their score, descendingly), but they all
        # still need to meet the confidence_threshold.
        # Corresponds to the JSON property `positionThreshold`
        # @return [Fixnum]
        attr_accessor :position_threshold
      
        # Precision for the given confidence threshold.
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # The precision when only considering the label that has the highest prediction
        # score and not below the confidence threshold for each example.
        # Corresponds to the JSON property `precisionAt1`
        # @return [Float]
        attr_accessor :precision_at1
      
        # Recall (true positive rate) for the given confidence threshold.
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        # The recall (true positive rate) when only considering the label that has the
        # highest prediction score and not below the confidence threshold for each
        # example.
        # Corresponds to the JSON property `recallAt1`
        # @return [Float]
        attr_accessor :recall_at1
      
        # The number of labels that were not created by the model, but if they would,
        # they would not match a ground truth label.
        # Corresponds to the JSON property `trueNegativeCount`
        # @return [Fixnum]
        attr_accessor :true_negative_count
      
        # The number of model created labels that match a ground truth label.
        # Corresponds to the JSON property `truePositiveCount`
        # @return [Fixnum]
        attr_accessor :true_positive_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @f1_score = args[:f1_score] if args.key?(:f1_score)
          @f1_score_at1 = args[:f1_score_at1] if args.key?(:f1_score_at1)
          @false_negative_count = args[:false_negative_count] if args.key?(:false_negative_count)
          @false_positive_count = args[:false_positive_count] if args.key?(:false_positive_count)
          @false_positive_rate = args[:false_positive_rate] if args.key?(:false_positive_rate)
          @false_positive_rate_at1 = args[:false_positive_rate_at1] if args.key?(:false_positive_rate_at1)
          @position_threshold = args[:position_threshold] if args.key?(:position_threshold)
          @precision = args[:precision] if args.key?(:precision)
          @precision_at1 = args[:precision_at1] if args.key?(:precision_at1)
          @recall = args[:recall] if args.key?(:recall)
          @recall_at1 = args[:recall_at1] if args.key?(:recall_at1)
          @true_negative_count = args[:true_negative_count] if args.key?(:true_negative_count)
          @true_positive_count = args[:true_positive_count] if args.key?(:true_positive_count)
        end
      end
      
      # Confusion matrix of the model running the classification.
      class XpsConfusionMatrix
        include Google::Apis::Core::Hashable
      
        # For the following three repeated fields, only one is intended to be set.
        # annotation_spec_id_token is preferable to be set. ID tokens of the annotation
        # specs used in the confusion matrix.
        # Corresponds to the JSON property `annotationSpecIdToken`
        # @return [Array<String>]
        attr_accessor :annotation_spec_id_token
      
        # Category (mainly for segmentation). Set only for image segmentation models.
        # Note: uCAIP Image Segmentation should use annotation_spec_id_token.
        # Corresponds to the JSON property `category`
        # @return [Array<Fixnum>]
        attr_accessor :category
      
        # Rows in the confusion matrix. The number of rows is equal to the size of `
        # annotation_spec_id_token`. `row[i].value[j]` is the number of examples that
        # have ground truth of the `annotation_spec_id_token[i]` and are predicted as `
        # annotation_spec_id_token[j]` by the model being evaluated.
        # Corresponds to the JSON property `row`
        # @return [Array<Google::Apis::LanguageV1::XpsConfusionMatrixRow>]
        attr_accessor :row
      
        # Sentiment labels used in the confusion matrix. Set only for text sentiment
        # models. For AutoML Text Revamp, use `annotation_spec_id_token` instead and
        # leave this field empty.
        # Corresponds to the JSON property `sentimentLabel`
        # @return [Array<Fixnum>]
        attr_accessor :sentiment_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_id_token = args[:annotation_spec_id_token] if args.key?(:annotation_spec_id_token)
          @category = args[:category] if args.key?(:category)
          @row = args[:row] if args.key?(:row)
          @sentiment_label = args[:sentiment_label] if args.key?(:sentiment_label)
        end
      end
      
      # A row in the confusion matrix.
      class XpsConfusionMatrixRow
        include Google::Apis::Core::Hashable
      
        # Same as above except intended to represent other counts (for e.g. for
        # segmentation this is pixel count). NOTE(params): Only example_count or count
        # is set (oneoff does not support repeated fields unless they are embedded
        # inside another message).
        # Corresponds to the JSON property `count`
        # @return [Array<Fixnum>]
        attr_accessor :count
      
        # Value of the specific cell in the confusion matrix. The number of values each
        # row has (i.e. the length of the row) is equal to the length of the
        # annotation_spec_id_token field.
        # Corresponds to the JSON property `exampleCount`
        # @return [Array<Fixnum>]
        attr_accessor :example_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @example_count = args[:example_count] if args.key?(:example_count)
        end
      end
      
      # A model format used for iOS mobile devices.
      class XpsCoreMlFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A correlation statistics between two series of DataType values. The series may
      # have differing DataType-s, but within a single series the DataType must be the
      # same.
      class XpsCorrelationStats
        include Google::Apis::Core::Hashable
      
        # The correlation value using the Cramer's V measure.
        # Corresponds to the JSON property `cramersV`
        # @return [Float]
        attr_accessor :cramers_v
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cramers_v = args[:cramers_v] if args.key?(:cramers_v)
        end
      end
      
      # Different types of errors and the stats associatesd with each error.
      class XpsDataErrors
        include Google::Apis::Core::Hashable
      
        # Number of records having errors associated with the enum.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Type of the error.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @error_type = args[:error_type] if args.key?(:error_type)
        end
      end
      
      # The data statistics of a series of values that share the same DataType.
      class XpsDataStats
        include Google::Apis::Core::Hashable
      
        # The data statistics of a series of ARRAY values.
        # Corresponds to the JSON property `arrayStats`
        # @return [Google::Apis::LanguageV1::XpsArrayStats]
        attr_accessor :array_stats
      
        # The data statistics of a series of CATEGORY values.
        # Corresponds to the JSON property `categoryStats`
        # @return [Google::Apis::LanguageV1::XpsCategoryStats]
        attr_accessor :category_stats
      
        # The number of distinct values.
        # Corresponds to the JSON property `distinctValueCount`
        # @return [Fixnum]
        attr_accessor :distinct_value_count
      
        # The data statistics of a series of FLOAT64 values.
        # Corresponds to the JSON property `float64Stats`
        # @return [Google::Apis::LanguageV1::XpsFloat64Stats]
        attr_accessor :float64_stats
      
        # The number of values that are null.
        # Corresponds to the JSON property `nullValueCount`
        # @return [Fixnum]
        attr_accessor :null_value_count
      
        # The data statistics of a series of STRING values.
        # Corresponds to the JSON property `stringStats`
        # @return [Google::Apis::LanguageV1::XpsStringStats]
        attr_accessor :string_stats
      
        # The data statistics of a series of STRUCT values.
        # Corresponds to the JSON property `structStats`
        # @return [Google::Apis::LanguageV1::XpsStructStats]
        attr_accessor :struct_stats
      
        # The data statistics of a series of TIMESTAMP values.
        # Corresponds to the JSON property `timestampStats`
        # @return [Google::Apis::LanguageV1::XpsTimestampStats]
        attr_accessor :timestamp_stats
      
        # The number of values that are valid.
        # Corresponds to the JSON property `validValueCount`
        # @return [Fixnum]
        attr_accessor :valid_value_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_stats = args[:array_stats] if args.key?(:array_stats)
          @category_stats = args[:category_stats] if args.key?(:category_stats)
          @distinct_value_count = args[:distinct_value_count] if args.key?(:distinct_value_count)
          @float64_stats = args[:float64_stats] if args.key?(:float64_stats)
          @null_value_count = args[:null_value_count] if args.key?(:null_value_count)
          @string_stats = args[:string_stats] if args.key?(:string_stats)
          @struct_stats = args[:struct_stats] if args.key?(:struct_stats)
          @timestamp_stats = args[:timestamp_stats] if args.key?(:timestamp_stats)
          @valid_value_count = args[:valid_value_count] if args.key?(:valid_value_count)
        end
      end
      
      # Indicated the type of data that can be stored in a structured data entity (e.g.
      # a table).
      class XpsDataType
        include Google::Apis::Core::Hashable
      
        # The highly compatible data types to this data type.
        # Corresponds to the JSON property `compatibleDataTypes`
        # @return [Array<Google::Apis::LanguageV1::XpsDataType>]
        attr_accessor :compatible_data_types
      
        # Indicated the type of data that can be stored in a structured data entity (e.g.
        # a table).
        # Corresponds to the JSON property `listElementType`
        # @return [Google::Apis::LanguageV1::XpsDataType]
        attr_accessor :list_element_type
      
        # If true, this DataType can also be `null`.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # `StructType` defines the DataType-s of a STRUCT type.
        # Corresponds to the JSON property `structType`
        # @return [Google::Apis::LanguageV1::XpsStructType]
        attr_accessor :struct_type
      
        # If type_code == TIMESTAMP then `time_format` provides the format in which that
        # time field is expressed. The time_format must be written in `strftime` syntax.
        # If time_format is not set, then the default format as described on the field
        # is used.
        # Corresponds to the JSON property `timeFormat`
        # @return [String]
        attr_accessor :time_format
      
        # Required. The TypeCode for this type.
        # Corresponds to the JSON property `typeCode`
        # @return [String]
        attr_accessor :type_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compatible_data_types = args[:compatible_data_types] if args.key?(:compatible_data_types)
          @list_element_type = args[:list_element_type] if args.key?(:list_element_type)
          @nullable = args[:nullable] if args.key?(:nullable)
          @struct_type = args[:struct_type] if args.key?(:struct_type)
          @time_format = args[:time_format] if args.key?(:time_format)
          @type_code = args[:type_code] if args.key?(:type_code)
        end
      end
      
      # A model format used for Docker containers. Use the params field to customize
      # the container. The container is verified to work correctly on ubuntu 16.04
      # operating system.
      class XpsDockerFormat
        include Google::Apis::Core::Hashable
      
        # Optional. Additional cpu information describing the requirements for the to be
        # exported model files.
        # Corresponds to the JSON property `cpuArchitecture`
        # @return [String]
        attr_accessor :cpu_architecture
      
        # Optional. Additional gpu information describing the requirements for the to be
        # exported model files.
        # Corresponds to the JSON property `gpuArchitecture`
        # @return [String]
        attr_accessor :gpu_architecture
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_architecture = args[:cpu_architecture] if args.key?(:cpu_architecture)
          @gpu_architecture = args[:gpu_architecture] if args.key?(:gpu_architecture)
        end
      end
      
      # A model format used for [Edge TPU](https://cloud.google.com/edge-tpu/) devices.
      class XpsEdgeTpuTfLiteFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Contains xPS-specific model evaluation metrics either for a single annotation
      # spec (label), or for the model overall. Next tag: 18.
      class XpsEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # The annotation_spec for which this evaluation metrics instance had been
        # created. Empty iff this is an overall model evaluation (like Tables evaluation
        # metrics), i.e. aggregated across all labels. The value comes from the input
        # annotations in AnnotatedExample. For MVP product or for text sentiment models
        # where annotation_spec_id_token is not available, set label instead.
        # Corresponds to the JSON property `annotationSpecIdToken`
        # @return [String]
        attr_accessor :annotation_spec_id_token
      
        # The integer category label for which this evaluation metric instance had been
        # created. Valid categories are 0 or higher. Overall model evaluation should set
        # this to negative values (rather than implicit zero). Only used for Image
        # Segmentation (prefer to set annotation_spec_id_token instead). Note: uCAIP
        # Image Segmentation should use annotation_spec_id_token.
        # Corresponds to the JSON property `category`
        # @return [Fixnum]
        attr_accessor :category
      
        # The number of examples used to create this evaluation metrics instance.
        # Corresponds to the JSON property `evaluatedExampleCount`
        # @return [Fixnum]
        attr_accessor :evaluated_example_count
      
        # Model evaluation metrics for classification problems. It can be used for image
        # and video classification. Next tag: 9.
        # Corresponds to the JSON property `imageClassificationEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsClassificationEvaluationMetrics]
        attr_accessor :image_classification_eval_metrics
      
        # Model evaluation metrics for image object detection problems. Evaluates
        # prediction quality of labeled bounding boxes.
        # Corresponds to the JSON property `imageObjectDetectionEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsImageObjectDetectionEvaluationMetrics]
        attr_accessor :image_object_detection_eval_metrics
      
        # Model evaluation metrics for image segmentation problems. Next tag: 4.
        # Corresponds to the JSON property `imageSegmentationEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsImageSegmentationEvaluationMetrics]
        attr_accessor :image_segmentation_eval_metrics
      
        # The label for which this evaluation metrics instance had been created. Empty
        # iff this is an overall model evaluation (like Tables evaluation metrics), i.e.
        # aggregated across all labels. The label maps to AnnotationSpec.display_name in
        # Public API protos. Only used by MVP implementation and text sentiment FULL
        # implementation.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Model evaluation metrics for regression problems. It can be used for Tables.
        # Corresponds to the JSON property `regressionEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsRegressionEvaluationMetrics]
        attr_accessor :regression_eval_metrics
      
        # Model evaluation metrics for classification problems. It can be used for image
        # and video classification. Next tag: 9.
        # Corresponds to the JSON property `tablesClassificationEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsClassificationEvaluationMetrics]
        attr_accessor :tables_classification_eval_metrics
      
        # 
        # Corresponds to the JSON property `tablesEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsTablesEvaluationMetrics]
        attr_accessor :tables_eval_metrics
      
        # Model evaluation metrics for classification problems. It can be used for image
        # and video classification. Next tag: 9.
        # Corresponds to the JSON property `textClassificationEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsClassificationEvaluationMetrics]
        attr_accessor :text_classification_eval_metrics
      
        # 
        # Corresponds to the JSON property `textExtractionEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsTextExtractionEvaluationMetrics]
        attr_accessor :text_extraction_eval_metrics
      
        # Model evaluation metrics for text sentiment problems.
        # Corresponds to the JSON property `textSentimentEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsTextSentimentEvaluationMetrics]
        attr_accessor :text_sentiment_eval_metrics
      
        # Evaluation metrics for the dataset.
        # Corresponds to the JSON property `translationEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsTranslationEvaluationMetrics]
        attr_accessor :translation_eval_metrics
      
        # Model evaluation metrics for video action recognition.
        # Corresponds to the JSON property `videoActionRecognitionEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsVideoActionRecognitionEvaluationMetrics]
        attr_accessor :video_action_recognition_eval_metrics
      
        # Model evaluation metrics for classification problems. It can be used for image
        # and video classification. Next tag: 9.
        # Corresponds to the JSON property `videoClassificationEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsClassificationEvaluationMetrics]
        attr_accessor :video_classification_eval_metrics
      
        # Model evaluation metrics for ObjectTracking problems. Next tag: 10.
        # Corresponds to the JSON property `videoObjectTrackingEvalMetrics`
        # @return [Google::Apis::LanguageV1::XpsVideoObjectTrackingEvaluationMetrics]
        attr_accessor :video_object_tracking_eval_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_id_token = args[:annotation_spec_id_token] if args.key?(:annotation_spec_id_token)
          @category = args[:category] if args.key?(:category)
          @evaluated_example_count = args[:evaluated_example_count] if args.key?(:evaluated_example_count)
          @image_classification_eval_metrics = args[:image_classification_eval_metrics] if args.key?(:image_classification_eval_metrics)
          @image_object_detection_eval_metrics = args[:image_object_detection_eval_metrics] if args.key?(:image_object_detection_eval_metrics)
          @image_segmentation_eval_metrics = args[:image_segmentation_eval_metrics] if args.key?(:image_segmentation_eval_metrics)
          @label = args[:label] if args.key?(:label)
          @regression_eval_metrics = args[:regression_eval_metrics] if args.key?(:regression_eval_metrics)
          @tables_classification_eval_metrics = args[:tables_classification_eval_metrics] if args.key?(:tables_classification_eval_metrics)
          @tables_eval_metrics = args[:tables_eval_metrics] if args.key?(:tables_eval_metrics)
          @text_classification_eval_metrics = args[:text_classification_eval_metrics] if args.key?(:text_classification_eval_metrics)
          @text_extraction_eval_metrics = args[:text_extraction_eval_metrics] if args.key?(:text_extraction_eval_metrics)
          @text_sentiment_eval_metrics = args[:text_sentiment_eval_metrics] if args.key?(:text_sentiment_eval_metrics)
          @translation_eval_metrics = args[:translation_eval_metrics] if args.key?(:translation_eval_metrics)
          @video_action_recognition_eval_metrics = args[:video_action_recognition_eval_metrics] if args.key?(:video_action_recognition_eval_metrics)
          @video_classification_eval_metrics = args[:video_classification_eval_metrics] if args.key?(:video_classification_eval_metrics)
          @video_object_tracking_eval_metrics = args[:video_object_tracking_eval_metrics] if args.key?(:video_object_tracking_eval_metrics)
        end
      end
      
      # Specifies location of model evaluation metrics.
      class XpsEvaluationMetricsSet
        include Google::Apis::Core::Hashable
      
        # Inline EvaluationMetrics - should be relatively small. For passing large
        # quantities of exhaustive metrics, use file_spec.
        # Corresponds to the JSON property `evaluationMetrics`
        # @return [Array<Google::Apis::LanguageV1::XpsEvaluationMetrics>]
        attr_accessor :evaluation_metrics
      
        # Spec of input and output files, on external file systems (CNS, GCS, etc).
        # Corresponds to the JSON property `fileSpec`
        # @return [Google::Apis::LanguageV1::XpsFileSpec]
        attr_accessor :file_spec
      
        # Number of the evaluation metrics (usually one per label plus overall).
        # Corresponds to the JSON property `numEvaluationMetrics`
        # @return [Fixnum]
        attr_accessor :num_evaluation_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation_metrics = args[:evaluation_metrics] if args.key?(:evaluation_metrics)
          @file_spec = args[:file_spec] if args.key?(:file_spec)
          @num_evaluation_metrics = args[:num_evaluation_metrics] if args.key?(:num_evaluation_metrics)
        end
      end
      
      # Set of examples or input sources.
      class XpsExampleSet
        include Google::Apis::Core::Hashable
      
        # Spec of input and output files, on external file systems (CNS, GCS, etc).
        # Corresponds to the JSON property `fileSpec`
        # @return [Google::Apis::LanguageV1::XpsFileSpec]
        attr_accessor :file_spec
      
        # Fingerprint of the example set.
        # Corresponds to the JSON property `fingerprint`
        # @return [Fixnum]
        attr_accessor :fingerprint
      
        # Number of examples.
        # Corresponds to the JSON property `numExamples`
        # @return [Fixnum]
        attr_accessor :num_examples
      
        # Number of input sources.
        # Corresponds to the JSON property `numInputSources`
        # @return [Fixnum]
        attr_accessor :num_input_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_spec = args[:file_spec] if args.key?(:file_spec)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @num_examples = args[:num_examples] if args.key?(:num_examples)
          @num_input_sources = args[:num_input_sources] if args.key?(:num_input_sources)
        end
      end
      
      # 
      class XpsExportModelOutputConfig
        include Google::Apis::Core::Hashable
      
        # A model format used for iOS mobile devices.
        # Corresponds to the JSON property `coreMlFormat`
        # @return [Google::Apis::LanguageV1::XpsCoreMlFormat]
        attr_accessor :core_ml_format
      
        # A model format used for Docker containers. Use the params field to customize
        # the container. The container is verified to work correctly on ubuntu 16.04
        # operating system.
        # Corresponds to the JSON property `dockerFormat`
        # @return [Google::Apis::LanguageV1::XpsDockerFormat]
        attr_accessor :docker_format
      
        # A model format used for [Edge TPU](https://cloud.google.com/edge-tpu/) devices.
        # Corresponds to the JSON property `edgeTpuTfLiteFormat`
        # @return [Google::Apis::LanguageV1::XpsEdgeTpuTfLiteFormat]
        attr_accessor :edge_tpu_tf_lite_format
      
        # For any model and format: If true, will additionally export
        # FirebaseExportedModelInfo in a firebase.txt file.
        # Corresponds to the JSON property `exportFirebaseAuxiliaryInfo`
        # @return [Boolean]
        attr_accessor :export_firebase_auxiliary_info
        alias_method :export_firebase_auxiliary_info?, :export_firebase_auxiliary_info
      
        # The Google Contained Registry (GCR) path the exported files to be pushed to.
        # This location is set if the exported format is DOCKDER.
        # Corresponds to the JSON property `outputGcrUri`
        # @return [String]
        attr_accessor :output_gcr_uri
      
        # The Google Cloud Storage (GCS) directory where XPS will output the exported
        # models and related files. Format: gs://bucket/directory
        # Corresponds to the JSON property `outputGcsUri`
        # @return [String]
        attr_accessor :output_gcs_uri
      
        # A [TensorFlow.js](https://www.tensorflow.org/js) model that can be used in the
        # browser and in Node.js using JavaScript.
        # Corresponds to the JSON property `tfJsFormat`
        # @return [Google::Apis::LanguageV1::XpsTfJsFormat]
        attr_accessor :tf_js_format
      
        # LINT.IfChange A model format used for mobile and IoT devices. See https://www.
        # tensorflow.org/lite.
        # Corresponds to the JSON property `tfLiteFormat`
        # @return [Google::Apis::LanguageV1::XpsTfLiteFormat]
        attr_accessor :tf_lite_format
      
        # A tensorflow model format in SavedModel format.
        # Corresponds to the JSON property `tfSavedModelFormat`
        # @return [Google::Apis::LanguageV1::XpsTfSavedModelFormat]
        attr_accessor :tf_saved_model_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @core_ml_format = args[:core_ml_format] if args.key?(:core_ml_format)
          @docker_format = args[:docker_format] if args.key?(:docker_format)
          @edge_tpu_tf_lite_format = args[:edge_tpu_tf_lite_format] if args.key?(:edge_tpu_tf_lite_format)
          @export_firebase_auxiliary_info = args[:export_firebase_auxiliary_info] if args.key?(:export_firebase_auxiliary_info)
          @output_gcr_uri = args[:output_gcr_uri] if args.key?(:output_gcr_uri)
          @output_gcs_uri = args[:output_gcs_uri] if args.key?(:output_gcs_uri)
          @tf_js_format = args[:tf_js_format] if args.key?(:tf_js_format)
          @tf_lite_format = args[:tf_lite_format] if args.key?(:tf_lite_format)
          @tf_saved_model_format = args[:tf_saved_model_format] if args.key?(:tf_saved_model_format)
        end
      end
      
      # Spec of input and output files, on external file systems (CNS, GCS, etc).
      class XpsFileSpec
        include Google::Apis::Core::Hashable
      
        # Deprecated. Use file_spec.
        # Corresponds to the JSON property `directoryPath`
        # @return [String]
        attr_accessor :directory_path
      
        # 
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        # Single file path, or file pattern of format "/path/to/file@shard_count". E.g. /
        # cns/cell-d/somewhere/file@2 is expanded to two files: /cns/cell-d/somewhere/
        # file-00000-of-00002 and /cns/cell-d/somewhere/file-00001-of-00002.
        # Corresponds to the JSON property `fileSpec`
        # @return [String]
        attr_accessor :file_spec
      
        # Deprecated. Use file_spec.
        # Corresponds to the JSON property `singleFilePath`
        # @return [String]
        attr_accessor :single_file_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @directory_path = args[:directory_path] if args.key?(:directory_path)
          @file_format = args[:file_format] if args.key?(:file_format)
          @file_spec = args[:file_spec] if args.key?(:file_spec)
          @single_file_path = args[:single_file_path] if args.key?(:single_file_path)
        end
      end
      
      # The data statistics of a series of FLOAT64 values.
      class XpsFloat64Stats
        include Google::Apis::Core::Hashable
      
        # Common statistics for a column with a specified data type.
        # Corresponds to the JSON property `commonStats`
        # @return [Google::Apis::LanguageV1::XpsCommonStats]
        attr_accessor :common_stats
      
        # Histogram buckets of the data series. Sorted by the min value of the bucket,
        # ascendingly, and the number of the buckets is dynamically generated. The
        # buckets are non-overlapping and completely cover whole FLOAT64 range with min
        # of first bucket being `"-Infinity"`, and max of the last one being `"Infinity"`
        # .
        # Corresponds to the JSON property `histogramBuckets`
        # @return [Array<Google::Apis::LanguageV1::XpsFloat64StatsHistogramBucket>]
        attr_accessor :histogram_buckets
      
        # The mean of the series.
        # Corresponds to the JSON property `mean`
        # @return [Float]
        attr_accessor :mean
      
        # Ordered from 0 to k k-quantile values of the data series of n values. The
        # value at index i is, approximately, the i*n/k-th smallest value in the series;
        # for i = 0 and i = k these are, respectively, the min and max values.
        # Corresponds to the JSON property `quantiles`
        # @return [Array<Float>]
        attr_accessor :quantiles
      
        # The standard deviation of the series.
        # Corresponds to the JSON property `standardDeviation`
        # @return [Float]
        attr_accessor :standard_deviation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_stats = args[:common_stats] if args.key?(:common_stats)
          @histogram_buckets = args[:histogram_buckets] if args.key?(:histogram_buckets)
          @mean = args[:mean] if args.key?(:mean)
          @quantiles = args[:quantiles] if args.key?(:quantiles)
          @standard_deviation = args[:standard_deviation] if args.key?(:standard_deviation)
        end
      end
      
      # A bucket of a histogram.
      class XpsFloat64StatsHistogramBucket
        include Google::Apis::Core::Hashable
      
        # The number of data values that are in the bucket, i.e. are between min and max
        # values.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The maximum value of the bucket, exclusive unless max = `"Infinity"`, in which
        # case it's inclusive.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # The minimum value of the bucket, inclusive.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # 
      class XpsImageClassificationTrainResponse
        include Google::Apis::Core::Hashable
      
        # Total number of classes.
        # Corresponds to the JSON property `classCount`
        # @return [Fixnum]
        attr_accessor :class_count
      
        # Information of downloadable models that are pre-generated as part of training
        # flow and will be persisted in AutoMl backend. Upon receiving ExportModel
        # request from user, AutoMl backend can serve the pre-generated models to user
        # if exists (by copying the files from internal path to user provided location),
        # otherwise, AutoMl backend will call xPS ExportModel API to generate the model
        # on the fly with the requesting format.
        # Corresponds to the JSON property `exportModelSpec`
        # @return [Google::Apis::LanguageV1::XpsImageExportModelSpec]
        attr_accessor :export_model_spec
      
        # Stores the locations and related metadata of the model artifacts. Populated
        # for uCAIP requests only.
        # Corresponds to the JSON property `modelArtifactSpec`
        # @return [Google::Apis::LanguageV1::XpsImageModelArtifactSpec]
        attr_accessor :model_artifact_spec
      
        # Serving specification for image models.
        # Corresponds to the JSON property `modelServingSpec`
        # @return [Google::Apis::LanguageV1::XpsImageModelServingSpec]
        attr_accessor :model_serving_spec
      
        # Stop reason for training job, e.g. 'TRAIN_BUDGET_REACHED', 'MODEL_CONVERGED', '
        # MODEL_EARLY_STOPPED'.
        # Corresponds to the JSON property `stopReason`
        # @return [String]
        attr_accessor :stop_reason
      
        # The actual cost to create this model. - For edge type model, the cost is
        # expressed in node hour. - For cloud type model,the cost is expressed in
        # compute hour. - Populated for models created before GA. To be deprecated after
        # GA.
        # Corresponds to the JSON property `trainCostInNodeTime`
        # @return [String]
        attr_accessor :train_cost_in_node_time
      
        # The actual training cost, expressed in node seconds. Populated for models
        # trained in node time.
        # Corresponds to the JSON property `trainCostNodeSeconds`
        # @return [Fixnum]
        attr_accessor :train_cost_node_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @class_count = args[:class_count] if args.key?(:class_count)
          @export_model_spec = args[:export_model_spec] if args.key?(:export_model_spec)
          @model_artifact_spec = args[:model_artifact_spec] if args.key?(:model_artifact_spec)
          @model_serving_spec = args[:model_serving_spec] if args.key?(:model_serving_spec)
          @stop_reason = args[:stop_reason] if args.key?(:stop_reason)
          @train_cost_in_node_time = args[:train_cost_in_node_time] if args.key?(:train_cost_in_node_time)
          @train_cost_node_seconds = args[:train_cost_node_seconds] if args.key?(:train_cost_node_seconds)
        end
      end
      
      # Information of downloadable models that are pre-generated as part of training
      # flow and will be persisted in AutoMl backend. Upon receiving ExportModel
      # request from user, AutoMl backend can serve the pre-generated models to user
      # if exists (by copying the files from internal path to user provided location),
      # otherwise, AutoMl backend will call xPS ExportModel API to generate the model
      # on the fly with the requesting format.
      class XpsImageExportModelSpec
        include Google::Apis::Core::Hashable
      
        # Contains the model format and internal location of the model files to be
        # exported/downloaded. Use the GCS bucket name which is provided via
        # TrainRequest.gcs_bucket_name to store the model files.
        # Corresponds to the JSON property `exportModelOutputConfig`
        # @return [Array<Google::Apis::LanguageV1::XpsExportModelOutputConfig>]
        attr_accessor :export_model_output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_model_output_config = args[:export_model_output_config] if args.key?(:export_model_output_config)
        end
      end
      
      # Stores the locations and related metadata of the model artifacts. Populated
      # for uCAIP requests only.
      class XpsImageModelArtifactSpec
        include Google::Apis::Core::Hashable
      
        # A single model artifact item.
        # Corresponds to the JSON property `checkpointArtifact`
        # @return [Google::Apis::LanguageV1::XpsModelArtifactItem]
        attr_accessor :checkpoint_artifact
      
        # The model binary files in different formats for model export.
        # Corresponds to the JSON property `exportArtifact`
        # @return [Array<Google::Apis::LanguageV1::XpsModelArtifactItem>]
        attr_accessor :export_artifact
      
        # GCS uri of decoded labels file for model export 'dict.txt'.
        # Corresponds to the JSON property `labelGcsUri`
        # @return [String]
        attr_accessor :label_gcs_uri
      
        # A single model artifact item.
        # Corresponds to the JSON property `servingArtifact`
        # @return [Google::Apis::LanguageV1::XpsModelArtifactItem]
        attr_accessor :serving_artifact
      
        # GCS uri prefix of Tensorflow JavaScript binary files 'groupX-shardXofX.bin'
        # Deprecated.
        # Corresponds to the JSON property `tfJsBinaryGcsPrefix`
        # @return [String]
        attr_accessor :tf_js_binary_gcs_prefix
      
        # GCS uri of Tensorflow Lite metadata 'tflite_metadata.json'.
        # Corresponds to the JSON property `tfLiteMetadataGcsUri`
        # @return [String]
        attr_accessor :tf_lite_metadata_gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checkpoint_artifact = args[:checkpoint_artifact] if args.key?(:checkpoint_artifact)
          @export_artifact = args[:export_artifact] if args.key?(:export_artifact)
          @label_gcs_uri = args[:label_gcs_uri] if args.key?(:label_gcs_uri)
          @serving_artifact = args[:serving_artifact] if args.key?(:serving_artifact)
          @tf_js_binary_gcs_prefix = args[:tf_js_binary_gcs_prefix] if args.key?(:tf_js_binary_gcs_prefix)
          @tf_lite_metadata_gcs_uri = args[:tf_lite_metadata_gcs_uri] if args.key?(:tf_lite_metadata_gcs_uri)
        end
      end
      
      # Serving specification for image models.
      class XpsImageModelServingSpec
        include Google::Apis::Core::Hashable
      
        # Populate under uCAIP request scope.
        # Corresponds to the JSON property `modelThroughputEstimation`
        # @return [Array<Google::Apis::LanguageV1::XpsImageModelServingSpecModelThroughputEstimation>]
        attr_accessor :model_throughput_estimation
      
        # An estimated value of how much traffic a node can serve. Populated for AutoMl
        # request only.
        # Corresponds to the JSON property `nodeQps`
        # @return [Float]
        attr_accessor :node_qps
      
        # ## The fields below are only populated under uCAIP request scope. https://
        # cloud.google.com/ml-engine/docs/runtime-version-list
        # Corresponds to the JSON property `tfRuntimeVersion`
        # @return [String]
        attr_accessor :tf_runtime_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_throughput_estimation = args[:model_throughput_estimation] if args.key?(:model_throughput_estimation)
          @node_qps = args[:node_qps] if args.key?(:node_qps)
          @tf_runtime_version = args[:tf_runtime_version] if args.key?(:tf_runtime_version)
        end
      end
      
      # 
      class XpsImageModelServingSpecModelThroughputEstimation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `computeEngineAcceleratorType`
        # @return [String]
        attr_accessor :compute_engine_accelerator_type
      
        # Estimated latency.
        # Corresponds to the JSON property `latencyInMilliseconds`
        # @return [Float]
        attr_accessor :latency_in_milliseconds
      
        # The approximate qps a deployed node can serve.
        # Corresponds to the JSON property `nodeQps`
        # @return [Float]
        attr_accessor :node_qps
      
        # 
        # Corresponds to the JSON property `servomaticPartitionType`
        # @return [String]
        attr_accessor :servomatic_partition_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_engine_accelerator_type = args[:compute_engine_accelerator_type] if args.key?(:compute_engine_accelerator_type)
          @latency_in_milliseconds = args[:latency_in_milliseconds] if args.key?(:latency_in_milliseconds)
          @node_qps = args[:node_qps] if args.key?(:node_qps)
          @servomatic_partition_type = args[:servomatic_partition_type] if args.key?(:servomatic_partition_type)
        end
      end
      
      # Model evaluation metrics for image object detection problems. Evaluates
      # prediction quality of labeled bounding boxes.
      class XpsImageObjectDetectionEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # The single metric for bounding boxes evaluation: the mean_average_precision
        # averaged over all bounding_box_metrics_entries.
        # Corresponds to the JSON property `boundingBoxMeanAveragePrecision`
        # @return [Float]
        attr_accessor :bounding_box_mean_average_precision
      
        # The bounding boxes match metrics for each Intersection-over-union threshold 0.
        # 05,0.10,...,0.95,0.96,0.97,0.98,0.99 and each label confidence threshold 0.05,
        # 0.10,...,0.95,0.96,0.97,0.98,0.99 pair.
        # Corresponds to the JSON property `boundingBoxMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsBoundingBoxMetricsEntry>]
        attr_accessor :bounding_box_metrics_entries
      
        # The total number of bounding boxes (i.e. summed over all images) the ground
        # truth used to create this evaluation had.
        # Corresponds to the JSON property `evaluatedBoundingBoxCount`
        # @return [Fixnum]
        attr_accessor :evaluated_bounding_box_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_box_mean_average_precision = args[:bounding_box_mean_average_precision] if args.key?(:bounding_box_mean_average_precision)
          @bounding_box_metrics_entries = args[:bounding_box_metrics_entries] if args.key?(:bounding_box_metrics_entries)
          @evaluated_bounding_box_count = args[:evaluated_bounding_box_count] if args.key?(:evaluated_bounding_box_count)
        end
      end
      
      # 
      class XpsImageObjectDetectionModelSpec
        include Google::Apis::Core::Hashable
      
        # Total number of classes.
        # Corresponds to the JSON property `classCount`
        # @return [Fixnum]
        attr_accessor :class_count
      
        # Information of downloadable models that are pre-generated as part of training
        # flow and will be persisted in AutoMl backend. Upon receiving ExportModel
        # request from user, AutoMl backend can serve the pre-generated models to user
        # if exists (by copying the files from internal path to user provided location),
        # otherwise, AutoMl backend will call xPS ExportModel API to generate the model
        # on the fly with the requesting format.
        # Corresponds to the JSON property `exportModelSpec`
        # @return [Google::Apis::LanguageV1::XpsImageExportModelSpec]
        attr_accessor :export_model_spec
      
        # Max number of bounding box.
        # Corresponds to the JSON property `maxBoundingBoxCount`
        # @return [Fixnum]
        attr_accessor :max_bounding_box_count
      
        # Stores the locations and related metadata of the model artifacts. Populated
        # for uCAIP requests only.
        # Corresponds to the JSON property `modelArtifactSpec`
        # @return [Google::Apis::LanguageV1::XpsImageModelArtifactSpec]
        attr_accessor :model_artifact_spec
      
        # Serving specification for image models.
        # Corresponds to the JSON property `modelServingSpec`
        # @return [Google::Apis::LanguageV1::XpsImageModelServingSpec]
        attr_accessor :model_serving_spec
      
        # Stop reason for training job, e.g. 'TRAIN_BUDGET_REACHED', 'MODEL_CONVERGED'.
        # Corresponds to the JSON property `stopReason`
        # @return [String]
        attr_accessor :stop_reason
      
        # The actual train cost of creating this model, expressed in node seconds, i.e.
        # 3,600 value in this field means 1 node hour.
        # Corresponds to the JSON property `trainCostNodeSeconds`
        # @return [Fixnum]
        attr_accessor :train_cost_node_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @class_count = args[:class_count] if args.key?(:class_count)
          @export_model_spec = args[:export_model_spec] if args.key?(:export_model_spec)
          @max_bounding_box_count = args[:max_bounding_box_count] if args.key?(:max_bounding_box_count)
          @model_artifact_spec = args[:model_artifact_spec] if args.key?(:model_artifact_spec)
          @model_serving_spec = args[:model_serving_spec] if args.key?(:model_serving_spec)
          @stop_reason = args[:stop_reason] if args.key?(:stop_reason)
          @train_cost_node_seconds = args[:train_cost_node_seconds] if args.key?(:train_cost_node_seconds)
        end
      end
      
      # Model evaluation metrics for image segmentation problems. Next tag: 4.
      class XpsImageSegmentationEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # Metrics that have confidence thresholds. Precision-recall curve can be derived
        # from it.
        # Corresponds to the JSON property `confidenceMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsImageSegmentationEvaluationMetricsConfidenceMetricsEntry>]
        attr_accessor :confidence_metrics_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_metrics_entries = args[:confidence_metrics_entries] if args.key?(:confidence_metrics_entries)
        end
      end
      
      # Metrics for a single confidence threshold.
      class XpsImageSegmentationEvaluationMetricsConfidenceMetricsEntry
        include Google::Apis::Core::Hashable
      
        # The confidence threshold value used to compute the metrics.
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # Confusion matrix of the model running the classification.
        # Corresponds to the JSON property `confusionMatrix`
        # @return [Google::Apis::LanguageV1::XpsConfusionMatrix]
        attr_accessor :confusion_matrix
      
        # DSC or the F1 score: The harmonic mean of recall and precision.
        # Corresponds to the JSON property `diceScoreCoefficient`
        # @return [Float]
        attr_accessor :dice_score_coefficient
      
        # IOU score.
        # Corresponds to the JSON property `iouScore`
        # @return [Float]
        attr_accessor :iou_score
      
        # Precision for the given confidence threshold.
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # Recall for the given confidence threshold.
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @confusion_matrix = args[:confusion_matrix] if args.key?(:confusion_matrix)
          @dice_score_coefficient = args[:dice_score_coefficient] if args.key?(:dice_score_coefficient)
          @iou_score = args[:iou_score] if args.key?(:iou_score)
          @precision = args[:precision] if args.key?(:precision)
          @recall = args[:recall] if args.key?(:recall)
        end
      end
      
      # 
      class XpsImageSegmentationTrainResponse
        include Google::Apis::Core::Hashable
      
        # Color map of the model.
        # Corresponds to the JSON property `colorMaps`
        # @return [Array<Google::Apis::LanguageV1::XpsColorMap>]
        attr_accessor :color_maps
      
        # Information of downloadable models that are pre-generated as part of training
        # flow and will be persisted in AutoMl backend. Upon receiving ExportModel
        # request from user, AutoMl backend can serve the pre-generated models to user
        # if exists (by copying the files from internal path to user provided location),
        # otherwise, AutoMl backend will call xPS ExportModel API to generate the model
        # on the fly with the requesting format.
        # Corresponds to the JSON property `exportModelSpec`
        # @return [Google::Apis::LanguageV1::XpsImageExportModelSpec]
        attr_accessor :export_model_spec
      
        # Stores the locations and related metadata of the model artifacts. Populated
        # for uCAIP requests only.
        # Corresponds to the JSON property `modelArtifactSpec`
        # @return [Google::Apis::LanguageV1::XpsImageModelArtifactSpec]
        attr_accessor :model_artifact_spec
      
        # Serving specification for image models.
        # Corresponds to the JSON property `modelServingSpec`
        # @return [Google::Apis::LanguageV1::XpsImageModelServingSpec]
        attr_accessor :model_serving_spec
      
        # Stop reason for training job, e.g. 'TRAIN_BUDGET_REACHED', 'MODEL_CONVERGED'.
        # Corresponds to the JSON property `stopReason`
        # @return [String]
        attr_accessor :stop_reason
      
        # The actual train cost of creating this model, expressed in node seconds, i.e.
        # 3,600 value in this field means 1 node hour.
        # Corresponds to the JSON property `trainCostNodeSeconds`
        # @return [Fixnum]
        attr_accessor :train_cost_node_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color_maps = args[:color_maps] if args.key?(:color_maps)
          @export_model_spec = args[:export_model_spec] if args.key?(:export_model_spec)
          @model_artifact_spec = args[:model_artifact_spec] if args.key?(:model_artifact_spec)
          @model_serving_spec = args[:model_serving_spec] if args.key?(:model_serving_spec)
          @stop_reason = args[:stop_reason] if args.key?(:stop_reason)
          @train_cost_node_seconds = args[:train_cost_node_seconds] if args.key?(:train_cost_node_seconds)
        end
      end
      
      # An attribution method that computes the Aumann-Shapley value taking advantage
      # of the model's fully differentiable structure. Refer to this paper for more
      # details: https://arxiv.org/abs/1703.01365
      class XpsIntegratedGradientsAttribution
        include Google::Apis::Core::Hashable
      
        # The number of steps for approximating the path integral. A good value to start
        # is 50 and gradually increase until the sum to diff property is within the
        # desired error range. Valid range of its value is [1, 100], inclusively.
        # Corresponds to the JSON property `stepCount`
        # @return [Fixnum]
        attr_accessor :step_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @step_count = args[:step_count] if args.key?(:step_count)
        end
      end
      
      # 
      class XpsMetricEntry
        include Google::Apis::Core::Hashable
      
        # For billing metrics that are using legacy sku's, set the legacy billing metric
        # id here. This will be sent to Chemist as the "cloudbilling.googleapis.com/
        # argentum_metric_id" label. Otherwise leave empty.
        # Corresponds to the JSON property `argentumMetricId`
        # @return [String]
        attr_accessor :argentum_metric_id
      
        # A double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # A signed 64-bit integer value.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # The metric name defined in the service configuration.
        # Corresponds to the JSON property `metricName`
        # @return [String]
        attr_accessor :metric_name
      
        # Billing system labels for this (metric, value) pair.
        # Corresponds to the JSON property `systemLabels`
        # @return [Array<Google::Apis::LanguageV1::XpsMetricEntryLabel>]
        attr_accessor :system_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @argentum_metric_id = args[:argentum_metric_id] if args.key?(:argentum_metric_id)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @metric_name = args[:metric_name] if args.key?(:metric_name)
          @system_labels = args[:system_labels] if args.key?(:system_labels)
        end
      end
      
      # 
      class XpsMetricEntryLabel
        include Google::Apis::Core::Hashable
      
        # The name of the label.
        # Corresponds to the JSON property `labelName`
        # @return [String]
        attr_accessor :label_name
      
        # The value of the label.
        # Corresponds to the JSON property `labelValue`
        # @return [String]
        attr_accessor :label_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_name = args[:label_name] if args.key?(:label_name)
          @label_value = args[:label_value] if args.key?(:label_value)
        end
      end
      
      # A single model artifact item.
      class XpsModelArtifactItem
        include Google::Apis::Core::Hashable
      
        # The model artifact format.
        # Corresponds to the JSON property `artifactFormat`
        # @return [String]
        attr_accessor :artifact_format
      
        # The Google Cloud Storage (GCS) uri that stores the model binary files.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_format = args[:artifact_format] if args.key?(:artifact_format)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
        end
      end
      
      # Next ID: 8
      class XpsPreprocessResponse
        include Google::Apis::Core::Hashable
      
        # Set of examples or input sources.
        # Corresponds to the JSON property `outputExampleSet`
        # @return [Google::Apis::LanguageV1::XpsExampleSet]
        attr_accessor :output_example_set
      
        # 
        # Corresponds to the JSON property `speechPreprocessResp`
        # @return [Google::Apis::LanguageV1::XpsSpeechPreprocessResponse]
        attr_accessor :speech_preprocess_resp
      
        # 
        # Corresponds to the JSON property `tablesPreprocessResponse`
        # @return [Google::Apis::LanguageV1::XpsTablesPreprocessResponse]
        attr_accessor :tables_preprocess_response
      
        # Translation preprocess response.
        # Corresponds to the JSON property `translationPreprocessResp`
        # @return [Google::Apis::LanguageV1::XpsTranslationPreprocessResponse]
        attr_accessor :translation_preprocess_resp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_example_set = args[:output_example_set] if args.key?(:output_example_set)
          @speech_preprocess_resp = args[:speech_preprocess_resp] if args.key?(:speech_preprocess_resp)
          @tables_preprocess_response = args[:tables_preprocess_response] if args.key?(:tables_preprocess_response)
          @translation_preprocess_resp = args[:translation_preprocess_resp] if args.key?(:translation_preprocess_resp)
        end
      end
      
      # Model evaluation metrics for regression problems. It can be used for Tables.
      class XpsRegressionEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # Mean Absolute Error (MAE).
        # Corresponds to the JSON property `meanAbsoluteError`
        # @return [Float]
        attr_accessor :mean_absolute_error
      
        # Mean absolute percentage error. Only set if all ground truth values are
        # positive.
        # Corresponds to the JSON property `meanAbsolutePercentageError`
        # @return [Float]
        attr_accessor :mean_absolute_percentage_error
      
        # R squared.
        # Corresponds to the JSON property `rSquared`
        # @return [Float]
        attr_accessor :r_squared
      
        # A list of actual versus predicted points for the model being evaluated.
        # Corresponds to the JSON property `regressionMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsRegressionMetricsEntry>]
        attr_accessor :regression_metrics_entries
      
        # Root Mean Squared Error (RMSE).
        # Corresponds to the JSON property `rootMeanSquaredError`
        # @return [Float]
        attr_accessor :root_mean_squared_error
      
        # Root mean squared log error.
        # Corresponds to the JSON property `rootMeanSquaredLogError`
        # @return [Float]
        attr_accessor :root_mean_squared_log_error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mean_absolute_error = args[:mean_absolute_error] if args.key?(:mean_absolute_error)
          @mean_absolute_percentage_error = args[:mean_absolute_percentage_error] if args.key?(:mean_absolute_percentage_error)
          @r_squared = args[:r_squared] if args.key?(:r_squared)
          @regression_metrics_entries = args[:regression_metrics_entries] if args.key?(:regression_metrics_entries)
          @root_mean_squared_error = args[:root_mean_squared_error] if args.key?(:root_mean_squared_error)
          @root_mean_squared_log_error = args[:root_mean_squared_log_error] if args.key?(:root_mean_squared_log_error)
        end
      end
      
      # A pair of actual & observed values for the model being evaluated.
      class XpsRegressionMetricsEntry
        include Google::Apis::Core::Hashable
      
        # The observed value for a row in the dataset.
        # Corresponds to the JSON property `predictedValue`
        # @return [Float]
        attr_accessor :predicted_value
      
        # The actual target value for a row in the dataset.
        # Corresponds to the JSON property `trueValue`
        # @return [Float]
        attr_accessor :true_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @predicted_value = args[:predicted_value] if args.key?(:predicted_value)
          @true_value = args[:true_value] if args.key?(:true_value)
        end
      end
      
      # 
      class XpsReportingMetrics
        include Google::Apis::Core::Hashable
      
        # The effective time training used. If set, this is used for quota management
        # and billing. Deprecated. AutoML BE doesn't use this. Don't set.
        # Corresponds to the JSON property `effectiveTrainingDuration`
        # @return [String]
        attr_accessor :effective_training_duration
      
        # One entry per metric name. The values must be aggregated per metric name.
        # Corresponds to the JSON property `metricEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsMetricEntry>]
        attr_accessor :metric_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_training_duration = args[:effective_training_duration] if args.key?(:effective_training_duration)
          @metric_entries = args[:metric_entries] if args.key?(:metric_entries)
        end
      end
      
      # 
      class XpsResponseExplanationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata of the input.
        # Corresponds to the JSON property `inputs`
        # @return [Hash<String,Google::Apis::LanguageV1::XpsResponseExplanationMetadataInputMetadata>]
        attr_accessor :inputs
      
        # Metadata of the output.
        # Corresponds to the JSON property `outputs`
        # @return [Hash<String,Google::Apis::LanguageV1::XpsResponseExplanationMetadataOutputMetadata>]
        attr_accessor :outputs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inputs = args[:inputs] if args.key?(:inputs)
          @outputs = args[:outputs] if args.key?(:outputs)
        end
      end
      
      # Metadata of the input of a feature.
      class XpsResponseExplanationMetadataInputMetadata
        include Google::Apis::Core::Hashable
      
        # Name of the input tensor for this model. Only needed in train response.
        # Corresponds to the JSON property `inputTensorName`
        # @return [String]
        attr_accessor :input_tensor_name
      
        # Modality of the feature. Valid values are: numeric, image. Defaults to numeric.
        # Corresponds to the JSON property `modality`
        # @return [String]
        attr_accessor :modality
      
        # Visualization configurations for image explanation.
        # Corresponds to the JSON property `visualizationConfig`
        # @return [Google::Apis::LanguageV1::XpsVisualization]
        attr_accessor :visualization_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_tensor_name = args[:input_tensor_name] if args.key?(:input_tensor_name)
          @modality = args[:modality] if args.key?(:modality)
          @visualization_config = args[:visualization_config] if args.key?(:visualization_config)
        end
      end
      
      # Metadata of the prediction output to be explained.
      class XpsResponseExplanationMetadataOutputMetadata
        include Google::Apis::Core::Hashable
      
        # Name of the output tensor. Only needed in train response.
        # Corresponds to the JSON property `outputTensorName`
        # @return [String]
        attr_accessor :output_tensor_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_tensor_name = args[:output_tensor_name] if args.key?(:output_tensor_name)
        end
      end
      
      # 
      class XpsResponseExplanationParameters
        include Google::Apis::Core::Hashable
      
        # An attribution method that computes the Aumann-Shapley value taking advantage
        # of the model's fully differentiable structure. Refer to this paper for more
        # details: https://arxiv.org/abs/1703.01365
        # Corresponds to the JSON property `integratedGradientsAttribution`
        # @return [Google::Apis::LanguageV1::XpsIntegratedGradientsAttribution]
        attr_accessor :integrated_gradients_attribution
      
        # An explanation method that redistributes Integrated Gradients attributions to
        # segmented regions, taking advantage of the model's fully differentiable
        # structure. Refer to this paper for more details: https://arxiv.org/abs/1906.
        # 02825 Only supports image Models (modality is IMAGE).
        # Corresponds to the JSON property `xraiAttribution`
        # @return [Google::Apis::LanguageV1::XpsXraiAttribution]
        attr_accessor :xrai_attribution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integrated_gradients_attribution = args[:integrated_gradients_attribution] if args.key?(:integrated_gradients_attribution)
          @xrai_attribution = args[:xrai_attribution] if args.key?(:xrai_attribution)
        end
      end
      
      # Specification of Model explanation. Feature-based XAI in AutoML Vision ICN is
      # deprecated, see b/288407203 for context.
      class XpsResponseExplanationSpec
        include Google::Apis::Core::Hashable
      
        # Explanation type. For AutoML Image Classification models, possible values are:
        # * `image-integrated-gradients` * `image-xrai`
        # Corresponds to the JSON property `explanationType`
        # @return [String]
        attr_accessor :explanation_type
      
        # Metadata describing the Model's input and output for explanation.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::LanguageV1::XpsResponseExplanationMetadata]
        attr_accessor :metadata
      
        # Parameters that configure explaining of the Model's predictions.
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::LanguageV1::XpsResponseExplanationParameters]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explanation_type = args[:explanation_type] if args.key?(:explanation_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class XpsRow
        include Google::Apis::Core::Hashable
      
        # The ids of the columns. Note: The below `values` field must match order of
        # this field, if this field is set.
        # Corresponds to the JSON property `columnIds`
        # @return [Array<Fixnum>]
        attr_accessor :column_ids
      
        # The values of the row cells, given in the same order as the column_ids. If
        # column_ids is not set, then in the same order as the input_feature_column_ids
        # in TablesModelMetadata.
        # Corresponds to the JSON property `values`
        # @return [Array<Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_ids = args[:column_ids] if args.key?(:column_ids)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class XpsSpeechEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # Evaluation metrics for all submodels contained in this model.
        # Corresponds to the JSON property `subModelEvaluationMetrics`
        # @return [Array<Google::Apis::LanguageV1::XpsSpeechEvaluationMetricsSubModelEvaluationMetric>]
        attr_accessor :sub_model_evaluation_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sub_model_evaluation_metrics = args[:sub_model_evaluation_metrics] if args.key?(:sub_model_evaluation_metrics)
        end
      end
      
      # 
      class XpsSpeechEvaluationMetricsSubModelEvaluationMetric
        include Google::Apis::Core::Hashable
      
        # Type of the biasing model.
        # Corresponds to the JSON property `biasingModelType`
        # @return [String]
        attr_accessor :biasing_model_type
      
        # If true then it means we have an enhanced version of the biasing models.
        # Corresponds to the JSON property `isEnhancedModel`
        # @return [Boolean]
        attr_accessor :is_enhanced_model
        alias_method :is_enhanced_model?, :is_enhanced_model
      
        # 
        # Corresponds to the JSON property `numDeletions`
        # @return [Fixnum]
        attr_accessor :num_deletions
      
        # 
        # Corresponds to the JSON property `numInsertions`
        # @return [Fixnum]
        attr_accessor :num_insertions
      
        # 
        # Corresponds to the JSON property `numSubstitutions`
        # @return [Fixnum]
        attr_accessor :num_substitutions
      
        # Number of utterances used in the wer computation.
        # Corresponds to the JSON property `numUtterances`
        # @return [Fixnum]
        attr_accessor :num_utterances
      
        # Number of words over which the word error rate was computed.
        # Corresponds to the JSON property `numWords`
        # @return [Fixnum]
        attr_accessor :num_words
      
        # Below fields are used for debugging purposes
        # Corresponds to the JSON property `sentenceAccuracy`
        # @return [Float]
        attr_accessor :sentence_accuracy
      
        # Word error rate (standard error metric used for speech recognition).
        # Corresponds to the JSON property `wer`
        # @return [Float]
        attr_accessor :wer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @biasing_model_type = args[:biasing_model_type] if args.key?(:biasing_model_type)
          @is_enhanced_model = args[:is_enhanced_model] if args.key?(:is_enhanced_model)
          @num_deletions = args[:num_deletions] if args.key?(:num_deletions)
          @num_insertions = args[:num_insertions] if args.key?(:num_insertions)
          @num_substitutions = args[:num_substitutions] if args.key?(:num_substitutions)
          @num_utterances = args[:num_utterances] if args.key?(:num_utterances)
          @num_words = args[:num_words] if args.key?(:num_words)
          @sentence_accuracy = args[:sentence_accuracy] if args.key?(:sentence_accuracy)
          @wer = args[:wer] if args.key?(:wer)
        end
      end
      
      # 
      class XpsSpeechModelSpec
        include Google::Apis::Core::Hashable
      
        # Required for speech xps backend. Speech xps has to use dataset_id and model_id
        # as the primary key in db so that speech API can query the db directly.
        # Corresponds to the JSON property `datasetId`
        # @return [Fixnum]
        attr_accessor :dataset_id
      
        # 
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Model specs for all submodels contained in this model.
        # Corresponds to the JSON property `subModelSpecs`
        # @return [Array<Google::Apis::LanguageV1::XpsSpeechModelSpecSubModelSpec>]
        attr_accessor :sub_model_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @language = args[:language] if args.key?(:language)
          @sub_model_specs = args[:sub_model_specs] if args.key?(:sub_model_specs)
        end
      end
      
      # 
      class XpsSpeechModelSpecSubModelSpec
        include Google::Apis::Core::Hashable
      
        # Type of the biasing model.
        # Corresponds to the JSON property `biasingModelType`
        # @return [String]
        attr_accessor :biasing_model_type
      
        # In S3, Recognition ClientContextId.client_id
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # In S3, Recognition ClientContextId.context_id
        # Corresponds to the JSON property `contextId`
        # @return [String]
        attr_accessor :context_id
      
        # If true then it means we have an enhanced version of the biasing models.
        # Corresponds to the JSON property `isEnhancedModel`
        # @return [Boolean]
        attr_accessor :is_enhanced_model
        alias_method :is_enhanced_model?, :is_enhanced_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @biasing_model_type = args[:biasing_model_type] if args.key?(:biasing_model_type)
          @client_id = args[:client_id] if args.key?(:client_id)
          @context_id = args[:context_id] if args.key?(:context_id)
          @is_enhanced_model = args[:is_enhanced_model] if args.key?(:is_enhanced_model)
        end
      end
      
      # 
      class XpsSpeechPreprocessResponse
        include Google::Apis::Core::Hashable
      
        # Location od shards of sstables (test data) of DataUtterance protos.
        # Corresponds to the JSON property `cnsTestDataPath`
        # @return [String]
        attr_accessor :cns_test_data_path
      
        # Location of shards of sstables (training data) of DataUtterance protos.
        # Corresponds to the JSON property `cnsTrainDataPath`
        # @return [String]
        attr_accessor :cns_train_data_path
      
        # The metrics for prebuilt speech models. They are included here because there
        # is no prebuilt speech models stored in the AutoML.
        # Corresponds to the JSON property `prebuiltModelEvaluationMetrics`
        # @return [Google::Apis::LanguageV1::XpsSpeechEvaluationMetrics]
        attr_accessor :prebuilt_model_evaluation_metrics
      
        # Stats associated with the data.
        # Corresponds to the JSON property `speechPreprocessStats`
        # @return [Google::Apis::LanguageV1::XpsSpeechPreprocessStats]
        attr_accessor :speech_preprocess_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cns_test_data_path = args[:cns_test_data_path] if args.key?(:cns_test_data_path)
          @cns_train_data_path = args[:cns_train_data_path] if args.key?(:cns_train_data_path)
          @prebuilt_model_evaluation_metrics = args[:prebuilt_model_evaluation_metrics] if args.key?(:prebuilt_model_evaluation_metrics)
          @speech_preprocess_stats = args[:speech_preprocess_stats] if args.key?(:speech_preprocess_stats)
        end
      end
      
      # 
      class XpsSpeechPreprocessStats
        include Google::Apis::Core::Hashable
      
        # Different types of data errors and the counts associated with them.
        # Corresponds to the JSON property `dataErrors`
        # @return [Array<Google::Apis::LanguageV1::XpsDataErrors>]
        attr_accessor :data_errors
      
        # The number of rows marked HUMAN_LABELLED
        # Corresponds to the JSON property `numHumanLabeledExamples`
        # @return [Fixnum]
        attr_accessor :num_human_labeled_examples
      
        # The number of samples found in the previously recorded logs data.
        # Corresponds to the JSON property `numLogsExamples`
        # @return [Fixnum]
        attr_accessor :num_logs_examples
      
        # The number of rows marked as MACHINE_TRANSCRIBED
        # Corresponds to the JSON property `numMachineTranscribedExamples`
        # @return [Fixnum]
        attr_accessor :num_machine_transcribed_examples
      
        # The number of examples labelled as TEST by Speech xps server.
        # Corresponds to the JSON property `testExamplesCount`
        # @return [Fixnum]
        attr_accessor :test_examples_count
      
        # The number of sentences in the test data set.
        # Corresponds to the JSON property `testSentencesCount`
        # @return [Fixnum]
        attr_accessor :test_sentences_count
      
        # The number of words in the test data set.
        # Corresponds to the JSON property `testWordsCount`
        # @return [Fixnum]
        attr_accessor :test_words_count
      
        # The number of examples labeled as TRAIN by Speech xps server.
        # Corresponds to the JSON property `trainExamplesCount`
        # @return [Fixnum]
        attr_accessor :train_examples_count
      
        # The number of sentences in the training data set.
        # Corresponds to the JSON property `trainSentencesCount`
        # @return [Fixnum]
        attr_accessor :train_sentences_count
      
        # The number of words in the training data set.
        # Corresponds to the JSON property `trainWordsCount`
        # @return [Fixnum]
        attr_accessor :train_words_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_errors = args[:data_errors] if args.key?(:data_errors)
          @num_human_labeled_examples = args[:num_human_labeled_examples] if args.key?(:num_human_labeled_examples)
          @num_logs_examples = args[:num_logs_examples] if args.key?(:num_logs_examples)
          @num_machine_transcribed_examples = args[:num_machine_transcribed_examples] if args.key?(:num_machine_transcribed_examples)
          @test_examples_count = args[:test_examples_count] if args.key?(:test_examples_count)
          @test_sentences_count = args[:test_sentences_count] if args.key?(:test_sentences_count)
          @test_words_count = args[:test_words_count] if args.key?(:test_words_count)
          @train_examples_count = args[:train_examples_count] if args.key?(:train_examples_count)
          @train_sentences_count = args[:train_sentences_count] if args.key?(:train_sentences_count)
          @train_words_count = args[:train_words_count] if args.key?(:train_words_count)
        end
      end
      
      # The data statistics of a series of STRING values.
      class XpsStringStats
        include Google::Apis::Core::Hashable
      
        # Common statistics for a column with a specified data type.
        # Corresponds to the JSON property `commonStats`
        # @return [Google::Apis::LanguageV1::XpsCommonStats]
        attr_accessor :common_stats
      
        # The statistics of the top 20 unigrams, ordered by StringStats.UnigramStats.
        # count.
        # Corresponds to the JSON property `topUnigramStats`
        # @return [Array<Google::Apis::LanguageV1::XpsStringStatsUnigramStats>]
        attr_accessor :top_unigram_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_stats = args[:common_stats] if args.key?(:common_stats)
          @top_unigram_stats = args[:top_unigram_stats] if args.key?(:top_unigram_stats)
        end
      end
      
      # The statistics of a unigram.
      class XpsStringStatsUnigramStats
        include Google::Apis::Core::Hashable
      
        # The number of occurrences of this unigram in the series.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The unigram.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The data statistics of a series of STRUCT values.
      class XpsStructStats
        include Google::Apis::Core::Hashable
      
        # Common statistics for a column with a specified data type.
        # Corresponds to the JSON property `commonStats`
        # @return [Google::Apis::LanguageV1::XpsCommonStats]
        attr_accessor :common_stats
      
        # Map from a field name of the struct to data stats aggregated over series of
        # all data in that field across all the structs.
        # Corresponds to the JSON property `fieldStats`
        # @return [Hash<String,Google::Apis::LanguageV1::XpsDataStats>]
        attr_accessor :field_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_stats = args[:common_stats] if args.key?(:common_stats)
          @field_stats = args[:field_stats] if args.key?(:field_stats)
        end
      end
      
      # `StructType` defines the DataType-s of a STRUCT type.
      class XpsStructType
        include Google::Apis::Core::Hashable
      
        # Unordered map of struct field names to their data types.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::LanguageV1::XpsDataType>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # 
      class XpsTableSpec
        include Google::Apis::Core::Hashable
      
        # Mapping from column id to column spec.
        # Corresponds to the JSON property `columnSpecs`
        # @return [Hash<String,Google::Apis::LanguageV1::XpsColumnSpec>]
        attr_accessor :column_specs
      
        # The total size of imported data of the table.
        # Corresponds to the JSON property `importedDataSizeInBytes`
        # @return [Fixnum]
        attr_accessor :imported_data_size_in_bytes
      
        # The number of rows in the table.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # The id of the time column.
        # Corresponds to the JSON property `timeColumnId`
        # @return [Fixnum]
        attr_accessor :time_column_id
      
        # The number of valid rows.
        # Corresponds to the JSON property `validRowCount`
        # @return [Fixnum]
        attr_accessor :valid_row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_specs = args[:column_specs] if args.key?(:column_specs)
          @imported_data_size_in_bytes = args[:imported_data_size_in_bytes] if args.key?(:imported_data_size_in_bytes)
          @row_count = args[:row_count] if args.key?(:row_count)
          @time_column_id = args[:time_column_id] if args.key?(:time_column_id)
          @valid_row_count = args[:valid_row_count] if args.key?(:valid_row_count)
        end
      end
      
      # Metrics for Tables classification problems.
      class XpsTablesClassificationMetrics
        include Google::Apis::Core::Hashable
      
        # Metrics building a curve.
        # Corresponds to the JSON property `curveMetrics`
        # @return [Array<Google::Apis::LanguageV1::XpsTablesClassificationMetricsCurveMetrics>]
        attr_accessor :curve_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @curve_metrics = args[:curve_metrics] if args.key?(:curve_metrics)
        end
      end
      
      # Metrics curve data point for a single value.
      class XpsTablesClassificationMetricsCurveMetrics
        include Google::Apis::Core::Hashable
      
        # The area under the precision-recall curve.
        # Corresponds to the JSON property `aucPr`
        # @return [Float]
        attr_accessor :auc_pr
      
        # The area under receiver operating characteristic curve.
        # Corresponds to the JSON property `aucRoc`
        # @return [Float]
        attr_accessor :auc_roc
      
        # Metrics that have confidence thresholds. Precision-recall curve and ROC curve
        # can be derived from them.
        # Corresponds to the JSON property `confidenceMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsTablesConfidenceMetricsEntry>]
        attr_accessor :confidence_metrics_entries
      
        # The Log loss metric.
        # Corresponds to the JSON property `logLoss`
        # @return [Float]
        attr_accessor :log_loss
      
        # The position threshold value used to compute the metrics.
        # Corresponds to the JSON property `positionThreshold`
        # @return [Fixnum]
        attr_accessor :position_threshold
      
        # The CATEGORY row value (for ARRAY unnested) the curve metrics are for.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auc_pr = args[:auc_pr] if args.key?(:auc_pr)
          @auc_roc = args[:auc_roc] if args.key?(:auc_roc)
          @confidence_metrics_entries = args[:confidence_metrics_entries] if args.key?(:confidence_metrics_entries)
          @log_loss = args[:log_loss] if args.key?(:log_loss)
          @position_threshold = args[:position_threshold] if args.key?(:position_threshold)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Metrics for a single confidence threshold.
      class XpsTablesConfidenceMetricsEntry
        include Google::Apis::Core::Hashable
      
        # The confidence threshold value used to compute the metrics.
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # The harmonic mean of recall and precision. (2 * precision * recall) / (
        # precision + recall)
        # Corresponds to the JSON property `f1Score`
        # @return [Float]
        attr_accessor :f1_score
      
        # False negative count.
        # Corresponds to the JSON property `falseNegativeCount`
        # @return [Fixnum]
        attr_accessor :false_negative_count
      
        # False positive count.
        # Corresponds to the JSON property `falsePositiveCount`
        # @return [Fixnum]
        attr_accessor :false_positive_count
      
        # FPR = #false positives / (#false positives + #true negatives)
        # Corresponds to the JSON property `falsePositiveRate`
        # @return [Float]
        attr_accessor :false_positive_rate
      
        # Precision = #true positives / (#true positives + #false positives).
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # Recall = #true positives / (#true positives + #false negatives).
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        # True negative count.
        # Corresponds to the JSON property `trueNegativeCount`
        # @return [Fixnum]
        attr_accessor :true_negative_count
      
        # True positive count.
        # Corresponds to the JSON property `truePositiveCount`
        # @return [Fixnum]
        attr_accessor :true_positive_count
      
        # TPR = #true positives / (#true positives + #false negatvies)
        # Corresponds to the JSON property `truePositiveRate`
        # @return [Float]
        attr_accessor :true_positive_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @f1_score = args[:f1_score] if args.key?(:f1_score)
          @false_negative_count = args[:false_negative_count] if args.key?(:false_negative_count)
          @false_positive_count = args[:false_positive_count] if args.key?(:false_positive_count)
          @false_positive_rate = args[:false_positive_rate] if args.key?(:false_positive_rate)
          @precision = args[:precision] if args.key?(:precision)
          @recall = args[:recall] if args.key?(:recall)
          @true_negative_count = args[:true_negative_count] if args.key?(:true_negative_count)
          @true_positive_count = args[:true_positive_count] if args.key?(:true_positive_count)
          @true_positive_rate = args[:true_positive_rate] if args.key?(:true_positive_rate)
        end
      end
      
      # Metadata for a dataset used for AutoML Tables. Next ID: 6
      class XpsTablesDatasetMetadata
        include Google::Apis::Core::Hashable
      
        # Id the column to split the table.
        # Corresponds to the JSON property `mlUseColumnId`
        # @return [Fixnum]
        attr_accessor :ml_use_column_id
      
        # Primary table.
        # Corresponds to the JSON property `primaryTableSpec`
        # @return [Google::Apis::LanguageV1::XpsTableSpec]
        attr_accessor :primary_table_spec
      
        # (the column id : its CorrelationStats with target column).
        # Corresponds to the JSON property `targetColumnCorrelations`
        # @return [Hash<String,Google::Apis::LanguageV1::XpsCorrelationStats>]
        attr_accessor :target_column_correlations
      
        # Id of the primary table column that should be used as the training label.
        # Corresponds to the JSON property `targetColumnId`
        # @return [Fixnum]
        attr_accessor :target_column_id
      
        # Id of the primary table column that should be used as the weight column.
        # Corresponds to the JSON property `weightColumnId`
        # @return [Fixnum]
        attr_accessor :weight_column_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ml_use_column_id = args[:ml_use_column_id] if args.key?(:ml_use_column_id)
          @primary_table_spec = args[:primary_table_spec] if args.key?(:primary_table_spec)
          @target_column_correlations = args[:target_column_correlations] if args.key?(:target_column_correlations)
          @target_column_id = args[:target_column_id] if args.key?(:target_column_id)
          @weight_column_id = args[:weight_column_id] if args.key?(:weight_column_id)
        end
      end
      
      # 
      class XpsTablesEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # Metrics for Tables classification problems.
        # Corresponds to the JSON property `classificationMetrics`
        # @return [Google::Apis::LanguageV1::XpsTablesClassificationMetrics]
        attr_accessor :classification_metrics
      
        # Metrics for Tables regression problems.
        # Corresponds to the JSON property `regressionMetrics`
        # @return [Google::Apis::LanguageV1::XpsTablesRegressionMetrics]
        attr_accessor :regression_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification_metrics = args[:classification_metrics] if args.key?(:classification_metrics)
          @regression_metrics = args[:regression_metrics] if args.key?(:regression_metrics)
        end
      end
      
      # An information specific to given column and Tables Model, in context of the
      # Model and the predictions created by it.
      class XpsTablesModelColumnInfo
        include Google::Apis::Core::Hashable
      
        # The ID of the column.
        # Corresponds to the JSON property `columnId`
        # @return [Fixnum]
        attr_accessor :column_id
      
        # When given as part of a Model: Measurement of how much model predictions
        # correctness on the TEST data depend on values in this column. A value between
        # 0 and 1, higher means higher influence. These values are normalized - for all
        # input feature columns of a given model they add to 1. When given back by
        # Predict or Batch Predict: Measurement of how impactful for the prediction
        # returned for the given row the value in this column was. Specifically, the
        # feature importance specifies the marginal contribution that the feature made
        # to the prediction score compared to the baseline score. These values are
        # computed using the Sampled Shapley method.
        # Corresponds to the JSON property `featureImportance`
        # @return [Float]
        attr_accessor :feature_importance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_id = args[:column_id] if args.key?(:column_id)
          @feature_importance = args[:feature_importance] if args.key?(:feature_importance)
        end
      end
      
      # A description of Tables model structure.
      class XpsTablesModelStructure
        include Google::Apis::Core::Hashable
      
        # A list of models.
        # Corresponds to the JSON property `modelParameters`
        # @return [Array<Google::Apis::LanguageV1::XpsTablesModelStructureModelParameters>]
        attr_accessor :model_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_parameters = args[:model_parameters] if args.key?(:model_parameters)
        end
      end
      
      # Model hyper-parameters for a model.
      class XpsTablesModelStructureModelParameters
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `hyperparameters`
        # @return [Array<Google::Apis::LanguageV1::XpsTablesModelStructureModelParametersParameter>]
        attr_accessor :hyperparameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hyperparameters = args[:hyperparameters] if args.key?(:hyperparameters)
        end
      end
      
      # 
      class XpsTablesModelStructureModelParametersParameter
        include Google::Apis::Core::Hashable
      
        # Float type parameter value.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # Integer type parameter value.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Parameter name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # String type parameter value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @float_value = args[:float_value] if args.key?(:float_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @name = args[:name] if args.key?(:name)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # 
      class XpsTablesPreprocessResponse
        include Google::Apis::Core::Hashable
      
        # Metadata for a dataset used for AutoML Tables. Next ID: 6
        # Corresponds to the JSON property `tablesDatasetMetadata`
        # @return [Google::Apis::LanguageV1::XpsTablesDatasetMetadata]
        attr_accessor :tables_dataset_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tables_dataset_metadata = args[:tables_dataset_metadata] if args.key?(:tables_dataset_metadata)
        end
      end
      
      # Metrics for Tables regression problems.
      class XpsTablesRegressionMetrics
        include Google::Apis::Core::Hashable
      
        # Mean absolute error.
        # Corresponds to the JSON property `meanAbsoluteError`
        # @return [Float]
        attr_accessor :mean_absolute_error
      
        # Mean absolute percentage error, only set if all of the target column's values
        # are positive.
        # Corresponds to the JSON property `meanAbsolutePercentageError`
        # @return [Float]
        attr_accessor :mean_absolute_percentage_error
      
        # R squared.
        # Corresponds to the JSON property `rSquared`
        # @return [Float]
        attr_accessor :r_squared
      
        # A list of actual versus predicted points for the model being evaluated.
        # Corresponds to the JSON property `regressionMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsRegressionMetricsEntry>]
        attr_accessor :regression_metrics_entries
      
        # Root mean squared error.
        # Corresponds to the JSON property `rootMeanSquaredError`
        # @return [Float]
        attr_accessor :root_mean_squared_error
      
        # Root mean squared log error.
        # Corresponds to the JSON property `rootMeanSquaredLogError`
        # @return [Float]
        attr_accessor :root_mean_squared_log_error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mean_absolute_error = args[:mean_absolute_error] if args.key?(:mean_absolute_error)
          @mean_absolute_percentage_error = args[:mean_absolute_percentage_error] if args.key?(:mean_absolute_percentage_error)
          @r_squared = args[:r_squared] if args.key?(:r_squared)
          @regression_metrics_entries = args[:regression_metrics_entries] if args.key?(:regression_metrics_entries)
          @root_mean_squared_error = args[:root_mean_squared_error] if args.key?(:root_mean_squared_error)
          @root_mean_squared_log_error = args[:root_mean_squared_log_error] if args.key?(:root_mean_squared_log_error)
        end
      end
      
      # 
      class XpsTablesTrainResponse
        include Google::Apis::Core::Hashable
      
        # A description of Tables model structure.
        # Corresponds to the JSON property `modelStructure`
        # @return [Google::Apis::LanguageV1::XpsTablesModelStructure]
        attr_accessor :model_structure
      
        # Sample rows from the dataset this model was trained.
        # Corresponds to the JSON property `predictionSampleRows`
        # @return [Array<Google::Apis::LanguageV1::XpsRow>]
        attr_accessor :prediction_sample_rows
      
        # Output only. Auxiliary information for each of the input_feature_column_specs,
        # with respect to this particular model.
        # Corresponds to the JSON property `tablesModelColumnInfo`
        # @return [Array<Google::Apis::LanguageV1::XpsTablesModelColumnInfo>]
        attr_accessor :tables_model_column_info
      
        # The actual training cost of the model, expressed in milli node hours, i.e. 1,
        # 000 value in this field means 1 node hour. Guaranteed to not exceed the train
        # budget.
        # Corresponds to the JSON property `trainCostMilliNodeHours`
        # @return [Fixnum]
        attr_accessor :train_cost_milli_node_hours
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_structure = args[:model_structure] if args.key?(:model_structure)
          @prediction_sample_rows = args[:prediction_sample_rows] if args.key?(:prediction_sample_rows)
          @tables_model_column_info = args[:tables_model_column_info] if args.key?(:tables_model_column_info)
          @train_cost_milli_node_hours = args[:train_cost_milli_node_hours] if args.key?(:train_cost_milli_node_hours)
        end
      end
      
      # 
      class XpsTablesTrainingOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Current stage of creating model.
        # Corresponds to the JSON property `createModelStage`
        # @return [String]
        attr_accessor :create_model_stage
      
        # The optimization objective for model.
        # Corresponds to the JSON property `optimizationObjective`
        # @return [String]
        attr_accessor :optimization_objective
      
        # This field is for training. When the operation is terminated successfully,
        # AutoML Backend post this field to operation metadata in spanner. If the
        # metadata has no trials returned, the training operation is supposed to be a
        # failure.
        # Corresponds to the JSON property `topTrials`
        # @return [Array<Google::Apis::LanguageV1::XpsTuningTrial>]
        attr_accessor :top_trials
      
        # Creating model budget.
        # Corresponds to the JSON property `trainBudgetMilliNodeHours`
        # @return [Fixnum]
        attr_accessor :train_budget_milli_node_hours
      
        # This field records the training objective value with respect to time, giving
        # insight into how the model architecture search is performing as training time
        # elapses.
        # Corresponds to the JSON property `trainingObjectivePoints`
        # @return [Array<Google::Apis::LanguageV1::XpsTrainingObjectivePoint>]
        attr_accessor :training_objective_points
      
        # Timestamp when training process starts.
        # Corresponds to the JSON property `trainingStartTime`
        # @return [String]
        attr_accessor :training_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_model_stage = args[:create_model_stage] if args.key?(:create_model_stage)
          @optimization_objective = args[:optimization_objective] if args.key?(:optimization_objective)
          @top_trials = args[:top_trials] if args.key?(:top_trials)
          @train_budget_milli_node_hours = args[:train_budget_milli_node_hours] if args.key?(:train_budget_milli_node_hours)
          @training_objective_points = args[:training_objective_points] if args.key?(:training_objective_points)
          @training_start_time = args[:training_start_time] if args.key?(:training_start_time)
        end
      end
      
      # Component model. Next ID: 10
      class XpsTextComponentModel
        include Google::Apis::Core::Hashable
      
        # The Cloud Storage resource path to hold batch prediction model.
        # Corresponds to the JSON property `batchPredictionModelGcsUri`
        # @return [String]
        attr_accessor :batch_prediction_model_gcs_uri
      
        # The Cloud Storage resource path to hold online prediction model.
        # Corresponds to the JSON property `onlinePredictionModelGcsUri`
        # @return [String]
        attr_accessor :online_prediction_model_gcs_uri
      
        # The partition where the model is deployed. Populated by uCAIP BE as part of
        # online PredictRequest.
        # Corresponds to the JSON property `partition`
        # @return [String]
        attr_accessor :partition
      
        # A single model artifact item.
        # Corresponds to the JSON property `servingArtifact`
        # @return [Google::Apis::LanguageV1::XpsModelArtifactItem]
        attr_accessor :serving_artifact
      
        # The name of servo model. Populated by uCAIP BE as part of online
        # PredictRequest.
        # Corresponds to the JSON property `servoModelName`
        # @return [String]
        attr_accessor :servo_model_name
      
        # The name of the trained NL submodel.
        # Corresponds to the JSON property `submodelName`
        # @return [String]
        attr_accessor :submodel_name
      
        # The type of trained NL submodel
        # Corresponds to the JSON property `submodelType`
        # @return [String]
        attr_accessor :submodel_type
      
        # ## The fields below are only populated under uCAIP request scope. https://
        # cloud.google.com/ml-engine/docs/runtime-version-list
        # Corresponds to the JSON property `tfRuntimeVersion`
        # @return [String]
        attr_accessor :tf_runtime_version
      
        # The servomatic model version number. Populated by uCAIP BE as part of online
        # PredictRequest.
        # Corresponds to the JSON property `versionNumber`
        # @return [Fixnum]
        attr_accessor :version_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_prediction_model_gcs_uri = args[:batch_prediction_model_gcs_uri] if args.key?(:batch_prediction_model_gcs_uri)
          @online_prediction_model_gcs_uri = args[:online_prediction_model_gcs_uri] if args.key?(:online_prediction_model_gcs_uri)
          @partition = args[:partition] if args.key?(:partition)
          @serving_artifact = args[:serving_artifact] if args.key?(:serving_artifact)
          @servo_model_name = args[:servo_model_name] if args.key?(:servo_model_name)
          @submodel_name = args[:submodel_name] if args.key?(:submodel_name)
          @submodel_type = args[:submodel_type] if args.key?(:submodel_type)
          @tf_runtime_version = args[:tf_runtime_version] if args.key?(:tf_runtime_version)
          @version_number = args[:version_number] if args.key?(:version_number)
        end
      end
      
      # 
      class XpsTextExtractionEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # ConfidenceMetricsEntry includes generic precision, recall, f1 score etc. Next
        # tag: 16.
        # Corresponds to the JSON property `bestF1ConfidenceMetrics`
        # @return [Google::Apis::LanguageV1::XpsConfidenceMetricsEntry]
        attr_accessor :best_f1_confidence_metrics
      
        # If the enclosing EvaluationMetrics.label is empty, confidence_metrics_entries
        # is an evaluation of the entire model across all labels. If the enclosing
        # EvaluationMetrics.label is set, confidence_metrics_entries applies to that
        # label.
        # Corresponds to the JSON property `confidenceMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsConfidenceMetricsEntry>]
        attr_accessor :confidence_metrics_entries
      
        # Confusion matrix of the model running the classification.
        # Corresponds to the JSON property `confusionMatrix`
        # @return [Google::Apis::LanguageV1::XpsConfusionMatrix]
        attr_accessor :confusion_matrix
      
        # Only recall, precision, and f1_score will be set.
        # Corresponds to the JSON property `perLabelConfidenceMetrics`
        # @return [Hash<String,Google::Apis::LanguageV1::XpsConfidenceMetricsEntry>]
        attr_accessor :per_label_confidence_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_f1_confidence_metrics = args[:best_f1_confidence_metrics] if args.key?(:best_f1_confidence_metrics)
          @confidence_metrics_entries = args[:confidence_metrics_entries] if args.key?(:confidence_metrics_entries)
          @confusion_matrix = args[:confusion_matrix] if args.key?(:confusion_matrix)
          @per_label_confidence_metrics = args[:per_label_confidence_metrics] if args.key?(:per_label_confidence_metrics)
        end
      end
      
      # Model evaluation metrics for text sentiment problems.
      class XpsTextSentimentEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # Confusion matrix of the model running the classification.
        # Corresponds to the JSON property `confusionMatrix`
        # @return [Google::Apis::LanguageV1::XpsConfusionMatrix]
        attr_accessor :confusion_matrix
      
        # Output only. The harmonic mean of recall and precision.
        # Corresponds to the JSON property `f1Score`
        # @return [Float]
        attr_accessor :f1_score
      
        # Output only. Linear weighted kappa. Only set for the overall model evaluation,
        # not for evaluation of a single annotation spec.
        # Corresponds to the JSON property `linearKappa`
        # @return [Float]
        attr_accessor :linear_kappa
      
        # Output only. Mean absolute error. Only set for the overall model evaluation,
        # not for evaluation of a single annotation spec.
        # Corresponds to the JSON property `meanAbsoluteError`
        # @return [Float]
        attr_accessor :mean_absolute_error
      
        # Output only. Mean squared error. Only set for the overall model evaluation,
        # not for evaluation of a single annotation spec.
        # Corresponds to the JSON property `meanSquaredError`
        # @return [Float]
        attr_accessor :mean_squared_error
      
        # Output only. Precision.
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # Output only. Quadratic weighted kappa. Only set for the overall model
        # evaluation, not for evaluation of a single annotation spec.
        # Corresponds to the JSON property `quadraticKappa`
        # @return [Float]
        attr_accessor :quadratic_kappa
      
        # Output only. Recall.
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confusion_matrix = args[:confusion_matrix] if args.key?(:confusion_matrix)
          @f1_score = args[:f1_score] if args.key?(:f1_score)
          @linear_kappa = args[:linear_kappa] if args.key?(:linear_kappa)
          @mean_absolute_error = args[:mean_absolute_error] if args.key?(:mean_absolute_error)
          @mean_squared_error = args[:mean_squared_error] if args.key?(:mean_squared_error)
          @precision = args[:precision] if args.key?(:precision)
          @quadratic_kappa = args[:quadratic_kappa] if args.key?(:quadratic_kappa)
          @recall = args[:recall] if args.key?(:recall)
        end
      end
      
      # TextToSpeech train response
      class XpsTextToSpeechTrainResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class XpsTextTrainResponse
        include Google::Apis::Core::Hashable
      
        # Component submodels.
        # Corresponds to the JSON property `componentModel`
        # @return [Array<Google::Apis::LanguageV1::XpsTextComponentModel>]
        attr_accessor :component_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @component_model = args[:component_model] if args.key?(:component_model)
        end
      end
      
      # A [TensorFlow.js](https://www.tensorflow.org/js) model that can be used in the
      # browser and in Node.js using JavaScript.
      class XpsTfJsFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # LINT.IfChange A model format used for mobile and IoT devices. See https://www.
      # tensorflow.org/lite.
      class XpsTfLiteFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A tensorflow model format in SavedModel format.
      class XpsTfSavedModelFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The data statistics of a series of TIMESTAMP values.
      class XpsTimestampStats
        include Google::Apis::Core::Hashable
      
        # Common statistics for a column with a specified data type.
        # Corresponds to the JSON property `commonStats`
        # @return [Google::Apis::LanguageV1::XpsCommonStats]
        attr_accessor :common_stats
      
        # The string key is the pre-defined granularity. Currently supported:
        # hour_of_day, day_of_week, month_of_year. Granularities finer that the
        # granularity of timestamp data are not populated (e.g. if timestamps are at day
        # granularity, then hour_of_day is not populated).
        # Corresponds to the JSON property `granularStats`
        # @return [Hash<String,Google::Apis::LanguageV1::XpsTimestampStatsGranularStats>]
        attr_accessor :granular_stats
      
        # 
        # Corresponds to the JSON property `medianTimestampNanos`
        # @return [Fixnum]
        attr_accessor :median_timestamp_nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_stats = args[:common_stats] if args.key?(:common_stats)
          @granular_stats = args[:granular_stats] if args.key?(:granular_stats)
          @median_timestamp_nanos = args[:median_timestamp_nanos] if args.key?(:median_timestamp_nanos)
        end
      end
      
      # Stats split by a defined in context granularity.
      class XpsTimestampStatsGranularStats
        include Google::Apis::Core::Hashable
      
        # A map from granularity key to example count for that key. E.g. for hour_of_day
        # `13` means 1pm, or for month_of_year `5` means May).
        # Corresponds to the JSON property `buckets`
        # @return [Hash<String,Fixnum>]
        attr_accessor :buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
        end
      end
      
      # Track matching model metrics for a single track match threshold and multiple
      # label match confidence thresholds. Next tag: 6.
      class XpsTrackMetricsEntry
        include Google::Apis::Core::Hashable
      
        # Output only. Metrics for each label-match confidence_threshold from 0.05,0.10,.
        # ..,0.95,0.96,0.97,0.98,0.99. Precision-recall curve is derived from them.
        # Corresponds to the JSON property `confidenceMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsTrackMetricsEntryConfidenceMetricsEntry>]
        attr_accessor :confidence_metrics_entries
      
        # Output only. The intersection-over-union threshold value between bounding
        # boxes across frames used to compute this metric entry.
        # Corresponds to the JSON property `iouThreshold`
        # @return [Float]
        attr_accessor :iou_threshold
      
        # Output only. The mean bounding box iou over all confidence thresholds.
        # Corresponds to the JSON property `meanBoundingBoxIou`
        # @return [Float]
        attr_accessor :mean_bounding_box_iou
      
        # Output only. The mean mismatch rate over all confidence thresholds.
        # Corresponds to the JSON property `meanMismatchRate`
        # @return [Float]
        attr_accessor :mean_mismatch_rate
      
        # Output only. The mean average precision over all confidence thresholds.
        # Corresponds to the JSON property `meanTrackingAveragePrecision`
        # @return [Float]
        attr_accessor :mean_tracking_average_precision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_metrics_entries = args[:confidence_metrics_entries] if args.key?(:confidence_metrics_entries)
          @iou_threshold = args[:iou_threshold] if args.key?(:iou_threshold)
          @mean_bounding_box_iou = args[:mean_bounding_box_iou] if args.key?(:mean_bounding_box_iou)
          @mean_mismatch_rate = args[:mean_mismatch_rate] if args.key?(:mean_mismatch_rate)
          @mean_tracking_average_precision = args[:mean_tracking_average_precision] if args.key?(:mean_tracking_average_precision)
        end
      end
      
      # Metrics for a single confidence threshold. Next tag: 6.
      class XpsTrackMetricsEntryConfidenceMetricsEntry
        include Google::Apis::Core::Hashable
      
        # Output only. Bounding box intersection-over-union precision. Measures how well
        # the bounding boxes overlap between each other (e.g. complete overlap or just
        # barely above iou_threshold).
        # Corresponds to the JSON property `boundingBoxIou`
        # @return [Float]
        attr_accessor :bounding_box_iou
      
        # Output only. The confidence threshold value used to compute the metrics.
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # Output only. Mismatch rate, which measures the tracking consistency, i.e.
        # correctness of instance ID continuity.
        # Corresponds to the JSON property `mismatchRate`
        # @return [Float]
        attr_accessor :mismatch_rate
      
        # Output only. Tracking precision.
        # Corresponds to the JSON property `trackingPrecision`
        # @return [Float]
        attr_accessor :tracking_precision
      
        # Output only. Tracking recall.
        # Corresponds to the JSON property `trackingRecall`
        # @return [Float]
        attr_accessor :tracking_recall
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_box_iou = args[:bounding_box_iou] if args.key?(:bounding_box_iou)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @mismatch_rate = args[:mismatch_rate] if args.key?(:mismatch_rate)
          @tracking_precision = args[:tracking_precision] if args.key?(:tracking_precision)
          @tracking_recall = args[:tracking_recall] if args.key?(:tracking_recall)
        end
      end
      
      # Next ID: 18
      class XpsTrainResponse
        include Google::Apis::Core::Hashable
      
        # Estimated model size in bytes once deployed.
        # Corresponds to the JSON property `deployedModelSizeBytes`
        # @return [Fixnum]
        attr_accessor :deployed_model_size_bytes
      
        # Optional vision model error analysis configuration. The field is set when
        # model error analysis is enabled in the training request. The results of error
        # analysis will be binded together with evaluation results (in the format of
        # AnnotatedExample).
        # Corresponds to the JSON property `errorAnalysisConfigs`
        # @return [Array<Google::Apis::LanguageV1::XpsVisionErrorAnalysisConfig>]
        attr_accessor :error_analysis_configs
      
        # Set of examples or input sources.
        # Corresponds to the JSON property `evaluatedExampleSet`
        # @return [Google::Apis::LanguageV1::XpsExampleSet]
        attr_accessor :evaluated_example_set
      
        # Specifies location of model evaluation metrics.
        # Corresponds to the JSON property `evaluationMetricsSet`
        # @return [Google::Apis::LanguageV1::XpsEvaluationMetricsSet]
        attr_accessor :evaluation_metrics_set
      
        # VisionExplanationConfig for XAI on test set. Optional for when XAI is enable
        # in training request.
        # Corresponds to the JSON property `explanationConfigs`
        # @return [Array<Google::Apis::LanguageV1::XpsResponseExplanationSpec>]
        attr_accessor :explanation_configs
      
        # 
        # Corresponds to the JSON property `imageClassificationTrainResp`
        # @return [Google::Apis::LanguageV1::XpsImageClassificationTrainResponse]
        attr_accessor :image_classification_train_resp
      
        # 
        # Corresponds to the JSON property `imageObjectDetectionTrainResp`
        # @return [Google::Apis::LanguageV1::XpsImageObjectDetectionModelSpec]
        attr_accessor :image_object_detection_train_resp
      
        # 
        # Corresponds to the JSON property `imageSegmentationTrainResp`
        # @return [Google::Apis::LanguageV1::XpsImageSegmentationTrainResponse]
        attr_accessor :image_segmentation_train_resp
      
        # Token that represents the trained model. This is considered immutable and is
        # persisted in AutoML. xPS can put their own proto in the byte string, to e.g.
        # point to the model checkpoints. The token is passed to other xPS APIs to refer
        # to the model.
        # Corresponds to the JSON property `modelToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :model_token
      
        # 
        # Corresponds to the JSON property `speechTrainResp`
        # @return [Google::Apis::LanguageV1::XpsSpeechModelSpec]
        attr_accessor :speech_train_resp
      
        # 
        # Corresponds to the JSON property `tablesTrainResp`
        # @return [Google::Apis::LanguageV1::XpsTablesTrainResponse]
        attr_accessor :tables_train_resp
      
        # TextToSpeech train response
        # Corresponds to the JSON property `textToSpeechTrainResp`
        # @return [Google::Apis::LanguageV1::XpsTextToSpeechTrainResponse]
        attr_accessor :text_to_speech_train_resp
      
        # Will only be needed for uCAIP from Beta.
        # Corresponds to the JSON property `textTrainResp`
        # @return [Google::Apis::LanguageV1::XpsTextTrainResponse]
        attr_accessor :text_train_resp
      
        # Train response for translation.
        # Corresponds to the JSON property `translationTrainResp`
        # @return [Google::Apis::LanguageV1::XpsTranslationTrainResponse]
        attr_accessor :translation_train_resp
      
        # 
        # Corresponds to the JSON property `videoActionRecognitionTrainResp`
        # @return [Google::Apis::LanguageV1::XpsVideoActionRecognitionTrainResponse]
        attr_accessor :video_action_recognition_train_resp
      
        # 
        # Corresponds to the JSON property `videoClassificationTrainResp`
        # @return [Google::Apis::LanguageV1::XpsVideoClassificationTrainResponse]
        attr_accessor :video_classification_train_resp
      
        # 
        # Corresponds to the JSON property `videoObjectTrackingTrainResp`
        # @return [Google::Apis::LanguageV1::XpsVideoObjectTrackingTrainResponse]
        attr_accessor :video_object_tracking_train_resp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployed_model_size_bytes = args[:deployed_model_size_bytes] if args.key?(:deployed_model_size_bytes)
          @error_analysis_configs = args[:error_analysis_configs] if args.key?(:error_analysis_configs)
          @evaluated_example_set = args[:evaluated_example_set] if args.key?(:evaluated_example_set)
          @evaluation_metrics_set = args[:evaluation_metrics_set] if args.key?(:evaluation_metrics_set)
          @explanation_configs = args[:explanation_configs] if args.key?(:explanation_configs)
          @image_classification_train_resp = args[:image_classification_train_resp] if args.key?(:image_classification_train_resp)
          @image_object_detection_train_resp = args[:image_object_detection_train_resp] if args.key?(:image_object_detection_train_resp)
          @image_segmentation_train_resp = args[:image_segmentation_train_resp] if args.key?(:image_segmentation_train_resp)
          @model_token = args[:model_token] if args.key?(:model_token)
          @speech_train_resp = args[:speech_train_resp] if args.key?(:speech_train_resp)
          @tables_train_resp = args[:tables_train_resp] if args.key?(:tables_train_resp)
          @text_to_speech_train_resp = args[:text_to_speech_train_resp] if args.key?(:text_to_speech_train_resp)
          @text_train_resp = args[:text_train_resp] if args.key?(:text_train_resp)
          @translation_train_resp = args[:translation_train_resp] if args.key?(:translation_train_resp)
          @video_action_recognition_train_resp = args[:video_action_recognition_train_resp] if args.key?(:video_action_recognition_train_resp)
          @video_classification_train_resp = args[:video_classification_train_resp] if args.key?(:video_classification_train_resp)
          @video_object_tracking_train_resp = args[:video_object_tracking_train_resp] if args.key?(:video_object_tracking_train_resp)
        end
      end
      
      # 
      class XpsTrainingObjectivePoint
        include Google::Apis::Core::Hashable
      
        # The time at which this point was recorded.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The objective value when this point was recorded.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Evaluation metrics for the dataset.
      class XpsTranslationEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # BLEU score for base model.
        # Corresponds to the JSON property `baseBleuScore`
        # @return [Float]
        attr_accessor :base_bleu_score
      
        # BLEU score.
        # Corresponds to the JSON property `bleuScore`
        # @return [Float]
        attr_accessor :bleu_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_bleu_score = args[:base_bleu_score] if args.key?(:base_bleu_score)
          @bleu_score = args[:bleu_score] if args.key?(:bleu_score)
        end
      end
      
      # Translation preprocess response.
      class XpsTranslationPreprocessResponse
        include Google::Apis::Core::Hashable
      
        # Total example count parsed.
        # Corresponds to the JSON property `parsedExampleCount`
        # @return [Fixnum]
        attr_accessor :parsed_example_count
      
        # Total valid example count.
        # Corresponds to the JSON property `validExampleCount`
        # @return [Fixnum]
        attr_accessor :valid_example_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parsed_example_count = args[:parsed_example_count] if args.key?(:parsed_example_count)
          @valid_example_count = args[:valid_example_count] if args.key?(:valid_example_count)
        end
      end
      
      # Train response for translation.
      class XpsTranslationTrainResponse
        include Google::Apis::Core::Hashable
      
        # Type of the model.
        # Corresponds to the JSON property `modelType`
        # @return [String]
        attr_accessor :model_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_type = args[:model_type] if args.key?(:model_type)
        end
      end
      
      # Metrics for a tuning job generated, will get forwarded to Stackdriver as model
      # tuning logs. Setting this as a standalone message out of CreateModelMetadata
      # to avoid confusion as we expose this message only to users.
      class XpsTuningTrial
        include Google::Apis::Core::Hashable
      
        # A description of Tables model structure.
        # Corresponds to the JSON property `modelStructure`
        # @return [Google::Apis::LanguageV1::XpsTablesModelStructure]
        attr_accessor :model_structure
      
        # The optimization objective evaluation of the eval split data.
        # Corresponds to the JSON property `trainingObjectivePoint`
        # @return [Google::Apis::LanguageV1::XpsTrainingObjectivePoint]
        attr_accessor :training_objective_point
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_structure = args[:model_structure] if args.key?(:model_structure)
          @training_objective_point = args[:training_objective_point] if args.key?(:training_objective_point)
        end
      end
      
      # The Evaluation metrics entry given a specific precision_window_length.
      class XpsVideoActionMetricsEntry
        include Google::Apis::Core::Hashable
      
        # Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,
        # 0.97,0.98,0.99.
        # Corresponds to the JSON property `confidenceMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsVideoActionMetricsEntryConfidenceMetricsEntry>]
        attr_accessor :confidence_metrics_entries
      
        # The mean average precision.
        # Corresponds to the JSON property `meanAveragePrecision`
        # @return [Float]
        attr_accessor :mean_average_precision
      
        # This VideoActionMetricsEntry is calculated based on this prediction window
        # length. If the predicted action's timestamp is inside the time window whose
        # center is the ground truth action's timestamp with this specific length, the
        # prediction result is treated as a true positive.
        # Corresponds to the JSON property `precisionWindowLength`
        # @return [String]
        attr_accessor :precision_window_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_metrics_entries = args[:confidence_metrics_entries] if args.key?(:confidence_metrics_entries)
          @mean_average_precision = args[:mean_average_precision] if args.key?(:mean_average_precision)
          @precision_window_length = args[:precision_window_length] if args.key?(:precision_window_length)
        end
      end
      
      # Metrics for a single confidence threshold.
      class XpsVideoActionMetricsEntryConfidenceMetricsEntry
        include Google::Apis::Core::Hashable
      
        # Output only. The confidence threshold value used to compute the metrics.
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # Output only. The harmonic mean of recall and precision.
        # Corresponds to the JSON property `f1Score`
        # @return [Float]
        attr_accessor :f1_score
      
        # Output only. Precision for the given confidence threshold.
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # Output only. Recall for the given confidence threshold.
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @f1_score = args[:f1_score] if args.key?(:f1_score)
          @precision = args[:precision] if args.key?(:precision)
          @recall = args[:recall] if args.key?(:recall)
        end
      end
      
      # Model evaluation metrics for video action recognition.
      class XpsVideoActionRecognitionEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # Output only. The number of ground truth actions used to create this evaluation.
        # Corresponds to the JSON property `evaluatedActionCount`
        # @return [Fixnum]
        attr_accessor :evaluated_action_count
      
        # Output only. The metric entries for precision window lengths: 1s,2s,3s,4s, 5s.
        # Corresponds to the JSON property `videoActionMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsVideoActionMetricsEntry>]
        attr_accessor :video_action_metrics_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluated_action_count = args[:evaluated_action_count] if args.key?(:evaluated_action_count)
          @video_action_metrics_entries = args[:video_action_metrics_entries] if args.key?(:video_action_metrics_entries)
        end
      end
      
      # 
      class XpsVideoActionRecognitionTrainResponse
        include Google::Apis::Core::Hashable
      
        # ## The fields below are only populated under uCAIP request scope.
        # Corresponds to the JSON property `modelArtifactSpec`
        # @return [Google::Apis::LanguageV1::XpsVideoModelArtifactSpec]
        attr_accessor :model_artifact_spec
      
        # The actual train cost of creating this model, expressed in node seconds, i.e.
        # 3,600 value in this field means 1 node hour.
        # Corresponds to the JSON property `trainCostNodeSeconds`
        # @return [Fixnum]
        attr_accessor :train_cost_node_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_artifact_spec = args[:model_artifact_spec] if args.key?(:model_artifact_spec)
          @train_cost_node_seconds = args[:train_cost_node_seconds] if args.key?(:train_cost_node_seconds)
        end
      end
      
      # 
      class XpsVideoBatchPredictOperationMetadata
        include Google::Apis::Core::Hashable
      
        # All the partial batch prediction results that are completed at the moment.
        # Output examples are sorted by completion time. The order will not be changed.
        # Each output example should be the path of a single RecordIO file of
        # AnnotatedExamples.
        # Corresponds to the JSON property `outputExamples`
        # @return [Array<String>]
        attr_accessor :output_examples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_examples = args[:output_examples] if args.key?(:output_examples)
        end
      end
      
      # 
      class XpsVideoClassificationTrainResponse
        include Google::Apis::Core::Hashable
      
        # ## The fields below are only populated under uCAIP request scope.
        # Corresponds to the JSON property `modelArtifactSpec`
        # @return [Google::Apis::LanguageV1::XpsVideoModelArtifactSpec]
        attr_accessor :model_artifact_spec
      
        # The actual train cost of creating this model, expressed in node seconds, i.e.
        # 3,600 value in this field means 1 node hour.
        # Corresponds to the JSON property `trainCostNodeSeconds`
        # @return [Fixnum]
        attr_accessor :train_cost_node_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_artifact_spec = args[:model_artifact_spec] if args.key?(:model_artifact_spec)
          @train_cost_node_seconds = args[:train_cost_node_seconds] if args.key?(:train_cost_node_seconds)
        end
      end
      
      # Information of downloadable models that are pre-generated as part of training
      # flow and will be persisted in AutoMl backend. Upon receiving ExportModel
      # request from user, AutoMl backend can serve the pre-generated models to user
      # if exists (by copying the files from internal path to user provided location),
      # otherwise, AutoMl backend will call xPS ExportModel API to generate the model
      # on the fly with the requesting format.
      class XpsVideoExportModelSpec
        include Google::Apis::Core::Hashable
      
        # Contains the model format and internal location of the model files to be
        # exported/downloaded. Use the GCS bucket name which is provided via
        # TrainRequest.gcs_bucket_name to store the model files.
        # Corresponds to the JSON property `exportModelOutputConfig`
        # @return [Array<Google::Apis::LanguageV1::XpsExportModelOutputConfig>]
        attr_accessor :export_model_output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_model_output_config = args[:export_model_output_config] if args.key?(:export_model_output_config)
        end
      end
      
      # 
      class XpsVideoModelArtifactSpec
        include Google::Apis::Core::Hashable
      
        # The model binary files in different formats for model export.
        # Corresponds to the JSON property `exportArtifact`
        # @return [Array<Google::Apis::LanguageV1::XpsModelArtifactItem>]
        attr_accessor :export_artifact
      
        # A single model artifact item.
        # Corresponds to the JSON property `servingArtifact`
        # @return [Google::Apis::LanguageV1::XpsModelArtifactItem]
        attr_accessor :serving_artifact
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_artifact = args[:export_artifact] if args.key?(:export_artifact)
          @serving_artifact = args[:serving_artifact] if args.key?(:serving_artifact)
        end
      end
      
      # Model evaluation metrics for ObjectTracking problems. Next tag: 10.
      class XpsVideoObjectTrackingEvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # Output only. The single metric for bounding boxes evaluation: the
        # mean_average_precision averaged over all bounding_box_metrics_entries.
        # Corresponds to the JSON property `boundingBoxMeanAveragePrecision`
        # @return [Float]
        attr_accessor :bounding_box_mean_average_precision
      
        # Output only. The bounding boxes match metrics for each Intersection-over-union
        # threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99.
        # Corresponds to the JSON property `boundingBoxMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsBoundingBoxMetricsEntry>]
        attr_accessor :bounding_box_metrics_entries
      
        # The number of bounding boxes used for model evaluation.
        # Corresponds to the JSON property `evaluatedBoundingboxCount`
        # @return [Fixnum]
        attr_accessor :evaluated_boundingbox_count
      
        # The number of video frames used for model evaluation.
        # Corresponds to the JSON property `evaluatedFrameCount`
        # @return [Fixnum]
        attr_accessor :evaluated_frame_count
      
        # The number of tracks used for model evaluation.
        # Corresponds to the JSON property `evaluatedTrackCount`
        # @return [Fixnum]
        attr_accessor :evaluated_track_count
      
        # Output only. The single metric for tracks accuracy evaluation: the
        # mean_average_precision averaged over all track_metrics_entries.
        # Corresponds to the JSON property `trackMeanAveragePrecision`
        # @return [Float]
        attr_accessor :track_mean_average_precision
      
        # Output only. The single metric for tracks bounding box iou evaluation: the
        # mean_bounding_box_iou averaged over all track_metrics_entries.
        # Corresponds to the JSON property `trackMeanBoundingBoxIou`
        # @return [Float]
        attr_accessor :track_mean_bounding_box_iou
      
        # Output only. The single metric for tracking consistency evaluation: the
        # mean_mismatch_rate averaged over all track_metrics_entries.
        # Corresponds to the JSON property `trackMeanMismatchRate`
        # @return [Float]
        attr_accessor :track_mean_mismatch_rate
      
        # Output only. The tracks match metrics for each Intersection-over-union
        # threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99.
        # Corresponds to the JSON property `trackMetricsEntries`
        # @return [Array<Google::Apis::LanguageV1::XpsTrackMetricsEntry>]
        attr_accessor :track_metrics_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_box_mean_average_precision = args[:bounding_box_mean_average_precision] if args.key?(:bounding_box_mean_average_precision)
          @bounding_box_metrics_entries = args[:bounding_box_metrics_entries] if args.key?(:bounding_box_metrics_entries)
          @evaluated_boundingbox_count = args[:evaluated_boundingbox_count] if args.key?(:evaluated_boundingbox_count)
          @evaluated_frame_count = args[:evaluated_frame_count] if args.key?(:evaluated_frame_count)
          @evaluated_track_count = args[:evaluated_track_count] if args.key?(:evaluated_track_count)
          @track_mean_average_precision = args[:track_mean_average_precision] if args.key?(:track_mean_average_precision)
          @track_mean_bounding_box_iou = args[:track_mean_bounding_box_iou] if args.key?(:track_mean_bounding_box_iou)
          @track_mean_mismatch_rate = args[:track_mean_mismatch_rate] if args.key?(:track_mean_mismatch_rate)
          @track_metrics_entries = args[:track_metrics_entries] if args.key?(:track_metrics_entries)
        end
      end
      
      # 
      class XpsVideoObjectTrackingTrainResponse
        include Google::Apis::Core::Hashable
      
        # Information of downloadable models that are pre-generated as part of training
        # flow and will be persisted in AutoMl backend. Upon receiving ExportModel
        # request from user, AutoMl backend can serve the pre-generated models to user
        # if exists (by copying the files from internal path to user provided location),
        # otherwise, AutoMl backend will call xPS ExportModel API to generate the model
        # on the fly with the requesting format.
        # Corresponds to the JSON property `exportModelSpec`
        # @return [Google::Apis::LanguageV1::XpsVideoExportModelSpec]
        attr_accessor :export_model_spec
      
        # ## The fields below are only populated under uCAIP request scope.
        # Corresponds to the JSON property `modelArtifactSpec`
        # @return [Google::Apis::LanguageV1::XpsVideoModelArtifactSpec]
        attr_accessor :model_artifact_spec
      
        # The actual train cost of creating this model, expressed in node seconds, i.e.
        # 3,600 value in this field means 1 node hour.
        # Corresponds to the JSON property `trainCostNodeSeconds`
        # @return [Fixnum]
        attr_accessor :train_cost_node_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_model_spec = args[:export_model_spec] if args.key?(:export_model_spec)
          @model_artifact_spec = args[:model_artifact_spec] if args.key?(:model_artifact_spec)
          @train_cost_node_seconds = args[:train_cost_node_seconds] if args.key?(:train_cost_node_seconds)
        end
      end
      
      # 
      class XpsVideoTrainingOperationMetadata
        include Google::Apis::Core::Hashable
      
        # This is an estimation of the node hours necessary for training a model,
        # expressed in milli node hours (i.e. 1,000 value in this field means 1 node
        # hour). A node hour represents the time a virtual machine spends running your
        # training job. The cost of one node running for one hour is a node hour.
        # Corresponds to the JSON property `trainCostMilliNodeHour`
        # @return [Fixnum]
        attr_accessor :train_cost_milli_node_hour
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @train_cost_milli_node_hour = args[:train_cost_milli_node_hour] if args.key?(:train_cost_milli_node_hour)
        end
      end
      
      # The vision model error analysis configuration. Next tag: 3
      class XpsVisionErrorAnalysisConfig
        include Google::Apis::Core::Hashable
      
        # The number of query examples in error analysis.
        # Corresponds to the JSON property `exampleCount`
        # @return [Fixnum]
        attr_accessor :example_count
      
        # The query type used in retrieval. The enum values are frozen in the
        # foreseeable future.
        # Corresponds to the JSON property `queryType`
        # @return [String]
        attr_accessor :query_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_count = args[:example_count] if args.key?(:example_count)
          @query_type = args[:query_type] if args.key?(:query_type)
        end
      end
      
      # 
      class XpsVisionTrainingOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Infra Usage of billing metrics. Next ID: 6
        # Corresponds to the JSON property `explanationUsage`
        # @return [Google::Apis::LanguageV1::InfraUsage]
        attr_accessor :explanation_usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explanation_usage = args[:explanation_usage] if args.key?(:explanation_usage)
        end
      end
      
      # Visualization configurations for image explanation.
      class XpsVisualization
        include Google::Apis::Core::Hashable
      
        # Excludes attributions below the specified percentile, from the highlighted
        # areas. Defaults to 62.
        # Corresponds to the JSON property `clipPercentLowerbound`
        # @return [Float]
        attr_accessor :clip_percent_lowerbound
      
        # Excludes attributions above the specified percentile from the highlighted
        # areas. Using the clip_percent_upperbound and clip_percent_lowerbound together
        # can be useful for filtering out noise and making it easier to see areas of
        # strong attribution. Defaults to 99.9.
        # Corresponds to the JSON property `clipPercentUpperbound`
        # @return [Float]
        attr_accessor :clip_percent_upperbound
      
        # The color scheme used for the highlighted areas. Defaults to PINK_GREEN for
        # Integrated Gradients attribution, which shows positive attributions in green
        # and negative in pink. Defaults to VIRIDIS for XRAI attribution, which
        # highlights the most influential regions in yellow and the least influential in
        # blue.
        # Corresponds to the JSON property `colorMap`
        # @return [String]
        attr_accessor :color_map
      
        # How the original image is displayed in the visualization. Adjusting the
        # overlay can help increase visual clarity if the original image makes it
        # difficult to view the visualization. Defaults to NONE.
        # Corresponds to the JSON property `overlayType`
        # @return [String]
        attr_accessor :overlay_type
      
        # Whether to only highlight pixels with positive contributions, negative or both.
        # Defaults to POSITIVE.
        # Corresponds to the JSON property `polarity`
        # @return [String]
        attr_accessor :polarity
      
        # Type of the image visualization. Only applicable to Integrated Gradients
        # attribution. OUTLINES shows regions of attribution, while PIXELS shows per-
        # pixel attribution. Defaults to OUTLINES.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clip_percent_lowerbound = args[:clip_percent_lowerbound] if args.key?(:clip_percent_lowerbound)
          @clip_percent_upperbound = args[:clip_percent_upperbound] if args.key?(:clip_percent_upperbound)
          @color_map = args[:color_map] if args.key?(:color_map)
          @overlay_type = args[:overlay_type] if args.key?(:overlay_type)
          @polarity = args[:polarity] if args.key?(:polarity)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class XpsXpsOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. XPS server can opt to provide example count of the long running
        # operation (e.g. training, data importing, batch prediction).
        # Corresponds to the JSON property `exampleCount`
        # @return [Fixnum]
        attr_accessor :example_count
      
        # Metrics for the operation. By the time the operation is terminated (whether
        # succeeded or failed) as returned from XPS, AutoML BE assumes the metrics are
        # finalized. AutoML BE transparently posts the metrics to Chemist if it's not
        # empty, regardless of the response content or error type. If user is supposed
        # to be charged in case of cancellation/error, this field should be set. In the
        # case where the type of LRO doesn't require any billing, this field should be
        # left unset.
        # Corresponds to the JSON property `reportingMetrics`
        # @return [Google::Apis::LanguageV1::XpsReportingMetrics]
        attr_accessor :reporting_metrics
      
        # 
        # Corresponds to the JSON property `tablesTrainingOperationMetadata`
        # @return [Google::Apis::LanguageV1::XpsTablesTrainingOperationMetadata]
        attr_accessor :tables_training_operation_metadata
      
        # 
        # Corresponds to the JSON property `videoBatchPredictOperationMetadata`
        # @return [Google::Apis::LanguageV1::XpsVideoBatchPredictOperationMetadata]
        attr_accessor :video_batch_predict_operation_metadata
      
        # 
        # Corresponds to the JSON property `videoTrainingOperationMetadata`
        # @return [Google::Apis::LanguageV1::XpsVideoTrainingOperationMetadata]
        attr_accessor :video_training_operation_metadata
      
        # 
        # Corresponds to the JSON property `visionTrainingOperationMetadata`
        # @return [Google::Apis::LanguageV1::XpsVisionTrainingOperationMetadata]
        attr_accessor :vision_training_operation_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_count = args[:example_count] if args.key?(:example_count)
          @reporting_metrics = args[:reporting_metrics] if args.key?(:reporting_metrics)
          @tables_training_operation_metadata = args[:tables_training_operation_metadata] if args.key?(:tables_training_operation_metadata)
          @video_batch_predict_operation_metadata = args[:video_batch_predict_operation_metadata] if args.key?(:video_batch_predict_operation_metadata)
          @video_training_operation_metadata = args[:video_training_operation_metadata] if args.key?(:video_training_operation_metadata)
          @vision_training_operation_metadata = args[:vision_training_operation_metadata] if args.key?(:vision_training_operation_metadata)
        end
      end
      
      # An explanation method that redistributes Integrated Gradients attributions to
      # segmented regions, taking advantage of the model's fully differentiable
      # structure. Refer to this paper for more details: https://arxiv.org/abs/1906.
      # 02825 Only supports image Models (modality is IMAGE).
      class XpsXraiAttribution
        include Google::Apis::Core::Hashable
      
        # The number of steps for approximating the path integral. A good value to start
        # is 50 and gradually increase until the sum to diff property is met within the
        # desired error range. Valid range of its value is [1, 100], inclusively.
        # Corresponds to the JSON property `stepCount`
        # @return [Fixnum]
        attr_accessor :step_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @step_count = args[:step_count] if args.key?(:step_count)
        end
      end
    end
  end
end
