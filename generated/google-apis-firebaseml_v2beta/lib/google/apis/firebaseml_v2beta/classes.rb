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
    module FirebasemlV2beta
      
      # Content blob. It's preferred to send as text directly rather than raw bytes.
      class Blob
        include Google::Apis::Core::Hashable
      
        # Required. Raw bytes.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Required. The IANA standard MIME type of the source data.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A response candidate generated from the model.
      class Candidate
        include Google::Apis::Core::Hashable
      
        # A collection of source attributions for a piece of content.
        # Corresponds to the JSON property `citationMetadata`
        # @return [Google::Apis::FirebasemlV2beta::CitationMetadata]
        attr_accessor :citation_metadata
      
        # The base structured datatype containing multi-part content of a message. A `
        # Content` includes a `role` field designating the producer of the `Content` and
        # a `parts` field containing multi-part data that contains the content of the
        # message turn.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::FirebasemlV2beta::Content]
        attr_accessor :content
      
        # Output only. Describes the reason the mode stopped generating tokens in more
        # detail. This is only filled when `finish_reason` is set.
        # Corresponds to the JSON property `finishMessage`
        # @return [String]
        attr_accessor :finish_message
      
        # Output only. The reason why the model stopped generating tokens. If empty, the
        # model has not stopped generating the tokens.
        # Corresponds to the JSON property `finishReason`
        # @return [String]
        attr_accessor :finish_reason
      
        # Metadata returned to client when grounding is enabled.
        # Corresponds to the JSON property `groundingMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GroundingMetadata]
        attr_accessor :grounding_metadata
      
        # Output only. Index of the candidate.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Output only. List of ratings for the safety of a response candidate. There is
        # at most one rating per category.
        # Corresponds to the JSON property `safetyRatings`
        # @return [Array<Google::Apis::FirebasemlV2beta::SafetyRating>]
        attr_accessor :safety_ratings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citation_metadata = args[:citation_metadata] if args.key?(:citation_metadata)
          @content = args[:content] if args.key?(:content)
          @finish_message = args[:finish_message] if args.key?(:finish_message)
          @finish_reason = args[:finish_reason] if args.key?(:finish_reason)
          @grounding_metadata = args[:grounding_metadata] if args.key?(:grounding_metadata)
          @index = args[:index] if args.key?(:index)
          @safety_ratings = args[:safety_ratings] if args.key?(:safety_ratings)
        end
      end
      
      # Source attributions for content.
      class Citation
        include Google::Apis::Core::Hashable
      
        # Output only. End index into the content.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # Output only. License of the attribution.
        # Corresponds to the JSON property `license`
        # @return [String]
        attr_accessor :license
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `publicationDate`
        # @return [Google::Apis::FirebasemlV2beta::Date]
        attr_accessor :publication_date
      
        # Output only. Start index into the content.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # Output only. Title of the attribution.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Url reference of the attribution.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @license = args[:license] if args.key?(:license)
          @publication_date = args[:publication_date] if args.key?(:publication_date)
          @start_index = args[:start_index] if args.key?(:start_index)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A collection of source attributions for a piece of content.
      class CitationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. List of citations.
        # Corresponds to the JSON property `citations`
        # @return [Array<Google::Apis::FirebasemlV2beta::Citation>]
        attr_accessor :citations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citations = args[:citations] if args.key?(:citations)
        end
      end
      
      # The base structured datatype containing multi-part content of a message. A `
      # Content` includes a `role` field designating the producer of the `Content` and
      # a `parts` field containing multi-part data that contains the content of the
      # message turn.
      class Content
        include Google::Apis::Core::Hashable
      
        # Required. Ordered `Parts` that constitute a single message. Parts may have
        # different IANA MIME types.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::FirebasemlV2beta::Part>]
        attr_accessor :parts
      
        # Optional. The producer of the content. Must be either 'user' or 'model'.
        # Useful to set for multi-turn conversations, otherwise can be left blank or
        # unset.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parts = args[:parts] if args.key?(:parts)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request message for PredictionService.CountTokens.
      class CountTokensRequest
        include Google::Apis::Core::Hashable
      
        # Required. Input content.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::FirebasemlV2beta::Content>]
        attr_accessor :contents
      
        # Required. The instances that are the input to token counting call. Schema is
        # identical to the prediction schema of the underlying model.
        # Corresponds to the JSON property `instances`
        # @return [Array<Object>]
        attr_accessor :instances
      
        # Required. The name of the publisher model requested to serve the prediction.
        # Format: `projects/`project`/locations/`location`/publishers/*/models/*`
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @instances = args[:instances] if args.key?(:instances)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Response message for PredictionService.CountTokens.
      class CountTokensResponse
        include Google::Apis::Core::Hashable
      
        # The total number of billable characters counted across all instances from the
        # request.
        # Corresponds to the JSON property `totalBillableCharacters`
        # @return [Fixnum]
        attr_accessor :total_billable_characters
      
        # The total number of tokens counted across all instances from the request.
        # Corresponds to the JSON property `totalTokens`
        # @return [Fixnum]
        attr_accessor :total_tokens
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_billable_characters = args[:total_billable_characters] if args.key?(:total_billable_characters)
          @total_tokens = args[:total_tokens] if args.key?(:total_tokens)
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
      
      # URI based data.
      class FileData
        include Google::Apis::Core::Hashable
      
        # Required. URI.
        # Corresponds to the JSON property `fileUri`
        # @return [String]
        attr_accessor :file_uri
      
        # Required. The IANA standard MIME type of the source data.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_uri = args[:file_uri] if args.key?(:file_uri)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A predicted [FunctionCall] returned from the model that contains a string
      # representing the [FunctionDeclaration.name] and a structured JSON object
      # containing the parameters and their values.
      class FunctionCall
        include Google::Apis::Core::Hashable
      
        # Optional. Required. The function parameters and values in JSON object format.
        # See [FunctionDeclaration.parameters] for parameter details.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,Object>]
        attr_accessor :args
      
        # Required. The name of the function to call. Matches [FunctionDeclaration.name].
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Function calling config.
      class FunctionCallingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Function names to call. Only set when the Mode is ANY. Function
        # names should match [FunctionDeclaration.name]. With mode set to ANY, model
        # will predict a function call from the set of function names provided.
        # Corresponds to the JSON property `allowedFunctionNames`
        # @return [Array<String>]
        attr_accessor :allowed_function_names
      
        # Optional. Function calling mode.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_function_names = args[:allowed_function_names] if args.key?(:allowed_function_names)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Structured representation of a function declaration as defined by the [OpenAPI
      # 3.0 specification](https://spec.openapis.org/oas/v3.0.3). Included in this
      # declaration are the function name and parameters. This FunctionDeclaration is
      # a representation of a block of code that can be used as a `Tool` by the model
      # and executed by the client.
      class FunctionDeclaration
        include Google::Apis::Core::Hashable
      
        # Optional. Description and purpose of the function. Model uses it to decide how
        # and whether to call the function.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name of the function to call. Must start with a letter or an
        # underscore. Must be a-z, A-Z, 0-9, or contain underscores, dots and dashes,
        # with a maximum length of 64.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Schema is used to define the format of input/output data. Represents a select
        # subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#
        # schema). More fields may be added in the future as needed.
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::FirebasemlV2beta::Schema]
        attr_accessor :parameters
      
        # Schema is used to define the format of input/output data. Represents a select
        # subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#
        # schema). More fields may be added in the future as needed.
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::FirebasemlV2beta::Schema]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # The result output from a [FunctionCall] that contains a string representing
      # the [FunctionDeclaration.name] and a structured JSON object containing any
      # output from the function is used as context to the model. This should contain
      # the result of a [FunctionCall] made based on model prediction.
      class FunctionResponse
        include Google::Apis::Core::Hashable
      
        # Required. The name of the function to call. Matches [FunctionDeclaration.name]
        # and [FunctionCall.name].
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The function response in JSON object format.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Request message for [PredictionService.GenerateContent].
      class GenerateContentRequest
        include Google::Apis::Core::Hashable
      
        # Required. The content of the current conversation with the model. For single-
        # turn queries, this is a single instance. For multi-turn queries, this is a
        # repeated field that contains conversation history + latest request.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::FirebasemlV2beta::Content>]
        attr_accessor :contents
      
        # Generation config.
        # Corresponds to the JSON property `generationConfig`
        # @return [Google::Apis::FirebasemlV2beta::GenerationConfig]
        attr_accessor :generation_config
      
        # Optional. Per request settings for blocking unsafe content. Enforced on
        # GenerateContentResponse.candidates.
        # Corresponds to the JSON property `safetySettings`
        # @return [Array<Google::Apis::FirebasemlV2beta::SafetySetting>]
        attr_accessor :safety_settings
      
        # The base structured datatype containing multi-part content of a message. A `
        # Content` includes a `role` field designating the producer of the `Content` and
        # a `parts` field containing multi-part data that contains the content of the
        # message turn.
        # Corresponds to the JSON property `systemInstruction`
        # @return [Google::Apis::FirebasemlV2beta::Content]
        attr_accessor :system_instruction
      
        # Tool config. This config is shared for all tools provided in the request.
        # Corresponds to the JSON property `toolConfig`
        # @return [Google::Apis::FirebasemlV2beta::ToolConfig]
        attr_accessor :tool_config
      
        # Optional. A list of `Tools` the model may use to generate the next response. A
        # `Tool` is a piece of code that enables the system to interact with external
        # systems to perform an action, or set of actions, outside of knowledge and
        # scope of the model.
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::FirebasemlV2beta::Tool>]
        attr_accessor :tools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @generation_config = args[:generation_config] if args.key?(:generation_config)
          @safety_settings = args[:safety_settings] if args.key?(:safety_settings)
          @system_instruction = args[:system_instruction] if args.key?(:system_instruction)
          @tool_config = args[:tool_config] if args.key?(:tool_config)
          @tools = args[:tools] if args.key?(:tools)
        end
      end
      
      # Response message for [PredictionService.GenerateContent].
      class GenerateContentResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Generated candidates.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Google::Apis::FirebasemlV2beta::Candidate>]
        attr_accessor :candidates
      
        # Content filter results for a prompt sent in the request.
        # Corresponds to the JSON property `promptFeedback`
        # @return [Google::Apis::FirebasemlV2beta::PromptFeedback]
        attr_accessor :prompt_feedback
      
        # Usage metadata about response(s).
        # Corresponds to the JSON property `usageMetadata`
        # @return [Google::Apis::FirebasemlV2beta::UsageMetadata]
        attr_accessor :usage_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
          @prompt_feedback = args[:prompt_feedback] if args.key?(:prompt_feedback)
          @usage_metadata = args[:usage_metadata] if args.key?(:usage_metadata)
        end
      end
      
      # Generation config.
      class GenerationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Number of candidates to generate.
        # Corresponds to the JSON property `candidateCount`
        # @return [Fixnum]
        attr_accessor :candidate_count
      
        # Optional. Frequency penalties.
        # Corresponds to the JSON property `frequencyPenalty`
        # @return [Float]
        attr_accessor :frequency_penalty
      
        # Optional. The maximum number of output tokens to generate per message.
        # Corresponds to the JSON property `maxOutputTokens`
        # @return [Fixnum]
        attr_accessor :max_output_tokens
      
        # Optional. Positive penalties.
        # Corresponds to the JSON property `presencePenalty`
        # @return [Float]
        attr_accessor :presence_penalty
      
        # Optional. Output response mimetype of the generated candidate text. Supported
        # mimetype: - `text/plain`: (default) Text output. - `application/json`: JSON
        # response in the candidates. The model needs to be prompted to output the
        # appropriate response type, otherwise the behavior is undefined. This is a
        # preview feature.
        # Corresponds to the JSON property `responseMimeType`
        # @return [String]
        attr_accessor :response_mime_type
      
        # Optional. Stop sequences.
        # Corresponds to the JSON property `stopSequences`
        # @return [Array<String>]
        attr_accessor :stop_sequences
      
        # Optional. Controls the randomness of predictions.
        # Corresponds to the JSON property `temperature`
        # @return [Float]
        attr_accessor :temperature
      
        # Optional. If specified, top-k sampling will be used.
        # Corresponds to the JSON property `topK`
        # @return [Float]
        attr_accessor :top_k
      
        # Optional. If specified, nucleus sampling will be used.
        # Corresponds to the JSON property `topP`
        # @return [Float]
        attr_accessor :top_p
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidate_count = args[:candidate_count] if args.key?(:candidate_count)
          @frequency_penalty = args[:frequency_penalty] if args.key?(:frequency_penalty)
          @max_output_tokens = args[:max_output_tokens] if args.key?(:max_output_tokens)
          @presence_penalty = args[:presence_penalty] if args.key?(:presence_penalty)
          @response_mime_type = args[:response_mime_type] if args.key?(:response_mime_type)
          @stop_sequences = args[:stop_sequences] if args.key?(:stop_sequences)
          @temperature = args[:temperature] if args.key?(:temperature)
          @top_k = args[:top_k] if args.key?(:top_k)
          @top_p = args[:top_p] if args.key?(:top_p)
        end
      end
      
      # Grounding attribution.
      class GroundingAttribution
        include Google::Apis::Core::Hashable
      
        # Optional. Output only. Confidence score of the attribution. Ranges from 0 to 1.
        # 1 is the most confident.
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # Attribution from context retrieved by the retrieval tools.
        # Corresponds to the JSON property `retrievedContext`
        # @return [Google::Apis::FirebasemlV2beta::RetrievedContext]
        attr_accessor :retrieved_context
      
        # Segment of the content.
        # Corresponds to the JSON property `segment`
        # @return [Google::Apis::FirebasemlV2beta::Segment]
        attr_accessor :segment
      
        # Attribution from the web.
        # Corresponds to the JSON property `web`
        # @return [Google::Apis::FirebasemlV2beta::Web]
        attr_accessor :web
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @retrieved_context = args[:retrieved_context] if args.key?(:retrieved_context)
          @segment = args[:segment] if args.key?(:segment)
          @web = args[:web] if args.key?(:web)
        end
      end
      
      # Metadata returned to client when grounding is enabled.
      class GroundingMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. List of grounding attributions.
        # Corresponds to the JSON property `groundingAttributions`
        # @return [Array<Google::Apis::FirebasemlV2beta::GroundingAttribution>]
        attr_accessor :grounding_attributions
      
        # Optional. Queries executed by the retrieval tools.
        # Corresponds to the JSON property `retrievalQueries`
        # @return [Array<String>]
        attr_accessor :retrieval_queries
      
        # Optional. Web search queries for the following-up web search.
        # Corresponds to the JSON property `webSearchQueries`
        # @return [Array<String>]
        attr_accessor :web_search_queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grounding_attributions = args[:grounding_attributions] if args.key?(:grounding_attributions)
          @retrieval_queries = args[:retrieval_queries] if args.key?(:retrieval_queries)
          @web_search_queries = args[:web_search_queries] if args.key?(:web_search_queries)
        end
      end
      
      # This is returned in the longrunning operations for create/update.
      class ModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `basicOperationStatus`
        # @return [String]
        attr_accessor :basic_operation_status
      
        # The name of the model we are creating/updating The name must have the form `
        # projects/`project_id`/models/`model_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_operation_status = args[:basic_operation_status] if args.key?(:basic_operation_status)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A datatype containing media that is part of a multi-part `Content` message. A `
      # Part` consists of data which has an associated datatype. A `Part` can only
      # contain one of the accepted types in `Part.data`. A `Part` must have a fixed
      # IANA MIME type identifying the type and subtype of the media if `inline_data`
      # or `file_data` field is filled with raw bytes.
      class Part
        include Google::Apis::Core::Hashable
      
        # URI based data.
        # Corresponds to the JSON property `fileData`
        # @return [Google::Apis::FirebasemlV2beta::FileData]
        attr_accessor :file_data
      
        # A predicted [FunctionCall] returned from the model that contains a string
        # representing the [FunctionDeclaration.name] and a structured JSON object
        # containing the parameters and their values.
        # Corresponds to the JSON property `functionCall`
        # @return [Google::Apis::FirebasemlV2beta::FunctionCall]
        attr_accessor :function_call
      
        # The result output from a [FunctionCall] that contains a string representing
        # the [FunctionDeclaration.name] and a structured JSON object containing any
        # output from the function is used as context to the model. This should contain
        # the result of a [FunctionCall] made based on model prediction.
        # Corresponds to the JSON property `functionResponse`
        # @return [Google::Apis::FirebasemlV2beta::FunctionResponse]
        attr_accessor :function_response
      
        # Content blob. It's preferred to send as text directly rather than raw bytes.
        # Corresponds to the JSON property `inlineData`
        # @return [Google::Apis::FirebasemlV2beta::Blob]
        attr_accessor :inline_data
      
        # Optional. Text part (can be code).
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Metadata describes the input video content.
        # Corresponds to the JSON property `videoMetadata`
        # @return [Google::Apis::FirebasemlV2beta::VideoMetadata]
        attr_accessor :video_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_data = args[:file_data] if args.key?(:file_data)
          @function_call = args[:function_call] if args.key?(:function_call)
          @function_response = args[:function_response] if args.key?(:function_response)
          @inline_data = args[:inline_data] if args.key?(:inline_data)
          @text = args[:text] if args.key?(:text)
          @video_metadata = args[:video_metadata] if args.key?(:video_metadata)
        end
      end
      
      # Content filter results for a prompt sent in the request.
      class PromptFeedback
        include Google::Apis::Core::Hashable
      
        # Output only. Blocked reason.
        # Corresponds to the JSON property `blockReason`
        # @return [String]
        attr_accessor :block_reason
      
        # Output only. A readable block reason message.
        # Corresponds to the JSON property `blockReasonMessage`
        # @return [String]
        attr_accessor :block_reason_message
      
        # Output only. Safety ratings.
        # Corresponds to the JSON property `safetyRatings`
        # @return [Array<Google::Apis::FirebasemlV2beta::SafetyRating>]
        attr_accessor :safety_ratings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @block_reason = args[:block_reason] if args.key?(:block_reason)
          @block_reason_message = args[:block_reason_message] if args.key?(:block_reason_message)
          @safety_ratings = args[:safety_ratings] if args.key?(:safety_ratings)
        end
      end
      
      # Defines a retrieval tool that model can call to access external knowledge.
      class Retrieval
        include Google::Apis::Core::Hashable
      
        # Optional. Disable using the result from this tool in detecting grounding
        # attribution. This does not affect how the result is given to the model for
        # generation.
        # Corresponds to the JSON property `disableAttribution`
        # @return [Boolean]
        attr_accessor :disable_attribution
        alias_method :disable_attribution?, :disable_attribution
      
        # Retrieve from Vertex AI Search datastore for grounding. See https://cloud.
        # google.com/vertex-ai-search-and-conversation
        # Corresponds to the JSON property `vertexAiSearch`
        # @return [Google::Apis::FirebasemlV2beta::VertexAiSearch]
        attr_accessor :vertex_ai_search
      
        # Retrieve from Vertex RAG Store for grounding.
        # Corresponds to the JSON property `vertexRagStore`
        # @return [Google::Apis::FirebasemlV2beta::VertexRagStore]
        attr_accessor :vertex_rag_store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_attribution = args[:disable_attribution] if args.key?(:disable_attribution)
          @vertex_ai_search = args[:vertex_ai_search] if args.key?(:vertex_ai_search)
          @vertex_rag_store = args[:vertex_rag_store] if args.key?(:vertex_rag_store)
        end
      end
      
      # Attribution from context retrieved by the retrieval tools.
      class RetrievedContext
        include Google::Apis::Core::Hashable
      
        # Output only. Title of the attribution.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. URI reference of the attribution.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Safety rating corresponding to the generated content.
      class SafetyRating
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether the content was filtered out because of this
        # rating.
        # Corresponds to the JSON property `blocked`
        # @return [Boolean]
        attr_accessor :blocked
        alias_method :blocked?, :blocked
      
        # Output only. Harm category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Output only. Harm probability levels in the content.
        # Corresponds to the JSON property `probability`
        # @return [String]
        attr_accessor :probability
      
        # Output only. Harm probability score.
        # Corresponds to the JSON property `probabilityScore`
        # @return [Float]
        attr_accessor :probability_score
      
        # Output only. Harm severity levels in the content.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Output only. Harm severity score.
        # Corresponds to the JSON property `severityScore`
        # @return [Float]
        attr_accessor :severity_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocked = args[:blocked] if args.key?(:blocked)
          @category = args[:category] if args.key?(:category)
          @probability = args[:probability] if args.key?(:probability)
          @probability_score = args[:probability_score] if args.key?(:probability_score)
          @severity = args[:severity] if args.key?(:severity)
          @severity_score = args[:severity_score] if args.key?(:severity_score)
        end
      end
      
      # Safety settings.
      class SafetySetting
        include Google::Apis::Core::Hashable
      
        # Required. Harm category.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Optional. Specify if the threshold is used for probability or severity score.
        # If not specified, the threshold is used for probability score.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Required. The harm block threshold.
        # Corresponds to the JSON property `threshold`
        # @return [String]
        attr_accessor :threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @threshold = args[:threshold] if args.key?(:threshold)
        end
      end
      
      # Schema is used to define the format of input/output data. Represents a select
      # subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#
      # schema). More fields may be added in the future as needed.
      class Schema
        include Google::Apis::Core::Hashable
      
        # Optional. Default value of the data.
        # Corresponds to the JSON property `default`
        # @return [Object]
        attr_accessor :default
      
        # Optional. The description of the data.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Possible values of the element of Type.STRING with enum format. For
        # example we can define an Enum Direction as : `type:STRING, format:enum, enum:["
        # EAST", NORTH", "SOUTH", "WEST"]`
        # Corresponds to the JSON property `enum`
        # @return [Array<String>]
        attr_accessor :enum
      
        # Optional. Example of the object. Will only populated when the object is the
        # root.
        # Corresponds to the JSON property `example`
        # @return [Object]
        attr_accessor :example
      
        # Optional. The format of the data. Supported formats: for NUMBER type: "float",
        # "double" for INTEGER type: "int32", "int64" for STRING type: "email", "byte",
        # etc
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Schema is used to define the format of input/output data. Represents a select
        # subset of an [OpenAPI 3.0 schema object](https://spec.openapis.org/oas/v3.0.3#
        # schema). More fields may be added in the future as needed.
        # Corresponds to the JSON property `items`
        # @return [Google::Apis::FirebasemlV2beta::Schema]
        attr_accessor :items
      
        # Optional. Maximum number of the elements for Type.ARRAY.
        # Corresponds to the JSON property `maxItems`
        # @return [Fixnum]
        attr_accessor :max_items
      
        # Optional. Maximum length of the Type.STRING
        # Corresponds to the JSON property `maxLength`
        # @return [Fixnum]
        attr_accessor :max_length
      
        # Optional. Maximum number of the properties for Type.OBJECT.
        # Corresponds to the JSON property `maxProperties`
        # @return [Fixnum]
        attr_accessor :max_properties
      
        # Optional. Maximum value of the Type.INTEGER and Type.NUMBER
        # Corresponds to the JSON property `maximum`
        # @return [Float]
        attr_accessor :maximum
      
        # Optional. Minimum number of the elements for Type.ARRAY.
        # Corresponds to the JSON property `minItems`
        # @return [Fixnum]
        attr_accessor :min_items
      
        # Optional. SCHEMA FIELDS FOR TYPE STRING Minimum length of the Type.STRING
        # Corresponds to the JSON property `minLength`
        # @return [Fixnum]
        attr_accessor :min_length
      
        # Optional. Minimum number of the properties for Type.OBJECT.
        # Corresponds to the JSON property `minProperties`
        # @return [Fixnum]
        attr_accessor :min_properties
      
        # Optional. SCHEMA FIELDS FOR TYPE INTEGER and NUMBER Minimum value of the Type.
        # INTEGER and Type.NUMBER
        # Corresponds to the JSON property `minimum`
        # @return [Float]
        attr_accessor :minimum
      
        # Optional. Indicates if the value may be null.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Optional. Pattern of the Type.STRING to restrict a string to a regular
        # expression.
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # Optional. SCHEMA FIELDS FOR TYPE OBJECT Properties of Type.OBJECT.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::FirebasemlV2beta::Schema>]
        attr_accessor :properties
      
        # Optional. Required properties of Type.OBJECT.
        # Corresponds to the JSON property `required`
        # @return [Array<String>]
        attr_accessor :required
      
        # Optional. The title of the Schema.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Optional. The type of the data.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default = args[:default] if args.key?(:default)
          @description = args[:description] if args.key?(:description)
          @enum = args[:enum] if args.key?(:enum)
          @example = args[:example] if args.key?(:example)
          @format = args[:format] if args.key?(:format)
          @items = args[:items] if args.key?(:items)
          @max_items = args[:max_items] if args.key?(:max_items)
          @max_length = args[:max_length] if args.key?(:max_length)
          @max_properties = args[:max_properties] if args.key?(:max_properties)
          @maximum = args[:maximum] if args.key?(:maximum)
          @min_items = args[:min_items] if args.key?(:min_items)
          @min_length = args[:min_length] if args.key?(:min_length)
          @min_properties = args[:min_properties] if args.key?(:min_properties)
          @minimum = args[:minimum] if args.key?(:minimum)
          @nullable = args[:nullable] if args.key?(:nullable)
          @pattern = args[:pattern] if args.key?(:pattern)
          @properties = args[:properties] if args.key?(:properties)
          @required = args[:required] if args.key?(:required)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Segment of the content.
      class Segment
        include Google::Apis::Core::Hashable
      
        # Output only. End index in the given Part, measured in bytes. Offset from the
        # start of the Part, exclusive, starting at zero.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # Output only. The index of a Part object within its parent Content object.
        # Corresponds to the JSON property `partIndex`
        # @return [Fixnum]
        attr_accessor :part_index
      
        # Output only. Start index in the given Part, measured in bytes. Offset from the
        # start of the Part, inclusive, starting at zero.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @part_index = args[:part_index] if args.key?(:part_index)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # Tool details that the model may use to generate response. A `Tool` is a piece
      # of code that enables the system to interact with external systems to perform
      # an action, or set of actions, outside of knowledge and scope of the model. A
      # Tool object should contain exactly one type of Tool (e.g FunctionDeclaration,
      # Retrieval or GoogleSearchRetrieval).
      class Tool
        include Google::Apis::Core::Hashable
      
        # Optional. Function tool type. One or more function declarations to be passed
        # to the model along with the current user query. Model may decide to call a
        # subset of these functions by populating FunctionCall in the response. User
        # should provide a FunctionResponse for each function call in the next turn.
        # Based on the function responses, Model will generate the final response back
        # to the user. Maximum 64 function declarations can be provided.
        # Corresponds to the JSON property `functionDeclarations`
        # @return [Array<Google::Apis::FirebasemlV2beta::FunctionDeclaration>]
        attr_accessor :function_declarations
      
        # Defines a retrieval tool that model can call to access external knowledge.
        # Corresponds to the JSON property `retrieval`
        # @return [Google::Apis::FirebasemlV2beta::Retrieval]
        attr_accessor :retrieval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_declarations = args[:function_declarations] if args.key?(:function_declarations)
          @retrieval = args[:retrieval] if args.key?(:retrieval)
        end
      end
      
      # Tool config. This config is shared for all tools provided in the request.
      class ToolConfig
        include Google::Apis::Core::Hashable
      
        # Function calling config.
        # Corresponds to the JSON property `functionCallingConfig`
        # @return [Google::Apis::FirebasemlV2beta::FunctionCallingConfig]
        attr_accessor :function_calling_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_calling_config = args[:function_calling_config] if args.key?(:function_calling_config)
        end
      end
      
      # Usage metadata about response(s).
      class UsageMetadata
        include Google::Apis::Core::Hashable
      
        # Number of tokens in the response(s).
        # Corresponds to the JSON property `candidatesTokenCount`
        # @return [Fixnum]
        attr_accessor :candidates_token_count
      
        # Number of tokens in the request.
        # Corresponds to the JSON property `promptTokenCount`
        # @return [Fixnum]
        attr_accessor :prompt_token_count
      
        # 
        # Corresponds to the JSON property `totalTokenCount`
        # @return [Fixnum]
        attr_accessor :total_token_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates_token_count = args[:candidates_token_count] if args.key?(:candidates_token_count)
          @prompt_token_count = args[:prompt_token_count] if args.key?(:prompt_token_count)
          @total_token_count = args[:total_token_count] if args.key?(:total_token_count)
        end
      end
      
      # Retrieve from Vertex AI Search datastore for grounding. See https://cloud.
      # google.com/vertex-ai-search-and-conversation
      class VertexAiSearch
        include Google::Apis::Core::Hashable
      
        # Required. Fully-qualified Vertex AI Search's datastore resource ID. Format: `
        # projects/`project`/locations/`location`/collections/`collection`/dataStores/`
        # dataStore``
        # Corresponds to the JSON property `datastore`
        # @return [String]
        attr_accessor :datastore
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datastore = args[:datastore] if args.key?(:datastore)
        end
      end
      
      # Retrieve from Vertex RAG Store for grounding.
      class VertexRagStore
        include Google::Apis::Core::Hashable
      
        # Required. Vertex RAG Store corpus resource name: `projects/`project`/locations/
        # `location`/ragCorpora/`ragCorpus`` Currently only one corpus is allowed. In
        # the future we may open up multiple corpora support. However, they should be
        # from the same project and location.
        # Corresponds to the JSON property `ragCorpora`
        # @return [Array<String>]
        attr_accessor :rag_corpora
      
        # Optional. Number of top k results to return from the selected corpora.
        # Corresponds to the JSON property `similarityTopK`
        # @return [Fixnum]
        attr_accessor :similarity_top_k
      
        # Optional. Only return results with vector distance smaller than the threshold.
        # Corresponds to the JSON property `vectorDistanceThreshold`
        # @return [Float]
        attr_accessor :vector_distance_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rag_corpora = args[:rag_corpora] if args.key?(:rag_corpora)
          @similarity_top_k = args[:similarity_top_k] if args.key?(:similarity_top_k)
          @vector_distance_threshold = args[:vector_distance_threshold] if args.key?(:vector_distance_threshold)
        end
      end
      
      # Metadata describes the input video content.
      class VideoMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The end offset of the video.
        # Corresponds to the JSON property `endOffset`
        # @return [String]
        attr_accessor :end_offset
      
        # Optional. The start offset of the video.
        # Corresponds to the JSON property `startOffset`
        # @return [String]
        attr_accessor :start_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
        end
      end
      
      # Attribution from the web.
      class Web
        include Google::Apis::Core::Hashable
      
        # Output only. Title of the attribution.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. URI reference of the attribution.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
    end
  end
end
