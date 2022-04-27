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
                client_name: 'google-apis-firebaseappcheck_v1',
                client_version: Google::Apis::FirebaseappcheckV1::GEM_VERSION)
          @batch_path = 'batch'
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
