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

require 'google/apis/games_configuration_v1configuration/service.rb'
require 'google/apis/games_configuration_v1configuration/classes.rb'
require 'google/apis/games_configuration_v1configuration/representations.rb'

module Google
  module Apis
    # Google Play Game Services Publishing API
    #
    # The Google Play Game Services Publishing API allows developers to configure
    # their games in Game Services.
    #
    # @see https://developers.google.com/games/
    module GamesConfigurationV1configuration
      VERSION = 'V1configuration'
      REVISION = '20200811'

      # View and manage your Google Play Developer account
      AUTH_ANDROIDPUBLISHER = 'https://www.googleapis.com/auth/androidpublisher'
    end
  end
end
