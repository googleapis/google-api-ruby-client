# Copyright 2015 Google Inc.
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
    module CloudbillingV1
      
      class BillingAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBillingAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProjectBillingInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectBillingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BillingAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :open, as: 'open'
          property :display_name, as: 'displayName'
        end
      end
      
      class ListBillingAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :billing_accounts, as: 'billingAccounts', class: Google::Apis::CloudbillingV1::BillingAccount, decorator: Google::Apis::CloudbillingV1::BillingAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListProjectBillingInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :project_billing_info, as: 'projectBillingInfo', class: Google::Apis::CloudbillingV1::ProjectBillingInfo, decorator: Google::Apis::CloudbillingV1::ProjectBillingInfo::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ProjectBillingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :project_id, as: 'projectId'
          property :billing_account_name, as: 'billingAccountName'
          property :billing_enabled, as: 'billingEnabled'
        end
      end
    end
  end
end
