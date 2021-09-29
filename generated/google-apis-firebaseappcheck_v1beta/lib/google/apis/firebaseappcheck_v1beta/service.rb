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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module FirebaseappcheckV1beta
      # Firebase App Check API
      #
      # App Check works alongside other Firebase services to help protect your backend
      #  resources from abuse, such as billing fraud or phishing. With App Check,
      #  devices running your app will use an app or device attestation provider that
      #  attests to one or both of the following: * Requests originate from your
      #  authentic app * Requests originate from an authentic, untampered device This
      #  attestation is attached to every request your app makes to your Firebase
      #  backend resources. The Firebase App Check REST API allows you to manage your
      #  App Check configurations programmatically. It also allows you to exchange
      #  attestation material for App Check tokens directly without using a Firebase
      #  SDK. Finally, it allows you to obtain the public key set necessary to validate
      #  an App Check token yourself. [Learn more about App Check](https://firebase.
      #  google.com/docs/app-check).
      #
      # @example
      #    require 'google/apis/firebaseappcheck_v1beta'
      #
      #    Firebaseappcheck = Google::Apis::FirebaseappcheckV1beta # Alias the module
      #    service = Firebaseappcheck::FirebaseappcheckService.new
      #
      # @see https://firebase.google.com/docs/app-check
      class FirebaseappcheckService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://firebaseappcheck.googleapis.com/', '',
                client_name: 'google-apis-firebaseappcheck_v1beta',
                client_version: Google::Apis::FirebaseappcheckV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns a public JWK set as specified by [RFC 7517](https://tools.ietf.org/
        # html/rfc7517) that can be used to verify App Check tokens. Exactly one of the
        # public keys in the returned set will successfully validate any App Check token
        # that is currently valid.
        # @param [String] name
        #   Required. The relative resource name to the public JWK set. Must always be
        #   exactly the string `jwks`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPublicJwkSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPublicJwkSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_jwk(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPublicJwkSet::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaPublicJwkSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts a AppAttest Artifact and Assertion, and uses the developer's
        # preconfigured auth token to verify the token with Apple. Returns an
        # AttestationToken with the App ID as specified by the `app` field included as
        # attested claims.
        # @param [String] app
        #   Required. The full resource name to the iOS App. Format: "projects/`project_id`
        #   /apps/`app_id`"
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest] google_firebase_appcheck_v1beta_exchange_app_attest_assertion_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_app_attest_assertion(app, google_firebase_appcheck_v1beta_exchange_app_attest_assertion_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+app}:exchangeAppAttestAssertion', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest::Representation
          command.request_object = google_firebase_appcheck_v1beta_exchange_app_attest_assertion_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts a AppAttest CBOR Attestation, and uses the developer's preconfigured
        # team and bundle IDs to verify the token with Apple. Returns an Attestation
        # Artifact that can later be exchanged for an AttestationToken in
        # ExchangeAppAttestAssertion.
        # @param [String] app
        #   Required. The full resource name to the iOS App. Format: "projects/`project_id`
        #   /apps/`app_id`"
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest] google_firebase_appcheck_v1beta_exchange_app_attest_attestation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_app_attest_attestation(app, google_firebase_appcheck_v1beta_exchange_app_attest_attestation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+app}:exchangeAppAttestAttestation', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest::Representation
          command.request_object = google_firebase_appcheck_v1beta_exchange_app_attest_attestation_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a custom token signed using your project's Admin SDK service account
        # credentials. If valid, returns an App Check token encapsulated in an
        # AttestationTokenResponse.
        # @param [String] app
        #   Required. The relative resource name of the app, in the format: ``` projects/`
        #   project_number`/apps/`app_id` ``` If necessary, the `project_number` element
        #   can be replaced with the project ID of the Firebase project. Learn more about
        #   using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/
        #   2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest] google_firebase_appcheck_v1beta_exchange_custom_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_custom_token(app, google_firebase_appcheck_v1beta_exchange_custom_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+app}:exchangeCustomToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeCustomTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1beta_exchange_custom_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a debug token secret that you have previously created using
        # CreateDebugToken. If valid, returns an App Check token encapsulated in an
        # AttestationTokenResponse. Note that a restrictive quota is enforced on this
        # method to prevent accidental exposure of the app to abuse.
        # @param [String] app
        #   Required. The relative resource name of the app, in the format: ``` projects/`
        #   project_number`/apps/`app_id` ``` If necessary, the `project_number` element
        #   can be replaced with the project ID of the Firebase project. Learn more about
        #   using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/
        #   2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest] google_firebase_appcheck_v1beta_exchange_debug_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_debug_token(app, google_firebase_appcheck_v1beta_exchange_debug_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+app}:exchangeDebugToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1beta_exchange_debug_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts a [`device_token`](https://developer.apple.com/documentation/
        # devicecheck/dcdevice) issued by DeviceCheck, and attempts to validate it with
        # Apple. If valid, returns an App Check token encapsulated in an
        # AttestationTokenResponse.
        # @param [String] app
        #   Required. The relative resource name of the iOS app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest] google_firebase_appcheck_v1beta_exchange_device_check_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_device_check_token(app, google_firebase_appcheck_v1beta_exchange_device_check_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+app}:exchangeDeviceCheckToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeDeviceCheckTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1beta_exchange_device_check_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a [reCAPTCHA v3 response token](https://developers.google.com/
        # recaptcha/docs/v3). If valid, returns an App Check token encapsulated in an
        # AttestationTokenResponse.
        # @param [String] app
        #   Required. The relative resource name of the web app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest] google_firebase_appcheck_v1beta_exchange_recaptcha_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_recaptcha_token(app, google_firebase_appcheck_v1beta_exchange_recaptcha_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+app}:exchangeRecaptchaToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeRecaptchaTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1beta_exchange_recaptcha_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a [SafetyNet token](https://developer.android.com/training/safetynet/
        # attestation#request-attestation-step). If valid, returns an App Check token
        # encapsulated in an AttestationTokenResponse.
        # @param [String] app
        #   Required. The relative resource name of the Android app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest] google_firebase_appcheck_v1beta_exchange_safety_net_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_safety_net_token(app, google_firebase_appcheck_v1beta_exchange_safety_net_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+app}:exchangeSafetyNetToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaExchangeSafetyNetTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1beta_exchange_safety_net_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAttestationTokenResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates the App Attest flow by generating a challenge which will be used as
        # a type of nonce for this attestation.
        # @param [String] app
        #   Required. The full resource name to the iOS App. Format: "projects/`project_id`
        #   /apps/`app_id`"
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest] google_firebase_appcheck_v1beta_generate_app_attest_challenge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_app_app_attest_challenge(app, google_firebase_appcheck_v1beta_generate_app_attest_challenge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+app}:generateAppAttestChallenge', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest::Representation
          command.request_object = google_firebase_appcheck_v1beta_generate_app_attest_challenge_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestChallengeResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the AppAttestConfigs for the specified list of apps atomically.
        # @param [String] parent
        #   Required. The parent project name shared by all AppAttestConfigs being
        #   retrieved, in the format ``` projects/`project_number` ``` The parent
        #   collection in the `name` field of any resource being retrieved must match this
        #   field, or the entire batch fails.
        # @param [Array<String>, String] names
        #   Required. The relative resource names of the AppAttestConfigs to retrieve, in
        #   the format ``` projects/`project_number`/apps/`app_id`/appAttestConfig ``` A
        #   maximum of 100 objects can be retrieved in a batch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_app_attest_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/apps/-/appAttestConfig:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetAppAttestConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the AppAttestConfig for the specified app.
        # @param [String] name
        #   Required. The relative resource name of the AppAttestConfig, in the format: ```
        #   projects/`project_number`/apps/`app_id`/appAttestConfig ```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_app_attest_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the AppAttestConfig for the specified app. While this configuration is
        # incomplete or invalid, the app will be unable to exchange AppAttest tokens for
        # App Check tokens.
        # @param [String] name
        #   Required. The relative resource name of the App Attest configuration object,
        #   in the format: ``` projects/`project_number`/apps/`app_id`/appAttestConfig ```
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig] google_firebase_appcheck_v1beta_app_attest_config_object
        # @param [String] update_mask
        #   Required. A comma-separated list of names of fields in the AppAttestConfig
        #   Gets to update. Example: `token_ttl`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_app_attest_config(name, google_firebase_appcheck_v1beta_app_attest_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig::Representation
          command.request_object = google_firebase_appcheck_v1beta_app_attest_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaAppAttestConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new DebugToken for the specified app. For security reasons, after
        # the creation operation completes, the `token` field cannot be updated or
        # retrieved, but you can revoke the debug token using DeleteDebugToken. Each app
        # can have a maximum of 20 debug tokens.
        # @param [String] parent
        #   Required. The relative resource name of the parent app in which the specified
        #   DebugToken will be created, in the format: ``` projects/`project_number`/apps/`
        #   app_id` ```
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken] google_firebase_appcheck_v1beta_debug_token_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_app_debug_token(parent, google_firebase_appcheck_v1beta_debug_token_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/debugTokens', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken::Representation
          command.request_object = google_firebase_appcheck_v1beta_debug_token_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified DebugToken. A deleted debug token cannot be used to
        # exchange for an App Check token. Use this method when you suspect the secret `
        # token` has been compromised or when you no longer need the debug token.
        # @param [String] name
        #   Required. The relative resource name of the DebugToken to delete, in the
        #   format: ``` projects/`project_number`/apps/`app_id`/debugTokens/`
        #   debug_token_id` ```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_app_debug_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified DebugToken. For security reasons, the `token` field is
        # never populated in the response.
        # @param [String] name
        #   Required. The relative resource name of the debug token, in the format: ```
        #   projects/`project_number`/apps/`app_id`/debugTokens/`debug_token_id` ```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_debug_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all DebugTokens for the specified app. For security reasons, the `token`
        # field is never populated in the response.
        # @param [String] parent
        #   Required. The relative resource name of the parent app for which to list each
        #   associated DebugToken, in the format: ``` projects/`project_number`/apps/`
        #   app_id` ```
        # @param [Fixnum] page_size
        #   The maximum number of DebugTokens to return in the response. Note that an app
        #   can have at most 20 debug tokens. The server may return fewer than this at its
        #   own discretion. If no value is specified (or too large a value is specified),
        #   the server will impose its own limit.
        # @param [String] page_token
        #   Token returned from a previous call to ListDebugTokens indicating where in the
        #   set of DebugTokens to resume listing. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to ListDebugTokens must
        #   match the call that provided the page token; if they do not match, the result
        #   is undefined.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaListDebugTokensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaListDebugTokensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_app_debug_tokens(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/debugTokens', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaListDebugTokensResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaListDebugTokensResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified DebugToken. For security reasons, the `token` field
        # cannot be updated, nor will it be populated in the response, but you can
        # revoke the debug token using DeleteDebugToken.
        # @param [String] name
        #   The relative resource name of the debug token, in the format: ``` projects/`
        #   project_number`/apps/`app_id`/debugTokens/`debug_token_id` ```
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken] google_firebase_appcheck_v1beta_debug_token_object
        # @param [String] update_mask
        #   Required. A comma-separated list of names of fields in the DebugToken to
        #   update. Example: `display_name`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_debug_token(name, google_firebase_appcheck_v1beta_debug_token_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken::Representation
          command.request_object = google_firebase_appcheck_v1beta_debug_token_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDebugToken
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the DeviceCheckConfigs for the specified list of apps atomically. For
        # security reasons, the `private_key` field is never populated in the response.
        # @param [String] parent
        #   Required. The parent project name shared by all DeviceCheckConfigs being
        #   retrieved, in the format ``` projects/`project_number` ``` The parent
        #   collection in the `name` field of any resource being retrieved must match this
        #   field, or the entire batch fails.
        # @param [Array<String>, String] names
        #   Required. The relative resource names of the DeviceCheckConfigs to retrieve,
        #   in the format ``` projects/`project_number`/apps/`app_id`/deviceCheckConfig ```
        #   A maximum of 100 objects can be retrieved in a batch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_device_check_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/apps/-/deviceCheckConfig:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetDeviceCheckConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the DeviceCheckConfig for the specified app. For security reasons, the `
        # private_key` field is never populated in the response.
        # @param [String] name
        #   Required. The relative resource name of the DeviceCheckConfig, in the format: `
        #   `` projects/`project_number`/apps/`app_id`/deviceCheckConfig ```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_device_check_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the DeviceCheckConfig for the specified app. While this configuration
        # is incomplete or invalid, the app will be unable to exchange DeviceCheck
        # tokens for App Check tokens. For security reasons, the `private_key` field is
        # never populated in the response.
        # @param [String] name
        #   Required. The relative resource name of the DeviceCheck configuration object,
        #   in the format: ``` projects/`project_number`/apps/`app_id`/deviceCheckConfig ``
        #   `
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig] google_firebase_appcheck_v1beta_device_check_config_object
        # @param [String] update_mask
        #   Required. A comma-separated list of names of fields in the DeviceCheckConfig
        #   Gets to update. Example: `key_id,private_key`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_device_check_config(name, google_firebase_appcheck_v1beta_device_check_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig::Representation
          command.request_object = google_firebase_appcheck_v1beta_device_check_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaDeviceCheckConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the RecaptchaConfigs for the specified list of apps atomically. For
        # security reasons, the `site_secret` field is never populated in the response.
        # @param [String] parent
        #   Required. The parent project name shared by all RecaptchaConfigs being
        #   retrieved, in the format ``` projects/`project_number` ``` The parent
        #   collection in the `name` field of any resource being retrieved must match this
        #   field, or the entire batch fails.
        # @param [Array<String>, String] names
        #   Required. The relative resource names of the RecaptchaConfigs to retrieve, in
        #   the format: ``` projects/`project_number`/apps/`app_id`/recaptchaConfig ``` A
        #   maximum of 100 objects can be retrieved in a batch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_recaptcha_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/apps/-/recaptchaConfig:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetRecaptchaConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the RecaptchaConfig for the specified app. For security reasons, the `
        # site_secret` field is never populated in the response.
        # @param [String] name
        #   Required. The relative resource name of the RecaptchaConfig, in the format: ```
        #   projects/`project_number`/apps/`app_id`/recaptchaConfig ```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_recaptcha_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the RecaptchaConfig for the specified app. While this configuration is
        # incomplete or invalid, the app will be unable to exchange reCAPTCHA tokens for
        # App Check tokens. For security reasons, the `site_secret` field is never
        # populated in the response.
        # @param [String] name
        #   Required. The relative resource name of the reCAPTCHA v3 configuration object,
        #   in the format: ``` projects/`project_number`/apps/`app_id`/recaptchaConfig ```
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig] google_firebase_appcheck_v1beta_recaptcha_config_object
        # @param [String] update_mask
        #   Required. A comma-separated list of names of fields in the RecaptchaConfig to
        #   update. Example: `site_secret`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_recaptcha_config(name, google_firebase_appcheck_v1beta_recaptcha_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig::Representation
          command.request_object = google_firebase_appcheck_v1beta_recaptcha_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaRecaptchaConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the SafetyNetConfigs for the specified list of apps atomically.
        # @param [String] parent
        #   Required. The parent project name shared by all SafetyNetConfigs being
        #   retrieved, in the format ``` projects/`project_number` ``` The parent
        #   collection in the `name` field of any resource being retrieved must match this
        #   field, or the entire batch fails.
        # @param [Array<String>, String] names
        #   Required. The relative resource names of the SafetyNetConfigs to retrieve, in
        #   the format ``` projects/`project_number`/apps/`app_id`/safetyNetConfig ``` A
        #   maximum of 100 objects can be retrieved in a batch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_safety_net_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/apps/-/safetyNetConfig:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchGetSafetyNetConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the SafetyNetConfig for the specified app.
        # @param [String] name
        #   Required. The relative resource name of the SafetyNetConfig, in the format: ```
        #   projects/`project_number`/apps/`app_id`/safetyNetConfig ```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_safety_net_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the SafetyNetConfig for the specified app. While this configuration is
        # incomplete or invalid, the app will be unable to exchange SafetyNet tokens for
        # App Check tokens.
        # @param [String] name
        #   Required. The relative resource name of the SafetyNet configuration object, in
        #   the format: ``` projects/`project_number`/apps/`app_id`/safetyNetConfig ```
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig] google_firebase_appcheck_v1beta_safety_net_config_object
        # @param [String] update_mask
        #   Required. A comma-separated list of names of fields in the SafetyNetConfig
        #   Gets to update. Example: `token_ttl`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_safety_net_config(name, google_firebase_appcheck_v1beta_safety_net_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig::Representation
          command.request_object = google_firebase_appcheck_v1beta_safety_net_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaSafetyNetConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Service configurations atomically.
        # @param [String] parent
        #   Required. The parent project name shared by all Service configurations being
        #   updated, in the format ``` projects/`project_number` ``` The parent collection
        #   in the `name` field of any resource being updated must match this field, or
        #   the entire batch fails.
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest] google_firebase_appcheck_v1beta_batch_update_services_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_service_update(parent, google_firebase_appcheck_v1beta_batch_update_services_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/services:batchUpdate', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchUpdateServicesRequest::Representation
          command.request_object = google_firebase_appcheck_v1beta_batch_update_services_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaBatchUpdateServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Service configuration for the specified service name.
        # @param [String] name
        #   Required. The relative resource name of the Service to retrieve, in the format:
        #   ``` projects/`project_number`/services/`service_id` ``` Note that the `
        #   service_id` element must be a supported service ID. Currently, the following
        #   service IDs are supported: * `firebasestorage.googleapis.com` (Cloud Storage
        #   for Firebase) * `firebasedatabase.googleapis.com` (Firebase Realtime Database)
        #   * `firestore.googleapis.com` (Cloud Firestore)
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Service configurations for the specified project. Only Services
        # which were explicitly configured using UpdateService or BatchUpdateServices
        # will be returned.
        # @param [String] parent
        #   Required. The relative resource name of the parent project for which to list
        #   each associated Service, in the format: ``` projects/`project_number` ```
        # @param [Fixnum] page_size
        #   The maximum number of Services to return in the response. Only explicitly
        #   configured services are returned. The server may return fewer than this at its
        #   own discretion. If no value is specified (or too large a value is specified),
        #   the server will impose its own limit.
        # @param [String] page_token
        #   Token returned from a previous call to ListServices indicating where in the
        #   set of Services to resume listing. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to ListServices must
        #   match the call that provided the page token; if they do not match, the result
        #   is undefined.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaListServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaListServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_services(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/services', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaListServicesResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaListServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified Service configuration.
        # @param [String] name
        #   Required. The relative resource name of the service configuration object, in
        #   the format: ``` projects/`project_number`/services/`service_id` ``` Note that
        #   the `service_id` element must be a supported service ID. Currently, the
        #   following service IDs are supported: * `firebasestorage.googleapis.com` (Cloud
        #   Storage for Firebase) * `firebasedatabase.googleapis.com` (Firebase Realtime
        #   Database) * `firestore.googleapis.com` (Cloud Firestore)
        # @param [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService] google_firebase_appcheck_v1beta_service_object
        # @param [String] update_mask
        #   Required. A comma-separated list of names of fields in the Service to update.
        #   Example: `enforcement_mode`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_service(name, google_firebase_appcheck_v1beta_service_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService::Representation
          command.request_object = google_firebase_appcheck_v1beta_service_object
          command.response_representation = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1beta::GoogleFirebaseAppcheckV1betaService
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
