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
    module AcmednsV1
      
      # The up-to-date ACME challenge set on a domain for an RPC. This contains all of
      # the ACME TXT records that exist on the domain.
      class AcmeChallengeSet
        include Google::Apis::Core::Hashable
      
        # The ACME challenges on the requested domain represented as individual TXT
        # records.
        # Corresponds to the JSON property `record`
        # @return [Array<Google::Apis::AcmednsV1::AcmeTxtRecord>]
        attr_accessor :record
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @record = args[:record] if args.key?(:record)
        end
      end
      
      # The TXT record message that represents an ACME DNS-01 challenge.
      class AcmeTxtRecord
        include Google::Apis::Core::Hashable
      
        # Holds the ACME challenge data put in the TXT record. This will be checked to
        # be a valid TXT record data entry.
        # Corresponds to the JSON property `digest`
        # @return [String]
        attr_accessor :digest
      
        # The domain/subdomain for the record. In a request, this MAY be Unicode or
        # Punycode. In a response, this will be in Unicode. The fqdn MUST contain the
        # root_domain field on the request.
        # Corresponds to the JSON property `fqdn`
        # @return [String]
        attr_accessor :fqdn
      
        # Output only. The time when this record was last updated. This will be in UTC
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @fqdn = args[:fqdn] if args.key?(:fqdn)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The request message for the RotateChallenges RPC. Requires an access token, a
      # root domain, and either records_to_add or records_to_remove to be populated.
      # Records may be set for multiple subdomains at once to support SAN requests for
      # multiple subdomains in a single domain. By default, ACME TXT record challenges
      # that are older than 30 days will be removed. Set `keep_expired_records` to
      # false if this behavior is undesired. There is a record maximum of 100 records
      # per domain including expired records. Any request sent that would exceed this
      # maximum will result in a FAILED_PRECONDITION error. NEXT ID: 6
      class RotateChallengesRequest
        include Google::Apis::Core::Hashable
      
        # Required. ACME DNS access token. This is a base64 token secret that is
        # procured from the Google Domains website. It authorizes ACME TXT record
        # updates for a domain.
        # Corresponds to the JSON property `accessToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :access_token
      
        # Keep records older than 30 days that were used for previous requests.
        # Corresponds to the JSON property `keepExpiredRecords`
        # @return [Boolean]
        attr_accessor :keep_expired_records
        alias_method :keep_expired_records?, :keep_expired_records
      
        # ACME TXT record challenges to add. Supports multiple challenges on the same
        # FQDN.
        # Corresponds to the JSON property `recordsToAdd`
        # @return [Array<Google::Apis::AcmednsV1::AcmeTxtRecord>]
        attr_accessor :records_to_add
      
        # ACME TXT record challenges to remove.
        # Corresponds to the JSON property `recordsToRemove`
        # @return [Array<Google::Apis::AcmednsV1::AcmeTxtRecord>]
        attr_accessor :records_to_remove
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @keep_expired_records = args[:keep_expired_records] if args.key?(:keep_expired_records)
          @records_to_add = args[:records_to_add] if args.key?(:records_to_add)
          @records_to_remove = args[:records_to_remove] if args.key?(:records_to_remove)
        end
      end
    end
  end
end
