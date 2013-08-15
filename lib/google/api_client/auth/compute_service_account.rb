# Copyright 2013 Google Inc.
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

require 'faraday'
require 'signet/oauth_2/client'

module Google
  class APIClient
    class ComputeServiceAccount < Signet::OAuth2::Client
      def fetch_access_token(options={})
        connection = options[:connection] || Faraday.default_connection
        response = connection.get 'http://metadata/computeMetadata/v1beta1/instance/service-accounts/default/token'
        Signet::OAuth2.parse_json_credentials(response.body)
      end
    end
  end
end
