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
      
      class Challenge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CrowdStrikeAgent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyChallengeResponseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyChallengeResponseResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Challenge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :challenge, :base64 => true, as: 'challenge'
        end
      end
      
      class CrowdStrikeAgent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_id, as: 'agentId'
          property :customer_id, as: 'customerId'
        end
      end
      
      class DeviceSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_screen_lock, as: 'allowScreenLock'
          property :browser_version, as: 'browserVersion'
          property :built_in_dns_client_enabled, as: 'builtInDnsClientEnabled'
          property :chrome_remote_desktop_app_blocked, as: 'chromeRemoteDesktopAppBlocked'
          property :crowd_strike_agent, as: 'crowdStrikeAgent', class: Google::Apis::VerifiedaccessV2::CrowdStrikeAgent, decorator: Google::Apis::VerifiedaccessV2::CrowdStrikeAgent::Representation
      
          collection :device_affiliation_ids, as: 'deviceAffiliationIds'
          property :device_enrollment_domain, as: 'deviceEnrollmentDomain'
          property :device_manufacturer, as: 'deviceManufacturer'
          property :device_model, as: 'deviceModel'
          property :disk_encryption, as: 'diskEncryption'
          property :display_name, as: 'displayName'
          property :hostname, as: 'hostname'
          collection :imei, as: 'imei'
          collection :mac_addresses, as: 'macAddresses'
          collection :meid, as: 'meid'
          property :operating_system, as: 'operatingSystem'
          property :os_firewall, as: 'osFirewall'
          property :os_version, as: 'osVersion'
          property :password_protection_warning_trigger, as: 'passwordProtectionWarningTrigger'
          collection :profile_affiliation_ids, as: 'profileAffiliationIds'
          property :realtime_url_check_mode, as: 'realtimeUrlCheckMode'
          property :safe_browsing_protection_level, as: 'safeBrowsingProtectionLevel'
          property :screen_lock_secured, as: 'screenLockSecured'
          property :secure_boot_mode, as: 'secureBootMode'
          property :serial_number, as: 'serialNumber'
          property :site_isolation_enabled, as: 'siteIsolationEnabled'
          collection :system_dns_servers, as: 'systemDnsServers'
          property :third_party_blocking_enabled, as: 'thirdPartyBlockingEnabled'
          property :windows_machine_domain, as: 'windowsMachineDomain'
          property :windows_user_domain, as: 'windowsUserDomain'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class VerifyChallengeResponseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :challenge_response, :base64 => true, as: 'challengeResponse'
          property :expected_identity, as: 'expectedIdentity'
        end
      end
      
      class VerifyChallengeResponseResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_id, as: 'customerId'
          property :device_permanent_id, as: 'devicePermanentId'
          property :device_signal, as: 'deviceSignal'
          property :device_signals, as: 'deviceSignals', class: Google::Apis::VerifiedaccessV2::DeviceSignals, decorator: Google::Apis::VerifiedaccessV2::DeviceSignals::Representation
      
          property :key_trust_level, as: 'keyTrustLevel'
          property :signed_public_key_and_challenge, as: 'signedPublicKeyAndChallenge'
          property :virtual_device_id, as: 'virtualDeviceId'
        end
      end
    end
  end
end
