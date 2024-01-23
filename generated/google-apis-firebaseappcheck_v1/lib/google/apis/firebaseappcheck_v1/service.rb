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
    module FirebaseappcheckV1
      # Firebase App Check API
      #
      # Firebase App Check works alongside other Firebase services to help protect
      #  your backend resources from abuse, such as billing fraud or phishing.
      #
      # @example
      #    require 'google/apis/firebaseappcheck_v1'
      #
      #    Firebaseappcheck = Google::Apis::FirebaseappcheckV1 # Alias the module
      #    service = Firebaseappcheck::FirebaseappcheckService.new
      #
      # @see https://firebase.google.com/docs/app-check
      class FirebaseappcheckService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://firebaseappcheck.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-firebaseappcheck_v1',
                client_version: Google::Apis::FirebaseappcheckV1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PublicJwkSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PublicJwkSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_jwk(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PublicJwkSet::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PublicJwkSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts an App Attest assertion and an artifact previously obtained from
        # ExchangeAppAttestAttestation and verifies those with Apple. If valid, returns
        # an AppCheckToken.
        # @param [String] app
        #   Required. The relative resource name of the iOS app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest] google_firebase_appcheck_v1_exchange_app_attest_assertion_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_app_attest_assertion(app, google_firebase_appcheck_v1_exchange_app_attest_assertion_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:exchangeAppAttestAssertion', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeAppAttestAssertionRequest::Representation
          command.request_object = google_firebase_appcheck_v1_exchange_app_attest_assertion_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts an App Attest CBOR attestation and verifies it with Apple using your
        # preconfigured team and bundle IDs. If valid, returns an attestation artifact
        # that can later be exchanged for an AppCheckToken using
        # ExchangeAppAttestAssertion. For convenience and performance, this method's
        # response object will also contain an AppCheckToken (if the verification is
        # successful).
        # @param [String] app
        #   Required. The relative resource name of the iOS app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest] google_firebase_appcheck_v1_exchange_app_attest_attestation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_app_attest_attestation(app, google_firebase_appcheck_v1_exchange_app_attest_attestation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:exchangeAppAttestAttestation', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationRequest::Representation
          command.request_object = google_firebase_appcheck_v1_exchange_app_attest_attestation_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeAppAttestAttestationResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a custom token signed using your project's Admin SDK service account
        # credentials. If valid, returns an AppCheckToken.
        # @param [String] app
        #   Required. The relative resource name of the app, in the format: ``` projects/`
        #   project_number`/apps/`app_id` ``` If necessary, the `project_number` element
        #   can be replaced with the project ID of the Firebase project. Learn more about
        #   using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/
        #   2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest] google_firebase_appcheck_v1_exchange_custom_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_custom_token(app, google_firebase_appcheck_v1_exchange_custom_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:exchangeCustomToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeCustomTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1_exchange_custom_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a debug token secret that you have previously created using
        # CreateDebugToken. If valid, returns an AppCheckToken. Note that a restrictive
        # quota is enforced on this method to prevent accidental exposure of the app to
        # abuse.
        # @param [String] app
        #   Required. The relative resource name of the app, in the format: ``` projects/`
        #   project_number`/apps/`app_id` ``` If necessary, the `project_number` element
        #   can be replaced with the project ID of the Firebase project. Learn more about
        #   using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/
        #   2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest] google_firebase_appcheck_v1_exchange_debug_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_debug_token(app, google_firebase_appcheck_v1_exchange_debug_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:exchangeDebugToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeDebugTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1_exchange_debug_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts a [`device_token`](https://developer.apple.com/documentation/
        # devicecheck/dcdevice) issued by DeviceCheck, and attempts to validate it with
        # Apple. If valid, returns an AppCheckToken.
        # @param [String] app
        #   Required. The relative resource name of the iOS app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest] google_firebase_appcheck_v1_exchange_device_check_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_device_check_token(app, google_firebase_appcheck_v1_exchange_device_check_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:exchangeDeviceCheckToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeDeviceCheckTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1_exchange_device_check_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates an [integrity verdict response token from Play Integrity](https://
        # developer.android.com/google/play/integrity/verdict#decrypt-verify). If valid,
        # returns an AppCheckToken.
        # @param [String] app
        #   Required. The relative resource name of the Android app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest] google_firebase_appcheck_v1_exchange_play_integrity_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_play_integrity_token(app, google_firebase_appcheck_v1_exchange_play_integrity_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:exchangePlayIntegrityToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangePlayIntegrityTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1_exchange_play_integrity_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a [reCAPTCHA Enterprise response token](https://cloud.google.com/
        # recaptcha-enterprise/docs/create-assessment#retrieve_token). If valid, returns
        # an AppCheckToken.
        # @param [String] app
        #   Required. The relative resource name of the web app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest] google_firebase_appcheck_v1_exchange_recaptcha_enterprise_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_recaptcha_enterprise_token(app, google_firebase_appcheck_v1_exchange_recaptcha_enterprise_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:exchangeRecaptchaEnterpriseToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeRecaptchaEnterpriseTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1_exchange_recaptcha_enterprise_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a [reCAPTCHA v3 response token](https://developers.google.com/
        # recaptcha/docs/v3). If valid, returns an AppCheckToken.
        # @param [String] app
        #   Required. The relative resource name of the web app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest] google_firebase_appcheck_v1_exchange_recaptcha_v3_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_recaptcha_v3_token(app, google_firebase_appcheck_v1_exchange_recaptcha_v3_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:exchangeRecaptchaV3Token', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeRecaptchaV3TokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1_exchange_recaptcha_v3_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates a [SafetyNet token](https://developer.android.com/training/safetynet/
        # attestation#request-attestation-step). If valid, returns an AppCheckToken.
        # @param [String] app
        #   Required. The relative resource name of the Android app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest] google_firebase_appcheck_v1_exchange_safety_net_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def exchange_project_app_safety_net_token(app, google_firebase_appcheck_v1_exchange_safety_net_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:exchangeSafetyNetToken', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ExchangeSafetyNetTokenRequest::Representation
          command.request_object = google_firebase_appcheck_v1_exchange_safety_net_token_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppCheckToken
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a challenge that protects the integrity of an immediately following
        # call to ExchangeAppAttestAttestation or ExchangeAppAttestAssertion. A
        # challenge should not be reused for multiple calls.
        # @param [String] app
        #   Required. The relative resource name of the iOS app, in the format: ```
        #   projects/`project_number`/apps/`app_id` ``` If necessary, the `project_number`
        #   element can be replaced with the project ID of the Firebase project. Learn
        #   more about using project identifiers in Google's [AIP 2510](https://google.aip.
        #   dev/cloud/2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest] google_firebase_appcheck_v1_generate_app_attest_challenge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_app_app_attest_challenge(app, google_firebase_appcheck_v1_generate_app_attest_challenge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:generateAppAttestChallenge', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GenerateAppAttestChallengeRequest::Representation
          command.request_object = google_firebase_appcheck_v1_generate_app_attest_challenge_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GenerateAppAttestChallengeResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a challenge that protects the integrity of an immediately following
        # integrity verdict request to the Play Integrity API. The next call to
        # ExchangePlayIntegrityToken using the resulting integrity token will verify the
        # presence and validity of the challenge. A challenge should not be reused for
        # multiple calls.
        # @param [String] app
        #   Required. The relative resource name of the app, in the format: ``` projects/`
        #   project_number`/apps/`app_id` ``` If necessary, the `project_number` element
        #   can be replaced with the project ID of the Firebase project. Learn more about
        #   using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/
        #   2510) standard.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest] google_firebase_appcheck_v1_generate_play_integrity_challenge_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_app_play_integrity_challenge(app, google_firebase_appcheck_v1_generate_play_integrity_challenge_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+app}:generatePlayIntegrityChallenge', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeRequest::Representation
          command.request_object = google_firebase_appcheck_v1_generate_play_integrity_challenge_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1GeneratePlayIntegrityChallengeResponse
          command.params['app'] = app unless app.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Atomically gets the AppAttestConfigs for the specified list of apps.
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_app_attest_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps/-/appAttestConfig:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetAppAttestConfigsResponse
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_app_attest_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig
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
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig] google_firebase_appcheck_v1_app_attest_config_object
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_app_attest_config(name, google_firebase_appcheck_v1_app_attest_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig::Representation
          command.request_object = google_firebase_appcheck_v1_app_attest_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1AppAttestConfig
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
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken] google_firebase_appcheck_v1_debug_token_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_app_debug_token(parent, google_firebase_appcheck_v1_debug_token_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/debugTokens', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken::Representation
          command.request_object = google_firebase_appcheck_v1_debug_token_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_app_debug_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_debug_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ListDebugTokensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ListDebugTokensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_app_debug_tokens(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/debugTokens', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ListDebugTokensResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ListDebugTokensResponse
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
        #   Required. The relative resource name of the debug token, in the format: ```
        #   projects/`project_number`/apps/`app_id`/debugTokens/`debug_token_id` ```
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken] google_firebase_appcheck_v1_debug_token_object
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_debug_token(name, google_firebase_appcheck_v1_debug_token_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken::Representation
          command.request_object = google_firebase_appcheck_v1_debug_token_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DebugToken
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Atomically gets the DeviceCheckConfigs for the specified list of apps. For
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_device_check_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps/-/deviceCheckConfig:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetDeviceCheckConfigsResponse
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_device_check_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig
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
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig] google_firebase_appcheck_v1_device_check_config_object
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_device_check_config(name, google_firebase_appcheck_v1_device_check_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig::Representation
          command.request_object = google_firebase_appcheck_v1_device_check_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1DeviceCheckConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Atomically gets the PlayIntegrityConfigs for the specified list of apps.
        # @param [String] parent
        #   Required. The parent project name shared by all PlayIntegrityConfigs being
        #   retrieved, in the format ``` projects/`project_number` ``` The parent
        #   collection in the `name` field of any resource being retrieved must match this
        #   field, or the entire batch fails.
        # @param [Array<String>, String] names
        #   Required. The relative resource names of the PlayIntegrityConfigs to retrieve,
        #   in the format ``` projects/`project_number`/apps/`app_id`/playIntegrityConfig `
        #   `` A maximum of 100 objects can be retrieved in a batch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_play_integrity_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps/-/playIntegrityConfig:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetPlayIntegrityConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the PlayIntegrityConfig for the specified app.
        # @param [String] name
        #   Required. The relative resource name of the PlayIntegrityConfig, in the format:
        #   ``` projects/`project_number`/apps/`app_id`/playIntegrityConfig ```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_play_integrity_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the PlayIntegrityConfig for the specified app. While this
        # configuration is incomplete or invalid, the app will be unable to exchange
        # Play Integrity tokens for App Check tokens.
        # @param [String] name
        #   Required. The relative resource name of the Play Integrity configuration
        #   object, in the format: ``` projects/`project_number`/apps/`app_id`/
        #   playIntegrityConfig ```
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig] google_firebase_appcheck_v1_play_integrity_config_object
        # @param [String] update_mask
        #   Required. A comma-separated list of names of fields in the PlayIntegrityConfig
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_play_integrity_config(name, google_firebase_appcheck_v1_play_integrity_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig::Representation
          command.request_object = google_firebase_appcheck_v1_play_integrity_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1PlayIntegrityConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Atomically gets the RecaptchaEnterpriseConfigs for the specified list of apps.
        # @param [String] parent
        #   Required. The parent project name shared by all RecaptchaEnterpriseConfigs
        #   being retrieved, in the format ``` projects/`project_number` ``` The parent
        #   collection in the `name` field of any resource being retrieved must match this
        #   field, or the entire batch fails.
        # @param [Array<String>, String] names
        #   Required. The relative resource names of the RecaptchaEnterpriseConfigs to
        #   retrieve, in the format: ``` projects/`project_number`/apps/`app_id`/
        #   recaptchaEnterpriseConfig ``` A maximum of 100 objects can be retrieved in a
        #   batch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_recaptcha_enterprise_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps/-/recaptchaEnterpriseConfig:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetRecaptchaEnterpriseConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the RecaptchaEnterpriseConfig for the specified app.
        # @param [String] name
        #   Required. The relative resource name of the RecaptchaEnterpriseConfig, in the
        #   format: ``` projects/`project_number`/apps/`app_id`/recaptchaEnterpriseConfig `
        #   ``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_recaptcha_enterprise_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the RecaptchaEnterpriseConfig for the specified app. While this
        # configuration is incomplete or invalid, the app will be unable to exchange
        # reCAPTCHA Enterprise tokens for App Check tokens.
        # @param [String] name
        #   Required. The relative resource name of the reCAPTCHA Enterprise configuration
        #   object, in the format: ``` projects/`project_number`/apps/`app_id`/
        #   recaptchaEnterpriseConfig ```
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig] google_firebase_appcheck_v1_recaptcha_enterprise_config_object
        # @param [String] update_mask
        #   Required. A comma-separated list of names of fields in the
        #   RecaptchaEnterpriseConfig to update. Example: `site_key`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_recaptcha_enterprise_config(name, google_firebase_appcheck_v1_recaptcha_enterprise_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig::Representation
          command.request_object = google_firebase_appcheck_v1_recaptcha_enterprise_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaEnterpriseConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Atomically gets the RecaptchaV3Configs for the specified list of apps. For
        # security reasons, the `site_secret` field is never populated in the response.
        # @param [String] parent
        #   Required. The parent project name shared by all RecaptchaV3Configs being
        #   retrieved, in the format ``` projects/`project_number` ``` The parent
        #   collection in the `name` field of any resource being retrieved must match this
        #   field, or the entire batch fails.
        # @param [Array<String>, String] names
        #   Required. The relative resource names of the RecaptchaV3Configs to retrieve,
        #   in the format: ``` projects/`project_number`/apps/`app_id`/recaptchaV3Config ``
        #   ` A maximum of 100 objects can be retrieved in a batch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_recaptcha_v3_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps/-/recaptchaV3Config:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetRecaptchaV3ConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the RecaptchaV3Config for the specified app. For security reasons, the `
        # site_secret` field is never populated in the response.
        # @param [String] name
        #   Required. The relative resource name of the RecaptchaV3Config, in the format: `
        #   `` projects/`project_number`/apps/`app_id`/recaptchaV3Config ```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_recaptcha_v3_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the RecaptchaV3Config for the specified app. While this configuration
        # is incomplete or invalid, the app will be unable to exchange reCAPTCHA tokens
        # for App Check tokens. For security reasons, the `site_secret` field is never
        # populated in the response.
        # @param [String] name
        #   Required. The relative resource name of the reCAPTCHA v3 configuration object,
        #   in the format: ``` projects/`project_number`/apps/`app_id`/recaptchaV3Config ``
        #   `
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config] google_firebase_appcheck_v1_recaptcha_v3_config_object
        # @param [String] update_mask
        #   Required. A comma-separated list of names of fields in the RecaptchaV3Config
        #   to update. Example: `site_secret`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_recaptcha_v3_config(name, google_firebase_appcheck_v1_recaptcha_v3_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config::Representation
          command.request_object = google_firebase_appcheck_v1_recaptcha_v3_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1RecaptchaV3Config
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Atomically gets the SafetyNetConfigs for the specified list of apps.
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_safety_net_config_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps/-/safetyNetConfig:batchGet', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchGetSafetyNetConfigsResponse
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_safety_net_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig
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
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig] google_firebase_appcheck_v1_safety_net_config_object
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_safety_net_config(name, google_firebase_appcheck_v1_safety_net_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig::Representation
          command.request_object = google_firebase_appcheck_v1_safety_net_config_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1SafetyNetConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Atomically updates the specified Service configurations.
        # @param [String] parent
        #   Required. The parent project name shared by all Service configurations being
        #   updated, in the format ``` projects/`project_number` ``` The parent collection
        #   in the `name` field of any resource being updated must match this field, or
        #   the entire batch fails.
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchUpdateServicesRequest] google_firebase_appcheck_v1_batch_update_services_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchUpdateServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchUpdateServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_service_update(parent, google_firebase_appcheck_v1_batch_update_services_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/services:batchUpdate', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchUpdateServicesRequest::Representation
          command.request_object = google_firebase_appcheck_v1_batch_update_services_request_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchUpdateServicesResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1BatchUpdateServicesResponse
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ListServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ListServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_services(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/services', options)
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ListServicesResponse::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1ListServicesResponse
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
        # @param [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service] google_firebase_appcheck_v1_service_object
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
        # @yieldparam result [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_service(name, google_firebase_appcheck_v1_service_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service::Representation
          command.request_object = google_firebase_appcheck_v1_service_object
          command.response_representation = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service::Representation
          command.response_class = Google::Apis::FirebaseappcheckV1::GoogleFirebaseAppcheckV1Service
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
