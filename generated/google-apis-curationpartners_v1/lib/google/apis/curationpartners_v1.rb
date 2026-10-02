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

require 'google/apis/curationpartners_v1/service.rb'
require 'google/apis/curationpartners_v1/classes.rb'
require 'google/apis/curationpartners_v1/representations.rb'
require 'google/apis/curationpartners_v1/gem_version.rb'

module Google
  module Apis
    # Curation Partners API
    #
    # Curation partners API is an externally available HTTP API for curators to
    # programmatically manage their data segments and curated packages used by ad
    # agencies.
    #
    # @see https://developers.google.com/authorized-buyers/curation/apis/guides/curationpartners/overview
    module CurationpartnersV1
      # Version of the Curation Partners API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, create, edit, and delete data entities in your Curation account.
      AUTH_CURATION_PARTNERS = 'https://www.googleapis.com/auth/curation-partners'
    end
  end
end
