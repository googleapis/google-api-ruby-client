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

require 'google/apis/mapsbooking_v1alpha/service.rb'
require 'google/apis/mapsbooking_v1alpha/classes.rb'
require 'google/apis/mapsbooking_v1alpha/representations.rb'

module Google
  module Apis
    # Google Maps Booking API
    #
    # Scheduling aggregators call this API to notify us of appointment updates, and
    # update their inventories including merchants, services, and availability.
    #
    # @see https://developers.google.com
    module MapsbookingV1alpha
      VERSION = 'V1alpha'
      REVISION = '20191210'
    end
  end
end
