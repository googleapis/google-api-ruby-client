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
      
      # Result message for VerifiedAccess.CreateChallenge.
      class Challenge
        include Google::Apis::Core::Hashable
      
        # Challenge generated with the old signing key, the bytes representation of
        # SignedData (this will only be present during key rotation).
        # Corresponds to the JSON property `alternativeChallenge`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :alternative_challenge
      
        # Generated challenge, the bytes representation of SignedData.
        # Corresponds to the JSON property `challenge`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :challenge
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternative_challenge = args[:alternative_challenge] if args.key?(:alternative_challenge)
          @challenge = args[:challenge] if args.key?(:challenge)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Signed ChallengeResponse.
      class VerifyChallengeResponseRequest
        include Google::Apis::Core::Hashable
      
        # Required. The generated response to the challenge, the bytes representation of
        # SignedData.
        # Corresponds to the JSON property `challengeResponse`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :challenge_response
      
        # Optional. Service can optionally provide identity information about the device
        # or user associated with the key. For an EMK, this value is the enrolled domain.
        # For an EUK, this value is the user's email address. If present, this value
        # will be checked against contents of the response, and verification will fail
        # if there is no match.
        # Corresponds to the JSON property `expectedIdentity`
        # @return [String]
        attr_accessor :expected_identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @challenge_response = args[:challenge_response] if args.key?(:challenge_response)
          @expected_identity = args[:expected_identity] if args.key?(:expected_identity)
        end
      end
      
      # Result message for VerifiedAccess.VerifyChallengeResponse.
      class VerifyChallengeResponseResult
        include Google::Apis::Core::Hashable
      
        # Device permanent id is returned in this field (for the machine response only).
        # Corresponds to the JSON property `devicePermanentId`
        # @return [String]
        attr_accessor :device_permanent_id
      
        # Device signal in json string representation.
        # Corresponds to the JSON property `deviceSignal`
        # @return [String]
        attr_accessor :device_signal
      
        # Device attested key trust level.
        # Corresponds to the JSON property `keyTrustLevel`
        # @return [String]
        attr_accessor :key_trust_level
      
        # Certificate Signing Request (in the SPKAC format, base64 encoded) is returned
        # in this field. This field will be set only if device has included CSR in its
        # challenge response. (the option to include CSR is now available for both user
        # and machine responses)
        # Corresponds to the JSON property `signedPublicKeyAndChallenge`
        # @return [String]
        attr_accessor :signed_public_key_and_challenge
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_permanent_id = args[:device_permanent_id] if args.key?(:device_permanent_id)
          @device_signal = args[:device_signal] if args.key?(:device_signal)
          @key_trust_level = args[:key_trust_level] if args.key?(:key_trust_level)
          @signed_public_key_and_challenge = args[:signed_public_key_and_challenge] if args.key?(:signed_public_key_and_challenge)
        end
      end
    end
  end
end
