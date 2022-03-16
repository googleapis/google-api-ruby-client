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

require 'google/apis/authorizedbuyersmarketplace_v1/service.rb'
require 'google/apis/authorizedbuyersmarketplace_v1/classes.rb'
require 'google/apis/authorizedbuyersmarketplace_v1/representations.rb'
require 'google/apis/authorizedbuyersmarketplace_v1/gem_version.rb'

module Google
  module Apis
    # Authorized Buyers Marketplace API
    #
    # The Authorized Buyers Marketplace API lets buyers programmatically discover
    # inventory; propose, retrieve and negotiate deals with publishers.
    #
    # @see https://developers.google.com/authorized-buyers/apis/marketplace/reference/rest/
    module AuthorizedbuyersmarketplaceV1
      # Version of the Authorized Buyers Marketplace API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, create, edit, and delete your Authorized Buyers Marketplace entities.
      AUTH_AUTHORIZED_BUYERS_MARKETPLACE = 'https://www.googleapis.com/auth/authorized-buyers-marketplace'
    end
  end
end
