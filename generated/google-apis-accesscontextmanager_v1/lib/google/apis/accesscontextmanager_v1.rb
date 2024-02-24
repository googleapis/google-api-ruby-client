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

require 'google/apis/accesscontextmanager_v1/service.rb'
require 'google/apis/accesscontextmanager_v1/classes.rb'
require 'google/apis/accesscontextmanager_v1/representations.rb'
require 'google/apis/accesscontextmanager_v1/gem_version.rb'

module Google
  module Apis
    # Access Context Manager API
    #
    # An API for setting attribute based access control to requests to Google Cloud
    # services. *Warning:* Do not mix *v1alpha* and *v1* API usage in the same
    # access policy. The v1alpha API supports new Access Context Manager features,
    # which may have different attributes or behaviors that are not supported by v1.
    # The practice of mixed API usage within a policy may result in the inability to
    # update that policy, including any access levels or service perimeters
    # belonging to it. It is not recommended to use both v1 and v1alpha for
    # modifying policies with critical service perimeters. Modifications using
    # v1alpha should be limited to policies with non-production/non-critical service
    # perimeters.
    #
    # @see https://cloud.google.com/access-context-manager/docs/reference/rest/
    module AccesscontextmanagerV1
      # Version of the Access Context Manager API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
