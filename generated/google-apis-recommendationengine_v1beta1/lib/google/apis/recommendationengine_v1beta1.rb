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

require 'google/apis/recommendationengine_v1beta1/service.rb'
require 'google/apis/recommendationengine_v1beta1/classes.rb'
require 'google/apis/recommendationengine_v1beta1/representations.rb'
require 'google/apis/recommendationengine_v1beta1/gem_version.rb'

module Google
  module Apis
    # Recommendations AI (Beta)
    #
    # Note that we now highly recommend new customers to use Retail API, which
    # incorporates the GA version of the Recommendations AI funtionalities. To
    # enable Retail API, please visit https://console.cloud.google.com/apis/library/
    # retail.googleapis.com. The Recommendations AI service enables customers to
    # build end-to-end personalized recommendation systems without requiring a high
    # level of expertise in machine learning, recommendation system, or Google Cloud.
    #
    # @see https://cloud.google.com/recommendations-ai/docs
    module RecommendationengineV1beta1
      # Version of the Recommendations AI (Beta) this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta1'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
