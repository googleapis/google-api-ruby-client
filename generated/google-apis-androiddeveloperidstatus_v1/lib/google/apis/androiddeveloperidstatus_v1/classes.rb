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
    module AndroiddeveloperidstatusV1
      
      # Resource message PackageRegistrationStatus.
      class PackageRegistrationStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The SHA-256 fingerprint of the public certificate represented as
        # a 64-character lowercase hexadecimal string without any colons or separators (
        # e.g., `d6ac89ed1d0a805aad4b087d06d5f41645b814480b133fbc867ef7498d069e06`).
        # Corresponds to the JSON property `certificateFingerprint`
        # @return [String]
        attr_accessor :certificate_fingerprint
      
        # Identifier. The name of the package registration status resource. Format:
        # packages/`package`/packageRegistrationStatus ``package`` must follow the
        # specific format: The fully-qualified Android package name with dots ('.')
        # replaced by hyphens ('-') (e.g., `com-example-app` instead of `com.example.app`
        # ).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Registration state of the package, or pair.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_fingerprint = args[:certificate_fingerprint] if args.key?(:certificate_fingerprint)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
    end
  end
end
