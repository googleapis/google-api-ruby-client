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
    module OsloginV1alpha
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A response message for importing an SSH public key.
      class ImportSshPublicKeyResponse
        include Google::Apis::Core::Hashable
      
        # Detailed information about import results.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # The user profile information used for logging in to a virtual machine on
        # Google Compute Engine.
        # Corresponds to the JSON property `loginProfile`
        # @return [Google::Apis::OsloginV1alpha::LoginProfile]
        attr_accessor :login_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @login_profile = args[:login_profile] if args.key?(:login_profile)
        end
      end
      
      # The user profile information used for logging in to a virtual machine on
      # Google Compute Engine.
      class LoginProfile
        include Google::Apis::Core::Hashable
      
        # Required. A unique user ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of POSIX accounts associated with the user.
        # Corresponds to the JSON property `posixAccounts`
        # @return [Array<Google::Apis::OsloginV1alpha::PosixAccount>]
        attr_accessor :posix_accounts
      
        # The registered security key credentials for a user.
        # Corresponds to the JSON property `securityKeys`
        # @return [Array<Google::Apis::OsloginV1alpha::SecurityKey>]
        attr_accessor :security_keys
      
        # A map from SSH public key fingerprint to the associated key object.
        # Corresponds to the JSON property `sshPublicKeys`
        # @return [Hash<String,Google::Apis::OsloginV1alpha::SshPublicKey>]
        attr_accessor :ssh_public_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @posix_accounts = args[:posix_accounts] if args.key?(:posix_accounts)
          @security_keys = args[:security_keys] if args.key?(:security_keys)
          @ssh_public_keys = args[:ssh_public_keys] if args.key?(:ssh_public_keys)
        end
      end
      
      # The POSIX account information associated with a Google account.
      class PosixAccount
        include Google::Apis::Core::Hashable
      
        # Output only. A POSIX account identifier.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The GECOS (user information) entry for this account.
        # Corresponds to the JSON property `gecos`
        # @return [String]
        attr_accessor :gecos
      
        # The default group ID.
        # Corresponds to the JSON property `gid`
        # @return [Fixnum]
        attr_accessor :gid
      
        # The path to the home directory for this account.
        # Corresponds to the JSON property `homeDirectory`
        # @return [String]
        attr_accessor :home_directory
      
        # Output only. The canonical resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The operating system type where this account applies.
        # Corresponds to the JSON property `operatingSystemType`
        # @return [String]
        attr_accessor :operating_system_type
      
        # Only one POSIX account can be marked as primary.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # The path to the logic shell for this account.
        # Corresponds to the JSON property `shell`
        # @return [String]
        attr_accessor :shell
      
        # System identifier for which account the username or uid applies to. By default,
        # the empty value is used.
        # Corresponds to the JSON property `systemId`
        # @return [String]
        attr_accessor :system_id
      
        # The user ID.
        # Corresponds to the JSON property `uid`
        # @return [Fixnum]
        attr_accessor :uid
      
        # The username of the POSIX account.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @gecos = args[:gecos] if args.key?(:gecos)
          @gid = args[:gid] if args.key?(:gid)
          @home_directory = args[:home_directory] if args.key?(:home_directory)
          @name = args[:name] if args.key?(:name)
          @operating_system_type = args[:operating_system_type] if args.key?(:operating_system_type)
          @primary = args[:primary] if args.key?(:primary)
          @shell = args[:shell] if args.key?(:shell)
          @system_id = args[:system_id] if args.key?(:system_id)
          @uid = args[:uid] if args.key?(:uid)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # The credential information for a Google registered security key.
      class SecurityKey
        include Google::Apis::Core::Hashable
      
        # The security key nickname explicitly set by the user.
        # Corresponds to the JSON property `deviceNickname`
        # @return [String]
        attr_accessor :device_nickname
      
        # Hardware-backed private key text in SSH format.
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # Public key text in SSH format, defined by [RFC4253]("https://www.ietf.org/rfc/
        # rfc4253.txt") section 6.6.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # Security key information specific to the U2F protocol.
        # Corresponds to the JSON property `universalTwoFactor`
        # @return [Google::Apis::OsloginV1alpha::UniversalTwoFactor]
        attr_accessor :universal_two_factor
      
        # Security key information specific to the Web Authentication protocol.
        # Corresponds to the JSON property `webAuthn`
        # @return [Google::Apis::OsloginV1alpha::WebAuthn]
        attr_accessor :web_authn
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_nickname = args[:device_nickname] if args.key?(:device_nickname)
          @private_key = args[:private_key] if args.key?(:private_key)
          @public_key = args[:public_key] if args.key?(:public_key)
          @universal_two_factor = args[:universal_two_factor] if args.key?(:universal_two_factor)
          @web_authn = args[:web_authn] if args.key?(:web_authn)
        end
      end
      
      # 
      class SignSshPublicKeyRequest
        include Google::Apis::Core::Hashable
      
        # The SSH public key to sign.
        # Corresponds to the JSON property `sshPublicKey`
        # @return [String]
        attr_accessor :ssh_public_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ssh_public_key = args[:ssh_public_key] if args.key?(:ssh_public_key)
        end
      end
      
      # 
      class SignSshPublicKeyResponse
        include Google::Apis::Core::Hashable
      
        # The signed SSH public key to use in the SSH handshake.
        # Corresponds to the JSON property `signedSshPublicKey`
        # @return [String]
        attr_accessor :signed_ssh_public_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signed_ssh_public_key = args[:signed_ssh_public_key] if args.key?(:signed_ssh_public_key)
        end
      end
      
      # The SSH public key information associated with a Google account.
      class SshPublicKey
        include Google::Apis::Core::Hashable
      
        # An expiration time in microseconds since epoch.
        # Corresponds to the JSON property `expirationTimeUsec`
        # @return [Fixnum]
        attr_accessor :expiration_time_usec
      
        # Output only. The SHA-256 fingerprint of the SSH public key.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # Public key text in SSH format, defined by RFC4253 section 6.6.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Output only. The canonical resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration_time_usec = args[:expiration_time_usec] if args.key?(:expiration_time_usec)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @key = args[:key] if args.key?(:key)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Security key information specific to the U2F protocol.
      class UniversalTwoFactor
        include Google::Apis::Core::Hashable
      
        # Application ID for the U2F protocol.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
        end
      end
      
      # Security key information specific to the Web Authentication protocol.
      class WebAuthn
        include Google::Apis::Core::Hashable
      
        # Relying party ID for Web Authentication.
        # Corresponds to the JSON property `rpId`
        # @return [String]
        attr_accessor :rp_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rp_id = args[:rp_id] if args.key?(:rp_id)
        end
      end
    end
  end
end
