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

require 'google/apis/privateca_v1beta1/service.rb'
require 'google/apis/privateca_v1beta1/classes.rb'
require 'google/apis/privateca_v1beta1/representations.rb'

module Google
  module Apis
    # Certificate Authority API
    #
    # The Certificate Authority Service API is a highly-available, scalable service
    # that enables you to simplify and automate the management of private
    # certificate authorities (CAs) while staying in control of your private keys."
    #
    # @see https://cloud.google.com/
    module PrivatecaV1beta1
      VERSION = 'V1beta1'
      REVISION = '20201112'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
