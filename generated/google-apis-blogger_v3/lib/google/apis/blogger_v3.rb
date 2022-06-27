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

require 'google/apis/blogger_v3/service.rb'
require 'google/apis/blogger_v3/classes.rb'
require 'google/apis/blogger_v3/representations.rb'
require 'google/apis/blogger_v3/gem_version.rb'

module Google
  module Apis
    # Blogger API
    #
    # The Blogger API provides access to posts, comments and pages of a Blogger blog.
    #
    # @see https://developers.google.com/blogger/docs/3.0/getting_started
    module BloggerV3
      # Version of the Blogger API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V3'

      # Manage your Blogger account
      AUTH_BLOGGER = 'https://www.googleapis.com/auth/blogger'

      # View your Blogger account
      AUTH_BLOGGER_READONLY = 'https://www.googleapis.com/auth/blogger.readonly'
    end
  end
end
