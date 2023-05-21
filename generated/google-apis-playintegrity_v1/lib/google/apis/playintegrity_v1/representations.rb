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
      
      class AccountActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppIntegrity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DecodeIntegrityTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DecodeIntegrityTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceIntegrity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuidanceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestingDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TokenPayloadExternal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_level, as: 'activityLevel'
        end
      end
      
      class AccountDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_activity, as: 'accountActivity', class: Google::Apis::PlayintegrityV1::AccountActivity, decorator: Google::Apis::PlayintegrityV1::AccountActivity::Representation
      
          property :app_licensing_verdict, as: 'appLicensingVerdict'
        end
      end
      
      class AppIntegrity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_recognition_verdict, as: 'appRecognitionVerdict'
          collection :certificate_sha256_digest, as: 'certificateSha256Digest'
          property :package_name, as: 'packageName'
          property :version_code, :numeric_string => true, as: 'versionCode'
        end
      end
      
      class DecodeIntegrityTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integrity_token, as: 'integrityToken'
        end
      end
      
      class DecodeIntegrityTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :token_payload_external, as: 'tokenPayloadExternal', class: Google::Apis::PlayintegrityV1::TokenPayloadExternal, decorator: Google::Apis::PlayintegrityV1::TokenPayloadExternal::Representation
      
        end
      end
      
      class DeviceIntegrity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_recognition_verdict, as: 'deviceRecognitionVerdict'
        end
      end
      
      class GuidanceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_remediation, as: 'userRemediation'
        end
      end
      
      class RequestDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nonce, as: 'nonce'
          property :request_hash, as: 'requestHash'
          property :request_package_name, as: 'requestPackageName'
          property :timestamp_millis, :numeric_string => true, as: 'timestampMillis'
        end
      end
      
      class TestingDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_testing_response, as: 'isTestingResponse'
        end
      end
      
      class TokenPayloadExternal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_details, as: 'accountDetails', class: Google::Apis::PlayintegrityV1::AccountDetails, decorator: Google::Apis::PlayintegrityV1::AccountDetails::Representation
      
          property :app_integrity, as: 'appIntegrity', class: Google::Apis::PlayintegrityV1::AppIntegrity, decorator: Google::Apis::PlayintegrityV1::AppIntegrity::Representation
      
          property :device_integrity, as: 'deviceIntegrity', class: Google::Apis::PlayintegrityV1::DeviceIntegrity, decorator: Google::Apis::PlayintegrityV1::DeviceIntegrity::Representation
      
          property :guidance_details, as: 'guidanceDetails', class: Google::Apis::PlayintegrityV1::GuidanceDetails, decorator: Google::Apis::PlayintegrityV1::GuidanceDetails::Representation
      
          property :request_details, as: 'requestDetails', class: Google::Apis::PlayintegrityV1::RequestDetails, decorator: Google::Apis::PlayintegrityV1::RequestDetails::Representation
      
          property :testing_details, as: 'testingDetails', class: Google::Apis::PlayintegrityV1::TestingDetails, decorator: Google::Apis::PlayintegrityV1::TestingDetails::Representation
      
        end
      end
    end
  end
end
