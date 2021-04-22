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
    module CloudcommerceprocurementV1
      
      class Account
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Approval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproveAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproveEntitlementPlanChangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproveEntitlementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Consumer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RejectAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RejectEntitlementPlanChangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RejectEntitlementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResetAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspendEntitlementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Account
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :approvals, as: 'approvals', class: Google::Apis::CloudcommerceprocurementV1::Approval, decorator: Google::Apis::CloudcommerceprocurementV1::Approval::Representation
      
          property :create_time, as: 'createTime'
          hash :input_properties, as: 'inputProperties'
          property :name, as: 'name'
          property :provider, as: 'provider'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Approval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :reason, as: 'reason'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ApproveAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_name, as: 'approvalName'
          hash :properties, as: 'properties'
          property :reason, as: 'reason'
        end
      end
      
      class ApproveEntitlementPlanChangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pending_plan_name, as: 'pendingPlanName'
        end
      end
      
      class ApproveEntitlementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :properties, as: 'properties'
        end
      end
      
      class Consumer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project, as: 'project'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Entitlement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          collection :consumers, as: 'consumers', class: Google::Apis::CloudcommerceprocurementV1::Consumer, decorator: Google::Apis::CloudcommerceprocurementV1::Consumer::Representation
      
          property :create_time, as: 'createTime'
          hash :input_properties, as: 'inputProperties'
          property :message_to_user, as: 'messageToUser'
          property :name, as: 'name'
          property :new_pending_offer, as: 'newPendingOffer'
          property :new_pending_plan, as: 'newPendingPlan'
          property :offer, as: 'offer'
          property :offer_end_time, as: 'offerEndTime'
          property :plan, as: 'plan'
          property :product, as: 'product'
          property :product_external_name, as: 'productExternalName'
          property :provider, as: 'provider'
          property :quote_external_name, as: 'quoteExternalName'
          property :state, as: 'state'
          property :subscription_end_time, as: 'subscriptionEndTime'
          property :update_time, as: 'updateTime'
          property :usage_reporting_id, as: 'usageReportingId'
        end
      end
      
      class ListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::CloudcommerceprocurementV1::Account, decorator: Google::Apis::CloudcommerceprocurementV1::Account::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEntitlementsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entitlements, as: 'entitlements', class: Google::Apis::CloudcommerceprocurementV1::Entitlement, decorator: Google::Apis::CloudcommerceprocurementV1::Entitlement::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class RejectAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_name, as: 'approvalName'
          property :reason, as: 'reason'
        end
      end
      
      class RejectEntitlementPlanChangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pending_plan_name, as: 'pendingPlanName'
          property :reason, as: 'reason'
        end
      end
      
      class RejectEntitlementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
        end
      end
      
      class ResetAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SuspendEntitlementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
        end
      end
    end
  end
end
