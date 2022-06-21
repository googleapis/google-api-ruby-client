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

require 'google/apis/mybusinessbusinesscalls_v1/service.rb'
require 'google/apis/mybusinessbusinesscalls_v1/classes.rb'
require 'google/apis/mybusinessbusinesscalls_v1/representations.rb'
require 'google/apis/mybusinessbusinesscalls_v1/gem_version.rb'

module Google
  module Apis
    # My Business Business Calls API
    #
    # The My Business Business Calls API manages business calls information of a
    # location on Google and collect insights like the number of missed calls to
    # their location. Additional information about Business calls can be found at
    # https://support.google.com/business/answer/9688285?p=call_history. If the
    # Google Business Profile links to a Google Ads account and call history is
    # turned on, calls that last longer than a specific time, and that can be
    # attributed to an ad interaction, will show in the linked Google Ads account
    # under the "Calls from Ads" conversion. If smart bidding and call conversions
    # are used in the optimization strategy, there could be a change in ad spend.
    # Learn more about smart bidding. To view and perform actions on a location's
    # calls, you need to be a `OWNER`, `CO_OWNER` or `MANAGER` of the location.
    #
    # @see https://developers.google.com/my-business/
    module MybusinessbusinesscallsV1
      # Version of the My Business Business Calls API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'
    end
  end
end
