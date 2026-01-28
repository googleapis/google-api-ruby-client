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
      
      # The generic reusable api auth config. Deprecated. Please use AuthConfig (
      # google/cloud/aiplatform/master/auth.proto) instead.
      class GoogleCloudAiplatformV1beta1ApiAuth
        include Google::Apis::Core::Hashable
      
        # The API secret.
        # Corresponds to the JSON property `apiKeyConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig]
        attr_accessor :api_key_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_config = args[:api_key_config] if args.key?(:api_key_config)
        end
      end
      
      # The API secret.
      class GoogleCloudAiplatformV1beta1ApiAuthApiKeyConfig
        include Google::Apis::Core::Hashable
      
        # Required. The SecretManager secret version resource name storing API key. e.g.
        # projects/`project`/secrets/`secret`/versions/`version`
        # Corresponds to the JSON property `apiKeySecretVersion`
        # @return [String]
        attr_accessor :api_key_secret_version
      
        # The API key string. Either this or `api_key_secret_version` must be set.
        # Corresponds to the JSON property `apiKeyString`
        # @return [String]
        attr_accessor :api_key_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_secret_version = args[:api_key_secret_version] if args.key?(:api_key_secret_version)
          @api_key_string = args[:api_key_string] if args.key?(:api_key_string)
        end
      end
      
      # Auth configuration to run the extension.
      class GoogleCloudAiplatformV1beta1AuthConfig
        include Google::Apis::Core::Hashable
      
        # Config for authentication with API key.
        # Corresponds to the JSON property `apiKeyConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig]
        attr_accessor :api_key_config
      
        # Type of auth scheme.
        # Corresponds to the JSON property `authType`
        # @return [String]
        attr_accessor :auth_type
      
        # Config for Google Service Account Authentication.
        # Corresponds to the JSON property `googleServiceAccountConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig]
        attr_accessor :google_service_account_config
      
        # Config for HTTP Basic Authentication.
        # Corresponds to the JSON property `httpBasicAuthConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig]
        attr_accessor :http_basic_auth_config
      
        # Config for user oauth.
        # Corresponds to the JSON property `oauthConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigOauthConfig]
        attr_accessor :oauth_config
      
        # Config for user OIDC auth.
        # Corresponds to the JSON property `oidcConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfigOidcConfig]
        attr_accessor :oidc_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_config = args[:api_key_config] if args.key?(:api_key_config)
          @auth_type = args[:auth_type] if args.key?(:auth_type)
          @google_service_account_config = args[:google_service_account_config] if args.key?(:google_service_account_config)
          @http_basic_auth_config = args[:http_basic_auth_config] if args.key?(:http_basic_auth_config)
          @oauth_config = args[:oauth_config] if args.key?(:oauth_config)
          @oidc_config = args[:oidc_config] if args.key?(:oidc_config)
        end
      end
      
      # Config for authentication with API key.
      class GoogleCloudAiplatformV1beta1AuthConfigApiKeyConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the SecretManager secret version resource storing the
        # API key. Format: `projects/`project`/secrets/`secrete`/versions/`version`` -
        # If both `api_key_secret` and `api_key_string` are specified, this field takes
        # precedence over `api_key_string`. - If specified, the `secretmanager.versions.
        # access` permission should be granted to Vertex AI Extension Service Agent (
        # https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents)
        # on the specified resource.
        # Corresponds to the JSON property `apiKeySecret`
        # @return [String]
        attr_accessor :api_key_secret
      
        # Optional. The API key to be used in the request directly.
        # Corresponds to the JSON property `apiKeyString`
        # @return [String]
        attr_accessor :api_key_string
      
        # Optional. The location of the API key.
        # Corresponds to the JSON property `httpElementLocation`
        # @return [String]
        attr_accessor :http_element_location
      
        # Optional. The parameter name of the API key. E.g. If the API request is "https:
        # //example.com/act?api_key=", "api_key" would be the parameter name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key_secret = args[:api_key_secret] if args.key?(:api_key_secret)
          @api_key_string = args[:api_key_string] if args.key?(:api_key_string)
          @http_element_location = args[:http_element_location] if args.key?(:http_element_location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Config for Google Service Account Authentication.
      class GoogleCloudAiplatformV1beta1AuthConfigGoogleServiceAccountConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The service account that the extension execution service runs as. -
        # If the service account is specified, the `iam.serviceAccounts.getAccessToken`
        # permission should be granted to Vertex AI Extension Service Agent (https://
        # cloud.google.com/vertex-ai/docs/general/access-control#service-agents) on the
        # specified service account. - If not specified, the Vertex AI Extension Service
        # Agent will be used to execute the Extension.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Config for HTTP Basic Authentication.
      class GoogleCloudAiplatformV1beta1AuthConfigHttpBasicAuthConfig
        include Google::Apis::Core::Hashable
      
        # Required. The name of the SecretManager secret version resource storing the
        # base64 encoded credentials. Format: `projects/`project`/secrets/`secrete`/
        # versions/`version`` - If specified, the `secretmanager.versions.access`
        # permission should be granted to Vertex AI Extension Service Agent (https://
        # cloud.google.com/vertex-ai/docs/general/access-control#service-agents) on the
        # specified resource.
        # Corresponds to the JSON property `credentialSecret`
        # @return [String]
        attr_accessor :credential_secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credential_secret = args[:credential_secret] if args.key?(:credential_secret)
        end
      end
      
      # Config for user oauth.
      class GoogleCloudAiplatformV1beta1AuthConfigOauthConfig
        include Google::Apis::Core::Hashable
      
        # Access token for extension endpoint. Only used to propagate token from [[
        # ExecuteExtensionRequest.runtime_auth_config]] at request time.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        # The service account used to generate access tokens for executing the Extension.
        # - If the service account is specified, the `iam.serviceAccounts.
        # getAccessToken` permission should be granted to Vertex AI Extension Service
        # Agent (https://cloud.google.com/vertex-ai/docs/general/access-control#service-
        # agents) on the provided service account.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Config for user OIDC auth.
      class GoogleCloudAiplatformV1beta1AuthConfigOidcConfig
        include Google::Apis::Core::Hashable
      
        # OpenID Connect formatted ID token for extension endpoint. Only used to
        # propagate token from [[ExecuteExtensionRequest.runtime_auth_config]] at
        # request time.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The service account used to generate an OpenID Connect (OIDC)-compatible JWT
        # token signed by the Google OIDC Provider (accounts.google.com) for extension
        # endpoint (https://cloud.google.com/iam/docs/create-short-lived-credentials-
        # direct#sa-credentials-oidc). - The audience for the token will be set to the
        # URL in the server url defined in the OpenApi spec. - If the service account is
        # provided, the service account should grant `iam.serviceAccounts.getOpenIdToken`
        # permission to Vertex AI Extension Service Agent (https://cloud.google.com/
        # vertex-ai/docs/general/access-control#service-agents).
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] if args.key?(:id_token)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # A content blob. A Blob contains data of a specific media type. It is used to
      # represent images, audio, and video.
      class GoogleCloudAiplatformV1beta1Blob
        include Google::Apis::Core::Hashable
      
        # Required. The raw bytes of the data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Optional. The display name of the blob. Used to provide a label or filename to
        # distinguish blobs. This field is only returned in `PromptMessage` for prompt
        # management. It is used in the Gemini calls only when server-side tools (`
        # code_execution`, `google_search`, and `url_context`) are enabled.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A response candidate generated from the model.
      class GoogleCloudAiplatformV1beta1Candidate
        include Google::Apis::Core::Hashable
      
        # Output only. The average log probability of the tokens in this candidate. This
        # is a length-normalized score that can be used to compare the quality of
        # candidates of different lengths. A higher average log probability suggests a
        # more confident and coherent response.
        # Corresponds to the JSON property `avgLogprobs`
        # @return [Float]
        attr_accessor :avg_logprobs
      
        # A collection of citations that apply to a piece of generated content.
        # Corresponds to the JSON property `citationMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1CitationMetadata]
        attr_accessor :citation_metadata
      
        # The structured data content of a message. A Content message contains a `role`
        # field, which indicates the producer of the content, and a `parts` field, which
        # contains the multi-part data of the message.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content]
        attr_accessor :content
      
        # Output only. Describes the reason the model stopped generating tokens in more
        # detail. This field is returned only when `finish_reason` is set.
        # Corresponds to the JSON property `finishMessage`
        # @return [String]
        attr_accessor :finish_message
      
        # Output only. The reason why the model stopped generating tokens. If empty, the
        # model has not stopped generating.
        # Corresponds to the JSON property `finishReason`
        # @return [String]
        attr_accessor :finish_reason
      
        # Information about the sources that support the content of a response. When
        # grounding is enabled, the model returns citations for claims in the response.
        # This object contains the retrieved sources.
        # Corresponds to the JSON property `groundingMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingMetadata]
        attr_accessor :grounding_metadata
      
        # Output only. The 0-based index of this candidate in the list of generated
        # responses. This is useful for distinguishing between multiple candidates when `
        # candidate_count` > 1.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The log probabilities of the tokens generated by the model. This is useful for
        # understanding the model's confidence in its predictions and for debugging. For
        # example, you can use log probabilities to identify when the model is making a
        # less confident prediction or to explore alternative responses that the model
        # considered. A low log probability can also indicate that the model is "
        # hallucinating" or generating factually incorrect information.
        # Corresponds to the JSON property `logprobsResult`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1LogprobsResult]
        attr_accessor :logprobs_result
      
        # Output only. A list of ratings for the safety of a response candidate. There
        # is at most one rating per category.
        # Corresponds to the JSON property `safetyRatings`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetyRating>]
        attr_accessor :safety_ratings
      
        # Metadata returned when the model uses the `url_context` tool to get
        # information from a user-provided URL.
        # Corresponds to the JSON property `urlContextMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1UrlContextMetadata]
        attr_accessor :url_context_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avg_logprobs = args[:avg_logprobs] if args.key?(:avg_logprobs)
          @citation_metadata = args[:citation_metadata] if args.key?(:citation_metadata)
          @content = args[:content] if args.key?(:content)
          @finish_message = args[:finish_message] if args.key?(:finish_message)
          @finish_reason = args[:finish_reason] if args.key?(:finish_reason)
          @grounding_metadata = args[:grounding_metadata] if args.key?(:grounding_metadata)
          @index = args[:index] if args.key?(:index)
          @logprobs_result = args[:logprobs_result] if args.key?(:logprobs_result)
          @safety_ratings = args[:safety_ratings] if args.key?(:safety_ratings)
          @url_context_metadata = args[:url_context_metadata] if args.key?(:url_context_metadata)
        end
      end
      
      # A citation for a piece of generatedcontent.
      class GoogleCloudAiplatformV1beta1Citation
        include Google::Apis::Core::Hashable
      
        # Output only. The end index of the citation in the content.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # Output only. The license of the source of the citation.
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
      
        # Output only. The start index of the citation in the content.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # Output only. The title of the source of the citation.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. The URI of the source of the citation.
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
      
      # A collection of citations that apply to a piece of generated content.
      class GoogleCloudAiplatformV1beta1CitationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. A list of citations for the content.
        # Corresponds to the JSON property `citations`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Citation>]
        attr_accessor :citations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @citations = args[:citations] if args.key?(:citations)
        end
      end
      
      # Result of executing the [ExecutableCode]. Only generated when using the [
      # CodeExecution] tool, and always follows a `part` containing the [
      # ExecutableCode].
      class GoogleCloudAiplatformV1beta1CodeExecutionResult
        include Google::Apis::Core::Hashable
      
        # Required. Outcome of the code execution.
        # Corresponds to the JSON property `outcome`
        # @return [String]
        attr_accessor :outcome
      
        # Optional. Contains stdout when code execution is successful, stderr or other
        # description otherwise.
        # Corresponds to the JSON property `output`
        # @return [String]
        attr_accessor :output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @outcome = args[:outcome] if args.key?(:outcome)
          @output = args[:output] if args.key?(:output)
        end
      end
      
      # The structured data content of a message. A Content message contains a `role`
      # field, which indicates the producer of the content, and a `parts` field, which
      # contains the multi-part data of the message.
      class GoogleCloudAiplatformV1beta1Content
        include Google::Apis::Core::Hashable
      
        # Required. A list of Part objects that make up a single message. Parts of a
        # message can have different MIME types. A Content message must have at least
        # one Part.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Part>]
        attr_accessor :parts
      
        # Optional. The producer of the content. Must be either 'user' or 'model'. If
        # not set, the service will default to 'user'.
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
      class GoogleCloudAiplatformV1beta1CountTokensRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Input content.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content>]
        attr_accessor :contents
      
        # Configuration for content generation. This message contains all the parameters
        # that control how the model generates content. It allows you to influence the
        # randomness, length, and structure of the output.
        # Corresponds to the JSON property `generationConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfig]
        attr_accessor :generation_config
      
        # Optional. The instances that are the input to token counting call. Schema is
        # identical to the prediction schema of the underlying model.
        # Corresponds to the JSON property `instances`
        # @return [Array<Object>]
        attr_accessor :instances
      
        # Optional. The name of the publisher model requested to serve the prediction.
        # Format: `projects/`project`/locations/`location`/publishers/*/models/*`
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # The structured data content of a message. A Content message contains a `role`
        # field, which indicates the producer of the content, and a `parts` field, which
        # contains the multi-part data of the message.
        # Corresponds to the JSON property `systemInstruction`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content]
        attr_accessor :system_instruction
      
        # Optional. A list of `Tools` the model may use to generate the next response. A
        # `Tool` is a piece of code that enables the system to interact with external
        # systems to perform an action, or set of actions, outside of knowledge and
        # scope of the model.
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Tool>]
        attr_accessor :tools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @generation_config = args[:generation_config] if args.key?(:generation_config)
          @instances = args[:instances] if args.key?(:instances)
          @model = args[:model] if args.key?(:model)
          @system_instruction = args[:system_instruction] if args.key?(:system_instruction)
          @tools = args[:tools] if args.key?(:tools)
        end
      end
      
      # Response message for PredictionService.CountTokens.
      class GoogleCloudAiplatformV1beta1CountTokensResponse
        include Google::Apis::Core::Hashable
      
        # Output only. List of modalities that were processed in the request input.
        # Corresponds to the JSON property `promptTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :prompt_tokens_details
      
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
          @prompt_tokens_details = args[:prompt_tokens_details] if args.key?(:prompt_tokens_details)
          @total_billable_characters = args[:total_billable_characters] if args.key?(:total_billable_characters)
          @total_tokens = args[:total_tokens] if args.key?(:total_tokens)
        end
      end
      
      # Describes the options to customize dynamic retrieval.
      class GoogleCloudAiplatformV1beta1DynamicRetrievalConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The threshold to be used in dynamic retrieval. If not set, a system
        # default value is used.
        # Corresponds to the JSON property `dynamicThreshold`
        # @return [Float]
        attr_accessor :dynamic_threshold
      
        # The mode of the predictor to be used in dynamic retrieval.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_threshold = args[:dynamic_threshold] if args.key?(:dynamic_threshold)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Tool to search public web data, powered by Vertex AI Search and Sec4
      # compliance.
      class GoogleCloudAiplatformV1beta1EnterpriseWebSearch
        include Google::Apis::Core::Hashable
      
        # Optional. Sites with confidence level chosen & above this value will be
        # blocked from the search results.
        # Corresponds to the JSON property `blockingConfidence`
        # @return [String]
        attr_accessor :blocking_confidence
      
        # Optional. List of domains to be excluded from the search results. The default
        # limit is 2000 domains.
        # Corresponds to the JSON property `excludeDomains`
        # @return [Array<String>]
        attr_accessor :exclude_domains
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocking_confidence = args[:blocking_confidence] if args.key?(:blocking_confidence)
          @exclude_domains = args[:exclude_domains] if args.key?(:exclude_domains)
        end
      end
      
      # Code generated by the model that is meant to be executed, and the result
      # returned to the model. Generated when using the [CodeExecution] tool, in which
      # the code will be automatically executed, and a corresponding [
      # CodeExecutionResult] will also be generated.
      class GoogleCloudAiplatformV1beta1ExecutableCode
        include Google::Apis::Core::Hashable
      
        # Required. The code to be executed.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Required. Programming language of the `code`.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @language = args[:language] if args.key?(:language)
        end
      end
      
      # Retrieve from data source powered by external API for grounding. The external
      # API is not owned by Google, but need to follow the pre-defined API spec.
      class GoogleCloudAiplatformV1beta1ExternalApi
        include Google::Apis::Core::Hashable
      
        # The generic reusable api auth config. Deprecated. Please use AuthConfig (
        # google/cloud/aiplatform/master/auth.proto) instead.
        # Corresponds to the JSON property `apiAuth`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ApiAuth]
        attr_accessor :api_auth
      
        # The API spec that the external API implements.
        # Corresponds to the JSON property `apiSpec`
        # @return [String]
        attr_accessor :api_spec
      
        # Auth configuration to run the extension.
        # Corresponds to the JSON property `authConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1AuthConfig]
        attr_accessor :auth_config
      
        # The search parameters to use for the ELASTIC_SEARCH spec.
        # Corresponds to the JSON property `elasticSearchParams`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams]
        attr_accessor :elastic_search_params
      
        # The endpoint of the external API. The system will call the API at this
        # endpoint to retrieve the data for grounding. Example: https://acme.com:443/
        # search
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # The search parameters to use for SIMPLE_SEARCH spec.
        # Corresponds to the JSON property `simpleSearchParams`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams]
        attr_accessor :simple_search_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_auth = args[:api_auth] if args.key?(:api_auth)
          @api_spec = args[:api_spec] if args.key?(:api_spec)
          @auth_config = args[:auth_config] if args.key?(:auth_config)
          @elastic_search_params = args[:elastic_search_params] if args.key?(:elastic_search_params)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @simple_search_params = args[:simple_search_params] if args.key?(:simple_search_params)
        end
      end
      
      # The search parameters to use for the ELASTIC_SEARCH spec.
      class GoogleCloudAiplatformV1beta1ExternalApiElasticSearchParams
        include Google::Apis::Core::Hashable
      
        # The ElasticSearch index to use.
        # Corresponds to the JSON property `index`
        # @return [String]
        attr_accessor :index
      
        # Optional. Number of hits (chunks) to request. When specified, it is passed to
        # Elasticsearch as the `num_hits` param.
        # Corresponds to the JSON property `numHits`
        # @return [Fixnum]
        attr_accessor :num_hits
      
        # The ElasticSearch search template to use.
        # Corresponds to the JSON property `searchTemplate`
        # @return [String]
        attr_accessor :search_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index = args[:index] if args.key?(:index)
          @num_hits = args[:num_hits] if args.key?(:num_hits)
          @search_template = args[:search_template] if args.key?(:search_template)
        end
      end
      
      # The search parameters to use for SIMPLE_SEARCH spec.
      class GoogleCloudAiplatformV1beta1ExternalApiSimpleSearchParams
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # URI-based data. A FileData message contains a URI pointing to data of a
      # specific media type. It is used to represent images, audio, and video stored
      # in Google Cloud Storage.
      class GoogleCloudAiplatformV1beta1FileData
        include Google::Apis::Core::Hashable
      
        # Optional. The display name of the file. Used to provide a label or filename to
        # distinguish files. This field is only returned in `PromptMessage` for prompt
        # management. It is used in the Gemini calls only when server side tools (`
        # code_execution`, `google_search`, and `url_context`) are enabled.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The URI of the file in Google Cloud Storage.
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @file_uri = args[:file_uri] if args.key?(:file_uri)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A predicted [FunctionCall] returned from the model that contains a string
      # representing the [FunctionDeclaration.name] and a structured JSON object
      # containing the parameters and their values.
      class GoogleCloudAiplatformV1beta1FunctionCall
        include Google::Apis::Core::Hashable
      
        # Optional. The function parameters and values in JSON object format. See [
        # FunctionDeclaration.parameters] for parameter details.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,Object>]
        attr_accessor :args
      
        # Optional. The unique id of the function call. If populated, the client to
        # execute the `function_call` and return the response with the matching `id`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. The name of the function to call. Matches [FunctionDeclaration.name].
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The partial argument value of the function call. If provided,
        # represents the arguments/fields that are streamed incrementally.
        # Corresponds to the JSON property `partialArgs`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1PartialArg>]
        attr_accessor :partial_args
      
        # Optional. Whether this is the last part of the FunctionCall. If true, another
        # partial message for the current FunctionCall is expected to follow.
        # Corresponds to the JSON property `willContinue`
        # @return [Boolean]
        attr_accessor :will_continue
        alias_method :will_continue?, :will_continue
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @partial_args = args[:partial_args] if args.key?(:partial_args)
          @will_continue = args[:will_continue] if args.key?(:will_continue)
        end
      end
      
      # Function calling config.
      class GoogleCloudAiplatformV1beta1FunctionCallingConfig
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
      
        # Optional. When set to true, arguments of a single function call will be
        # streamed out in multiple parts/contents/responses. Partial parameter results
        # will be returned in the [FunctionCall.partial_args] field.
        # Corresponds to the JSON property `streamFunctionCallArguments`
        # @return [Boolean]
        attr_accessor :stream_function_call_arguments
        alias_method :stream_function_call_arguments?, :stream_function_call_arguments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_function_names = args[:allowed_function_names] if args.key?(:allowed_function_names)
          @mode = args[:mode] if args.key?(:mode)
          @stream_function_call_arguments = args[:stream_function_call_arguments] if args.key?(:stream_function_call_arguments)
        end
      end
      
      # Structured representation of a function declaration as defined by the [OpenAPI
      # 3.0 specification](https://spec.openapis.org/oas/v3.0.3). Included in this
      # declaration are the function name, description, parameters and response type.
      # This FunctionDeclaration is a representation of a block of code that can be
      # used as a `Tool` by the model and executed by the client.
      class GoogleCloudAiplatformV1beta1FunctionDeclaration
        include Google::Apis::Core::Hashable
      
        # Optional. Description and purpose of the function. Model uses it to decide how
        # and whether to call the function.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name of the function to call. Must start with a letter or an
        # underscore. Must be a-z, A-Z, 0-9, or contain underscores, dots, colons and
        # dashes, with a maximum length of 64.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines the schema of input and output data. This is a subset of the [OpenAPI
        # 3.0 Schema Object](https://spec.openapis.org/oas/v3.0.3#schema-object).
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema]
        attr_accessor :parameters
      
        # Optional. Describes the parameters to the function in JSON Schema format. The
        # schema must describe an object where the properties are the parameters to the
        # function. For example: ``` ` "type": "object", "properties": ` "name": ` "type"
        # : "string" `, "age": ` "type": "integer" ` `, "additionalProperties": false, "
        # required": ["name", "age"], "propertyOrdering": ["name", "age"] ` ``` This
        # field is mutually exclusive with `parameters`.
        # Corresponds to the JSON property `parametersJsonSchema`
        # @return [Object]
        attr_accessor :parameters_json_schema
      
        # Defines the schema of input and output data. This is a subset of the [OpenAPI
        # 3.0 Schema Object](https://spec.openapis.org/oas/v3.0.3#schema-object).
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema]
        attr_accessor :response
      
        # Optional. Describes the output from this function in JSON Schema format. The
        # value specified by the schema is the response value of the function. This
        # field is mutually exclusive with `response`.
        # Corresponds to the JSON property `responseJsonSchema`
        # @return [Object]
        attr_accessor :response_json_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
          @parameters_json_schema = args[:parameters_json_schema] if args.key?(:parameters_json_schema)
          @response = args[:response] if args.key?(:response)
          @response_json_schema = args[:response_json_schema] if args.key?(:response_json_schema)
        end
      end
      
      # The result output from a [FunctionCall] that contains a string representing
      # the [FunctionDeclaration.name] and a structured JSON object containing any
      # output from the function is used as context to the model. This should contain
      # the result of a [FunctionCall] made based on model prediction.
      class GoogleCloudAiplatformV1beta1FunctionResponse
        include Google::Apis::Core::Hashable
      
        # Optional. The id of the function call this response is for. Populated by the
        # client to match the corresponding function call `id`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The name of the function to call. Matches [FunctionDeclaration.name]
        # and [FunctionCall.name].
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Ordered `Parts` that constitute a function response. Parts may have
        # different IANA MIME types.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionResponsePart>]
        attr_accessor :parts
      
        # Required. The function response in JSON object format. Use "output" key to
        # specify function output and "error" key to specify error details (if any). If "
        # output" and "error" keys are not specified, then whole "response" is treated
        # as function output.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @parts = args[:parts] if args.key?(:parts)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Raw media bytes for function response. Text should not be sent as raw bytes,
      # use the 'text' field.
      class GoogleCloudAiplatformV1beta1FunctionResponseBlob
        include Google::Apis::Core::Hashable
      
        # Required. Raw bytes.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Optional. Display name of the blob. Used to provide a label or filename to
        # distinguish blobs. This field is only returned in PromptMessage for prompt
        # management. It is currently used in the Gemini GenerateContent calls only when
        # server side tools (code_execution, google_search, and url_context) are enabled.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # URI based data for function response.
      class GoogleCloudAiplatformV1beta1FunctionResponseFileData
        include Google::Apis::Core::Hashable
      
        # Optional. Display name of the file data. Used to provide a label or filename
        # to distinguish file datas. This field is only returned in PromptMessage for
        # prompt management. It is currently used in the Gemini GenerateContent calls
        # only when server side tools (code_execution, google_search, and url_context)
        # are enabled.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @file_uri = args[:file_uri] if args.key?(:file_uri)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A datatype containing media that is part of a `FunctionResponse` message. A `
      # FunctionResponsePart` consists of data which has an associated datatype. A `
      # FunctionResponsePart` can only contain one of the accepted types in `
      # FunctionResponsePart.data`. A `FunctionResponsePart` must have a fixed IANA
      # MIME type identifying the type and subtype of the media if the `inline_data`
      # field is filled with raw bytes.
      class GoogleCloudAiplatformV1beta1FunctionResponsePart
        include Google::Apis::Core::Hashable
      
        # URI based data for function response.
        # Corresponds to the JSON property `fileData`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionResponseFileData]
        attr_accessor :file_data
      
        # Raw media bytes for function response. Text should not be sent as raw bytes,
        # use the 'text' field.
        # Corresponds to the JSON property `inlineData`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionResponseBlob]
        attr_accessor :inline_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_data = args[:file_data] if args.key?(:file_data)
          @inline_data = args[:inline_data] if args.key?(:inline_data)
        end
      end
      
      # Request message for [PredictionService.GenerateContent].
      class GoogleCloudAiplatformV1beta1GenerateContentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the cached content used as context to serve the
        # prediction. Note: only used in explicit caching, where users can have control
        # over caching (e.g. what content to cache) and enjoy guaranteed cost savings.
        # Format: `projects/`project`/locations/`location`/cachedContents/`cachedContent`
        # `
        # Corresponds to the JSON property `cachedContent`
        # @return [String]
        attr_accessor :cached_content
      
        # Required. The content of the current conversation with the model. For single-
        # turn queries, this is a single instance. For multi-turn queries, this is a
        # repeated field that contains conversation history + latest request.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content>]
        attr_accessor :contents
      
        # Configuration for content generation. This message contains all the parameters
        # that control how the model generates content. It allows you to influence the
        # randomness, length, and structure of the output.
        # Corresponds to the JSON property `generationConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfig]
        attr_accessor :generation_config
      
        # Optional. The labels with user-defined metadata for the request. It is used
        # for billing and reporting only. Label keys and values can be no longer than 63
        # characters (Unicode codepoints) and can only contain lowercase letters,
        # numeric characters, underscores, and dashes. International characters are
        # allowed. Label values are optional. Label keys must start with a letter.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Configuration for Model Armor. Model Armor is a Google Cloud service that
        # provides safety and security filtering for prompts and responses. It helps
        # protect your AI applications from risks such as harmful content, sensitive
        # data leakage, and prompt injection attacks.
        # Corresponds to the JSON property `modelArmorConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModelArmorConfig]
        attr_accessor :model_armor_config
      
        # Optional. Per request settings for blocking unsafe content. Enforced on
        # GenerateContentResponse.candidates.
        # Corresponds to the JSON property `safetySettings`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetySetting>]
        attr_accessor :safety_settings
      
        # The structured data content of a message. A Content message contains a `role`
        # field, which indicates the producer of the content, and a `parts` field, which
        # contains the multi-part data of the message.
        # Corresponds to the JSON property `systemInstruction`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content]
        attr_accessor :system_instruction
      
        # Tool config. This config is shared for all tools provided in the request.
        # Corresponds to the JSON property `toolConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolConfig]
        attr_accessor :tool_config
      
        # Optional. A list of `Tools` the model may use to generate the next response. A
        # `Tool` is a piece of code that enables the system to interact with external
        # systems to perform an action, or set of actions, outside of knowledge and
        # scope of the model.
        # Corresponds to the JSON property `tools`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Tool>]
        attr_accessor :tools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cached_content = args[:cached_content] if args.key?(:cached_content)
          @contents = args[:contents] if args.key?(:contents)
          @generation_config = args[:generation_config] if args.key?(:generation_config)
          @labels = args[:labels] if args.key?(:labels)
          @model_armor_config = args[:model_armor_config] if args.key?(:model_armor_config)
          @safety_settings = args[:safety_settings] if args.key?(:safety_settings)
          @system_instruction = args[:system_instruction] if args.key?(:system_instruction)
          @tool_config = args[:tool_config] if args.key?(:tool_config)
          @tools = args[:tools] if args.key?(:tools)
        end
      end
      
      # Response message for [PredictionService.GenerateContent].
      class GoogleCloudAiplatformV1beta1GenerateContentResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Generated candidates.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Candidate>]
        attr_accessor :candidates
      
        # Output only. Timestamp when the request is made to the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The model version used to generate the response.
        # Corresponds to the JSON property `modelVersion`
        # @return [String]
        attr_accessor :model_version
      
        # Content filter results for a prompt sent in the request. Note: This is sent
        # only in the first stream chunk and only if no candidates were generated due to
        # content violations.
        # Corresponds to the JSON property `promptFeedback`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback]
        attr_accessor :prompt_feedback
      
        # Output only. response_id is used to identify each response. It is the encoding
        # of the event_id.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # Usage metadata about the content generation request and response. This message
        # provides a detailed breakdown of token usage and other relevant metrics.
        # Corresponds to the JSON property `usageMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata]
        attr_accessor :usage_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
          @create_time = args[:create_time] if args.key?(:create_time)
          @model_version = args[:model_version] if args.key?(:model_version)
          @prompt_feedback = args[:prompt_feedback] if args.key?(:prompt_feedback)
          @response_id = args[:response_id] if args.key?(:response_id)
          @usage_metadata = args[:usage_metadata] if args.key?(:usage_metadata)
        end
      end
      
      # Content filter results for a prompt sent in the request. Note: This is sent
      # only in the first stream chunk and only if no candidates were generated due to
      # content violations.
      class GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback
        include Google::Apis::Core::Hashable
      
        # Output only. The reason why the prompt was blocked.
        # Corresponds to the JSON property `blockReason`
        # @return [String]
        attr_accessor :block_reason
      
        # Output only. A readable message that explains the reason why the prompt was
        # blocked.
        # Corresponds to the JSON property `blockReasonMessage`
        # @return [String]
        attr_accessor :block_reason_message
      
        # Output only. A list of safety ratings for the prompt. There is one rating per
        # category.
        # Corresponds to the JSON property `safetyRatings`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetyRating>]
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
      
      # Usage metadata about the content generation request and response. This message
      # provides a detailed breakdown of token usage and other relevant metrics.
      class GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. A detailed breakdown of the token count for each modality in the
        # cached content.
        # Corresponds to the JSON property `cacheTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :cache_tokens_details
      
        # Output only. The number of tokens in the cached content that was used for this
        # request.
        # Corresponds to the JSON property `cachedContentTokenCount`
        # @return [Fixnum]
        attr_accessor :cached_content_token_count
      
        # The total number of tokens in the generated candidates.
        # Corresponds to the JSON property `candidatesTokenCount`
        # @return [Fixnum]
        attr_accessor :candidates_token_count
      
        # Output only. A detailed breakdown of the token count for each modality in the
        # generated candidates.
        # Corresponds to the JSON property `candidatesTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :candidates_tokens_details
      
        # The total number of tokens in the prompt. This includes any text, images, or
        # other media provided in the request. When `cached_content` is set, this also
        # includes the number of tokens in the cached content.
        # Corresponds to the JSON property `promptTokenCount`
        # @return [Fixnum]
        attr_accessor :prompt_token_count
      
        # Output only. A detailed breakdown of the token count for each modality in the
        # prompt.
        # Corresponds to the JSON property `promptTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :prompt_tokens_details
      
        # Output only. The number of tokens that were part of the model's generated "
        # thoughts" output, if applicable.
        # Corresponds to the JSON property `thoughtsTokenCount`
        # @return [Fixnum]
        attr_accessor :thoughts_token_count
      
        # Output only. The number of tokens in the results from tool executions, which
        # are provided back to the model as input, if applicable.
        # Corresponds to the JSON property `toolUsePromptTokenCount`
        # @return [Fixnum]
        attr_accessor :tool_use_prompt_token_count
      
        # Output only. A detailed breakdown by modality of the token counts from the
        # results of tool executions, which are provided back to the model as input.
        # Corresponds to the JSON property `toolUsePromptTokensDetails`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ModalityTokenCount>]
        attr_accessor :tool_use_prompt_tokens_details
      
        # The total number of tokens for the entire request. This is the sum of `
        # prompt_token_count`, `candidates_token_count`, `tool_use_prompt_token_count`,
        # and `thoughts_token_count`.
        # Corresponds to the JSON property `totalTokenCount`
        # @return [Fixnum]
        attr_accessor :total_token_count
      
        # Output only. The traffic type for this request.
        # Corresponds to the JSON property `trafficType`
        # @return [String]
        attr_accessor :traffic_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_tokens_details = args[:cache_tokens_details] if args.key?(:cache_tokens_details)
          @cached_content_token_count = args[:cached_content_token_count] if args.key?(:cached_content_token_count)
          @candidates_token_count = args[:candidates_token_count] if args.key?(:candidates_token_count)
          @candidates_tokens_details = args[:candidates_tokens_details] if args.key?(:candidates_tokens_details)
          @prompt_token_count = args[:prompt_token_count] if args.key?(:prompt_token_count)
          @prompt_tokens_details = args[:prompt_tokens_details] if args.key?(:prompt_tokens_details)
          @thoughts_token_count = args[:thoughts_token_count] if args.key?(:thoughts_token_count)
          @tool_use_prompt_token_count = args[:tool_use_prompt_token_count] if args.key?(:tool_use_prompt_token_count)
          @tool_use_prompt_tokens_details = args[:tool_use_prompt_tokens_details] if args.key?(:tool_use_prompt_tokens_details)
          @total_token_count = args[:total_token_count] if args.key?(:total_token_count)
          @traffic_type = args[:traffic_type] if args.key?(:traffic_type)
        end
      end
      
      # Configuration for content generation. This message contains all the parameters
      # that control how the model generates content. It allows you to influence the
      # randomness, length, and structure of the output.
      class GoogleCloudAiplatformV1beta1GenerationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If enabled, audio timestamps will be included in the request to the
        # model. This can be useful for synchronizing audio with other modalities in the
        # response.
        # Corresponds to the JSON property `audioTimestamp`
        # @return [Boolean]
        attr_accessor :audio_timestamp
        alias_method :audio_timestamp?, :audio_timestamp
      
        # Optional. The number of candidate responses to generate. A higher `
        # candidate_count` can provide more options to choose from, but it also consumes
        # more resources. This can be useful for generating a variety of responses and
        # selecting the best one.
        # Corresponds to the JSON property `candidateCount`
        # @return [Fixnum]
        attr_accessor :candidate_count
      
        # Optional. If enabled, the model will detect emotions and adapt its responses
        # accordingly. For example, if the model detects that the user is frustrated, it
        # may provide a more empathetic response.
        # Corresponds to the JSON property `enableAffectiveDialog`
        # @return [Boolean]
        attr_accessor :enable_affective_dialog
        alias_method :enable_affective_dialog?, :enable_affective_dialog
      
        # Optional. Penalizes tokens based on their frequency in the generated text. A
        # positive value helps to reduce the repetition of words and phrases. Valid
        # values can range from [-2.0, 2.0].
        # Corresponds to the JSON property `frequencyPenalty`
        # @return [Float]
        attr_accessor :frequency_penalty
      
        # Configuration for image generation. This message allows you to control various
        # aspects of image generation, such as the output format, aspect ratio, and
        # whether the model can generate images of people.
        # Corresponds to the JSON property `imageConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ImageConfig]
        attr_accessor :image_config
      
        # Optional. The number of top log probabilities to return for each token. This
        # can be used to see which other tokens were considered likely candidates for a
        # given position. A higher value will return more options, but it will also
        # increase the size of the response.
        # Corresponds to the JSON property `logprobs`
        # @return [Fixnum]
        attr_accessor :logprobs
      
        # Optional. The maximum number of tokens to generate in the response. A token is
        # approximately four characters. The default value varies by model. This
        # parameter can be used to control the length of the generated text and prevent
        # overly long responses.
        # Corresponds to the JSON property `maxOutputTokens`
        # @return [Fixnum]
        attr_accessor :max_output_tokens
      
        # Optional. The token resolution at which input media content is sampled. This
        # is used to control the trade-off between the quality of the response and the
        # number of tokens used to represent the media. A higher resolution allows the
        # model to perceive more detail, which can lead to a more nuanced response, but
        # it will also use more tokens. This does not affect the image dimensions sent
        # to the model.
        # Corresponds to the JSON property `mediaResolution`
        # @return [String]
        attr_accessor :media_resolution
      
        # Config for model selection.
        # Corresponds to the JSON property `modelConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigModelConfig]
        attr_accessor :model_config
      
        # Optional. Penalizes tokens that have already appeared in the generated text. A
        # positive value encourages the model to generate more diverse and less
        # repetitive text. Valid values can range from [-2.0, 2.0].
        # Corresponds to the JSON property `presencePenalty`
        # @return [Float]
        attr_accessor :presence_penalty
      
        # Optional. When this field is set, response_schema must be omitted and
        # response_mime_type must be set to `application/json`.
        # Corresponds to the JSON property `responseJsonSchema`
        # @return [Object]
        attr_accessor :response_json_schema
      
        # Optional. If set to true, the log probabilities of the output tokens are
        # returned. Log probabilities are the logarithm of the probability of a token
        # appearing in the output. A higher log probability means the token is more
        # likely to be generated. This can be useful for analyzing the model's
        # confidence in its own output and for debugging.
        # Corresponds to the JSON property `responseLogprobs`
        # @return [Boolean]
        attr_accessor :response_logprobs
        alias_method :response_logprobs?, :response_logprobs
      
        # Optional. The IANA standard MIME type of the response. The model will generate
        # output that conforms to this MIME type. Supported values include 'text/plain' (
        # default) and 'application/json'. The model needs to be prompted to output the
        # appropriate response type, otherwise the behavior is undefined. This is a
        # preview feature.
        # Corresponds to the JSON property `responseMimeType`
        # @return [String]
        attr_accessor :response_mime_type
      
        # Optional. The modalities of the response. The model will generate a response
        # that includes all the specified modalities. For example, if this is set to `[
        # TEXT, IMAGE]`, the response will include both text and an image.
        # Corresponds to the JSON property `responseModalities`
        # @return [Array<String>]
        attr_accessor :response_modalities
      
        # Defines the schema of input and output data. This is a subset of the [OpenAPI
        # 3.0 Schema Object](https://spec.openapis.org/oas/v3.0.3#schema-object).
        # Corresponds to the JSON property `responseSchema`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema]
        attr_accessor :response_schema
      
        # The configuration for routing the request to a specific model. This can be
        # used to control which model is used for the generation, either automatically
        # or by specifying a model name.
        # Corresponds to the JSON property `routingConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig]
        attr_accessor :routing_config
      
        # Optional. A seed for the random number generator. By setting a seed, you can
        # make the model's output mostly deterministic. For a given prompt and
        # parameters (like temperature, top_p, etc.), the model will produce the same
        # response every time. However, it's not a guaranteed absolute deterministic
        # behavior. This is different from parameters like `temperature`, which control
        # the *level* of randomness. `seed` ensures that the "random" choices the model
        # makes are the same on every run, making it essential for testing and ensuring
        # reproducible results.
        # Corresponds to the JSON property `seed`
        # @return [Fixnum]
        attr_accessor :seed
      
        # Configuration for speech generation.
        # Corresponds to the JSON property `speechConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SpeechConfig]
        attr_accessor :speech_config
      
        # Optional. A list of character sequences that will stop the model from
        # generating further tokens. If a stop sequence is generated, the output will
        # end at that point. This is useful for controlling the length and structure of
        # the output. For example, you can use ["\n", "###"] to stop generation at a new
        # line or a specific marker.
        # Corresponds to the JSON property `stopSequences`
        # @return [Array<String>]
        attr_accessor :stop_sequences
      
        # Optional. Controls the randomness of the output. A higher temperature results
        # in more creative and diverse responses, while a lower temperature makes the
        # output more predictable and focused. The valid range is (0.0, 2.0].
        # Corresponds to the JSON property `temperature`
        # @return [Float]
        attr_accessor :temperature
      
        # Configuration for the model's thinking features. "Thinking" is a process where
        # the model breaks down a complex task into smaller, manageable steps. This
        # allows the model to reason about the task, plan its approach, and execute the
        # plan to generate a high-quality response.
        # Corresponds to the JSON property `thinkingConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig]
        attr_accessor :thinking_config
      
        # Optional. Specifies the top-k sampling threshold. The model considers only the
        # top k most probable tokens for the next token. This can be useful for
        # generating more coherent and less random text. For example, a `top_k` of 40
        # means the model will choose the next word from the 40 most likely words.
        # Corresponds to the JSON property `topK`
        # @return [Float]
        attr_accessor :top_k
      
        # Optional. Specifies the nucleus sampling threshold. The model considers only
        # the smallest set of tokens whose cumulative probability is at least `top_p`.
        # This helps generate more diverse and less repetitive responses. For example, a
        # `top_p` of 0.9 means the model considers tokens until the cumulative
        # probability of the tokens to select from reaches 0.9. It's recommended to
        # adjust either temperature or `top_p`, but not both.
        # Corresponds to the JSON property `topP`
        # @return [Float]
        attr_accessor :top_p
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_timestamp = args[:audio_timestamp] if args.key?(:audio_timestamp)
          @candidate_count = args[:candidate_count] if args.key?(:candidate_count)
          @enable_affective_dialog = args[:enable_affective_dialog] if args.key?(:enable_affective_dialog)
          @frequency_penalty = args[:frequency_penalty] if args.key?(:frequency_penalty)
          @image_config = args[:image_config] if args.key?(:image_config)
          @logprobs = args[:logprobs] if args.key?(:logprobs)
          @max_output_tokens = args[:max_output_tokens] if args.key?(:max_output_tokens)
          @media_resolution = args[:media_resolution] if args.key?(:media_resolution)
          @model_config = args[:model_config] if args.key?(:model_config)
          @presence_penalty = args[:presence_penalty] if args.key?(:presence_penalty)
          @response_json_schema = args[:response_json_schema] if args.key?(:response_json_schema)
          @response_logprobs = args[:response_logprobs] if args.key?(:response_logprobs)
          @response_mime_type = args[:response_mime_type] if args.key?(:response_mime_type)
          @response_modalities = args[:response_modalities] if args.key?(:response_modalities)
          @response_schema = args[:response_schema] if args.key?(:response_schema)
          @routing_config = args[:routing_config] if args.key?(:routing_config)
          @seed = args[:seed] if args.key?(:seed)
          @speech_config = args[:speech_config] if args.key?(:speech_config)
          @stop_sequences = args[:stop_sequences] if args.key?(:stop_sequences)
          @temperature = args[:temperature] if args.key?(:temperature)
          @thinking_config = args[:thinking_config] if args.key?(:thinking_config)
          @top_k = args[:top_k] if args.key?(:top_k)
          @top_p = args[:top_p] if args.key?(:top_p)
        end
      end
      
      # Config for model selection.
      class GoogleCloudAiplatformV1beta1GenerationConfigModelConfig
        include Google::Apis::Core::Hashable
      
        # Required. Feature selection preference.
        # Corresponds to the JSON property `featureSelectionPreference`
        # @return [String]
        attr_accessor :feature_selection_preference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feature_selection_preference = args[:feature_selection_preference] if args.key?(:feature_selection_preference)
        end
      end
      
      # The configuration for routing the request to a specific model. This can be
      # used to control which model is used for the generation, either automatically
      # or by specifying a model name.
      class GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for automated routing. When automated routing is specified,
        # the routing will be determined by the pretrained routing model and customer
        # provided model routing preference.
        # Corresponds to the JSON property `autoMode`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode]
        attr_accessor :auto_mode
      
        # The configuration for manual routing. When manual routing is specified, the
        # model will be selected based on the model name provided.
        # Corresponds to the JSON property `manualMode`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode]
        attr_accessor :manual_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_mode = args[:auto_mode] if args.key?(:auto_mode)
          @manual_mode = args[:manual_mode] if args.key?(:manual_mode)
        end
      end
      
      # The configuration for automated routing. When automated routing is specified,
      # the routing will be determined by the pretrained routing model and customer
      # provided model routing preference.
      class GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigAutoRoutingMode
        include Google::Apis::Core::Hashable
      
        # The model routing preference.
        # Corresponds to the JSON property `modelRoutingPreference`
        # @return [String]
        attr_accessor :model_routing_preference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_routing_preference = args[:model_routing_preference] if args.key?(:model_routing_preference)
        end
      end
      
      # The configuration for manual routing. When manual routing is specified, the
      # model will be selected based on the model name provided.
      class GoogleCloudAiplatformV1beta1GenerationConfigRoutingConfigManualRoutingMode
        include Google::Apis::Core::Hashable
      
        # The name of the model to use. Only public LLM models are accepted.
        # Corresponds to the JSON property `modelName`
        # @return [String]
        attr_accessor :model_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_name = args[:model_name] if args.key?(:model_name)
        end
      end
      
      # Configuration for the model's thinking features. "Thinking" is a process where
      # the model breaks down a complex task into smaller, manageable steps. This
      # allows the model to reason about the task, plan its approach, and execute the
      # plan to generate a high-quality response.
      class GoogleCloudAiplatformV1beta1GenerationConfigThinkingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the model will include its thoughts in the response. "
        # Thoughts" are the intermediate steps the model takes to arrive at the final
        # response. They can provide insights into the model's reasoning process and
        # help with debugging. If this is true, thoughts are returned only when
        # available.
        # Corresponds to the JSON property `includeThoughts`
        # @return [Boolean]
        attr_accessor :include_thoughts
        alias_method :include_thoughts?, :include_thoughts
      
        # Optional. The token budget for the model's thinking process. The model will
        # make a best effort to stay within this budget. This can be used to control the
        # trade-off between response quality and latency.
        # Corresponds to the JSON property `thinkingBudget`
        # @return [Fixnum]
        attr_accessor :thinking_budget
      
        # Optional. The number of thoughts tokens that the model should generate.
        # Corresponds to the JSON property `thinkingLevel`
        # @return [String]
        attr_accessor :thinking_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_thoughts = args[:include_thoughts] if args.key?(:include_thoughts)
          @thinking_budget = args[:thinking_budget] if args.key?(:thinking_budget)
          @thinking_level = args[:thinking_level] if args.key?(:thinking_level)
        end
      end
      
      # Tool to retrieve public maps data for grounding, powered by Google.
      class GoogleCloudAiplatformV1beta1GoogleMaps
        include Google::Apis::Core::Hashable
      
        # Optional. If true, include the widget context token in the response.
        # Corresponds to the JSON property `enableWidget`
        # @return [Boolean]
        attr_accessor :enable_widget
        alias_method :enable_widget?, :enable_widget
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_widget = args[:enable_widget] if args.key?(:enable_widget)
        end
      end
      
      # Tool to retrieve public web data for grounding, powered by Google.
      class GoogleCloudAiplatformV1beta1GoogleSearchRetrieval
        include Google::Apis::Core::Hashable
      
        # Describes the options to customize dynamic retrieval.
        # Corresponds to the JSON property `dynamicRetrievalConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1DynamicRetrievalConfig]
        attr_accessor :dynamic_retrieval_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_retrieval_config = args[:dynamic_retrieval_config] if args.key?(:dynamic_retrieval_config)
        end
      end
      
      # A piece of evidence that supports a claim made by the model. This is used to
      # show a citation for a claim made by the model. When grounding is enabled, the
      # model returns a `GroundingChunk` that contains a reference to the source of
      # the information.
      class GoogleCloudAiplatformV1beta1GroundingChunk
        include Google::Apis::Core::Hashable
      
        # A `Maps` chunk is a piece of evidence that comes from Google Maps. It contains
        # information about a place, such as its name, address, and reviews. This is
        # used to provide the user with rich, location-based information.
        # Corresponds to the JSON property `maps`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkMaps]
        attr_accessor :maps
      
        # Context retrieved from a data source to ground the model's response. This is
        # used when a retrieval tool fetches information from a user-provided corpus or
        # a public dataset.
        # Corresponds to the JSON property `retrievedContext`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext]
        attr_accessor :retrieved_context
      
        # A `Web` chunk is a piece of evidence that comes from a web page. It contains
        # the URI of the web page, the title of the page, and the domain of the page.
        # This is used to provide the user with a link to the source of the information.
        # Corresponds to the JSON property `web`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkWeb]
        attr_accessor :web
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maps = args[:maps] if args.key?(:maps)
          @retrieved_context = args[:retrieved_context] if args.key?(:retrieved_context)
          @web = args[:web] if args.key?(:web)
        end
      end
      
      # A `Maps` chunk is a piece of evidence that comes from Google Maps. It contains
      # information about a place, such as its name, address, and reviews. This is
      # used to provide the user with rich, location-based information.
      class GoogleCloudAiplatformV1beta1GroundingChunkMaps
        include Google::Apis::Core::Hashable
      
        # The sources that were used to generate the place answer. This includes review
        # snippets and photos that were used to generate the answer, as well as URIs to
        # flag content.
        # Corresponds to the JSON property `placeAnswerSources`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources]
        attr_accessor :place_answer_sources
      
        # This Place's resource name, in `places/`place_id`` format. This can be used to
        # look up the place in the Google Maps API.
        # Corresponds to the JSON property `placeId`
        # @return [String]
        attr_accessor :place_id
      
        # The text of the place answer.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The title of the place.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The URI of the place.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_answer_sources = args[:place_answer_sources] if args.key?(:place_answer_sources)
          @place_id = args[:place_id] if args.key?(:place_id)
          @text = args[:text] if args.key?(:text)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The sources that were used to generate the place answer. This includes review
      # snippets and photos that were used to generate the answer, as well as URIs to
      # flag content.
      class GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSources
        include Google::Apis::Core::Hashable
      
        # Snippets of reviews that were used to generate the answer.
        # Corresponds to the JSON property `reviewSnippets`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet>]
        attr_accessor :review_snippets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @review_snippets = args[:review_snippets] if args.key?(:review_snippets)
        end
      end
      
      # A review snippet that is used to generate the answer.
      class GoogleCloudAiplatformV1beta1GroundingChunkMapsPlaceAnswerSourcesReviewSnippet
        include Google::Apis::Core::Hashable
      
        # A link to show the review on Google Maps.
        # Corresponds to the JSON property `googleMapsUri`
        # @return [String]
        attr_accessor :google_maps_uri
      
        # The ID of the review that is being referenced.
        # Corresponds to the JSON property `reviewId`
        # @return [String]
        attr_accessor :review_id
      
        # The title of the review.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_maps_uri = args[:google_maps_uri] if args.key?(:google_maps_uri)
          @review_id = args[:review_id] if args.key?(:review_id)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Context retrieved from a data source to ground the model's response. This is
      # used when a retrieval tool fetches information from a user-provided corpus or
      # a public dataset.
      class GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext
        include Google::Apis::Core::Hashable
      
        # Output only. The full resource name of the referenced Vertex AI Search
        # document. This is used to identify the specific document that was retrieved.
        # The format is `projects/`project`/locations/`location`/collections/`collection`
        # /dataStores/`data_store`/branches/`branch`/documents/`document``.
        # Corresponds to the JSON property `documentName`
        # @return [String]
        attr_accessor :document_name
      
        # A RagChunk includes the content of a chunk of a RagFile, and associated
        # metadata.
        # Corresponds to the JSON property `ragChunk`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagChunk]
        attr_accessor :rag_chunk
      
        # The content of the retrieved data source.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The title of the retrieved data source.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The URI of the retrieved data source.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_name = args[:document_name] if args.key?(:document_name)
          @rag_chunk = args[:rag_chunk] if args.key?(:rag_chunk)
          @text = args[:text] if args.key?(:text)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A `Web` chunk is a piece of evidence that comes from a web page. It contains
      # the URI of the web page, the title of the page, and the domain of the page.
      # This is used to provide the user with a link to the source of the information.
      class GoogleCloudAiplatformV1beta1GroundingChunkWeb
        include Google::Apis::Core::Hashable
      
        # The domain of the web page that contains the evidence. This can be used to
        # filter out low-quality sources.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The title of the web page that contains the evidence.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The URI of the web page that contains the evidence.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Information about the sources that support the content of a response. When
      # grounding is enabled, the model returns citations for claims in the response.
      # This object contains the retrieved sources.
      class GoogleCloudAiplatformV1beta1GroundingMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Output only. A token that can be used to render a Google Maps widget
        # with the contextual data. This field is populated only when the grounding
        # source is Google Maps.
        # Corresponds to the JSON property `googleMapsWidgetContextToken`
        # @return [String]
        attr_accessor :google_maps_widget_context_token
      
        # A list of supporting references retrieved from the grounding source. This
        # field is populated when the grounding source is Google Search, Vertex AI
        # Search, or Google Maps.
        # Corresponds to the JSON property `groundingChunks`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunk>]
        attr_accessor :grounding_chunks
      
        # Optional. A list of grounding supports that connect the generated content to
        # the grounding chunks. This field is populated when the grounding source is
        # Google Search or Vertex AI Search.
        # Corresponds to the JSON property `groundingSupports`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingSupport>]
        attr_accessor :grounding_supports
      
        # Metadata related to the retrieval grounding source. This is part of the `
        # GroundingMetadata` returned when grounding is enabled.
        # Corresponds to the JSON property `retrievalMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RetrievalMetadata]
        attr_accessor :retrieval_metadata
      
        # Optional. The queries that were executed by the retrieval tools. This field is
        # populated only when the grounding source is a retrieval tool, such as Vertex
        # AI Search.
        # Corresponds to the JSON property `retrievalQueries`
        # @return [Array<String>]
        attr_accessor :retrieval_queries
      
        # An entry point for displaying Google Search results. A `SearchEntryPoint` is
        # populated when the grounding source for a model's response is Google Search.
        # It provides information that you can use to display the search results in your
        # application.
        # Corresponds to the JSON property `searchEntryPoint`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SearchEntryPoint]
        attr_accessor :search_entry_point
      
        # Optional. Output only. A list of URIs that can be used to flag a place or
        # review for inappropriate content. This field is populated only when the
        # grounding source is Google Maps.
        # Corresponds to the JSON property `sourceFlaggingUris`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingMetadataSourceFlaggingUri>]
        attr_accessor :source_flagging_uris
      
        # Optional. The web search queries that were used to generate the content. This
        # field is populated only when the grounding source is Google Search.
        # Corresponds to the JSON property `webSearchQueries`
        # @return [Array<String>]
        attr_accessor :web_search_queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_maps_widget_context_token = args[:google_maps_widget_context_token] if args.key?(:google_maps_widget_context_token)
          @grounding_chunks = args[:grounding_chunks] if args.key?(:grounding_chunks)
          @grounding_supports = args[:grounding_supports] if args.key?(:grounding_supports)
          @retrieval_metadata = args[:retrieval_metadata] if args.key?(:retrieval_metadata)
          @retrieval_queries = args[:retrieval_queries] if args.key?(:retrieval_queries)
          @search_entry_point = args[:search_entry_point] if args.key?(:search_entry_point)
          @source_flagging_uris = args[:source_flagging_uris] if args.key?(:source_flagging_uris)
          @web_search_queries = args[:web_search_queries] if args.key?(:web_search_queries)
        end
      end
      
      # A URI that can be used to flag a place or review for inappropriate content.
      # This is populated only when the grounding source is Google Maps.
      class GoogleCloudAiplatformV1beta1GroundingMetadataSourceFlaggingUri
        include Google::Apis::Core::Hashable
      
        # The URI that can be used to flag the content.
        # Corresponds to the JSON property `flagContentUri`
        # @return [String]
        attr_accessor :flag_content_uri
      
        # The ID of the place or review.
        # Corresponds to the JSON property `sourceId`
        # @return [String]
        attr_accessor :source_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flag_content_uri = args[:flag_content_uri] if args.key?(:flag_content_uri)
          @source_id = args[:source_id] if args.key?(:source_id)
        end
      end
      
      # A collection of supporting references for a segment of the model's response.
      class GoogleCloudAiplatformV1beta1GroundingSupport
        include Google::Apis::Core::Hashable
      
        # The confidence scores for the support references. This list is parallel to the
        # `grounding_chunk_indices` list. A score is a value between 0.0 and 1.0, with a
        # higher score indicating a higher confidence that the reference supports the
        # claim. For Gemini 2.0 and before, this list has the same size as `
        # grounding_chunk_indices`. For Gemini 2.5 and later, this list is empty and
        # should be ignored.
        # Corresponds to the JSON property `confidenceScores`
        # @return [Array<Float>]
        attr_accessor :confidence_scores
      
        # A list of indices into the `grounding_chunks` field of the `GroundingMetadata`
        # message. These indices specify which grounding chunks support the claim made
        # in the content segment. For example, if this field has the values `[1, 3]`, it
        # means that `grounding_chunks[1]` and `grounding_chunks[3]` are the sources for
        # the claim in the content segment.
        # Corresponds to the JSON property `groundingChunkIndices`
        # @return [Array<Fixnum>]
        attr_accessor :grounding_chunk_indices
      
        # A segment of the content.
        # Corresponds to the JSON property `segment`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Segment]
        attr_accessor :segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_scores = args[:confidence_scores] if args.key?(:confidence_scores)
          @grounding_chunk_indices = args[:grounding_chunk_indices] if args.key?(:grounding_chunk_indices)
          @segment = args[:segment] if args.key?(:segment)
        end
      end
      
      # Configuration for image generation. This message allows you to control various
      # aspects of image generation, such as the output format, aspect ratio, and
      # whether the model can generate images of people.
      class GoogleCloudAiplatformV1beta1ImageConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The desired aspect ratio for the generated images. The following
        # aspect ratios are supported: "1:1" "2:3", "3:2" "3:4", "4:3" "4:5", "5:4" "9:
        # 16", "16:9" "21:9"
        # Corresponds to the JSON property `aspectRatio`
        # @return [String]
        attr_accessor :aspect_ratio
      
        # The image output format for generated images.
        # Corresponds to the JSON property `imageOutputOptions`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ImageConfigImageOutputOptions]
        attr_accessor :image_output_options
      
        # Optional. Specifies the size of generated images. Supported values are `1K`, `
        # 2K`, `4K`. If not specified, the model will use default value `1K`.
        # Corresponds to the JSON property `imageSize`
        # @return [String]
        attr_accessor :image_size
      
        # Optional. Controls whether the model can generate people.
        # Corresponds to the JSON property `personGeneration`
        # @return [String]
        attr_accessor :person_generation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_ratio = args[:aspect_ratio] if args.key?(:aspect_ratio)
          @image_output_options = args[:image_output_options] if args.key?(:image_output_options)
          @image_size = args[:image_size] if args.key?(:image_size)
          @person_generation = args[:person_generation] if args.key?(:person_generation)
        end
      end
      
      # The image output format for generated images.
      class GoogleCloudAiplatformV1beta1ImageConfigImageOutputOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The compression quality of the output image.
        # Corresponds to the JSON property `compressionQuality`
        # @return [Fixnum]
        attr_accessor :compression_quality
      
        # Optional. The image format that the output should be saved as.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compression_quality = args[:compression_quality] if args.key?(:compression_quality)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # The log probabilities of the tokens generated by the model. This is useful for
      # understanding the model's confidence in its predictions and for debugging. For
      # example, you can use log probabilities to identify when the model is making a
      # less confident prediction or to explore alternative responses that the model
      # considered. A low log probability can also indicate that the model is "
      # hallucinating" or generating factually incorrect information.
      class GoogleCloudAiplatformV1beta1LogprobsResult
        include Google::Apis::Core::Hashable
      
        # A list of the chosen candidate tokens at each decoding step. The length of
        # this list is equal to the total number of decoding steps. Note that the chosen
        # candidate might not be in `top_candidates`.
        # Corresponds to the JSON property `chosenCandidates`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1LogprobsResultCandidate>]
        attr_accessor :chosen_candidates
      
        # A list of the top candidate tokens at each decoding step. The length of this
        # list is equal to the total number of decoding steps.
        # Corresponds to the JSON property `topCandidates`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates>]
        attr_accessor :top_candidates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chosen_candidates = args[:chosen_candidates] if args.key?(:chosen_candidates)
          @top_candidates = args[:top_candidates] if args.key?(:top_candidates)
        end
      end
      
      # A single token and its associated log probability.
      class GoogleCloudAiplatformV1beta1LogprobsResultCandidate
        include Google::Apis::Core::Hashable
      
        # The log probability of this token. A higher value indicates that the model was
        # more confident in this token. The log probability can be used to assess the
        # relative likelihood of different tokens and to identify when the model is
        # uncertain.
        # Corresponds to the JSON property `logProbability`
        # @return [Float]
        attr_accessor :log_probability
      
        # The token's string representation.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The token's numerical ID. While the `token` field provides the string
        # representation of the token, the `token_id` is the numerical representation
        # that the model uses internally. This can be useful for developers who want to
        # build custom logic based on the model's vocabulary.
        # Corresponds to the JSON property `tokenId`
        # @return [Fixnum]
        attr_accessor :token_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_probability = args[:log_probability] if args.key?(:log_probability)
          @token = args[:token] if args.key?(:token)
          @token_id = args[:token_id] if args.key?(:token_id)
        end
      end
      
      # A list of the top candidate tokens and their log probabilities at each
      # decoding step. This can be used to see what other tokens the model considered.
      class GoogleCloudAiplatformV1beta1LogprobsResultTopCandidates
        include Google::Apis::Core::Hashable
      
        # The list of candidate tokens, sorted by log probability in descending order.
        # Corresponds to the JSON property `candidates`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1LogprobsResultCandidate>]
        attr_accessor :candidates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @candidates = args[:candidates] if args.key?(:candidates)
        end
      end
      
      # Represents a breakdown of token usage by modality. This message is used in
      # CountTokensResponse and GenerateContentResponse.UsageMetadata to provide a
      # detailed view of how many tokens are used by each modality (e.g., text, image,
      # video) in a request. This is particularly useful for multimodal models,
      # allowing you to track and manage token consumption for billing and quota
      # purposes.
      class GoogleCloudAiplatformV1beta1ModalityTokenCount
        include Google::Apis::Core::Hashable
      
        # The modality that this token count applies to.
        # Corresponds to the JSON property `modality`
        # @return [String]
        attr_accessor :modality
      
        # The number of tokens counted for this modality.
        # Corresponds to the JSON property `tokenCount`
        # @return [Fixnum]
        attr_accessor :token_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modality = args[:modality] if args.key?(:modality)
          @token_count = args[:token_count] if args.key?(:token_count)
        end
      end
      
      # Configuration for Model Armor. Model Armor is a Google Cloud service that
      # provides safety and security filtering for prompts and responses. It helps
      # protect your AI applications from risks such as harmful content, sensitive
      # data leakage, and prompt injection attacks.
      class GoogleCloudAiplatformV1beta1ModelArmorConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name of the Model Armor template to use for prompt
        # screening. A Model Armor template is a set of customized filters and
        # thresholds that define how Model Armor screens content. If specified, Model
        # Armor will use this template to check the user's prompt for safety and
        # security risks before it is sent to the model. The name must be in the format `
        # projects/`project`/locations/`location`/templates/`template``.
        # Corresponds to the JSON property `promptTemplateName`
        # @return [String]
        attr_accessor :prompt_template_name
      
        # Optional. The resource name of the Model Armor template to use for response
        # screening. A Model Armor template is a set of customized filters and
        # thresholds that define how Model Armor screens content. If specified, Model
        # Armor will use this template to check the model's response for safety and
        # security risks before it is returned to the user. The name must be in the
        # format `projects/`project`/locations/`location`/templates/`template``.
        # Corresponds to the JSON property `responseTemplateName`
        # @return [String]
        attr_accessor :response_template_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prompt_template_name = args[:prompt_template_name] if args.key?(:prompt_template_name)
          @response_template_name = args[:response_template_name] if args.key?(:response_template_name)
        end
      end
      
      # Configuration for a multi-speaker text-to-speech request.
      class GoogleCloudAiplatformV1beta1MultiSpeakerVoiceConfig
        include Google::Apis::Core::Hashable
      
        # Required. A list of configurations for the voices of the speakers. Exactly two
        # speaker voice configurations must be provided.
        # Corresponds to the JSON property `speakerVoiceConfigs`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SpeakerVoiceConfig>]
        attr_accessor :speaker_voice_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @speaker_voice_configs = args[:speaker_voice_configs] if args.key?(:speaker_voice_configs)
        end
      end
      
      # A datatype containing media that is part of a multi-part Content message. A `
      # Part` consists of data which has an associated datatype. A `Part` can only
      # contain one of the accepted types in `Part.data`. For media types that are not
      # text, `Part` must have a fixed IANA MIME type identifying the type and subtype
      # of the media if `inline_data` or `file_data` field is filled with raw bytes.
      class GoogleCloudAiplatformV1beta1Part
        include Google::Apis::Core::Hashable
      
        # Result of executing the [ExecutableCode]. Only generated when using the [
        # CodeExecution] tool, and always follows a `part` containing the [
        # ExecutableCode].
        # Corresponds to the JSON property `codeExecutionResult`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1CodeExecutionResult]
        attr_accessor :code_execution_result
      
        # Code generated by the model that is meant to be executed, and the result
        # returned to the model. Generated when using the [CodeExecution] tool, in which
        # the code will be automatically executed, and a corresponding [
        # CodeExecutionResult] will also be generated.
        # Corresponds to the JSON property `executableCode`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ExecutableCode]
        attr_accessor :executable_code
      
        # URI-based data. A FileData message contains a URI pointing to data of a
        # specific media type. It is used to represent images, audio, and video stored
        # in Google Cloud Storage.
        # Corresponds to the JSON property `fileData`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FileData]
        attr_accessor :file_data
      
        # A predicted [FunctionCall] returned from the model that contains a string
        # representing the [FunctionDeclaration.name] and a structured JSON object
        # containing the parameters and their values.
        # Corresponds to the JSON property `functionCall`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionCall]
        attr_accessor :function_call
      
        # The result output from a [FunctionCall] that contains a string representing
        # the [FunctionDeclaration.name] and a structured JSON object containing any
        # output from the function is used as context to the model. This should contain
        # the result of a [FunctionCall] made based on model prediction.
        # Corresponds to the JSON property `functionResponse`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionResponse]
        attr_accessor :function_response
      
        # A content blob. A Blob contains data of a specific media type. It is used to
        # represent images, audio, and video.
        # Corresponds to the JSON property `inlineData`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Blob]
        attr_accessor :inline_data
      
        # per part media resolution. Media resolution for the input media.
        # Corresponds to the JSON property `mediaResolution`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1PartMediaResolution]
        attr_accessor :media_resolution
      
        # Optional. The text content of the part.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Optional. Indicates whether the `part` represents the model's thought process
        # or reasoning.
        # Corresponds to the JSON property `thought`
        # @return [Boolean]
        attr_accessor :thought
        alias_method :thought?, :thought
      
        # Optional. An opaque signature for the thought so it can be reused in
        # subsequent requests.
        # Corresponds to the JSON property `thoughtSignature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :thought_signature
      
        # Provides metadata for a video, including the start and end offsets for
        # clipping and the frame rate.
        # Corresponds to the JSON property `videoMetadata`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VideoMetadata]
        attr_accessor :video_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_execution_result = args[:code_execution_result] if args.key?(:code_execution_result)
          @executable_code = args[:executable_code] if args.key?(:executable_code)
          @file_data = args[:file_data] if args.key?(:file_data)
          @function_call = args[:function_call] if args.key?(:function_call)
          @function_response = args[:function_response] if args.key?(:function_response)
          @inline_data = args[:inline_data] if args.key?(:inline_data)
          @media_resolution = args[:media_resolution] if args.key?(:media_resolution)
          @text = args[:text] if args.key?(:text)
          @thought = args[:thought] if args.key?(:thought)
          @thought_signature = args[:thought_signature] if args.key?(:thought_signature)
          @video_metadata = args[:video_metadata] if args.key?(:video_metadata)
        end
      end
      
      # per part media resolution. Media resolution for the input media.
      class GoogleCloudAiplatformV1beta1PartMediaResolution
        include Google::Apis::Core::Hashable
      
        # The tokenization quality used for given media.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @level = args[:level] if args.key?(:level)
        end
      end
      
      # Partial argument value of the function call.
      class GoogleCloudAiplatformV1beta1PartialArg
        include Google::Apis::Core::Hashable
      
        # Optional. Represents a boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Required. A JSON Path (RFC 9535) to the argument being streamed. https://
        # datatracker.ietf.org/doc/html/rfc9535. e.g. "$.foo.bar[0].data".
        # Corresponds to the JSON property `jsonPath`
        # @return [String]
        attr_accessor :json_path
      
        # Optional. Represents a null value.
        # Corresponds to the JSON property `nullValue`
        # @return [String]
        attr_accessor :null_value
      
        # Optional. Represents a double value.
        # Corresponds to the JSON property `numberValue`
        # @return [Float]
        attr_accessor :number_value
      
        # Optional. Represents a string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Optional. Whether this is not the last part of the same json_path. If true,
        # another PartialArg message for the current json_path is expected to follow.
        # Corresponds to the JSON property `willContinue`
        # @return [Boolean]
        attr_accessor :will_continue
        alias_method :will_continue?, :will_continue
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @json_path = args[:json_path] if args.key?(:json_path)
          @null_value = args[:null_value] if args.key?(:null_value)
          @number_value = args[:number_value] if args.key?(:number_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @will_continue = args[:will_continue] if args.key?(:will_continue)
        end
      end
      
      # Configuration for a prebuilt voice.
      class GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig
        include Google::Apis::Core::Hashable
      
        # The name of the prebuilt voice to use.
        # Corresponds to the JSON property `voiceName`
        # @return [String]
        attr_accessor :voice_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @voice_name = args[:voice_name] if args.key?(:voice_name)
        end
      end
      
      # A RagChunk includes the content of a chunk of a RagFile, and associated
      # metadata.
      class GoogleCloudAiplatformV1beta1RagChunk
        include Google::Apis::Core::Hashable
      
        # Represents where the chunk starts and ends in the document.
        # Corresponds to the JSON property `pageSpan`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagChunkPageSpan]
        attr_accessor :page_span
      
        # The content of the chunk.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_span = args[:page_span] if args.key?(:page_span)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents where the chunk starts and ends in the document.
      class GoogleCloudAiplatformV1beta1RagChunkPageSpan
        include Google::Apis::Core::Hashable
      
        # Page where chunk starts in the document. Inclusive. 1-indexed.
        # Corresponds to the JSON property `firstPage`
        # @return [Fixnum]
        attr_accessor :first_page
      
        # Page where chunk ends in the document. Inclusive. 1-indexed.
        # Corresponds to the JSON property `lastPage`
        # @return [Fixnum]
        attr_accessor :last_page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_page = args[:first_page] if args.key?(:first_page)
          @last_page = args[:last_page] if args.key?(:last_page)
        end
      end
      
      # Specifies the context retrieval config.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfig
        include Google::Apis::Core::Hashable
      
        # Config for filters.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter]
        attr_accessor :filter
      
        # Config for Hybrid Search.
        # Corresponds to the JSON property `hybridSearch`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch]
        attr_accessor :hybrid_search
      
        # Config for ranking and reranking.
        # Corresponds to the JSON property `ranking`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking]
        attr_accessor :ranking
      
        # Optional. The number of contexts to retrieve.
        # Corresponds to the JSON property `topK`
        # @return [Fixnum]
        attr_accessor :top_k
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @hybrid_search = args[:hybrid_search] if args.key?(:hybrid_search)
          @ranking = args[:ranking] if args.key?(:ranking)
          @top_k = args[:top_k] if args.key?(:top_k)
        end
      end
      
      # Config for filters.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigFilter
        include Google::Apis::Core::Hashable
      
        # Optional. String for metadata filtering.
        # Corresponds to the JSON property `metadataFilter`
        # @return [String]
        attr_accessor :metadata_filter
      
        # Optional. Only returns contexts with vector distance smaller than the
        # threshold.
        # Corresponds to the JSON property `vectorDistanceThreshold`
        # @return [Float]
        attr_accessor :vector_distance_threshold
      
        # Optional. Only returns contexts with vector similarity larger than the
        # threshold.
        # Corresponds to the JSON property `vectorSimilarityThreshold`
        # @return [Float]
        attr_accessor :vector_similarity_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata_filter = args[:metadata_filter] if args.key?(:metadata_filter)
          @vector_distance_threshold = args[:vector_distance_threshold] if args.key?(:vector_distance_threshold)
          @vector_similarity_threshold = args[:vector_similarity_threshold] if args.key?(:vector_similarity_threshold)
        end
      end
      
      # Config for Hybrid Search.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigHybridSearch
        include Google::Apis::Core::Hashable
      
        # Optional. Alpha value controls the weight between dense and sparse vector
        # search results. The range is [0, 1], while 0 means sparse vector search only
        # and 1 means dense vector search only. The default value is 0.5 which balances
        # sparse and dense vector search equally.
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpha = args[:alpha] if args.key?(:alpha)
        end
      end
      
      # Config for ranking and reranking.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigRanking
        include Google::Apis::Core::Hashable
      
        # Config for LlmRanker.
        # Corresponds to the JSON property `llmRanker`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker]
        attr_accessor :llm_ranker
      
        # Config for Rank Service.
        # Corresponds to the JSON property `rankService`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService]
        attr_accessor :rank_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @llm_ranker = args[:llm_ranker] if args.key?(:llm_ranker)
          @rank_service = args[:rank_service] if args.key?(:rank_service)
        end
      end
      
      # Config for LlmRanker.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingLlmRanker
        include Google::Apis::Core::Hashable
      
        # Optional. The model name used for ranking. See [Supported models](https://
        # cloud.google.com/vertex-ai/generative-ai/docs/model-reference/inference#
        # supported-models).
        # Corresponds to the JSON property `modelName`
        # @return [String]
        attr_accessor :model_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_name = args[:model_name] if args.key?(:model_name)
        end
      end
      
      # Config for Rank Service.
      class GoogleCloudAiplatformV1beta1RagRetrievalConfigRankingRankService
        include Google::Apis::Core::Hashable
      
        # Optional. The model name of the rank service. Format: `semantic-ranker-512@
        # latest`
        # Corresponds to the JSON property `modelName`
        # @return [String]
        attr_accessor :model_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model_name = args[:model_name] if args.key?(:model_name)
        end
      end
      
      # The configuration for the replicated voice to use.
      class GoogleCloudAiplatformV1beta1ReplicatedVoiceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The mimetype of the voice sample. The only currently supported value
        # is `audio/wav`. This represents 16-bit signed little-endian wav data, with a
        # 24kHz sampling rate. `mime_type` will default to `audio/wav` if not set.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Optional. The sample of the custom voice.
        # Corresponds to the JSON property `voiceSampleAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :voice_sample_audio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @voice_sample_audio = args[:voice_sample_audio] if args.key?(:voice_sample_audio)
        end
      end
      
      # Defines a retrieval tool that model can call to access external knowledge.
      class GoogleCloudAiplatformV1beta1Retrieval
        include Google::Apis::Core::Hashable
      
        # Optional. Deprecated. This option is no longer supported.
        # Corresponds to the JSON property `disableAttribution`
        # @return [Boolean]
        attr_accessor :disable_attribution
        alias_method :disable_attribution?, :disable_attribution
      
        # Retrieve from data source powered by external API for grounding. The external
        # API is not owned by Google, but need to follow the pre-defined API spec.
        # Corresponds to the JSON property `externalApi`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ExternalApi]
        attr_accessor :external_api
      
        # Retrieve from Vertex AI Search datastore or engine for grounding. datastore
        # and engine are mutually exclusive. See https://cloud.google.com/products/agent-
        # builder
        # Corresponds to the JSON property `vertexAiSearch`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexAiSearch]
        attr_accessor :vertex_ai_search
      
        # Retrieve from Vertex RAG Store for grounding.
        # Corresponds to the JSON property `vertexRagStore`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexRagStore]
        attr_accessor :vertex_rag_store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_attribution = args[:disable_attribution] if args.key?(:disable_attribution)
          @external_api = args[:external_api] if args.key?(:external_api)
          @vertex_ai_search = args[:vertex_ai_search] if args.key?(:vertex_ai_search)
          @vertex_rag_store = args[:vertex_rag_store] if args.key?(:vertex_rag_store)
        end
      end
      
      # Retrieval config.
      class GoogleCloudAiplatformV1beta1RetrievalConfig
        include Google::Apis::Core::Hashable
      
        # The language code of the user.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::FirebasemlV2beta::LatLng]
        attr_accessor :lat_lng
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @lat_lng = args[:lat_lng] if args.key?(:lat_lng)
        end
      end
      
      # Metadata related to the retrieval grounding source. This is part of the `
      # GroundingMetadata` returned when grounding is enabled.
      class GoogleCloudAiplatformV1beta1RetrievalMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. A score indicating how likely it is that a Google Search query could
        # help answer the prompt. The score is in the range of `[0, 1]`. A score of 1
        # means the model is confident that a search will be helpful, and 0 means it is
        # not. This score is populated only when Google Search grounding and dynamic
        # retrieval are enabled. The score is used to determine whether to trigger a
        # search.
        # Corresponds to the JSON property `googleSearchDynamicRetrievalScore`
        # @return [Float]
        attr_accessor :google_search_dynamic_retrieval_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_search_dynamic_retrieval_score = args[:google_search_dynamic_retrieval_score] if args.key?(:google_search_dynamic_retrieval_score)
        end
      end
      
      # A safety rating for a piece of content. The safety rating contains the harm
      # category and the harm probability level.
      class GoogleCloudAiplatformV1beta1SafetyRating
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates whether the content was blocked because of this rating.
        # Corresponds to the JSON property `blocked`
        # @return [Boolean]
        attr_accessor :blocked
        alias_method :blocked?, :blocked
      
        # Output only. The harm category of this rating.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Output only. The overwritten threshold for the safety category of Gemini 2.0
        # image out. If minors are detected in the output image, the threshold of each
        # safety category will be overwritten if user sets a lower threshold.
        # Corresponds to the JSON property `overwrittenThreshold`
        # @return [String]
        attr_accessor :overwritten_threshold
      
        # Output only. The probability of harm for this category.
        # Corresponds to the JSON property `probability`
        # @return [String]
        attr_accessor :probability
      
        # Output only. The probability score of harm for this category.
        # Corresponds to the JSON property `probabilityScore`
        # @return [Float]
        attr_accessor :probability_score
      
        # Output only. The severity of harm for this category.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Output only. The severity score of harm for this category.
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
          @overwritten_threshold = args[:overwritten_threshold] if args.key?(:overwritten_threshold)
          @probability = args[:probability] if args.key?(:probability)
          @probability_score = args[:probability_score] if args.key?(:probability_score)
          @severity = args[:severity] if args.key?(:severity)
          @severity_score = args[:severity_score] if args.key?(:severity_score)
        end
      end
      
      # A safety setting that affects the safety-blocking behavior. A SafetySetting
      # consists of a harm category and a threshold for that category.
      class GoogleCloudAiplatformV1beta1SafetySetting
        include Google::Apis::Core::Hashable
      
        # Required. The harm category to be blocked.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Optional. The method for blocking content. If not specified, the default
        # behavior is to use the probability score.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Required. The threshold for blocking content. If the harm probability exceeds
        # this threshold, the content will be blocked.
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
      
      # Defines the schema of input and output data. This is a subset of the [OpenAPI
      # 3.0 Schema Object](https://spec.openapis.org/oas/v3.0.3#schema-object).
      class GoogleCloudAiplatformV1beta1Schema
        include Google::Apis::Core::Hashable
      
        # Optional. If `type` is `OBJECT`, specifies how to handle properties not
        # defined in `properties`. If it is a boolean `false`, no additional properties
        # are allowed. If it is a schema, additional properties are allowed if they
        # conform to the schema.
        # Corresponds to the JSON property `additionalProperties`
        # @return [Object]
        attr_accessor :additional_properties
      
        # Optional. The instance must be valid against any (one or more) of the
        # subschemas listed in `any_of`.
        # Corresponds to the JSON property `anyOf`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema>]
        attr_accessor :any_of
      
        # Optional. Default value to use if the field is not specified.
        # Corresponds to the JSON property `default`
        # @return [Object]
        attr_accessor :default
      
        # Optional. `defs` provides a map of schema definitions that can be reused by `
        # ref` elsewhere in the schema. Only allowed at root level of the schema.
        # Corresponds to the JSON property `defs`
        # @return [Hash<String,Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema>]
        attr_accessor :defs
      
        # Optional. Description of the schema.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Possible values of the field. This field can be used to restrict a
        # value to a fixed set of values. To mark a field as an enum, set `format` to `
        # enum` and provide the list of possible values in `enum`. For example: 1. To
        # define directions: ``type:STRING, format:enum, enum:["EAST", "NORTH", "SOUTH",
        # "WEST"]`` 2. To define apartment numbers: ``type:INTEGER, format:enum, enum:["
        # 101", "201", "301"]``
        # Corresponds to the JSON property `enum`
        # @return [Array<String>]
        attr_accessor :enum
      
        # Optional. Example of an instance of this schema.
        # Corresponds to the JSON property `example`
        # @return [Object]
        attr_accessor :example
      
        # Optional. The format of the data. For `NUMBER` type, format can be `float` or `
        # double`. For `INTEGER` type, format can be `int32` or `int64`. For `STRING`
        # type, format can be `email`, `byte`, `date`, `date-time`, `password`, and
        # other formats to further refine the data type.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Defines the schema of input and output data. This is a subset of the [OpenAPI
        # 3.0 Schema Object](https://spec.openapis.org/oas/v3.0.3#schema-object).
        # Corresponds to the JSON property `items`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema]
        attr_accessor :items
      
        # Optional. If type is `ARRAY`, `max_items` specifies the maximum number of
        # items in an array.
        # Corresponds to the JSON property `maxItems`
        # @return [Fixnum]
        attr_accessor :max_items
      
        # Optional. If type is `STRING`, `max_length` specifies the maximum length of
        # the string.
        # Corresponds to the JSON property `maxLength`
        # @return [Fixnum]
        attr_accessor :max_length
      
        # Optional. If type is `OBJECT`, `max_properties` specifies the maximum number
        # of properties that can be provided.
        # Corresponds to the JSON property `maxProperties`
        # @return [Fixnum]
        attr_accessor :max_properties
      
        # Optional. If type is `INTEGER` or `NUMBER`, `maximum` specifies the maximum
        # allowed value.
        # Corresponds to the JSON property `maximum`
        # @return [Float]
        attr_accessor :maximum
      
        # Optional. If type is `ARRAY`, `min_items` specifies the minimum number of
        # items in an array.
        # Corresponds to the JSON property `minItems`
        # @return [Fixnum]
        attr_accessor :min_items
      
        # Optional. If type is `STRING`, `min_length` specifies the minimum length of
        # the string.
        # Corresponds to the JSON property `minLength`
        # @return [Fixnum]
        attr_accessor :min_length
      
        # Optional. If type is `OBJECT`, `min_properties` specifies the minimum number
        # of properties that can be provided.
        # Corresponds to the JSON property `minProperties`
        # @return [Fixnum]
        attr_accessor :min_properties
      
        # Optional. If type is `INTEGER` or `NUMBER`, `minimum` specifies the minimum
        # allowed value.
        # Corresponds to the JSON property `minimum`
        # @return [Float]
        attr_accessor :minimum
      
        # Optional. Indicates if the value of this field can be null.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Optional. If type is `STRING`, `pattern` specifies a regular expression that
        # the string must match.
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # Optional. If type is `OBJECT`, `properties` is a map of property names to
        # schema definitions for each property of the object.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema>]
        attr_accessor :properties
      
        # Optional. Order of properties displayed or used where order matters. This is
        # not a standard field in OpenAPI specification, but can be used to control the
        # order of properties.
        # Corresponds to the JSON property `propertyOrdering`
        # @return [Array<String>]
        attr_accessor :property_ordering
      
        # Optional. Allows referencing another schema definition to use in place of this
        # schema. The value must be a valid reference to a schema in `defs`. For example,
        # the following schema defines a reference to a schema node named "Pet": type:
        # object properties: pet: ref: #/defs/Pet defs: Pet: type: object properties:
        # name: type: string The value of the "pet" property is a reference to the
        # schema node named "Pet". See details in https://json-schema.org/understanding-
        # json-schema/structuring
        # Corresponds to the JSON property `ref`
        # @return [String]
        attr_accessor :ref
      
        # Optional. If type is `OBJECT`, `required` lists the names of properties that
        # must be present.
        # Corresponds to the JSON property `required`
        # @return [Array<String>]
        attr_accessor :required
      
        # Optional. Title for the schema.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Optional. Data type of the schema field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_properties = args[:additional_properties] if args.key?(:additional_properties)
          @any_of = args[:any_of] if args.key?(:any_of)
          @default = args[:default] if args.key?(:default)
          @defs = args[:defs] if args.key?(:defs)
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
          @property_ordering = args[:property_ordering] if args.key?(:property_ordering)
          @ref = args[:ref] if args.key?(:ref)
          @required = args[:required] if args.key?(:required)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An entry point for displaying Google Search results. A `SearchEntryPoint` is
      # populated when the grounding source for a model's response is Google Search.
      # It provides information that you can use to display the search results in your
      # application.
      class GoogleCloudAiplatformV1beta1SearchEntryPoint
        include Google::Apis::Core::Hashable
      
        # Optional. An HTML snippet that can be embedded in a web page or an application'
        # s webview. This snippet displays a search result, including the title, URL,
        # and a brief description of the search result.
        # Corresponds to the JSON property `renderedContent`
        # @return [String]
        attr_accessor :rendered_content
      
        # Optional. A base64-encoded JSON object that contains a list of search queries
        # and their corresponding search URLs. This information can be used to build a
        # custom search UI.
        # Corresponds to the JSON property `sdkBlob`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sdk_blob
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rendered_content = args[:rendered_content] if args.key?(:rendered_content)
          @sdk_blob = args[:sdk_blob] if args.key?(:sdk_blob)
        end
      end
      
      # A segment of the content.
      class GoogleCloudAiplatformV1beta1Segment
        include Google::Apis::Core::Hashable
      
        # Output only. The end index of the segment in the `Part`, measured in bytes.
        # This marks the end of the segment and is exclusive, meaning the segment
        # includes content up to, but not including, the byte at this index.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # Output only. The index of the `Part` object that this segment belongs to. This
        # is useful for associating the segment with a specific part of the content.
        # Corresponds to the JSON property `partIndex`
        # @return [Fixnum]
        attr_accessor :part_index
      
        # Output only. The start index of the segment in the `Part`, measured in bytes.
        # This marks the beginning of the segment and is inclusive, meaning the byte at
        # this index is the first byte of the segment.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # Output only. The text of the segment.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @part_index = args[:part_index] if args.key?(:part_index)
          @start_index = args[:start_index] if args.key?(:start_index)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Configuration for a single speaker in a multi-speaker setup.
      class GoogleCloudAiplatformV1beta1SpeakerVoiceConfig
        include Google::Apis::Core::Hashable
      
        # Required. The name of the speaker. This should be the same as the speaker name
        # used in the prompt.
        # Corresponds to the JSON property `speaker`
        # @return [String]
        attr_accessor :speaker
      
        # Configuration for a voice.
        # Corresponds to the JSON property `voiceConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VoiceConfig]
        attr_accessor :voice_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @speaker = args[:speaker] if args.key?(:speaker)
          @voice_config = args[:voice_config] if args.key?(:voice_config)
        end
      end
      
      # Configuration for speech generation.
      class GoogleCloudAiplatformV1beta1SpeechConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The language code (ISO 639-1) for the speech synthesis.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Configuration for a multi-speaker text-to-speech request.
        # Corresponds to the JSON property `multiSpeakerVoiceConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1MultiSpeakerVoiceConfig]
        attr_accessor :multi_speaker_voice_config
      
        # Configuration for a voice.
        # Corresponds to the JSON property `voiceConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VoiceConfig]
        attr_accessor :voice_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @multi_speaker_voice_config = args[:multi_speaker_voice_config] if args.key?(:multi_speaker_voice_config)
          @voice_config = args[:voice_config] if args.key?(:voice_config)
        end
      end
      
      # Tool details that the model may use to generate response. A `Tool` is a piece
      # of code that enables the system to interact with external systems to perform
      # an action, or set of actions, outside of knowledge and scope of the model. A
      # Tool object should contain exactly one type of Tool (e.g FunctionDeclaration,
      # Retrieval or GoogleSearchRetrieval).
      class GoogleCloudAiplatformV1beta1Tool
        include Google::Apis::Core::Hashable
      
        # Tool that executes code generated by the model, and automatically returns the
        # result to the model. See also [ExecutableCode]and [CodeExecutionResult] which
        # are input and output to this tool.
        # Corresponds to the JSON property `codeExecution`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolCodeExecution]
        attr_accessor :code_execution
      
        # Tool to support computer use.
        # Corresponds to the JSON property `computerUse`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolComputerUse]
        attr_accessor :computer_use
      
        # Tool to search public web data, powered by Vertex AI Search and Sec4
        # compliance.
        # Corresponds to the JSON property `enterpriseWebSearch`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1EnterpriseWebSearch]
        attr_accessor :enterprise_web_search
      
        # Optional. Function tool type. One or more function declarations to be passed
        # to the model along with the current user query. Model may decide to call a
        # subset of these functions by populating FunctionCall in the response. User
        # should provide a FunctionResponse for each function call in the next turn.
        # Based on the function responses, Model will generate the final response back
        # to the user. Maximum 512 function declarations can be provided.
        # Corresponds to the JSON property `functionDeclarations`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionDeclaration>]
        attr_accessor :function_declarations
      
        # Tool to retrieve public maps data for grounding, powered by Google.
        # Corresponds to the JSON property `googleMaps`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GoogleMaps]
        attr_accessor :google_maps
      
        # GoogleSearch tool type. Tool to support Google Search in Model. Powered by
        # Google.
        # Corresponds to the JSON property `googleSearch`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolGoogleSearch]
        attr_accessor :google_search
      
        # Tool to retrieve public web data for grounding, powered by Google.
        # Corresponds to the JSON property `googleSearchRetrieval`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GoogleSearchRetrieval]
        attr_accessor :google_search_retrieval
      
        # ParallelAiSearch tool type. A tool that uses the Parallel.ai search engine for
        # grounding.
        # Corresponds to the JSON property `parallelAiSearch`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolParallelAiSearch]
        attr_accessor :parallel_ai_search
      
        # Defines a retrieval tool that model can call to access external knowledge.
        # Corresponds to the JSON property `retrieval`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Retrieval]
        attr_accessor :retrieval
      
        # Tool to support URL context.
        # Corresponds to the JSON property `urlContext`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1UrlContext]
        attr_accessor :url_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code_execution = args[:code_execution] if args.key?(:code_execution)
          @computer_use = args[:computer_use] if args.key?(:computer_use)
          @enterprise_web_search = args[:enterprise_web_search] if args.key?(:enterprise_web_search)
          @function_declarations = args[:function_declarations] if args.key?(:function_declarations)
          @google_maps = args[:google_maps] if args.key?(:google_maps)
          @google_search = args[:google_search] if args.key?(:google_search)
          @google_search_retrieval = args[:google_search_retrieval] if args.key?(:google_search_retrieval)
          @parallel_ai_search = args[:parallel_ai_search] if args.key?(:parallel_ai_search)
          @retrieval = args[:retrieval] if args.key?(:retrieval)
          @url_context = args[:url_context] if args.key?(:url_context)
        end
      end
      
      # Tool that executes code generated by the model, and automatically returns the
      # result to the model. See also [ExecutableCode]and [CodeExecutionResult] which
      # are input and output to this tool.
      class GoogleCloudAiplatformV1beta1ToolCodeExecution
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Tool to support computer use.
      class GoogleCloudAiplatformV1beta1ToolComputerUse
        include Google::Apis::Core::Hashable
      
        # Required. The environment being operated.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Optional. By default, [predefined functions](https://cloud.google.com/vertex-
        # ai/generative-ai/docs/computer-use#supported-actions) are included in the
        # final model call. Some of them can be explicitly excluded from being
        # automatically included. This can serve two purposes: 1. Using a more
        # restricted / different action space. 2. Improving the definitions /
        # instructions of predefined functions.
        # Corresponds to the JSON property `excludedPredefinedFunctions`
        # @return [Array<String>]
        attr_accessor :excluded_predefined_functions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
          @excluded_predefined_functions = args[:excluded_predefined_functions] if args.key?(:excluded_predefined_functions)
        end
      end
      
      # Tool config. This config is shared for all tools provided in the request.
      class GoogleCloudAiplatformV1beta1ToolConfig
        include Google::Apis::Core::Hashable
      
        # Function calling config.
        # Corresponds to the JSON property `functionCallingConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionCallingConfig]
        attr_accessor :function_calling_config
      
        # Retrieval config.
        # Corresponds to the JSON property `retrievalConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RetrievalConfig]
        attr_accessor :retrieval_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_calling_config = args[:function_calling_config] if args.key?(:function_calling_config)
          @retrieval_config = args[:retrieval_config] if args.key?(:retrieval_config)
        end
      end
      
      # GoogleSearch tool type. Tool to support Google Search in Model. Powered by
      # Google.
      class GoogleCloudAiplatformV1beta1ToolGoogleSearch
        include Google::Apis::Core::Hashable
      
        # Optional. Sites with confidence level chosen & above this value will be
        # blocked from the search results.
        # Corresponds to the JSON property `blockingConfidence`
        # @return [String]
        attr_accessor :blocking_confidence
      
        # Optional. List of domains to be excluded from the search results. The default
        # limit is 2000 domains. Example: ["amazon.com", "facebook.com"].
        # Corresponds to the JSON property `excludeDomains`
        # @return [Array<String>]
        attr_accessor :exclude_domains
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocking_confidence = args[:blocking_confidence] if args.key?(:blocking_confidence)
          @exclude_domains = args[:exclude_domains] if args.key?(:exclude_domains)
        end
      end
      
      # ParallelAiSearch tool type. A tool that uses the Parallel.ai search engine for
      # grounding.
      class GoogleCloudAiplatformV1beta1ToolParallelAiSearch
        include Google::Apis::Core::Hashable
      
        # Optional. The API key for ParallelAiSearch. If an API key is not provided, the
        # system will attempt to verify access by checking for an active Parallel.ai
        # subscription through the Google Cloud Marketplace. See https://docs.parallel.
        # ai/search/search-quickstart for more details.
        # Corresponds to the JSON property `apiKey`
        # @return [String]
        attr_accessor :api_key
      
        # Optional. Custom configs for ParallelAiSearch. This field can be used to pass
        # any parameter from the Parallel.ai Search API. See the Parallel.ai
        # documentation for the full list of available parameters and their usage: https:
        # //docs.parallel.ai/api-reference/search-beta/search Currently only `
        # source_policy`, `excerpts`, `max_results`, `mode`, `fetch_policy` can be set
        # via this field. For example: ` "source_policy": ` "include_domains": ["google.
        # com", "wikipedia.org"], "exclude_domains": ["example.com"] `, "fetch_policy": `
        # "max_age_seconds": 3600 ` `
        # Corresponds to the JSON property `customConfigs`
        # @return [Hash<String,Object>]
        attr_accessor :custom_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_key = args[:api_key] if args.key?(:api_key)
          @custom_configs = args[:custom_configs] if args.key?(:custom_configs)
        end
      end
      
      # Tool to support URL context.
      class GoogleCloudAiplatformV1beta1UrlContext
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata returned when the model uses the `url_context` tool to get
      # information from a user-provided URL.
      class GoogleCloudAiplatformV1beta1UrlContextMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. A list of URL metadata, with one entry for each URL retrieved by
        # the tool.
        # Corresponds to the JSON property `urlMetadata`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1UrlMetadata>]
        attr_accessor :url_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url_metadata = args[:url_metadata] if args.key?(:url_metadata)
        end
      end
      
      # The metadata for a single URL retrieval.
      class GoogleCloudAiplatformV1beta1UrlMetadata
        include Google::Apis::Core::Hashable
      
        # The URL retrieved by the tool.
        # Corresponds to the JSON property `retrievedUrl`
        # @return [String]
        attr_accessor :retrieved_url
      
        # The status of the URL retrieval.
        # Corresponds to the JSON property `urlRetrievalStatus`
        # @return [String]
        attr_accessor :url_retrieval_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retrieved_url = args[:retrieved_url] if args.key?(:retrieved_url)
          @url_retrieval_status = args[:url_retrieval_status] if args.key?(:url_retrieval_status)
        end
      end
      
      # Retrieve from Vertex AI Search datastore or engine for grounding. datastore
      # and engine are mutually exclusive. See https://cloud.google.com/products/agent-
      # builder
      class GoogleCloudAiplatformV1beta1VertexAiSearch
        include Google::Apis::Core::Hashable
      
        # Specifications that define the specific DataStores to be searched, along with
        # configurations for those data stores. This is only considered for Engines with
        # multiple data stores. It should only be set if engine is used.
        # Corresponds to the JSON property `dataStoreSpecs`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexAiSearchDataStoreSpec>]
        attr_accessor :data_store_specs
      
        # Optional. Fully-qualified Vertex AI Search data store resource ID. Format: `
        # projects/`project`/locations/`location`/collections/`collection`/dataStores/`
        # dataStore``
        # Corresponds to the JSON property `datastore`
        # @return [String]
        attr_accessor :datastore
      
        # Optional. Fully-qualified Vertex AI Search engine resource ID. Format: `
        # projects/`project`/locations/`location`/collections/`collection`/engines/`
        # engine``
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # Optional. Filter strings to be passed to the search API.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. Number of search results to return per query. The default value is
        # 10. The maximumm allowed value is 10.
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store_specs = args[:data_store_specs] if args.key?(:data_store_specs)
          @datastore = args[:datastore] if args.key?(:datastore)
          @engine = args[:engine] if args.key?(:engine)
          @filter = args[:filter] if args.key?(:filter)
          @max_results = args[:max_results] if args.key?(:max_results)
        end
      end
      
      # Define data stores within engine to filter on in a search call and
      # configurations for those data stores. For more information, see https://cloud.
      # google.com/generative-ai-app-builder/docs/reference/rpc/google.cloud.
      # discoveryengine.v1#datastorespec
      class GoogleCloudAiplatformV1beta1VertexAiSearchDataStoreSpec
        include Google::Apis::Core::Hashable
      
        # Full resource name of DataStore, such as Format: `projects/`project`/locations/
        # `location`/collections/`collection`/dataStores/`dataStore``
        # Corresponds to the JSON property `dataStore`
        # @return [String]
        attr_accessor :data_store
      
        # Optional. Filter specification to filter documents in the data store specified
        # by data_store field. For more information on filtering, see [Filtering](https:/
        # /cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_store = args[:data_store] if args.key?(:data_store)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Retrieve from Vertex RAG Store for grounding.
      class GoogleCloudAiplatformV1beta1VertexRagStore
        include Google::Apis::Core::Hashable
      
        # Optional. Deprecated. Please use rag_resources instead.
        # Corresponds to the JSON property `ragCorpora`
        # @return [Array<String>]
        attr_accessor :rag_corpora
      
        # Optional. The representation of the rag source. It can be used to specify
        # corpus only or ragfiles. Currently only support one corpus or multiple files
        # from one corpus. In the future we may open up multiple corpora support.
        # Corresponds to the JSON property `ragResources`
        # @return [Array<Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexRagStoreRagResource>]
        attr_accessor :rag_resources
      
        # Specifies the context retrieval config.
        # Corresponds to the JSON property `ragRetrievalConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1RagRetrievalConfig]
        attr_accessor :rag_retrieval_config
      
        # Optional. Number of top k results to return from the selected corpora.
        # Corresponds to the JSON property `similarityTopK`
        # @return [Fixnum]
        attr_accessor :similarity_top_k
      
        # Optional. Currently only supported for Gemini Multimodal Live API. In Gemini
        # Multimodal Live API, if `store_context` bool is specified, Gemini will
        # leverage it to automatically memorize the interactions between the client and
        # Gemini, and retrieve context when needed to augment the response generation
        # for users' ongoing and future interactions.
        # Corresponds to the JSON property `storeContext`
        # @return [Boolean]
        attr_accessor :store_context
        alias_method :store_context?, :store_context
      
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
          @rag_resources = args[:rag_resources] if args.key?(:rag_resources)
          @rag_retrieval_config = args[:rag_retrieval_config] if args.key?(:rag_retrieval_config)
          @similarity_top_k = args[:similarity_top_k] if args.key?(:similarity_top_k)
          @store_context = args[:store_context] if args.key?(:store_context)
          @vector_distance_threshold = args[:vector_distance_threshold] if args.key?(:vector_distance_threshold)
        end
      end
      
      # The definition of the Rag resource.
      class GoogleCloudAiplatformV1beta1VertexRagStoreRagResource
        include Google::Apis::Core::Hashable
      
        # Optional. RagCorpora resource name. Format: `projects/`project`/locations/`
        # location`/ragCorpora/`rag_corpus``
        # Corresponds to the JSON property `ragCorpus`
        # @return [String]
        attr_accessor :rag_corpus
      
        # Optional. rag_file_id. The files should be in the same rag_corpus set in
        # rag_corpus field.
        # Corresponds to the JSON property `ragFileIds`
        # @return [Array<String>]
        attr_accessor :rag_file_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rag_corpus = args[:rag_corpus] if args.key?(:rag_corpus)
          @rag_file_ids = args[:rag_file_ids] if args.key?(:rag_file_ids)
        end
      end
      
      # Provides metadata for a video, including the start and end offsets for
      # clipping and the frame rate.
      class GoogleCloudAiplatformV1beta1VideoMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The end offset of the video.
        # Corresponds to the JSON property `endOffset`
        # @return [String]
        attr_accessor :end_offset
      
        # Optional. The frame rate of the video sent to the model. If not specified, the
        # default value is 1.0. The valid range is (0.0, 24.0].
        # Corresponds to the JSON property `fps`
        # @return [Float]
        attr_accessor :fps
      
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
          @fps = args[:fps] if args.key?(:fps)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
        end
      end
      
      # Configuration for a voice.
      class GoogleCloudAiplatformV1beta1VoiceConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for a prebuilt voice.
        # Corresponds to the JSON property `prebuiltVoiceConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1PrebuiltVoiceConfig]
        attr_accessor :prebuilt_voice_config
      
        # The configuration for the replicated voice to use.
        # Corresponds to the JSON property `replicatedVoiceConfig`
        # @return [Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ReplicatedVoiceConfig]
        attr_accessor :replicated_voice_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prebuilt_voice_config = args[:prebuilt_voice_config] if args.key?(:prebuilt_voice_config)
          @replicated_voice_config = args[:replicated_voice_config] if args.key?(:replicated_voice_config)
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
    end
  end
end
