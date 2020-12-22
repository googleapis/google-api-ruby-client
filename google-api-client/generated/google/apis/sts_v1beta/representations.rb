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
    module StsV1beta
      
      class GoogleIdentityStsV1betaExchangeTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1betaExchangeTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIdentityStsV1betaExchangeTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :grant_type, as: 'grantType'
          property :options, as: 'options'
          property :requested_token_type, as: 'requestedTokenType'
          property :scope, as: 'scope'
          property :subject_token, as: 'subjectToken'
          property :subject_token_type, as: 'subjectTokenType'
        end
      end
      
      class GoogleIdentityStsV1betaExchangeTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'access_token'
          property :expires_in, as: 'expires_in'
          property :issued_token_type, as: 'issued_token_type'
          property :token_type, as: 'token_type'
        end
      end
    end
  end
end
