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
    module FirebaseappcheckV1
      
      class GoogleFirebaseAppcheckV1AppAttestConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1AppCheckToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1BatchUpdateServicesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1BatchUpdateServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1DebugToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1DeviceCheckConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ListDebugTokensResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1PlayIntegrityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1PublicJwk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1PublicJwkSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1RecaptchaV3Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1SafetyNetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1UpdateServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1AppAttestConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1AppCheckToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token, as: 'token'
          property :ttl, as: 'ttl'
        end
      end
      
      class GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1BatchUpdateServicesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1UpdateServiceRequest, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1UpdateServiceRequest::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleFirebaseAppcheckV1BatchUpdateServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :services, as: 'services', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1DebugToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :token, as: 'token'
        end
      end
      
      class GoogleFirebaseAppcheckV1DeviceCheckConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :name, as: 'name'
          property :private_key, as: 'privateKey'
          property :private_key_set, as: 'privateKeySet'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact, :base64 => true, as: 'artifact'
          property :assertion, :base64 => true, as: 'assertion'
          property :challenge, :base64 => true, as: 'challenge'
          property :limited_use, as: 'limitedUse'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation_statement, :base64 => true, as: 'attestationStatement'
          property :challenge, :base64 => true, as: 'challenge'
          property :key_id, :base64 => true, as: 'keyId'
          property :limited_use, as: 'limitedUse'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_check_token, as: 'appCheckToken', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken::Representation
      
          property :artifact, :base64 => true, as: 'artifact'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_token, as: 'customToken'
          property :limited_use, as: 'limitedUse'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_token, as: 'debugToken'
          property :limited_use, as: 'limitedUse'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_token, as: 'deviceToken'
          property :limited_use, as: 'limitedUse'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :limited_use, as: 'limitedUse'
          property :play_integrity_token, as: 'playIntegrityToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :limited_use, as: 'limitedUse'
          property :recaptcha_enterprise_token, as: 'recaptchaEnterpriseToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :limited_use, as: 'limitedUse'
          property :recaptcha_v3_token, as: 'recaptchaV3Token'
        end
      end
      
      class GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :safety_net_token, as: 'safetyNetToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :challenge, :base64 => true, as: 'challenge'
          property :ttl, as: 'ttl'
        end
      end
      
      class GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :challenge, as: 'challenge'
          property :ttl, as: 'ttl'
        end
      end
      
      class GoogleFirebaseAppcheckV1ListDebugTokensResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :debug_tokens, as: 'debugTokens', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1PlayIntegrityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1PublicJwk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alg, as: 'alg'
          property :e, as: 'e'
          property :kid, as: 'kid'
          property :kty, as: 'kty'
          property :n, as: 'n'
          property :use, as: 'use'
        end
      end
      
      class GoogleFirebaseAppcheckV1PublicJwkSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PublicJwk, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PublicJwk::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :site_key, as: 'siteKey'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1RecaptchaV3Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :site_secret, as: 'siteSecret'
          property :site_secret_set, as: 'siteSecretSet'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1SafetyNetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforcement_mode, as: 'enforcementMode'
          property :name, as: 'name'
        end
      end
      
      class GoogleFirebaseAppcheckV1UpdateServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service', class: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service, decorator: Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
