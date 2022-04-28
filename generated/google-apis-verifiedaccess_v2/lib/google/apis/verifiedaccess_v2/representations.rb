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
    module VerifiedaccessV2
      
      class Challenge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyChallengeResponseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyChallengeResponseResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Challenge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternative_challenge, :base64 => true, as: 'alternativeChallenge'
          property :challenge, :base64 => true, as: 'challenge'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class VerifyChallengeResponseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :challenge_response, :base64 => true, as: 'challengeResponse'
          property :expected_identity, as: 'expectedIdentity'
        end
      end
      
      class VerifyChallengeResponseResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_permanent_id, as: 'devicePermanentId'
          property :device_signal, as: 'deviceSignal'
          property :key_trust_level, as: 'keyTrustLevel'
          property :signed_public_key_and_challenge, as: 'signedPublicKeyAndChallenge'
        end
      end
    end
  end
end
