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

require 'google/apis/oauth2_v2/service.rb'
require 'google/apis/oauth2_v2/classes.rb'
require 'google/apis/oauth2_v2/representations.rb'

module Google
  module Apis
    # Google OAuth2 API
    #
    # Obtains end-user authorization grants for use with other Google APIs.
    #
    # @see https://developers.google.com/identity/protocols/oauth2/
    module Oauth2V2
      VERSION = 'V2'
      REVISION = '20200213'

      # View your email address
      AUTH_USERINFO_EMAIL = 'https://www.googleapis.com/auth/userinfo.email'

      # See your personal info, including any personal info you've made publicly available
      AUTH_USERINFO_PROFILE = 'https://www.googleapis.com/auth/userinfo.profile'

      # Associate you with your personal info on Google
      PENID = 'openid'
    end
  end
end
