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
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListParameterVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListParametersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Parameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParameterVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParameterVersionPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RenderParameterVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourcePolicyMember
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ParametermanagerV1::Location, decorator: Google::Apis::ParametermanagerV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListParameterVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :parameter_versions, as: 'parameterVersions', class: Google::Apis::ParametermanagerV1::ParameterVersion, decorator: Google::Apis::ParametermanagerV1::ParameterVersion::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListParametersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :parameters, as: 'parameters', class: Google::Apis::ParametermanagerV1::Parameter, decorator: Google::Apis::ParametermanagerV1::Parameter::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Parameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :format, as: 'format'
          property :kms_key, as: 'kmsKey'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :policy_member, as: 'policyMember', class: Google::Apis::ParametermanagerV1::ResourcePolicyMember, decorator: Google::Apis::ParametermanagerV1::ResourcePolicyMember::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ParameterVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :disabled, as: 'disabled'
          property :kms_key_version, as: 'kmsKeyVersion'
          property :name, as: 'name'
          property :payload, as: 'payload', class: Google::Apis::ParametermanagerV1::ParameterVersionPayload, decorator: Google::Apis::ParametermanagerV1::ParameterVersionPayload::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ParameterVersionPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
        end
      end
      
      class RenderParameterVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter_version, as: 'parameterVersion'
          property :payload, as: 'payload', class: Google::Apis::ParametermanagerV1::ParameterVersionPayload, decorator: Google::Apis::ParametermanagerV1::ParameterVersionPayload::Representation
      
          property :rendered_payload, :base64 => true, as: 'renderedPayload'
        end
      end
      
      class ResourcePolicyMember
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam_policy_name_principal, as: 'iamPolicyNamePrincipal'
          property :iam_policy_uid_principal, as: 'iamPolicyUidPrincipal'
        end
      end
    end
  end
end
