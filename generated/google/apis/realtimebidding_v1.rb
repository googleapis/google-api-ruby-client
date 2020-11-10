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

require 'google/apis/realtimebidding_v1/service.rb'
require 'google/apis/realtimebidding_v1/classes.rb'
require 'google/apis/realtimebidding_v1/representations.rb'

module Google
  module Apis
    # Real-time Bidding API
    #
    # Allows external bidders to manage their RTB integration with Google. This
    # includes managing bidder endpoints, QPS quotas, configuring what ad inventory
    # to receive via pretargeting, submitting creatives for verification, and
    # accessing creative metadata such as approval status.
    #
    # @see https://developers.google.com/authorized-buyers/apis/realtimebidding/reference/rest/
    module RealtimebiddingV1
      VERSION = 'V1'
      REVISION = '20201109'

      # See, create, edit, and delete your Authorized Buyers and Open Bidding account entities
      AUTH_REALTIME_BIDDING = 'https://www.googleapis.com/auth/realtime-bidding'
    end
  end
end
