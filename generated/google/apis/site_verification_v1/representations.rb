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
    module SiteVerificationV1
      class GettokenRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GettokenResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ResourceRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class GettokenRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :site, as: 'site', class: Google::Apis::SiteVerificationV1::GettokenRequest::Site do
          property :identifier, as: 'identifier'
          property :type, as: 'type'
        end
        
        property :verification_method, as: 'verificationMethod'
      end

      # @private
      class GettokenResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :method_prop, as: 'method'
        property :token, as: 'token'
      end

      # @private
      class ListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::SiteVerificationV1::Resource, decorator: Google::Apis::SiteVerificationV1::ResourceRepresentation
      end

      # @private
      class ResourceRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :owners, as: 'owners'
        
        property :site, as: 'site', class: Google::Apis::SiteVerificationV1::Resource::Site do
          property :identifier, as: 'identifier'
          property :type, as: 'type'
        end
      end
    end
  end
end
