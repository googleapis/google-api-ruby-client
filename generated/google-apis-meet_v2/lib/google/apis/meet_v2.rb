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

require 'google/apis/meet_v2/service.rb'
require 'google/apis/meet_v2/classes.rb'
require 'google/apis/meet_v2/representations.rb'
require 'google/apis/meet_v2/gem_version.rb'

module Google
  module Apis
    # Google Meet API
    #
    # Create and manage meetings in Google Meet.
    #
    # @see https://developers.google.com/meet/api
    module MeetV2
      # Version of the Google Meet API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V2'

      # Create, edit, and see information about your Google Meet conferences created by the app.
      AUTH_MEETINGS_SPACE_CREATED = 'https://www.googleapis.com/auth/meetings.space.created'

      # Read information about any of your Google Meet conferences
      AUTH_MEETINGS_SPACE_READONLY = 'https://www.googleapis.com/auth/meetings.space.readonly'
    end
  end
end
