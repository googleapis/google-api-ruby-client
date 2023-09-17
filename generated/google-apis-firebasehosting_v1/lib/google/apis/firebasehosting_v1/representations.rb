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
    module FirebasehostingV1
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CertVerification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomDomainMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsRecordSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsUpdates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LiveMigrationStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CertVerification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns, as: 'dns', class: Google::Apis::FirebasehostingV1::DnsUpdates, decorator: Google::Apis::FirebasehostingV1::DnsUpdates::Representation
      
          property :http, as: 'http', class: Google::Apis::FirebasehostingV1::HttpUpdate, decorator: Google::Apis::FirebasehostingV1::HttpUpdate::Representation
      
        end
      end
      
      class CustomDomainMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_state, as: 'certState'
          property :host_state, as: 'hostState'
          collection :issues, as: 'issues', class: Google::Apis::FirebasehostingV1::Status, decorator: Google::Apis::FirebasehostingV1::Status::Representation
      
          collection :live_migration_steps, as: 'liveMigrationSteps', class: Google::Apis::FirebasehostingV1::LiveMigrationStep, decorator: Google::Apis::FirebasehostingV1::LiveMigrationStep::Representation
      
          property :ownership_state, as: 'ownershipState'
          property :quick_setup_updates, as: 'quickSetupUpdates', class: Google::Apis::FirebasehostingV1::DnsUpdates, decorator: Google::Apis::FirebasehostingV1::DnsUpdates::Representation
      
        end
      end
      
      class DnsRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_name, as: 'domainName'
          property :rdata, as: 'rdata'
          property :required_action, as: 'requiredAction'
          property :type, as: 'type'
        end
      end
      
      class DnsRecordSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_error, as: 'checkError', class: Google::Apis::FirebasehostingV1::Status, decorator: Google::Apis::FirebasehostingV1::Status::Representation
      
          property :domain_name, as: 'domainName'
          collection :records, as: 'records', class: Google::Apis::FirebasehostingV1::DnsRecord, decorator: Google::Apis::FirebasehostingV1::DnsRecord::Representation
      
        end
      end
      
      class DnsUpdates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_time, as: 'checkTime'
          collection :desired, as: 'desired', class: Google::Apis::FirebasehostingV1::DnsRecordSet, decorator: Google::Apis::FirebasehostingV1::DnsRecordSet::Representation
      
          collection :discovered, as: 'discovered', class: Google::Apis::FirebasehostingV1::DnsRecordSet, decorator: Google::Apis::FirebasehostingV1::DnsRecordSet::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class HttpUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :check_error, as: 'checkError', class: Google::Apis::FirebasehostingV1::Status, decorator: Google::Apis::FirebasehostingV1::Status::Representation
      
          property :desired, as: 'desired'
          property :discovered, as: 'discovered'
          property :last_check_time, as: 'lastCheckTime'
          property :path, as: 'path'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FirebasehostingV1::Operation, decorator: Google::Apis::FirebasehostingV1::Operation::Representation
      
        end
      end
      
      class LiveMigrationStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cert_verification, as: 'certVerification', class: Google::Apis::FirebasehostingV1::CertVerification, decorator: Google::Apis::FirebasehostingV1::CertVerification::Representation
      
          property :dns_updates, as: 'dnsUpdates', class: Google::Apis::FirebasehostingV1::DnsUpdates, decorator: Google::Apis::FirebasehostingV1::DnsUpdates::Representation
      
          collection :issues, as: 'issues', class: Google::Apis::FirebasehostingV1::Status, decorator: Google::Apis::FirebasehostingV1::Status::Representation
      
          property :state, as: 'state'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FirebasehostingV1::Status, decorator: Google::Apis::FirebasehostingV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
