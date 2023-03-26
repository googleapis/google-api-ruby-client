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
    module PolicysimulatorV1beta
      
      class GoogleCloudPolicysimulatorV1Replay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1ReplayConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1ReplayOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1ReplayResultsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudPolicysimulatorV1Replay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::PolicysimulatorV1beta::GoogleCloudPolicysimulatorV1ReplayConfig, decorator: Google::Apis::PolicysimulatorV1beta::GoogleCloudPolicysimulatorV1ReplayConfig::Representation
      
          property :name, as: 'name'
          property :results_summary, as: 'resultsSummary', class: Google::Apis::PolicysimulatorV1beta::GoogleCloudPolicysimulatorV1ReplayResultsSummary, decorator: Google::Apis::PolicysimulatorV1beta::GoogleCloudPolicysimulatorV1ReplayResultsSummary::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudPolicysimulatorV1ReplayConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_source, as: 'logSource'
          hash :policy_overlay, as: 'policyOverlay', class: Google::Apis::PolicysimulatorV1beta::GoogleIamV1Policy, decorator: Google::Apis::PolicysimulatorV1beta::GoogleIamV1Policy::Representation
      
        end
      end
      
      class GoogleCloudPolicysimulatorV1ReplayOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudPolicysimulatorV1ReplayResultsSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :difference_count, as: 'differenceCount'
          property :error_count, as: 'errorCount'
          property :log_count, as: 'logCount'
          property :newest_date, as: 'newestDate', class: Google::Apis::PolicysimulatorV1beta::GoogleTypeDate, decorator: Google::Apis::PolicysimulatorV1beta::GoogleTypeDate::Representation
      
          property :oldest_date, as: 'oldestDate', class: Google::Apis::PolicysimulatorV1beta::GoogleTypeDate, decorator: Google::Apis::PolicysimulatorV1beta::GoogleTypeDate::Representation
      
          property :unchanged_count, as: 'unchangedCount'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::PolicysimulatorV1beta::GoogleIamV1AuditLogConfig, decorator: Google::Apis::PolicysimulatorV1beta::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::PolicysimulatorV1beta::GoogleTypeExpr, decorator: Google::Apis::PolicysimulatorV1beta::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::PolicysimulatorV1beta::GoogleIamV1AuditConfig, decorator: Google::Apis::PolicysimulatorV1beta::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::PolicysimulatorV1beta::GoogleIamV1Binding, decorator: Google::Apis::PolicysimulatorV1beta::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::PolicysimulatorV1beta::GoogleLongrunningOperation, decorator: Google::Apis::PolicysimulatorV1beta::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::PolicysimulatorV1beta::GoogleRpcStatus, decorator: Google::Apis::PolicysimulatorV1beta::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
    end
  end
end
