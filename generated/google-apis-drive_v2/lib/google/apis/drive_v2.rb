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

require 'google/apis/drive_v2/service.rb'
require 'google/apis/drive_v2/classes.rb'
require 'google/apis/drive_v2/representations.rb'
require 'google/apis/drive_v2/gem_version.rb'

module Google
  module Apis
    # Google Drive API
    #
    # The Google Drive API allows clients to access resources from Google Drive.
    #
    # @see https://developers.google.com/drive/
    module DriveV2
      # Version of the Google Drive API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V2'

      # See, edit, create, and delete all of your Google Drive files
      AUTH_DRIVE = 'https://www.googleapis.com/auth/drive'

      # See, create, and delete its own configuration data in your Google Drive
      AUTH_DRIVE_APPDATA = 'https://www.googleapis.com/auth/drive.appdata'

      # View your Google Drive apps
      AUTH_DRIVE_APPS_READONLY = 'https://www.googleapis.com/auth/drive.apps.readonly'

      # See, edit, create, and delete only the specific Google Drive files you use with this app
      AUTH_DRIVE_FILE = 'https://www.googleapis.com/auth/drive.file'

      # View and manage metadata of files in your Google Drive
      AUTH_DRIVE_METADATA = 'https://www.googleapis.com/auth/drive.metadata'

      # See information about your Google Drive files
      AUTH_DRIVE_METADATA_READONLY = 'https://www.googleapis.com/auth/drive.metadata.readonly'

      # View the photos, videos and albums in your Google Photos
      AUTH_DRIVE_PHOTOS_READONLY = 'https://www.googleapis.com/auth/drive.photos.readonly'

      # See and download all your Google Drive files
      AUTH_DRIVE_READONLY = 'https://www.googleapis.com/auth/drive.readonly'

      # Modify your Google Apps Script scripts' behavior
      AUTH_DRIVE_SCRIPTS = 'https://www.googleapis.com/auth/drive.scripts'
    end
  end
end
