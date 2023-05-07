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
    module VerifiedaccessV2
      
      # Result message for VerifiedAccess.GenerateChallenge.
      class Challenge
        include Google::Apis::Core::Hashable
      
        # Generated challenge, the bytes representation of SignedData.
        # Corresponds to the JSON property `challenge`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :challenge
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @challenge = args[:challenge] if args.key?(:challenge)
        end
      end
      
      # Properties of the CrowdStrike agent installed on a device.
      class CrowdStrikeAgent
        include Google::Apis::Core::Hashable
      
        # The Agent ID of the Crowdstrike agent.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # The Customer ID to which the agent belongs to.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
        end
      end
      
      # The device signals as reported by Chrome.
      class DeviceSignals
        include Google::Apis::Core::Hashable
      
        # Value of the AllowScreenLock policy on the device. See https://
        # chromeenterprise.google/policies/?policy=AllowScreenLock for more details.
        # Corresponds to the JSON property `allowScreenLock`
        # @return [Boolean]
        attr_accessor :allow_screen_lock
        alias_method :allow_screen_lock?, :allow_screen_lock
      
        # Current version of the Chrome browser which generated this set of signals.
        # Example value: "107.0.5286.0".
        # Corresponds to the JSON property `browserVersion`
        # @return [String]
        attr_accessor :browser_version
      
        # Whether Chrome's built-in DNS client is used. The OS DNS client is otherwise
        # used. This value may be controlled by an enterprise policy: https://
        # chromeenterprise.google/policies/#BuiltInDnsClientEnabled.
        # Corresponds to the JSON property `builtInDnsClientEnabled`
        # @return [Boolean]
        attr_accessor :built_in_dns_client_enabled
        alias_method :built_in_dns_client_enabled?, :built_in_dns_client_enabled
      
        # Whether access to the Chrome Remote Desktop application is blocked via a
        # policy.
        # Corresponds to the JSON property `chromeRemoteDesktopAppBlocked`
        # @return [Boolean]
        attr_accessor :chrome_remote_desktop_app_blocked
        alias_method :chrome_remote_desktop_app_blocked?, :chrome_remote_desktop_app_blocked
      
        # Properties of the CrowdStrike agent installed on a device.
        # Corresponds to the JSON property `crowdStrikeAgent`
        # @return [Google::Apis::VerifiedaccessV2::CrowdStrikeAgent]
        attr_accessor :crowd_strike_agent
      
        # Affiliation IDs of the organizations that are affiliated with the organization
        # that is currently managing the device. When the sets of device and profile
        # affiliation IDs overlap, it means that the organizations managing the device
        # and user are affiliated. To learn more about user affiliation, visit https://
        # support.google.com/chrome/a/answer/12801245?ref_topic=9027936.
        # Corresponds to the JSON property `deviceAffiliationIds`
        # @return [Array<String>]
        attr_accessor :device_affiliation_ids
      
        # Enrollment domain of the customer which is currently managing the device.
        # Corresponds to the JSON property `deviceEnrollmentDomain`
        # @return [String]
        attr_accessor :device_enrollment_domain
      
        # The name of the device's manufacturer.
        # Corresponds to the JSON property `deviceManufacturer`
        # @return [String]
        attr_accessor :device_manufacturer
      
        # The name of the device's model.
        # Corresponds to the JSON property `deviceModel`
        # @return [String]
        attr_accessor :device_model
      
        # The encryption state of the disk. On ChromeOS, the main disk is always
        # ENCRYPTED.
        # Corresponds to the JSON property `diskEncryption`
        # @return [String]
        attr_accessor :disk_encryption
      
        # The display name of the device, as defined by the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Hostname of the device.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # International Mobile Equipment Identity (IMEI) of the device.
        # Corresponds to the JSON property `imei`
        # @return [Array<String>]
        attr_accessor :imei
      
        # MAC addresses of the device.
        # Corresponds to the JSON property `macAddresses`
        # @return [Array<String>]
        attr_accessor :mac_addresses
      
        # Mobile Equipment Identifier (MEID) of the device.
        # Corresponds to the JSON property `meid`
        # @return [Array<String>]
        attr_accessor :meid
      
        # The type of the Operating System currently running on the device.
        # Corresponds to the JSON property `operatingSystem`
        # @return [String]
        attr_accessor :operating_system
      
        # The state of the OS level firewall. On ChromeOS, the value will always be
        # ENABLED on regular devices and UNKNOWN on devices in developer mode.
        # Corresponds to the JSON property `osFirewall`
        # @return [String]
        attr_accessor :os_firewall
      
        # The current version of the Operating System. On Windows and linux, the value
        # will also include the security patch information.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Whether the Password Protection Warning feature is enabled or not. Password
        # protection alerts users when they reuse their protected password on
        # potentially suspicious sites. This setting is controlled by an enterprise
        # policy: https://chromeenterprise.google/policies/#
        # PasswordProtectionWarningTrigger. Note that the policy unset does not have the
        # same effects as having the policy explicitly set to `PASSWORD_PROTECTION_OFF`.
        # Corresponds to the JSON property `passwordProtectionWarningTrigger`
        # @return [String]
        attr_accessor :password_protection_warning_trigger
      
        # Affiliation IDs of the organizations that are affiliated with the organization
        # that is currently managing the Chrome Profile’s user or ChromeOS user.
        # Corresponds to the JSON property `profileAffiliationIds`
        # @return [Array<String>]
        attr_accessor :profile_affiliation_ids
      
        # Whether Enterprise-grade (i.e. custom) unsafe URL scanning is enabled or not.
        # This setting may be controlled by an enterprise policy: https://
        # chromeenterprise.google/policies/#EnterpriseRealTimeUrlCheckMode
        # Corresponds to the JSON property `realtimeUrlCheckMode`
        # @return [String]
        attr_accessor :realtime_url_check_mode
      
        # Safe Browsing Protection Level. That setting may be controlled by an
        # enterprise policy: https://chromeenterprise.google/policies/#
        # SafeBrowsingProtectionLevel.
        # Corresponds to the JSON property `safeBrowsingProtectionLevel`
        # @return [String]
        attr_accessor :safe_browsing_protection_level
      
        # The state of the Screen Lock password protection. On ChromeOS, this value will
        # always be ENABLED as there is not way to disable requiring a password or pin
        # when unlocking the device.
        # Corresponds to the JSON property `screenLockSecured`
        # @return [String]
        attr_accessor :screen_lock_secured
      
        # Whether the device's startup software has its Secure Boot feature enabled.
        # Corresponds to the JSON property `secureBootMode`
        # @return [String]
        attr_accessor :secure_boot_mode
      
        # The serial number of the device. On Windows, this represents the BIOS's serial
        # number.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # Whether the Site Isolation (a.k.a Site Per Process) setting is enabled. That
        # setting may be controlled by an enterprise policy: https://chromeenterprise.
        # google/policies/#SitePerProcess
        # Corresponds to the JSON property `siteIsolationEnabled`
        # @return [Boolean]
        attr_accessor :site_isolation_enabled
        alias_method :site_isolation_enabled?, :site_isolation_enabled
      
        # List of the addesses of all OS level DNS servers configured in the device's
        # network settings.
        # Corresponds to the JSON property `systemDnsServers`
        # @return [Array<String>]
        attr_accessor :system_dns_servers
      
        # Whether Chrome is blocking third-party software injection or not. This setting
        # may be controlled by an enterprise policy: https://chromeenterprise.google/
        # policies/?policy=ThirdPartyBlockingEnabled
        # Corresponds to the JSON property `thirdPartyBlockingEnabled`
        # @return [Boolean]
        attr_accessor :third_party_blocking_enabled
        alias_method :third_party_blocking_enabled?, :third_party_blocking_enabled
      
        # Windows domain that the current machine has joined.
        # Corresponds to the JSON property `windowsMachineDomain`
        # @return [String]
        attr_accessor :windows_machine_domain
      
        # Windows domain for the current OS user.
        # Corresponds to the JSON property `windowsUserDomain`
        # @return [String]
        attr_accessor :windows_user_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_screen_lock = args[:allow_screen_lock] if args.key?(:allow_screen_lock)
          @browser_version = args[:browser_version] if args.key?(:browser_version)
          @built_in_dns_client_enabled = args[:built_in_dns_client_enabled] if args.key?(:built_in_dns_client_enabled)
          @chrome_remote_desktop_app_blocked = args[:chrome_remote_desktop_app_blocked] if args.key?(:chrome_remote_desktop_app_blocked)
          @crowd_strike_agent = args[:crowd_strike_agent] if args.key?(:crowd_strike_agent)
          @device_affiliation_ids = args[:device_affiliation_ids] if args.key?(:device_affiliation_ids)
          @device_enrollment_domain = args[:device_enrollment_domain] if args.key?(:device_enrollment_domain)
          @device_manufacturer = args[:device_manufacturer] if args.key?(:device_manufacturer)
          @device_model = args[:device_model] if args.key?(:device_model)
          @disk_encryption = args[:disk_encryption] if args.key?(:disk_encryption)
          @display_name = args[:display_name] if args.key?(:display_name)
          @hostname = args[:hostname] if args.key?(:hostname)
          @imei = args[:imei] if args.key?(:imei)
          @mac_addresses = args[:mac_addresses] if args.key?(:mac_addresses)
          @meid = args[:meid] if args.key?(:meid)
          @operating_system = args[:operating_system] if args.key?(:operating_system)
          @os_firewall = args[:os_firewall] if args.key?(:os_firewall)
          @os_version = args[:os_version] if args.key?(:os_version)
          @password_protection_warning_trigger = args[:password_protection_warning_trigger] if args.key?(:password_protection_warning_trigger)
          @profile_affiliation_ids = args[:profile_affiliation_ids] if args.key?(:profile_affiliation_ids)
          @realtime_url_check_mode = args[:realtime_url_check_mode] if args.key?(:realtime_url_check_mode)
          @safe_browsing_protection_level = args[:safe_browsing_protection_level] if args.key?(:safe_browsing_protection_level)
          @screen_lock_secured = args[:screen_lock_secured] if args.key?(:screen_lock_secured)
          @secure_boot_mode = args[:secure_boot_mode] if args.key?(:secure_boot_mode)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @site_isolation_enabled = args[:site_isolation_enabled] if args.key?(:site_isolation_enabled)
          @system_dns_servers = args[:system_dns_servers] if args.key?(:system_dns_servers)
          @third_party_blocking_enabled = args[:third_party_blocking_enabled] if args.key?(:third_party_blocking_enabled)
          @windows_machine_domain = args[:windows_machine_domain] if args.key?(:windows_machine_domain)
          @windows_user_domain = args[:windows_user_domain] if args.key?(:windows_user_domain)
        end
      end
      
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
      
      # Signed ChallengeResponse.
      class VerifyChallengeResponseRequest
        include Google::Apis::Core::Hashable
      
        # Required. The generated response to the challenge, the bytes representation of
        # SignedData.
        # Corresponds to the JSON property `challengeResponse`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :challenge_response
      
        # Optional. Service can optionally provide identity information about the device
        # or user associated with the key. For an EMK, this value is the enrolled domain.
        # For an EUK, this value is the user's email address. If present, this value
        # will be checked against contents of the response, and verification will fail
        # if there is no match.
        # Corresponds to the JSON property `expectedIdentity`
        # @return [String]
        attr_accessor :expected_identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @challenge_response = args[:challenge_response] if args.key?(:challenge_response)
          @expected_identity = args[:expected_identity] if args.key?(:expected_identity)
        end
      end
      
      # Result message for VerifiedAccess.VerifyChallengeResponse.
      class VerifyChallengeResponseResult
        include Google::Apis::Core::Hashable
      
        # Unique customer id that this device belongs to, as defined by the Google Admin
        # SDK at https://developers.google.com/admin-sdk/directory/v1/guides/manage-
        # customers
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Device permanent id is returned in this field (for the machine response only).
        # Corresponds to the JSON property `devicePermanentId`
        # @return [String]
        attr_accessor :device_permanent_id
      
        # Deprecated. Device signal in json string representation. Prefer using `
        # device_signals` instead.
        # Corresponds to the JSON property `deviceSignal`
        # @return [String]
        attr_accessor :device_signal
      
        # The device signals as reported by Chrome.
        # Corresponds to the JSON property `deviceSignals`
        # @return [Google::Apis::VerifiedaccessV2::DeviceSignals]
        attr_accessor :device_signals
      
        # Device attested key trust level.
        # Corresponds to the JSON property `keyTrustLevel`
        # @return [String]
        attr_accessor :key_trust_level
      
        # Certificate Signing Request (in the SPKAC format, base64 encoded) is returned
        # in this field. This field will be set only if device has included CSR in its
        # challenge response. (the option to include CSR is now available for both user
        # and machine responses)
        # Corresponds to the JSON property `signedPublicKeyAndChallenge`
        # @return [String]
        attr_accessor :signed_public_key_and_challenge
      
        # Virtual device id of the device. The definition of virtual device id is
        # platform-specific.
        # Corresponds to the JSON property `virtualDeviceId`
        # @return [String]
        attr_accessor :virtual_device_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @device_permanent_id = args[:device_permanent_id] if args.key?(:device_permanent_id)
          @device_signal = args[:device_signal] if args.key?(:device_signal)
          @device_signals = args[:device_signals] if args.key?(:device_signals)
          @key_trust_level = args[:key_trust_level] if args.key?(:key_trust_level)
          @signed_public_key_and_challenge = args[:signed_public_key_and_challenge] if args.key?(:signed_public_key_and_challenge)
          @virtual_device_id = args[:virtual_device_id] if args.key?(:virtual_device_id)
        end
      end
    end
  end
end
