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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module OsloginV1beta
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportSshPublicKeyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoginProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PosixAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignSshPublicKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignSshPublicKeyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SshPublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UniversalTwoFactor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebAuthn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ImportSshPublicKeyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :login_profile, as: 'loginProfile', class: Google::Apis::OsloginV1beta::LoginProfile, decorator: Google::Apis::OsloginV1beta::LoginProfile::Representation
      
        end
      end
      
      class LoginProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :posix_accounts, as: 'posixAccounts', class: Google::Apis::OsloginV1beta::PosixAccount, decorator: Google::Apis::OsloginV1beta::PosixAccount::Representation
      
          collection :security_keys, as: 'securityKeys', class: Google::Apis::OsloginV1beta::SecurityKey, decorator: Google::Apis::OsloginV1beta::SecurityKey::Representation
      
          hash :ssh_public_keys, as: 'sshPublicKeys', class: Google::Apis::OsloginV1beta::SshPublicKey, decorator: Google::Apis::OsloginV1beta::SshPublicKey::Representation
      
        end
      end
      
      class PosixAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :gecos, as: 'gecos'
          property :gid, :numeric_string => true, as: 'gid'
          property :home_directory, as: 'homeDirectory'
          property :name, as: 'name'
          property :operating_system_type, as: 'operatingSystemType'
          property :primary, as: 'primary'
          property :shell, as: 'shell'
          property :system_id, as: 'systemId'
          property :uid, :numeric_string => true, as: 'uid'
          property :username, as: 'username'
        end
      end
      
      class SecurityKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_nickname, as: 'deviceNickname'
          property :private_key, as: 'privateKey'
          property :public_key, as: 'publicKey'
          property :universal_two_factor, as: 'universalTwoFactor', class: Google::Apis::OsloginV1beta::UniversalTwoFactor, decorator: Google::Apis::OsloginV1beta::UniversalTwoFactor::Representation
      
          property :web_authn, as: 'webAuthn', class: Google::Apis::OsloginV1beta::WebAuthn, decorator: Google::Apis::OsloginV1beta::WebAuthn::Representation
      
        end
      end
      
      class SignSshPublicKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ssh_public_key, as: 'sshPublicKey'
        end
      end
      
      class SignSshPublicKeyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :signed_ssh_public_key, as: 'signedSshPublicKey'
        end
      end
      
      class SshPublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_time_usec, :numeric_string => true, as: 'expirationTimeUsec'
          property :fingerprint, as: 'fingerprint'
          property :key, as: 'key'
          property :name, as: 'name'
        end
      end
      
      class UniversalTwoFactor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
        end
      end
      
      class WebAuthn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rp_id, as: 'rpId'
        end
      end
    end
  end
end
