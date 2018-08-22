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

require 'google/apis/adexchangeseller_v2_0/service.rb'
require 'google/apis/adexchangeseller_v2_0/classes.rb'
require 'google/apis/adexchangeseller_v2_0/representations.rb'

module Google
  module Apis
    # Ad Exchange Seller API
    #
    # Accesses the inventory of Ad Exchange seller users and generates reports.
    #
    # @see https://developers.google.com/ad-exchange/seller-rest/
    module AdexchangesellerV2_0
      VERSION = 'V2_0'
      REVISION = '20180708'

      # View and manage your Ad Exchange data
      AUTH_ADEXCHANGE_SELLER = 'https://www.googleapis.com/auth/adexchange.seller'

      # View your Ad Exchange data
      AUTH_ADEXCHANGE_SELLER_READONLY = 'https://www.googleapis.com/auth/adexchange.seller.readonly'
    end
  end
end
