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
    module PlayintegrityV1
      
      # Contains a signal helping apps differentiating between likely genuine users
      # and likely non-genuine traffic (such as accounts being used for fraud,
      # accounts used by automated traffic, or accounts used in device farms) based on
      # the presence and volume of Play store activity.
      class AccountActivity
        include Google::Apis::Core::Hashable
      
        # Required. Indicates the activity level of the account.
        # Corresponds to the JSON property `activityLevel`
        # @return [String]
        attr_accessor :activity_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_level = args[:activity_level] if args.key?(:activity_level)
        end
      end
      
      # Contains the account information such as the licensing status for the user in
      # the scope.
      class AccountDetails
        include Google::Apis::Core::Hashable
      
        # Contains a signal helping apps differentiating between likely genuine users
        # and likely non-genuine traffic (such as accounts being used for fraud,
        # accounts used by automated traffic, or accounts used in device farms) based on
        # the presence and volume of Play store activity.
        # Corresponds to the JSON property `accountActivity`
        # @return [Google::Apis::PlayintegrityV1::AccountActivity]
        attr_accessor :account_activity
      
        # Required. Details about the licensing status of the user for the app in the
        # scope.
        # Corresponds to the JSON property `appLicensingVerdict`
        # @return [String]
        attr_accessor :app_licensing_verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_activity = args[:account_activity] if args.key?(:account_activity)
          @app_licensing_verdict = args[:app_licensing_verdict] if args.key?(:app_licensing_verdict)
        end
      end
      
      # Contains the application integrity information.
      class AppIntegrity
        include Google::Apis::Core::Hashable
      
        # Required. Details about the app recognition verdict
        # Corresponds to the JSON property `appRecognitionVerdict`
        # @return [String]
        attr_accessor :app_recognition_verdict
      
        # The SHA256 hash of the requesting app's signing certificates (base64 web-safe
        # encoded). Set iff app_recognition_verdict != UNEVALUATED.
        # Corresponds to the JSON property `certificateSha256Digest`
        # @return [Array<String>]
        attr_accessor :certificate_sha256_digest
      
        # Package name of the application under attestation. Set iff
        # app_recognition_verdict != UNEVALUATED.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Version code of the application. Set iff app_recognition_verdict !=
        # UNEVALUATED.
        # Corresponds to the JSON property `versionCode`
        # @return [Fixnum]
        attr_accessor :version_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_recognition_verdict = args[:app_recognition_verdict] if args.key?(:app_recognition_verdict)
          @certificate_sha256_digest = args[:certificate_sha256_digest] if args.key?(:certificate_sha256_digest)
          @package_name = args[:package_name] if args.key?(:package_name)
          @version_code = args[:version_code] if args.key?(:version_code)
        end
      end
      
      # Request to decode the integrity token.
      class DecodeIntegrityTokenRequest
        include Google::Apis::Core::Hashable
      
        # Encoded integrity token.
        # Corresponds to the JSON property `integrityToken`
        # @return [String]
        attr_accessor :integrity_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integrity_token = args[:integrity_token] if args.key?(:integrity_token)
        end
      end
      
      # Response containing the decoded integrity payload.
      class DecodeIntegrityTokenResponse
        include Google::Apis::Core::Hashable
      
        # Contains basic app information and integrity signals like device attestation
        # and licensing details.
        # Corresponds to the JSON property `tokenPayloadExternal`
        # @return [Google::Apis::PlayintegrityV1::TokenPayloadExternal]
        attr_accessor :token_payload_external
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token_payload_external = args[:token_payload_external] if args.key?(:token_payload_external)
        end
      end
      
      # Contains the device attestation information.
      class DeviceIntegrity
        include Google::Apis::Core::Hashable
      
        # Details about the integrity of the device the app is running on
        # Corresponds to the JSON property `deviceRecognitionVerdict`
        # @return [Array<String>]
        attr_accessor :device_recognition_verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_recognition_verdict = args[:device_recognition_verdict] if args.key?(:device_recognition_verdict)
        end
      end
      
      # Contains the integrity request information.
      class RequestDetails
        include Google::Apis::Core::Hashable
      
        # Nonce that was provided in the request (which is base64 web-safe no-wrap).
        # Corresponds to the JSON property `nonce`
        # @return [String]
        attr_accessor :nonce
      
        # Request hash that was provided in the request.
        # Corresponds to the JSON property `requestHash`
        # @return [String]
        attr_accessor :request_hash
      
        # Required. Application package name this attestation was requested for. Note:
        # This field makes no guarantees or promises on the caller integrity. For
        # details on application integrity, check application_integrity.
        # Corresponds to the JSON property `requestPackageName`
        # @return [String]
        attr_accessor :request_package_name
      
        # Required. Timestamp, in milliseconds, of the integrity application request.
        # Corresponds to the JSON property `timestampMillis`
        # @return [Fixnum]
        attr_accessor :timestamp_millis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nonce = args[:nonce] if args.key?(:nonce)
          @request_hash = args[:request_hash] if args.key?(:request_hash)
          @request_package_name = args[:request_package_name] if args.key?(:request_package_name)
          @timestamp_millis = args[:timestamp_millis] if args.key?(:timestamp_millis)
        end
      end
      
      # Contains additional information generated for testing responses.
      class TestingDetails
        include Google::Apis::Core::Hashable
      
        # Required. Indicates that the information contained in this payload is a
        # testing response that is statically overridden for a tester.
        # Corresponds to the JSON property `isTestingResponse`
        # @return [Boolean]
        attr_accessor :is_testing_response
        alias_method :is_testing_response?, :is_testing_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_testing_response = args[:is_testing_response] if args.key?(:is_testing_response)
        end
      end
      
      # Contains basic app information and integrity signals like device attestation
      # and licensing details.
      class TokenPayloadExternal
        include Google::Apis::Core::Hashable
      
        # Contains the account information such as the licensing status for the user in
        # the scope.
        # Corresponds to the JSON property `accountDetails`
        # @return [Google::Apis::PlayintegrityV1::AccountDetails]
        attr_accessor :account_details
      
        # Contains the application integrity information.
        # Corresponds to the JSON property `appIntegrity`
        # @return [Google::Apis::PlayintegrityV1::AppIntegrity]
        attr_accessor :app_integrity
      
        # Contains the device attestation information.
        # Corresponds to the JSON property `deviceIntegrity`
        # @return [Google::Apis::PlayintegrityV1::DeviceIntegrity]
        attr_accessor :device_integrity
      
        # Contains the integrity request information.
        # Corresponds to the JSON property `requestDetails`
        # @return [Google::Apis::PlayintegrityV1::RequestDetails]
        attr_accessor :request_details
      
        # Contains additional information generated for testing responses.
        # Corresponds to the JSON property `testingDetails`
        # @return [Google::Apis::PlayintegrityV1::TestingDetails]
        attr_accessor :testing_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_details = args[:account_details] if args.key?(:account_details)
          @app_integrity = args[:app_integrity] if args.key?(:app_integrity)
          @device_integrity = args[:device_integrity] if args.key?(:device_integrity)
          @request_details = args[:request_details] if args.key?(:request_details)
          @testing_details = args[:testing_details] if args.key?(:testing_details)
        end
      end
    end
  end
end
