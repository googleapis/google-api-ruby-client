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
      
      # An app's App Attest configuration object. This configuration controls certain
      # properties of the `AppCheckToken` returned by ExchangeAppAttestAttestation and
      # ExchangeAppAttestAssertion, such as its ttl. Note that the Team ID registered
      # with your app is used as part of the validation process. Please register it
      # via the Firebase Console or programmatically via the [Firebase Management
      # Service](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/
      # projects.iosApps/patch).
      class GoogleFirebaseAppcheckV1betaAppAttestConfig
        include Google::Apis::Core::Hashable
      
        # Required. The relative resource name of the App Attest configuration object,
        # in the format: ``` projects/`project_number`/apps/`app_id`/appAttestConfig ```
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies the duration for which App Check tokens exchanged from App Attest
        # artifacts will be valid. If unset, a default value of 1 hour is assumed. Must
        # be between 30 minutes and 7 days, inclusive.
        # Corresponds to the JSON property `tokenTtl`
        # @return [String]
        attr_accessor :token_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @token_ttl = args[:token_ttl] if args.key?(:token_ttl)
        end
      end
      
      # Encapsulates an *App Check token*, which are used to access Firebase services
      # protected by App Check.
      class GoogleFirebaseAppcheckV1betaAppCheckToken
        include Google::Apis::Core::Hashable
      
        # An App Check token. App Check tokens are signed [JWTs](https://tools.ietf.org/
        # html/rfc7519) containing claims that identify the attested app and Firebase
        # project. This token is used to access Firebase services protected by App Check.
        # Corresponds to the JSON property `attestationToken`
        # @return [String]
        attr_accessor :attestation_token
      
        # An App Check token. App Check tokens are signed [JWTs](https://tools.ietf.org/
        # html/rfc7519) containing claims that identify the attested app and Firebase
        # project. This token is used to access Firebase services protected by App Check.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The duration from the time this token is minted until its expiration. This
        # field is intended to ease client-side token management, since the client may
        # have clock skew, but is still able to accurately measure a duration.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation_token = args[:attestation_token] if args.key?(:attestation_token)
          @token = args[:token] if args.key?(:token)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # Encapsulates an *App Check token*, which are used to access Firebase services
      # protected by App Check.
      class GoogleFirebaseAppcheckV1betaAttestationTokenResponse
        include Google::Apis::Core::Hashable
      
        # An App Check token. App Check tokens are signed [JWTs](https://tools.ietf.org/
        # html/rfc7519) containing claims that identify the attested app and Firebase
        # project. This token is used to access Firebase services protected by App Check.
        # Corresponds to the JSON property `attestationToken`
        # @return [String]
        attr_accessor :attestation_token
      
        # The duration from the time this token is minted until its expiration. This
        # field is intended to ease client-side token management, since the client may
        # have clock skew, but is still able to accurately measure a duration.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation_token = args[:attestation_token] if args.key?(:attestation_token)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # Response message for the BatchGetAppAttestConfigs method.
      class GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse
        include Google::Apis::Core::Hashable
      
        # AppAttestConfigs retrieved.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig>]
        attr_accessor :configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
        end
      end
      
      # Response message for the BatchGetDeviceCheckConfigs method.
      class GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
        include Google::Apis::Core::Hashable
      
        # DeviceCheckConfigs retrieved.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig>]
        attr_accessor :configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
        end
      end
      
      # Response message for the BatchGetPlayIntegrityConfigs method.
      class GoogleFirebaseAppcheckV1betaBatchGetPlayIntegrityConfigsResponse
        include Google::Apis::Core::Hashable
      
        # PlayIntegrityConfigs retrieved.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPlayIntegrityConfig>]
        attr_accessor :configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
        end
      end
      
      # Response message for the BatchGetRecaptchaConfigs method.
      class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
        include Google::Apis::Core::Hashable
      
        # RecaptchaConfigs retrieved.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig>]
        attr_accessor :configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
        end
      end
      
      # Response message for the BatchGetRecaptchaEnterpriseConfigs method.
      class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaEnterpriseConfigsResponse
        include Google::Apis::Core::Hashable
      
        # RecaptchaEnterpriseConfigs retrieved.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig>]
        attr_accessor :configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
        end
      end
      
      # Response message for the BatchGetRecaptchaV3Configs method.
      class GoogleFirebaseAppcheckV1betaBatchGetRecaptchaV3ConfigsResponse
        include Google::Apis::Core::Hashable
      
        # RecaptchaV3Configs retrieved.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaV3Config>]
        attr_accessor :configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
        end
      end
      
      # Response message for the BatchGetSafetyNetConfigs method.
      class GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse
        include Google::Apis::Core::Hashable
      
        # SafetyNetConfigs retrieved.
        # Corresponds to the JSON property `configs`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig>]
        attr_accessor :configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configs = args[:configs] if args.key?(:configs)
        end
      end
      
      # Request message for the BatchUpdateServices method.
      class GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request messages specifying the Services to update. A maximum of
        # 100 objects can be updated in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaUpdateServiceRequest>]
        attr_accessor :requests
      
        # Optional. A comma-separated list of names of fields in the Services to update.
        # Example: `display_name`. If this field is present, the `update_mask` field in
        # the UpdateServiceRequest messages must all match this field, or the entire
        # batch fails and no updates will be committed.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Response message for the BatchUpdateServices method.
      class GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse
        include Google::Apis::Core::Hashable
      
        # Service objects after the updates have been applied.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # A *debug token* is a secret used during the development or integration testing
      # of an app. It essentially allows the development or integration testing to
      # bypass app attestation while still allowing App Check to enforce protection on
      # supported production Firebase services.
      class GoogleFirebaseAppcheckV1betaDebugToken
        include Google::Apis::Core::Hashable
      
        # Required. A human readable display name used to identify this debug token.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The relative resource name of the debug token, in the format: ```
        # projects/`project_number`/apps/`app_id`/debugTokens/`debug_token_id` ```
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Input only. Immutable. The secret token itself. Must be provided
        # during creation, and must be a UUID4, case insensitive. This field is
        # immutable once set, and cannot be provided during an UpdateDebugToken request.
        # You can, however, delete this debug token using DeleteDebugToken to revoke it.
        # For security reasons, this field will never be populated in any response.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # An app's DeviceCheck configuration object. This configuration is used by
      # ExchangeDeviceCheckToken to validate device tokens issued to apps by
      # DeviceCheck. It also controls certain properties of the returned `
      # AppCheckToken`, such as its ttl. Note that the Team ID registered with your
      # app is used as part of the validation process. Please register it via the
      # Firebase Console or programmatically via the [Firebase Management Service](
      # https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.
      # iosApps/patch).
      class GoogleFirebaseAppcheckV1betaDeviceCheckConfig
        include Google::Apis::Core::Hashable
      
        # Required. The key identifier of a private key enabled with DeviceCheck,
        # created in your Apple Developer account.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # Required. The relative resource name of the DeviceCheck configuration object,
        # in the format: ``` projects/`project_number`/apps/`app_id`/deviceCheckConfig ``
        # `
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Input only. The contents of the private key (`.p8`) file associated
        # with the key specified by `key_id`. For security reasons, this field will
        # never be populated in any response.
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # Output only. Whether the `private_key` field was previously set. Since we will
        # never return the `private_key` field, this field is the only way to find out
        # whether it was previously set.
        # Corresponds to the JSON property `privateKeySet`
        # @return [Boolean]
        attr_accessor :private_key_set
        alias_method :private_key_set?, :private_key_set
      
        # Specifies the duration for which App Check tokens exchanged from DeviceCheck
        # tokens will be valid. If unset, a default value of 1 hour is assumed. Must be
        # between 30 minutes and 7 days, inclusive.
        # Corresponds to the JSON property `tokenTtl`
        # @return [String]
        attr_accessor :token_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @name = args[:name] if args.key?(:name)
          @private_key = args[:private_key] if args.key?(:private_key)
          @private_key_set = args[:private_key_set] if args.key?(:private_key_set)
          @token_ttl = args[:token_ttl] if args.key?(:token_ttl)
        end
      end
      
      # Request message for the ExchangeAppAttestAssertion method.
      class GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The artifact returned by a previous call to
        # ExchangeAppAttestAttestation.
        # Corresponds to the JSON property `artifact`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :artifact
      
        # Required. The CBOR-encoded assertion returned by the client-side App Attest
        # API.
        # Corresponds to the JSON property `assertion`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :assertion
      
        # Required. A one-time challenge returned by an immediately prior call to
        # GenerateAppAttestChallenge.
        # Corresponds to the JSON property `challenge`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :challenge
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact = args[:artifact] if args.key?(:artifact)
          @assertion = args[:assertion] if args.key?(:assertion)
          @challenge = args[:challenge] if args.key?(:challenge)
        end
      end
      
      # Request message for the ExchangeAppAttestAttestation method.
      class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest
        include Google::Apis::Core::Hashable
      
        # Required. The App Attest statement returned by the client-side App Attest API.
        # This is a base64url encoded CBOR object in the JSON response.
        # Corresponds to the JSON property `attestationStatement`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :attestation_statement
      
        # Required. A one-time challenge returned by an immediately prior call to
        # GenerateAppAttestChallenge.
        # Corresponds to the JSON property `challenge`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :challenge
      
        # Required. The key ID generated by App Attest for the client app.
        # Corresponds to the JSON property `keyId`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :key_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation_statement = args[:attestation_statement] if args.key?(:attestation_statement)
          @challenge = args[:challenge] if args.key?(:challenge)
          @key_id = args[:key_id] if args.key?(:key_id)
        end
      end
      
      # Response message for the ExchangeAppAttestAttestation method.
      class GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse
        include Google::Apis::Core::Hashable
      
        # Encapsulates an *App Check token*, which are used to access Firebase services
        # protected by App Check.
        # Corresponds to the JSON property `appCheckToken`
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppCheckToken]
        attr_accessor :app_check_token
      
        # An artifact that can be used in future calls to ExchangeAppAttestAssertion.
        # Corresponds to the JSON property `artifact`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :artifact
      
        # Encapsulates an *App Check token*, which are used to access Firebase services
        # protected by App Check.
        # Corresponds to the JSON property `attestationToken`
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse]
        attr_accessor :attestation_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_check_token = args[:app_check_token] if args.key?(:app_check_token)
          @artifact = args[:artifact] if args.key?(:artifact)
          @attestation_token = args[:attestation_token] if args.key?(:attestation_token)
        end
      end
      
      # Request message for the ExchangeCustomToken method.
      class GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. A custom token signed using your project's Admin SDK service account
        # credentials.
        # Corresponds to the JSON property `customToken`
        # @return [String]
        attr_accessor :custom_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_token = args[:custom_token] if args.key?(:custom_token)
        end
      end
      
      # Request message for the ExchangeDebugToken method.
      class GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. A debug token secret. This string must match a debug token secret
        # previously created using CreateDebugToken.
        # Corresponds to the JSON property `debugToken`
        # @return [String]
        attr_accessor :debug_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_token = args[:debug_token] if args.key?(:debug_token)
        end
      end
      
      # Request message for the ExchangeDeviceCheckToken method.
      class GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The `device_token` as returned by Apple's client-side [DeviceCheck
        # API](https://developer.apple.com/documentation/devicecheck/dcdevice). This is
        # the base64 encoded `Data` (Swift) or `NSData` (ObjC) object.
        # Corresponds to the JSON property `deviceToken`
        # @return [String]
        attr_accessor :device_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_token = args[:device_token] if args.key?(:device_token)
        end
      end
      
      # Request message for the ExchangePlayIntegrityToken method.
      class GoogleFirebaseAppcheckV1betaExchangePlayIntegrityTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The [integrity verdict response token from Play Integrity](https://
        # developer.android.com/google/play/integrity/verdict#decrypt-verify) issued to
        # your app.
        # Corresponds to the JSON property `playIntegrityToken`
        # @return [String]
        attr_accessor :play_integrity_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @play_integrity_token = args[:play_integrity_token] if args.key?(:play_integrity_token)
        end
      end
      
      # Request message for the ExchangeRecaptchaEnterpriseToken method.
      class GoogleFirebaseAppcheckV1betaExchangeRecaptchaEnterpriseTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The reCAPTCHA token as returned by the [reCAPTCHA Enterprise
        # JavaScript API](https://cloud.google.com/recaptcha-enterprise/docs/instrument-
        # web-pages).
        # Corresponds to the JSON property `recaptchaEnterpriseToken`
        # @return [String]
        attr_accessor :recaptcha_enterprise_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recaptcha_enterprise_token = args[:recaptcha_enterprise_token] if args.key?(:recaptcha_enterprise_token)
        end
      end
      
      # Request message for the ExchangeRecaptchaToken method.
      class GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The reCAPTCHA token as returned by the [reCAPTCHA v3 JavaScript API](
        # https://developers.google.com/recaptcha/docs/v3).
        # Corresponds to the JSON property `recaptchaToken`
        # @return [String]
        attr_accessor :recaptcha_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recaptcha_token = args[:recaptcha_token] if args.key?(:recaptcha_token)
        end
      end
      
      # Request message for the ExchangeRecaptchaV3Token method.
      class GoogleFirebaseAppcheckV1betaExchangeRecaptchaV3TokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The reCAPTCHA token as returned by the [reCAPTCHA v3 JavaScript API](
        # https://developers.google.com/recaptcha/docs/v3).
        # Corresponds to the JSON property `recaptchaV3Token`
        # @return [String]
        attr_accessor :recaptcha_v3_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recaptcha_v3_token = args[:recaptcha_v3_token] if args.key?(:recaptcha_v3_token)
        end
      end
      
      # Request message for the ExchangeSafetyNetToken method.
      class GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The [SafetyNet attestation response](https://developer.android.com/
        # training/safetynet/attestation#request-attestation-step) issued to your app.
        # Corresponds to the JSON property `safetyNetToken`
        # @return [String]
        attr_accessor :safety_net_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @safety_net_token = args[:safety_net_token] if args.key?(:safety_net_token)
        end
      end
      
      # Request message for the GenerateAppAttestChallenge method.
      class GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the GenerateAppAttestChallenge method.
      class GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse
        include Google::Apis::Core::Hashable
      
        # A one-time use challenge for the client to pass to the App Attest API.
        # Corresponds to the JSON property `challenge`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :challenge
      
        # The duration from the time this challenge is minted until its expiration. This
        # field is intended to ease client-side token management, since the client may
        # have clock skew, but is still able to accurately measure a duration.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @challenge = args[:challenge] if args.key?(:challenge)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # Request message for the GeneratePlayIntegrityChallenge method.
      class GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the GeneratePlayIntegrityChallenge method.
      class GoogleFirebaseAppcheckV1betaGeneratePlayIntegrityChallengeResponse
        include Google::Apis::Core::Hashable
      
        # A one-time use [challenge](https://developer.android.com/google/play/integrity/
        # verdict#protect-against-replay-attacks) for the client to pass to the Play
        # Integrity API.
        # Corresponds to the JSON property `challenge`
        # @return [String]
        attr_accessor :challenge
      
        # The duration from the time this challenge is minted until its expiration. This
        # field is intended to ease client-side token management, since the client may
        # have clock skew, but is still able to accurately measure a duration.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @challenge = args[:challenge] if args.key?(:challenge)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # Response message for the ListDebugTokens method.
      class GoogleFirebaseAppcheckV1betaListDebugTokensResponse
        include Google::Apis::Core::Hashable
      
        # The DebugTokens retrieved.
        # Corresponds to the JSON property `debugTokens`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken>]
        attr_accessor :debug_tokens
      
        # If the result list is too large to fit in a single response, then a token is
        # returned. If the string is empty or omitted, then this response is the last
        # page of results. This token can be used in a subsequent call to
        # ListDebugTokens to find the next group of DebugTokens. Page tokens are short-
        # lived and should not be persisted.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_tokens = args[:debug_tokens] if args.key?(:debug_tokens)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the ListServices method.
      class GoogleFirebaseAppcheckV1betaListServicesResponse
        include Google::Apis::Core::Hashable
      
        # If the result list is too large to fit in a single response, then a token is
        # returned. If the string is empty or omitted, then this response is the last
        # page of results. This token can be used in a subsequent call to ListServices
        # to find the next group of Services. Page tokens are short-lived and should not
        # be persisted.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Services retrieved.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # An app's Play Integrity configuration object. This configuration controls
      # certain properties of the `AppCheckToken` returned by
      # ExchangePlayIntegrityToken, such as its ttl. Note that your registered SHA-256
      # certificate fingerprints are used to validate tokens issued by the Play
      # Integrity API; please register them via the Firebase Console or
      # programmatically via the [Firebase Management Service](https://firebase.google.
      # com/docs/projects/api/reference/rest/v1beta1/projects.androidApps.sha/create).
      class GoogleFirebaseAppcheckV1betaPlayIntegrityConfig
        include Google::Apis::Core::Hashable
      
        # Required. The relative resource name of the Play Integrity configuration
        # object, in the format: ``` projects/`project_number`/apps/`app_id`/
        # playIntegrityConfig ```
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies the duration for which App Check tokens exchanged from Play
        # Integrity tokens will be valid. If unset, a default value of 1 hour is assumed.
        # Must be between 30 minutes and 7 days, inclusive.
        # Corresponds to the JSON property `tokenTtl`
        # @return [String]
        attr_accessor :token_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @token_ttl = args[:token_ttl] if args.key?(:token_ttl)
        end
      end
      
      # A JWK as specified by [section 4 of RFC 7517](https://tools.ietf.org/html/
      # rfc7517#section-4) and [section 6.3.1 of RFC 7518](https://tools.ietf.org/html/
      # rfc7518#section-6.3.1).
      class GoogleFirebaseAppcheckV1betaPublicJwk
        include Google::Apis::Core::Hashable
      
        # See [section 4.4 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.4).
        # Corresponds to the JSON property `alg`
        # @return [String]
        attr_accessor :alg
      
        # See [section 6.3.1.2 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-
        # 6.3.1.2).
        # Corresponds to the JSON property `e`
        # @return [String]
        attr_accessor :e
      
        # See [section 4.5 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.5).
        # Corresponds to the JSON property `kid`
        # @return [String]
        attr_accessor :kid
      
        # See [section 4.1 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.1).
        # Corresponds to the JSON property `kty`
        # @return [String]
        attr_accessor :kty
      
        # See [section 6.3.1.1 of RFC 7518](https://tools.ietf.org/html/rfc7518#section-
        # 6.3.1.1).
        # Corresponds to the JSON property `n`
        # @return [String]
        attr_accessor :n
      
        # See [section 4.2 of RFC 7517](https://tools.ietf.org/html/rfc7517#section-4.2).
        # Corresponds to the JSON property `use`
        # @return [String]
        attr_accessor :use
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alg = args[:alg] if args.key?(:alg)
          @e = args[:e] if args.key?(:e)
          @kid = args[:kid] if args.key?(:kid)
          @kty = args[:kty] if args.key?(:kty)
          @n = args[:n] if args.key?(:n)
          @use = args[:use] if args.key?(:use)
        end
      end
      
      # The currently active set of public keys that can be used to verify App Check
      # tokens. This object is a JWK set as specified by [section 5 of RFC 7517](https:
      # //tools.ietf.org/html/rfc7517#section-5). For security, the response **must
      # not** be cached for longer than six hours.
      class GoogleFirebaseAppcheckV1betaPublicJwkSet
        include Google::Apis::Core::Hashable
      
        # The set of public keys. See [section 5.1 of RFC 7517](https://tools.ietf.org/
        # html/rfc7517#section-5).
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPublicJwk>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # An app's reCAPTCHA v3 configuration object. This configuration is used by
      # ExchangeRecaptchaToken to validate reCAPTCHA tokens issued to apps by
      # reCAPTCHA v3. It also controls certain properties of the returned `
      # AppCheckToken`, such as its ttl.
      class GoogleFirebaseAppcheckV1betaRecaptchaConfig
        include Google::Apis::Core::Hashable
      
        # Required. The relative resource name of the reCAPTCHA v3 configuration object,
        # in the format: ``` projects/`project_number`/apps/`app_id`/recaptchaConfig ```
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Input only. The site secret used to identify your service for
        # reCAPTCHA v3 verification. For security reasons, this field will never be
        # populated in any response.
        # Corresponds to the JSON property `siteSecret`
        # @return [String]
        attr_accessor :site_secret
      
        # Output only. Whether the `site_secret` field was previously set. Since we will
        # never return the `site_secret` field, this field is the only way to find out
        # whether it was previously set.
        # Corresponds to the JSON property `siteSecretSet`
        # @return [Boolean]
        attr_accessor :site_secret_set
        alias_method :site_secret_set?, :site_secret_set
      
        # Specifies the duration for which App Check tokens exchanged from reCAPTCHA
        # tokens will be valid. If unset, a default value of 1 day is assumed. Must be
        # between 30 minutes and 7 days, inclusive.
        # Corresponds to the JSON property `tokenTtl`
        # @return [String]
        attr_accessor :token_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @site_secret = args[:site_secret] if args.key?(:site_secret)
          @site_secret_set = args[:site_secret_set] if args.key?(:site_secret_set)
          @token_ttl = args[:token_ttl] if args.key?(:token_ttl)
        end
      end
      
      # An app's reCAPTCHA Enterprise configuration object. This configuration is used
      # by ExchangeRecaptchaEnterpriseToken to validate reCAPTCHA tokens issued to
      # apps by reCAPTCHA Enterprise. It also controls certain properties of the
      # returned `AppCheckToken`, such as its ttl.
      class GoogleFirebaseAppcheckV1betaRecaptchaEnterpriseConfig
        include Google::Apis::Core::Hashable
      
        # Required. The relative resource name of the reCAPTCHA Enterprise configuration
        # object, in the format: ``` projects/`project_number`/apps/`app_id`/
        # recaptchaEnterpriseConfig ```
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The score-based site key [created in reCAPTCHA Enterprise](https://cloud.
        # google.com/recaptcha-enterprise/docs/create-key#creating_a_site_key) used to [
        # invoke reCAPTCHA and generate the reCAPTCHA tokens](https://cloud.google.com/
        # recaptcha-enterprise/docs/instrument-web-pages) for your application.
        # Important: This is *not* the `site_secret` (as it is in reCAPTCHA v3), but
        # rather your score-based reCAPTCHA Enterprise site key.
        # Corresponds to the JSON property `siteKey`
        # @return [String]
        attr_accessor :site_key
      
        # Specifies the duration for which App Check tokens exchanged from reCAPTCHA
        # Enterprise tokens will be valid. If unset, a default value of 1 hour is
        # assumed. Must be between 30 minutes and 7 days, inclusive.
        # Corresponds to the JSON property `tokenTtl`
        # @return [String]
        attr_accessor :token_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @site_key = args[:site_key] if args.key?(:site_key)
          @token_ttl = args[:token_ttl] if args.key?(:token_ttl)
        end
      end
      
      # An app's reCAPTCHA v3 configuration object. This configuration is used by
      # ExchangeRecaptchaV3Token to validate reCAPTCHA tokens issued to apps by
      # reCAPTCHA v3. It also controls certain properties of the returned `
      # AppCheckToken`, such as its ttl.
      class GoogleFirebaseAppcheckV1betaRecaptchaV3Config
        include Google::Apis::Core::Hashable
      
        # Required. The relative resource name of the reCAPTCHA v3 configuration object,
        # in the format: ``` projects/`project_number`/apps/`app_id`/recaptchaV3Config ``
        # `
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Input only. The site secret used to identify your service for
        # reCAPTCHA v3 verification. For security reasons, this field will never be
        # populated in any response.
        # Corresponds to the JSON property `siteSecret`
        # @return [String]
        attr_accessor :site_secret
      
        # Output only. Whether the `site_secret` field was previously set. Since we will
        # never return the `site_secret` field, this field is the only way to find out
        # whether it was previously set.
        # Corresponds to the JSON property `siteSecretSet`
        # @return [Boolean]
        attr_accessor :site_secret_set
        alias_method :site_secret_set?, :site_secret_set
      
        # Specifies the duration for which App Check tokens exchanged from reCAPTCHA
        # tokens will be valid. If unset, a default value of 1 day is assumed. Must be
        # between 30 minutes and 7 days, inclusive.
        # Corresponds to the JSON property `tokenTtl`
        # @return [String]
        attr_accessor :token_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @site_secret = args[:site_secret] if args.key?(:site_secret)
          @site_secret_set = args[:site_secret_set] if args.key?(:site_secret_set)
          @token_ttl = args[:token_ttl] if args.key?(:token_ttl)
        end
      end
      
      # An app's SafetyNet configuration object. This configuration controls certain
      # properties of the `AppCheckToken` returned by ExchangeSafetyNetToken, such as
      # its ttl. Note that your registered SHA-256 certificate fingerprints are used
      # to validate tokens issued by SafetyNet; please register them via the Firebase
      # Console or programmatically via the [Firebase Management Service](https://
      # firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.
      # androidApps.sha/create).
      class GoogleFirebaseAppcheckV1betaSafetyNetConfig
        include Google::Apis::Core::Hashable
      
        # Required. The relative resource name of the SafetyNet configuration object, in
        # the format: ``` projects/`project_number`/apps/`app_id`/safetyNetConfig ```
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies the duration for which App Check tokens exchanged from SafetyNet
        # tokens will be valid. If unset, a default value of 1 hour is assumed. Must be
        # between 30 minutes and 7 days, inclusive.
        # Corresponds to the JSON property `tokenTtl`
        # @return [String]
        attr_accessor :token_ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @token_ttl = args[:token_ttl] if args.key?(:token_ttl)
        end
      end
      
      # The enforcement configuration for a Firebase service supported by App Check.
      class GoogleFirebaseAppcheckV1betaService
        include Google::Apis::Core::Hashable
      
        # Required. The App Check enforcement mode for this service.
        # Corresponds to the JSON property `enforcementMode`
        # @return [String]
        attr_accessor :enforcement_mode
      
        # Required. The relative resource name of the service configuration object, in
        # the format: ``` projects/`project_number`/services/`service_id` ``` Note that
        # the `service_id` element must be a supported service ID. Currently, the
        # following service IDs are supported: * `firebasestorage.googleapis.com` (Cloud
        # Storage for Firebase) * `firebasedatabase.googleapis.com` (Firebase Realtime
        # Database) * `firestore.googleapis.com` (Cloud Firestore)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enforcement_mode = args[:enforcement_mode] if args.key?(:enforcement_mode)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for the UpdateService method as well as an individual update
      # message for the BatchUpdateServices method.
      class GoogleFirebaseAppcheckV1betaUpdateServiceRequest
        include Google::Apis::Core::Hashable
      
        # The enforcement configuration for a Firebase service supported by App Check.
        # Corresponds to the JSON property `service`
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService]
        attr_accessor :service
      
        # Required. A comma-separated list of names of fields in the Service to update.
        # Example: `enforcement_mode`.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for the VerifyAppCheckToken method.
      class GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. The App Check token to verify.
        # Corresponds to the JSON property `appCheckToken`
        # @return [String]
        attr_accessor :app_check_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_check_token = args[:app_check_token] if args.key?(:app_check_token)
        end
      end
      
      # Response message for the VerifyAppCheckToken method.
      class GoogleFirebaseAppcheckV1betaVerifyAppCheckTokenResponse
        include Google::Apis::Core::Hashable
      
        # Whether this token was already consumed. If this is the first time this method
        # has seen the given App Check token, this field will contain the value `false`.
        # The given token will then be marked as `already_consumed` for all future
        # invocations of this method for that token. Note that if the given App Check
        # token is invalid, an HTTP 403 error is returned instead of a response
        # containing this field, regardless whether the token was already consumed.
        # Corresponds to the JSON property `alreadyConsumed`
        # @return [Boolean]
        attr_accessor :already_consumed
        alias_method :already_consumed?, :already_consumed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @already_consumed = args[:already_consumed] if args.key?(:already_consumed)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
