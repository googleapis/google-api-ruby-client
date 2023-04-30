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
    module FirebaseappcheckV1beta
      
      class GoogleFirebaseAppcheckV1betaAppAttestConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaAppCheckToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaAttestationTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetPlayIntegrityConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaDebugToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaDeviceCheckConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangePlayIntegrityTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaListDebugTokensResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaPlayIntegrityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaPublicJwk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaPublicJwkSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaRecaptchaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaRecaptchaV3Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaSafetyNetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaUpdateServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseAppcheckV1betaAppAttestConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaAppCheckToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation_token, as: 'attestationToken'
          property :token, as: 'token'
          property :ttl, as: 'ttl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaAttestationTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation_token, as: 'attestationToken'
          property :ttl, as: 'ttl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetPlayIntegrityConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPlayIntegrityConfig, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPlayIntegrityConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaV3Config, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaV3Config::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaUpdateServiceRequest, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaUpdateServiceRequest::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :services, as: 'services', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaDebugToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :token, as: 'token'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaDeviceCheckConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :name, as: 'name'
          property :private_key, as: 'privateKey'
          property :private_key_set, as: 'privateKeySet'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact, :base64 => true, as: 'artifact'
          property :assertion, :base64 => true, as: 'assertion'
          property :challenge, :base64 => true, as: 'challenge'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation_statement, :base64 => true, as: 'attestationStatement'
          property :challenge, :base64 => true, as: 'challenge'
          property :key_id, :base64 => true, as: 'keyId'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_check_token, as: 'appCheckToken', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppCheckToken, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppCheckToken::Representation
      
          property :artifact, :base64 => true, as: 'artifact'
          property :attestation_token, as: 'attestationToken', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_token, as: 'customToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_token, as: 'debugToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_token, as: 'deviceToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangePlayIntegrityTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :play_integrity_token, as: 'playIntegrityToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recaptcha_enterprise_token, as: 'recaptchaEnterpriseToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recaptcha_token, as: 'recaptchaToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recaptcha_v3_token, as: 'recaptchaV3Token'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :safety_net_token, as: 'safetyNetToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :challenge, :base64 => true, as: 'challenge'
          property :ttl, as: 'ttl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :challenge, as: 'challenge'
          property :ttl, as: 'ttl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaListDebugTokensResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :debug_tokens, as: 'debugTokens', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaPlayIntegrityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaPublicJwk
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
      
      class GoogleFirebaseAppcheckV1betaPublicJwkSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPublicJwk, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPublicJwk::Representation
      
        end
      end
      
      class GoogleFirebaseAppcheckV1betaRecaptchaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :site_secret, as: 'siteSecret'
          property :site_secret_set, as: 'siteSecretSet'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :site_key, as: 'siteKey'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaRecaptchaV3Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :site_secret, as: 'siteSecret'
          property :site_secret_set, as: 'siteSecretSet'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaSafetyNetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :token_ttl, as: 'tokenTtl'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforcement_mode, as: 'enforcementMode'
          property :name, as: 'name'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaUpdateServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service', class: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService, decorator: Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_check_token, as: 'appCheckToken'
        end
      end
      
      class GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :already_consumed, as: 'alreadyConsumed'
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
