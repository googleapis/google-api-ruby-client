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
    module MarketingplatformadminV1alpha
      
      # A resource message representing the link between a Google Analytics account
      # and a Google Marketing Platform organization.
      class AnalyticsAccountLink
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The resource name of the AnalyticsAdmin API account. The
        # account ID will be used as the ID of this AnalyticsAccountLink resource, which
        # will become the final component of the resource name. Format: analyticsadmin.
        # googleapis.com/accounts/`account_id`
        # Corresponds to the JSON property `analyticsAccount`
        # @return [String]
        attr_accessor :analytics_account
      
        # Output only. The human-readable name for the Analytics account.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The verification state of the link between the Analytics account
        # and the parent organization.
        # Corresponds to the JSON property `linkVerificationState`
        # @return [String]
        attr_accessor :link_verification_state
      
        # Identifier. Resource name of this AnalyticsAccountLink. Note the resource ID
        # is the same as the ID of the Analtyics account. Format: organizations/`org_id`/
        # analyticsAccountLinks/`analytics_account_link_id` Example: "organizations/xyz/
        # analyticsAccountLinks/1234"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_account = args[:analytics_account] if args.key?(:analytics_account)
          @display_name = args[:display_name] if args.key?(:display_name)
          @link_verification_state = args[:link_verification_state] if args.key?(:link_verification_state)
          @name = args[:name] if args.key?(:name)
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
      
      # Response message for ListAnalyticsAccountLinks RPC.
      class ListAnalyticsAccountLinksResponse
        include Google::Apis::Core::Hashable
      
        # Analytics account links in this organization.
        # Corresponds to the JSON property `analyticsAccountLinks`
        # @return [Array<Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink>]
        attr_accessor :analytics_account_links
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_account_links = args[:analytics_account_links] if args.key?(:analytics_account_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for SetPropertyServiceLevel RPC.
      class SetPropertyServiceLevelRequest
        include Google::Apis::Core::Hashable
      
        # Required. The Analytics property to change the ServiceLevel setting. This
        # field is the name of the Google Analytics Admin API property resource. Format:
        # analyticsadmin.googleapis.com/properties/`property_id`
        # Corresponds to the JSON property `analyticsProperty`
        # @return [String]
        attr_accessor :analytics_property
      
        # Required. The service level to set for this property.
        # Corresponds to the JSON property `serviceLevel`
        # @return [String]
        attr_accessor :service_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_property = args[:analytics_property] if args.key?(:analytics_property)
          @service_level = args[:service_level] if args.key?(:service_level)
        end
      end
      
      # Response message for SetPropertyServiceLevel RPC.
      class SetPropertyServiceLevelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
