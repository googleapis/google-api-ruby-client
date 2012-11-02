# Copyright 2010 Google Inc.
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

require 'google/api_client/auth/key_utils'
module Google
  class APIClient
    ##
    # Helper for loading keys from the PKCS12 files downloaded when
    # setting up service accounts at the APIs Console.
    #
    module PKCS12
      ##
      # Loads a key from PKCS12 file, assuming a single private key
      # is present.
      #
      # @param [String] keyfile
      #    Path of the PKCS12 file to load. If not a path to an actual file,
      #    assumes the string is the content of the file itself. 
      # @param [String] passphrase
      #   Passphrase for unlocking the private key
      #
      # @return [OpenSSL::PKey] The private key for signing assertions.
      # @deprecated 
      #  Use {Google::APIClient::KeyUtils} instead
      def self.load_key(keyfile, passphrase)
        KeyUtils.load_from_pkcs12(keyfile, passphrase)
      end
    end
  end
end
