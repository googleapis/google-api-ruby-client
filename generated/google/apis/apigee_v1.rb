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

require 'google/apis/apigee_v1/service.rb'
require 'google/apis/apigee_v1/classes.rb'
require 'google/apis/apigee_v1/representations.rb'

module Google
  module Apis
    # Apigee API
    #
    # Use the Apigee API to programmatically develop and manage APIs with a set of
    # RESTful operations. Develop and secure API proxies, deploy and undeploy API
    # proxy revisions, monitor APIs, configure environments, manage users, and more.
    # Get started using the APIs. *Note:* This product is available as a free trial
    # for a time period of 60 days.
    #
    # @see https://cloud.google.com/apigee-api-management/
    module ApigeeV1
      VERSION = 'V1'
      REVISION = '20201108'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
