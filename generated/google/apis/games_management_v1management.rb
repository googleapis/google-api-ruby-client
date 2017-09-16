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

require 'google/apis/games_management_v1management/service.rb'
require 'google/apis/games_management_v1management/classes.rb'
require 'google/apis/games_management_v1management/representations.rb'

module Google
  module Apis
    # Google Play Game Services Management API
    #
    # The Management API for Google Play Game Services.
    #
    # @see https://developers.google.com/games/services
    module GamesManagementV1management
      VERSION = 'V1management'
      REVISION = '20170911'

      # Share your Google+ profile information and view and manage your game activity
      AUTH_GAMES = 'https://www.googleapis.com/auth/games'

      # Know the list of people in your circles, your age range, and language
      AUTH_PLUS_LOGIN = 'https://www.googleapis.com/auth/plus.login'
    end
  end
end
