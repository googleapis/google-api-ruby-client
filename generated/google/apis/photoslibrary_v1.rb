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

require 'google/apis/photoslibrary_v1/service.rb'
require 'google/apis/photoslibrary_v1/classes.rb'
require 'google/apis/photoslibrary_v1/representations.rb'

module Google
  module Apis
    # Photos Library API
    #
    # Manage photos, videos, and albums in Google Photos
    #
    # @see https://developers.google.com/photos/
    module PhotoslibraryV1
      VERSION = 'V1'
      REVISION = '20180508'

      # View the photos, videos and albums in your Google Photos
      AUTH_DRIVE_PHOTOS_READONLY = 'https://www.googleapis.com/auth/drive.photos.readonly'

      # View and manage your Google Photos library
      AUTH_PHOTOSLIBRARY = 'https://www.googleapis.com/auth/photoslibrary'

      # Add to your Google Photos library
      AUTH_PHOTOSLIBRARY_APPENDONLY = 'https://www.googleapis.com/auth/photoslibrary.appendonly'

      # View your Google Photos library
      AUTH_PHOTOSLIBRARY_READONLY = 'https://www.googleapis.com/auth/photoslibrary.readonly'

      # Manage photos added by this app
      AUTH_PHOTOSLIBRARY_READONLY_APPCREATEDDATA = 'https://www.googleapis.com/auth/photoslibrary.readonly.appcreateddata'

      # Manage and add to shared albums on your behalf
      AUTH_PHOTOSLIBRARY_SHARING = 'https://www.googleapis.com/auth/photoslibrary.sharing'
    end
  end
end
