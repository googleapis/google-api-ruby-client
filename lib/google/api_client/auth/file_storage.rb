# Copyright 2013 Google Inc.
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

require 'signet/oauth_2/client'
require_relative 'storage'
require_relative 'storages/file_store'

module Google
  class APIClient

    ##
    # Represents cached OAuth 2 tokens stored on local disk in a
    # JSON serialized file. Meant to resemble the serialized format
    # http://google-api-python-client.googlecode.com/hg/docs/epy/oauth2client.file.Storage-class.html
    #
    # @deprecated
    #  Use {Google::APIClient::Storage} and {Google::APIClient::FileStore} instead
    #
    class FileStorage

      attr_accessor :storage

      def initialize(path)
        store = Google::APIClient::FileStore.new(path)
        @storage = Google::APIClient::Storage.new(store)
        @storage.authorize
      end

      def load_credentials
        storage.authorize
      end

      def authorization
        storage.authorization
      end

      ##
      # Write the credentials to the specified file.
      #
      # @param [Signet::OAuth2::Client] authorization
      #    Optional authorization instance. If not provided, the authorization
      #    already associated with this instance will be written.
      def write_credentials(auth=nil)
        storage.write_credentials(auth)
      end
    end
  end
end
