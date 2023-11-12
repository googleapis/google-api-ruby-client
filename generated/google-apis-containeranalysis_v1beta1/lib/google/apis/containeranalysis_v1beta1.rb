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

require 'google/apis/containeranalysis_v1beta1/service.rb'
require 'google/apis/containeranalysis_v1beta1/classes.rb'
require 'google/apis/containeranalysis_v1beta1/representations.rb'
require 'google/apis/containeranalysis_v1beta1/gem_version.rb'

module Google
  module Apis
    # Container Analysis API
    #
    # This API is a prerequisite for leveraging Artifact Analysis scanning
    # capabilities in both Artifact Registry and with Advanced Vulnerability
    # Insights (runtime scanning) in GKE. In addition, the Container Analysis API is
    # an implementation of the Grafeas API, which enables storing, querying, and
    # retrieval of critical metadata about all of your software artifacts.
    #
    # @see https://cloud.google.com/container-analysis/api/reference/rest/
    module ContaineranalysisV1beta1
      # Version of the Container Analysis API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1beta1'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
