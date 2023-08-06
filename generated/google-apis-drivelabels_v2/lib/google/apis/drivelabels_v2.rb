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

require 'google/apis/drivelabels_v2/service.rb'
require 'google/apis/drivelabels_v2/classes.rb'
require 'google/apis/drivelabels_v2/representations.rb'
require 'google/apis/drivelabels_v2/gem_version.rb'

module Google
  module Apis
    # Drive Labels API
    #
    # An API for managing Drive Labels
    #
    # @see https://developers.google.com/drive/labels
    module DrivelabelsV2
      # Version of the Drive Labels API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V2'

      # See, edit, create, and delete all Google Drive labels in your organization, and see your organization's label-related admin policies
      AUTH_DRIVE_ADMIN_LABELS = 'https://www.googleapis.com/auth/drive.admin.labels'

      # See all Google Drive labels and label-related admin policies in your organization
      AUTH_DRIVE_ADMIN_LABELS_READONLY = 'https://www.googleapis.com/auth/drive.admin.labels.readonly'

      # See, edit, create, and delete your Google Drive labels
      AUTH_DRIVE_LABELS = 'https://www.googleapis.com/auth/drive.labels'

      # See your Google Drive labels
      AUTH_DRIVE_LABELS_READONLY = 'https://www.googleapis.com/auth/drive.labels.readonly'
    end
  end
end
