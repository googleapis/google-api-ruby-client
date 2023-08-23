# Copyright 2015 Google Inc.
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

require 'google/apis/iap_v1beta1/service.rb'
require 'google/apis/iap_v1beta1/classes.rb'
require 'google/apis/iap_v1beta1/representations.rb'

module Google
  module Apis
    # Cloud Identity-Aware Proxy API
    #
    # Controls access to cloud applications running on Google Cloud Platform.
    #
    # @see https://cloud.google.com/iap
    module IapV1beta1
      VERSION = 'V1beta1'
      REVISION = '20201204'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
