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
    module ParametermanagerV1
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ParametermanagerV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing ParameterVersions
      class ListParameterVersionsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of ParameterVersions
        # Corresponds to the JSON property `parameterVersions`
        # @return [Array<Google::Apis::ParametermanagerV1::ParameterVersion>]
        attr_accessor :parameter_versions
      
        # Unordered list. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @parameter_versions = args[:parameter_versions] if args.key?(:parameter_versions)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Parameters
      class ListParametersResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Parameters
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::ParametermanagerV1::Parameter>]
        attr_accessor :parameters
      
        # Unordered list. Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @parameters = args[:parameters] if args.key?(:parameters)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Message describing Parameter resource
      class Parameter
        include Google::Apis::Core::Hashable
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Specifies the format of a Parameter.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Optional. Customer managed encryption key (CMEK) to use for encrypting the
        # Parameter Versions. If not set, the default Google-managed encryption key will
        # be used. Cloud KMS CryptoKeys must reside in the same location as the
        # Parameter. The expected format is `projects/*/locations/*/keyRings/*/
        # cryptoKeys/*`.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. [Output only] The resource name of the Parameter in the format `
        # projects/*/locations/*/parameters/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output-only policy member strings of a Google Cloud resource's built-in
        # identity.
        # Corresponds to the JSON property `policyMember`
        # @return [Google::Apis::ParametermanagerV1::ResourcePolicyMember]
        attr_accessor :policy_member
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @format = args[:format] if args.key?(:format)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @policy_member = args[:policy_member] if args.key?(:policy_member)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message describing ParameterVersion resource
      class ParameterVersion
        include Google::Apis::Core::Hashable
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Disabled boolean to determine if a ParameterVersion acts as a
        # metadata only resource (payload is never returned if disabled is true). If
        # true any calls will always default to BASIC view even if the user explicitly
        # passes FULL view as part of the request. A render call on a disabled resource
        # fails with an error. Default value is False.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. Output only. [Output only] The resource name of the KMS key version
        # used to encrypt the ParameterVersion payload. This field is populated only if
        # the Parameter resource has customer managed encryption key (CMEK) configured.
        # Corresponds to the JSON property `kmsKeyVersion`
        # @return [String]
        attr_accessor :kms_key_version
      
        # Identifier. [Output only] The resource name of the ParameterVersion in the
        # format `projects/*/locations/*/parameters/*/versions/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message for storing a ParameterVersion resource's payload data
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::ParametermanagerV1::ParameterVersionPayload]
        attr_accessor :payload
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @disabled = args[:disabled] if args.key?(:disabled)
          @kms_key_version = args[:kms_key_version] if args.key?(:kms_key_version)
          @name = args[:name] if args.key?(:name)
          @payload = args[:payload] if args.key?(:payload)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message for storing a ParameterVersion resource's payload data
      class ParameterVersionPayload
        include Google::Apis::Core::Hashable
      
        # Required. bytes data for storing payload.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
        end
      end
      
      # Message describing RenderParameterVersionResponse resource
      class RenderParameterVersionResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Resource identifier of a ParameterVersion in the format `projects/
        # */locations/*/parameters/*/versions/*`.
        # Corresponds to the JSON property `parameterVersion`
        # @return [String]
        attr_accessor :parameter_version
      
        # Message for storing a ParameterVersion resource's payload data
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::ParametermanagerV1::ParameterVersionPayload]
        attr_accessor :payload
      
        # Output only. Server generated rendered version of the user provided payload
        # data (ParameterVersionPayload) which has substitutions of all (if any)
        # references to a SecretManager SecretVersion resources. This substitution only
        # works for a Parameter which is in JSON or YAML format.
        # Corresponds to the JSON property `renderedPayload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :rendered_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_version = args[:parameter_version] if args.key?(:parameter_version)
          @payload = args[:payload] if args.key?(:payload)
          @rendered_payload = args[:rendered_payload] if args.key?(:rendered_payload)
        end
      end
      
      # Output-only policy member strings of a Google Cloud resource's built-in
      # identity.
      class ResourcePolicyMember
        include Google::Apis::Core::Hashable
      
        # Output only. IAM policy binding member referring to a Google Cloud resource by
        # user-assigned name (https://google.aip.dev/122). If a resource is deleted and
        # recreated with the same name, the binding will be applicable to the new
        # resource. Example: `principal://parametermanager.googleapis.com/projects/12345/
        # name/locations/us-central1-a/parameters/my-parameter`
        # Corresponds to the JSON property `iamPolicyNamePrincipal`
        # @return [String]
        attr_accessor :iam_policy_name_principal
      
        # Output only. IAM policy binding member referring to a Google Cloud resource by
        # system-assigned unique identifier (https://google.aip.dev/148#uid). If a
        # resource is deleted and recreated with the same name, the binding will not be
        # applicable to the new resource Example: `principal://parametermanager.
        # googleapis.com/projects/12345/uid/locations/us-central1-a/parameters/a918fed5`
        # Corresponds to the JSON property `iamPolicyUidPrincipal`
        # @return [String]
        attr_accessor :iam_policy_uid_principal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam_policy_name_principal = args[:iam_policy_name_principal] if args.key?(:iam_policy_name_principal)
          @iam_policy_uid_principal = args[:iam_policy_uid_principal] if args.key?(:iam_policy_uid_principal)
        end
      end
    end
  end
end
