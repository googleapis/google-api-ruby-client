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

require 'google/apis/webcontentpublisher_v1/service.rb'
require 'google/apis/webcontentpublisher_v1/classes.rb'
require 'google/apis/webcontentpublisher_v1/representations.rb'
require 'google/apis/webcontentpublisher_v1/gem_version.rb'

module Google
  module Apis
    # Web Content Publisher API
    #
    # webcontentpublisher.googleapis.com API, a service for web content publishers.
    #
    # @see https://developers.google.com/news/subscribe
    module WebcontentpublisherV1
      # Version of the Web Content Publisher API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See and review your subscription information
      AUTH_SUBSCRIBEWITHGOOGLE_PUBLICATIONS_ENTITLEMENTS_READONLY = 'https://www.googleapis.com/auth/subscribewithgoogle.publications.entitlements.readonly'
    end
  end
end
