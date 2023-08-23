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

require 'google/apis/area120tables_v1alpha1/service.rb'
require 'google/apis/area120tables_v1alpha1/classes.rb'
require 'google/apis/area120tables_v1alpha1/representations.rb'

module Google
  module Apis
    # Area120 Tables API
    #
    # 
    #
    # @see https://tables.area120.google.com
    module Area120tablesV1alpha1
      VERSION = 'V1alpha1'
      REVISION = '20201201'

      # See, edit, create, and delete all of your Google Drive files
      AUTH_DRIVE = 'https://www.googleapis.com/auth/drive'

      # View and manage Google Drive files and folders that you have opened or created with this app
      AUTH_DRIVE_FILE = 'https://www.googleapis.com/auth/drive.file'

      # See and download all your Google Drive files
      AUTH_DRIVE_READONLY = 'https://www.googleapis.com/auth/drive.readonly'

      # See, edit, create, and delete your spreadsheets in Google Drive
      AUTH_SPREADSHEETS = 'https://www.googleapis.com/auth/spreadsheets'

      # View your Google Spreadsheets
      AUTH_SPREADSHEETS_READONLY = 'https://www.googleapis.com/auth/spreadsheets.readonly'

      # See, edit, create, and delete your tables in Tables by Area 120
      AUTH_TABLES = 'https://www.googleapis.com/auth/tables'
    end
  end
end
