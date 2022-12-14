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

require 'google/apis/playintegrity_v1/service.rb'
require 'google/apis/playintegrity_v1/classes.rb'
require 'google/apis/playintegrity_v1/representations.rb'
require 'google/apis/playintegrity_v1/gem_version.rb'

module Google
  module Apis
    # Google Play Integrity API
    #
    # The Play Integrity API helps you check that you're interacting with your
    # genuine app on a genuine Android device powered by Google Play services. The
    # Play Integrity API has replaced SafetyNet Attestation and Android Device
    # Verification.
    #
    # @see https://developer.android.com/google/play/integrity
    module PlayintegrityV1
      # Version of the Google Play Integrity API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # Private Service: https://www.googleapis.com/auth/playintegrity
      AUTH_PLAYINTEGRITY = 'https://www.googleapis.com/auth/playintegrity'
    end
  end
end
