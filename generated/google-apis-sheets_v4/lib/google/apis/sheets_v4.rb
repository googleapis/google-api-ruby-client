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

require 'google/apis/sheets_v4/service.rb'
require 'google/apis/sheets_v4/classes.rb'
require 'google/apis/sheets_v4/representations.rb'
require 'google/apis/sheets_v4/gem_version.rb'

module Google
  module Apis
    # Google Sheets API
    #
    # Reads and writes Google Sheets.
    #
    # @see https://developers.google.com/sheets/
    module SheetsV4
      # Version of the Google Sheets API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V4'

      # See, edit, create, and delete all of your Google Drive files
      AUTH_DRIVE = 'https://www.googleapis.com/auth/drive'

      # See, edit, create, and delete only the specific Google Drive files you use with this app
      AUTH_DRIVE_FILE = 'https://www.googleapis.com/auth/drive.file'

      # See and download all your Google Drive files
      AUTH_DRIVE_READONLY = 'https://www.googleapis.com/auth/drive.readonly'

      # See, edit, create, and delete all your Google Sheets spreadsheets
      AUTH_SPREADSHEETS = 'https://www.googleapis.com/auth/spreadsheets'

      # See all your Google Sheets spreadsheets
      AUTH_SPREADSHEETS_READONLY = 'https://www.googleapis.com/auth/spreadsheets.readonly'
    end
  end
end
