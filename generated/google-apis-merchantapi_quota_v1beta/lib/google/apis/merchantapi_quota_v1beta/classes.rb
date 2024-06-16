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
    module MerchantapiQuotaV1beta
      
      # Response message for the ListMethodGroups method.
      class ListQuotaGroupsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The methods, current quota usage and limits per each group. The quota is
        # shared between all methods in the group. The groups are sorted in descending
        # order based on quotaUsage.
        # Corresponds to the JSON property `quotaGroups`
        # @return [Array<Google::Apis::MerchantapiQuotaV1beta::QuotaGroup>]
        attr_accessor :quota_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @quota_groups = args[:quota_groups] if args.key?(:quota_groups)
        end
      end
      
      # The method details per method in the Merchant API.
      class MethodDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the method for example `products.list`.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Output only. The path for the method such as `products/v1/productInputs.insert`
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Output only. The sub-API that the method belongs to.
        # Corresponds to the JSON property `subapi`
        # @return [String]
        attr_accessor :subapi
      
        # Output only. The API version that the method belongs to.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @path = args[:path] if args.key?(:path)
          @subapi = args[:subapi] if args.key?(:subapi)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The change that happened to the product including old value, new value,
      # country code as the region code and reporting context.
      class ProductChange
        include Google::Apis::Core::Hashable
      
        # The new value of the changed resource or attribute.
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # The old value of the changed resource or attribute.
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # Countries that have the change (if applicable)
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Reporting contexts that have the change (if applicable)
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
          @region_code = args[:region_code] if args.key?(:region_code)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # The message that the merchant will receive to notify about product status
      # change event
      class ProductStatusChangeMessage
        include Google::Apis::Core::Hashable
      
        # The target account that owns the entity that changed. Format : `accounts/`
        # merchant_id``
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # The attribute in the resource that changed, in this case it will be always `
        # Status`.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # A message to describe the change that happened to the product
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::MerchantapiQuotaV1beta::ProductChange>]
        attr_accessor :changes
      
        # The account that manages the merchant's account. can be the same as merchant
        # id if it is standalone account. Format : `accounts/`service_provider_id``
        # Corresponds to the JSON property `managingAccount`
        # @return [String]
        attr_accessor :managing_account
      
        # The product name. Format: ``product.name=accounts/`account`/products/`product``
        # `
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The product id.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The resource that changed, in this case it will always be `Product`.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @attribute = args[:attribute] if args.key?(:attribute)
          @changes = args[:changes] if args.key?(:changes)
          @managing_account = args[:managing_account] if args.key?(:managing_account)
          @resource = args[:resource] if args.key?(:resource)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # The group information for methods in the Merchant API. The quota is shared
      # between all methods in the group. Even if none of the methods within the group
      # have usage the information for the group is returned.
      class QuotaGroup
        include Google::Apis::Core::Hashable
      
        # Output only. List of all methods group quota applies to.
        # Corresponds to the JSON property `methodDetails`
        # @return [Array<Google::Apis::MerchantapiQuotaV1beta::MethodDetails>]
        attr_accessor :method_details
      
        # Identifier. The resource name of the quota group. Format: accounts/`account`/
        # quotas/`group` Note: There is no guarantee on the format of `group`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The maximum number of calls allowed per day for the group.
        # Corresponds to the JSON property `quotaLimit`
        # @return [Fixnum]
        attr_accessor :quota_limit
      
        # Output only. The maximum number of calls allowed per minute for the group.
        # Corresponds to the JSON property `quotaMinuteLimit`
        # @return [Fixnum]
        attr_accessor :quota_minute_limit
      
        # Output only. The current quota usage, meaning the number of calls already made
        # on a given day to the methods in the group. The daily quota limits reset at at
        # 12:00 PM midday UTC.
        # Corresponds to the JSON property `quotaUsage`
        # @return [Fixnum]
        attr_accessor :quota_usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_details = args[:method_details] if args.key?(:method_details)
          @name = args[:name] if args.key?(:name)
          @quota_limit = args[:quota_limit] if args.key?(:quota_limit)
          @quota_minute_limit = args[:quota_minute_limit] if args.key?(:quota_minute_limit)
          @quota_usage = args[:quota_usage] if args.key?(:quota_usage)
        end
      end
    end
  end
end
