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

require 'google/apis/docs_v1/service.rb'
require 'google/apis/docs_v1/classes.rb'
require 'google/apis/docs_v1/representations.rb'

module Google
  module Apis
    # Google Docs API
    #
    # Reads and writes Google Docs documents.
    #
    # @see https://developers.google.com/docs/
    module DocsV1
      VERSION = 'V1'
      REVISION = '20200803'

      # View and manage your Google Docs documents
      AUTH_DOCUMENTS = 'https://www.googleapis.com/auth/documents'

      # View your Google Docs documents
      AUTH_DOCUMENTS_READONLY = 'https://www.googleapis.com/auth/documents.readonly'

      # See, edit, create, and delete all of your Google Drive files
      AUTH_DRIVE = 'https://www.googleapis.com/auth/drive'

      # View and manage Google Drive files and folders that you have opened or created with this app
      AUTH_DRIVE_FILE = 'https://www.googleapis.com/auth/drive.file'

      # See and download all your Google Drive files
      AUTH_DRIVE_READONLY = 'https://www.googleapis.com/auth/drive.readonly'
    end
  end
end
