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
      
      # A billing account in [Google Developers Console](https://console.developers.
      # google.com/). You can assign a billing account to one or more projects.
      class BillingAccount
        include Google::Apis::Core::Hashable
      
        # The resource name of the billing account. The resource name has the form `
        # billingAccounts/`billing_account_id``. For example, `billingAccounts/012345-
        # 567890-ABCDEF` would be the resource name for billing account `012345-567890-
        # ABCDEF`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # True if the billing account is open, and will therefore be charged for any
        # usage on associated projects. False if the billing account is closed, and
        # therefore projects associated with it will be unable to use paid services.
        # Corresponds to the JSON property `open`
        # @return [Boolean]
        attr_accessor :open
        alias_method :open?, :open
      
        # The display name given to the billing account, such as `My Billing Account`.
        # This name is displayed in the Google Developers Console.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @open = args[:open] if args.key?(:open)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Response message for `ListBillingAccounts`.
      class ListBillingAccountsResponse
        include Google::Apis::Core::Hashable
      
        # A list of billing accounts.
        # Corresponds to the JSON property `billingAccounts`
        # @return [Array<Google::Apis::CloudbillingV1::BillingAccount>]
        attr_accessor :billing_accounts
      
        # A token to retrieve the next page of results. To retrieve the next page, call `
        # ListBillingAccounts` again with the `page_token` field set to this value. This
        # field is empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_accounts = args[:billing_accounts] if args.key?(:billing_accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for `ListProjectBillingInfoResponse`.
      class ListProjectBillingInfoResponse
        include Google::Apis::Core::Hashable
      
        # A list of `ProjectBillingInfo` resources representing the projects associated
        # with the billing account.
        # Corresponds to the JSON property `projectBillingInfo`
        # @return [Array<Google::Apis::CloudbillingV1::ProjectBillingInfo>]
        attr_accessor :project_billing_info
      
        # A token to retrieve the next page of results. To retrieve the next page, call `
        # ListProjectBillingInfo` again with the `page_token` field set to this value.
        # This field is empty if there are no more results to retrieve.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_billing_info = args[:project_billing_info] if args.key?(:project_billing_info)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Encapsulation of billing information for a Developers Console project. A
      # project has at most one associated billing account at a time (but a billing
      # account can be assigned to multiple projects).
      class ProjectBillingInfo
        include Google::Apis::Core::Hashable
      
        # The resource name for the `ProjectBillingInfo`; has the form `projects/`
        # project_id`/billingInfo`. For example, the resource name for the billing
        # information for project `tokyo-rain-123` would be `projects/tokyo-rain-123/
        # billingInfo`. This field is read-only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID of the project that this `ProjectBillingInfo` represents, such as `
        # tokyo-rain-123`. This is a convenience field so that you don't need to parse
        # the `name` field to obtain a project ID. This field is read-only.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The resource name of the billing account associated with the project, if any.
        # For example, `billingAccounts/012345-567890-ABCDEF`.
        # Corresponds to the JSON property `billingAccountName`
        # @return [String]
        attr_accessor :billing_account_name
      
        # True if the project is associated with an open billing account, to which usage
        # on the project is charged. False if the project is associated with a closed
        # billing account, or no billing account at all, and therefore cannot use paid
        # services. This field is read-only.
        # Corresponds to the JSON property `billingEnabled`
        # @return [Boolean]
        attr_accessor :billing_enabled
        alias_method :billing_enabled?, :billing_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
          @billing_account_name = args[:billing_account_name] if args.key?(:billing_account_name)
          @billing_enabled = args[:billing_enabled] if args.key?(:billing_enabled)
        end
      end
    end
  end
end
