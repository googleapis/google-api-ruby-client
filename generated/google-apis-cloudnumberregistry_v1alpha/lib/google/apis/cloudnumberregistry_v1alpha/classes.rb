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
    module CloudnumberregistryV1alpha
      
      # Aggregated data for the RegistryBook.
      class AggregatedData
        include Google::Apis::Core::Hashable
      
        # Output only. Number of CustomRanges in the RegistryBook.
        # Corresponds to the JSON property `customRangesCount`
        # @return [Fixnum]
        attr_accessor :custom_ranges_count
      
        # Output only. Number of custom Realms in the RegistryBook.
        # Corresponds to the JSON property `customRealmsCount`
        # @return [Fixnum]
        attr_accessor :custom_realms_count
      
        # Output only. Number of DiscoveredRanges in the RegistryBook.
        # Corresponds to the JSON property `discoveredRangesCount`
        # @return [Fixnum]
        attr_accessor :discovered_ranges_count
      
        # Output only. Number of discovered Realms in the RegistryBook.
        # Corresponds to the JSON property `discoveredRealmsCount`
        # @return [Fixnum]
        attr_accessor :discovered_realms_count
      
        # Output only. Number of scopes unique to the RegistryBook.
        # Corresponds to the JSON property `uniqueScopesCount`
        # @return [Fixnum]
        attr_accessor :unique_scopes_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_ranges_count = args[:custom_ranges_count] if args.key?(:custom_ranges_count)
          @custom_realms_count = args[:custom_realms_count] if args.key?(:custom_realms_count)
          @discovered_ranges_count = args[:discovered_ranges_count] if args.key?(:discovered_ranges_count)
          @discovered_realms_count = args[:discovered_realms_count] if args.key?(:discovered_realms_count)
          @unique_scopes_count = args[:unique_scopes_count] if args.key?(:unique_scopes_count)
        end
      end
      
      # A key-value pair representing a custom attribute associated with a resource.
      class Attribute
        include Google::Apis::Core::Hashable
      
        # Required. The key of the attribute.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Required. The value of the attribute.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the CloudNumberRegistry.CheckAvailabilityIpamAdminScopes
      # method.
      class CheckAvailabilityIpamAdminScopesResponse
        include Google::Apis::Core::Hashable
      
        # The details of the requested scopes.
        # Corresponds to the JSON property `scopeAvailabilities`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::IpamAdminScopeAvailability>]
        attr_accessor :scope_availabilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scope_availabilities = args[:scope_availabilities] if args.key?(:scope_availabilities)
        end
      end
      
      # Request message for the CloudNumberRegistry.CleanupIpamAdminScope method.
      class CleanupIpamAdminScopeRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A CustomRange represents a user-defined IP address range.
      class CustomRange
        include Google::Apis::Core::Hashable
      
        # Optional. The attributes of the CustomRange.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::Attribute>]
        attr_accessor :attributes
      
        # Optional. The description of the CustomRange.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The IPv4 CIDR range of the CustomRange.
        # Corresponds to the JSON property `ipv4CidrRange`
        # @return [String]
        attr_accessor :ipv4_cidr_range
      
        # Optional. The IPv6 CIDR range of the CustomRange.
        # Corresponds to the JSON property `ipv6CidrRange`
        # @return [String]
        attr_accessor :ipv6_cidr_range
      
        # Optional. User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Identifier. The resource name of the CustomRange, in the format `
        # projects/`project`/locations/`location`/customRanges/`custom_range``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The resource name of the parent CustomRange, in the format `projects/
        # `project`/locations/`location`/customRanges/`custom_range``. If specified, the
        # parent CustomRange must be in the same RegistryBook. This field is mutually
        # exclusive with the `realm` field, as the Realm is inherited from the parent
        # CustomRange.
        # Corresponds to the JSON property `parentRange`
        # @return [String]
        attr_accessor :parent_range
      
        # Optional. The resource name of the Realm associated with the CustomRange, in
        # the format `projects/`project`/locations/`location`/realms/`realm``. The Realm
        # must be in the same project as the CustomRange. This field must not be set if
        # the `parent_range` field is set, as the Realm will be inherited from the
        # parent CustomRange.
        # Corresponds to the JSON property `realm`
        # @return [String]
        attr_accessor :realm
      
        # Output only. The RegistryBook of the CustomRange. This field is inherited from
        # the Realm or parent CustomRange depending on which one is specified.
        # Corresponds to the JSON property `registryBook`
        # @return [String]
        attr_accessor :registry_book
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @description = args[:description] if args.key?(:description)
          @ipv4_cidr_range = args[:ipv4_cidr_range] if args.key?(:ipv4_cidr_range)
          @ipv6_cidr_range = args[:ipv6_cidr_range] if args.key?(:ipv6_cidr_range)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent_range = args[:parent_range] if args.key?(:parent_range)
          @realm = args[:realm] if args.key?(:realm)
          @registry_book = args[:registry_book] if args.key?(:registry_book)
        end
      end
      
      # Request message for the CloudNumberRegistry.DisableIpamAdminScope method.
      class DisableIpamAdminScopeRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A DiscoveredRange represents an IP address range automatically detected by the
      # discovery pipeline.
      class DiscoveredRange
        include Google::Apis::Core::Hashable
      
        # Optional. The attributes of the DiscoveredRange.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::Attribute>]
        attr_accessor :attributes
      
        # Output only. If true, allows child DiscoveredRanges of this DiscoveredRange to
        # overlap with each other.
        # Corresponds to the JSON property `childCidrOverlapAllowed`
        # @return [Boolean]
        attr_accessor :child_cidr_overlap_allowed
        alias_method :child_cidr_overlap_allowed?, :child_cidr_overlap_allowed
      
        # Output only. The time at which the DiscoveredRange was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the DiscoveredRange.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Metadata about a discovered resource, tracking event times, state, and source
        # information.
        # Corresponds to the JSON property `discoveryMetadata`
        # @return [Google::Apis::CloudnumberregistryV1alpha::DiscoveryMetadata]
        attr_accessor :discovery_metadata
      
        # Optional. The IPv4 CIDR range of the DiscoveredRange.
        # Corresponds to the JSON property `ipv4CidrRange`
        # @return [String]
        attr_accessor :ipv4_cidr_range
      
        # Optional. The IPv6 CIDR range of the DiscoveredRange.
        # Corresponds to the JSON property `ipv6CidrRange`
        # @return [String]
        attr_accessor :ipv6_cidr_range
      
        # Optional. User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Identifier. The resource name of the DiscoveredRange, in the format `
        # projects/`project`/locations/`location`/discoveredRanges/`discovered_range``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The resource name of the parent DiscoveredRange, in the format `
        # projects/`project`/locations/`location`/discoveredRanges/`discovered_range``.
        # Corresponds to the JSON property `parentRange`
        # @return [String]
        attr_accessor :parent_range
      
        # Optional. The Realm of the DiscoveredRange.
        # Corresponds to the JSON property `realm`
        # @return [String]
        attr_accessor :realm
      
        # Output only. The RegistryBook of the DiscoveredRange.
        # Corresponds to the JSON property `registryBook`
        # @return [String]
        attr_accessor :registry_book
      
        # Output only. The time at which the DiscoveredRange was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @child_cidr_overlap_allowed = args[:child_cidr_overlap_allowed] if args.key?(:child_cidr_overlap_allowed)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @discovery_metadata = args[:discovery_metadata] if args.key?(:discovery_metadata)
          @ipv4_cidr_range = args[:ipv4_cidr_range] if args.key?(:ipv4_cidr_range)
          @ipv6_cidr_range = args[:ipv6_cidr_range] if args.key?(:ipv6_cidr_range)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent_range = args[:parent_range] if args.key?(:parent_range)
          @realm = args[:realm] if args.key?(:realm)
          @registry_book = args[:registry_book] if args.key?(:registry_book)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata about a discovered resource, tracking event times, state, and source
      # information.
      class DiscoveryMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time when the event happened.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Output only. The resource name of the discovered resource, should be API-
        # agnostic. Example: "projects/`project_number`/networks/`network_id`".
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Output only. The resource uri of the discovered resource.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Output only. The canonical google.aip.dev/122 name of the source resource.
        # Corresponds to the JSON property `sourceId`
        # @return [String]
        attr_accessor :source_id
      
        # Output only. A single source resource can be the source of multiple CNR
        # resources. This sub_id is used to distinguish between the different CNR
        # resources derived from the same upstream resource. For example, a single
        # subnetwork can be the source of multiple Ranges, one for each protocol. In
        # this case, the sub_id could be "private-ipv4" or "private-ipv6".
        # Corresponds to the JSON property `sourceSubId`
        # @return [String]
        attr_accessor :source_sub_id
      
        # Output only. The state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time when the resource was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_time = args[:event_time] if args.key?(:event_time)
          @resource = args[:resource] if args.key?(:resource)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @source_id = args[:source_id] if args.key?(:source_id)
          @source_sub_id = args[:source_sub_id] if args.key?(:source_sub_id)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # Response message for the CloudNumberRegistry.FindCustomRangeFreeIpRanges
      # method.
      class FindCustomRangeFreeIpRangesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The free IP CIDR ranges found.
        # Corresponds to the JSON property `freeIpCidrRanges`
        # @return [Array<String>]
        attr_accessor :free_ip_cidr_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_ip_cidr_ranges = args[:free_ip_cidr_ranges] if args.key?(:free_ip_cidr_ranges)
        end
      end
      
      # Response message for the CloudNumberRegistry.FindDiscoveredRangeFreeIpRanges
      # method.
      class FindDiscoveredRangeFreeIpRangesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The free IP CIDR ranges found.
        # Corresponds to the JSON property `freeIpCidrRanges`
        # @return [Array<String>]
        attr_accessor :free_ip_cidr_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free_ip_cidr_ranges = args[:free_ip_cidr_ranges] if args.key?(:free_ip_cidr_ranges)
        end
      end
      
      # An IpamAdminScope defines the administrative boundary for IP address discovery
      # and management. It configures which platforms and organizational scopes are
      # enabled for IP tracking.
      class IpamAdminScope
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the IpamAdminScope was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Add-on platforms that are enabled for this IpamAdminScope. Cloud
        # Number Registry only discovers the IP addresses from the enabled platforms.
        # Corresponds to the JSON property `enabledAddonPlatforms`
        # @return [Array<String>]
        attr_accessor :enabled_addon_platforms
      
        # Optional. User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Identifier. The resource name of the IpamAdminScope.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Administrative scopes enabled for IP address discovery and
        # management. For example, "organizations/1234567890". Minimum of 1 scope is
        # required. In preview, only one organization scope is allowed.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Output only. State of resource discovery pipeline.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which the IpamAdminScope was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @enabled_addon_platforms = args[:enabled_addon_platforms] if args.key?(:enabled_addon_platforms)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @scopes = args[:scopes] if args.key?(:scopes)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Availability details for a specific IpamAdminScope.
      class IpamAdminScopeAvailability
        include Google::Apis::Core::Hashable
      
        # The admin project of the IpamAdminScope if it exists.
        # Corresponds to the JSON property `adminProject`
        # @return [Fixnum]
        attr_accessor :admin_project
      
        # The availability of the scope.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # The scope of the IpamAdminScope.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_project = args[:admin_project] if args.key?(:admin_project)
          @availability = args[:availability] if args.key?(:availability)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Response message for the CloudNumberRegistry.ListCustomRanges method.
      class ListCustomRangesResponse
        include Google::Apis::Core::Hashable
      
        # The list of CustomRanges.
        # Corresponds to the JSON property `customRanges`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::CustomRange>]
        attr_accessor :custom_ranges
      
        # A token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_ranges = args[:custom_ranges] if args.key?(:custom_ranges)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for the CloudNumberRegistry.ListDiscoveredRanges method.
      class ListDiscoveredRangesResponse
        include Google::Apis::Core::Hashable
      
        # The list of DiscoveredRanges.
        # Corresponds to the JSON property `discoveredRanges`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::DiscoveredRange>]
        attr_accessor :discovered_ranges
      
        # A token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovered_ranges = args[:discovered_ranges] if args.key?(:discovered_ranges)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for the CloudNumberRegistry.ListIpamAdminScopes method.
      class ListIpamAdminScopesResponse
        include Google::Apis::Core::Hashable
      
        # The list of IpamAdminScopes.
        # Corresponds to the JSON property `ipamAdminScopes`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::IpamAdminScope>]
        attr_accessor :ipam_admin_scopes
      
        # A token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ipam_admin_scopes = args[:ipam_admin_scopes] if args.key?(:ipam_admin_scopes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for the CloudNumberRegistry.ListRealms method.
      class ListRealmsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Realms.
        # Corresponds to the JSON property `realms`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::Realm>]
        attr_accessor :realms
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @realms = args[:realms] if args.key?(:realms)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for the CloudNumberRegistry.ListRegistryBooks method.
      class ListRegistryBooksResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of RegistryBook
        # Corresponds to the JSON property `registryBooks`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::RegistryBook>]
        attr_accessor :registry_books
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @registry_books = args[:registry_books] if args.key?(:registry_books)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudnumberregistryV1alpha::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Represents either a CustomRange or a DiscoveredRange.
      class Range
        include Google::Apis::Core::Hashable
      
        # A CustomRange represents a user-defined IP address range.
        # Corresponds to the JSON property `customRange`
        # @return [Google::Apis::CloudnumberregistryV1alpha::CustomRange]
        attr_accessor :custom_range
      
        # A DiscoveredRange represents an IP address range automatically detected by the
        # discovery pipeline.
        # Corresponds to the JSON property `discoveredRange`
        # @return [Google::Apis::CloudnumberregistryV1alpha::DiscoveredRange]
        attr_accessor :discovered_range
      
        # Utilization metrics for an IP Range, including consumed and produced address
        # counts.
        # Corresponds to the JSON property `utilization`
        # @return [Google::Apis::CloudnumberregistryV1alpha::RangeUtilization]
        attr_accessor :utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_range = args[:custom_range] if args.key?(:custom_range)
          @discovered_range = args[:discovered_range] if args.key?(:discovered_range)
          @utilization = args[:utilization] if args.key?(:utilization)
        end
      end
      
      # Utilization metrics for an IP Range, including consumed and produced address
      # counts.
      class RangeUtilization
        include Google::Apis::Core::Hashable
      
        # Output only. The total number of IP addresses consumed in the Range.
        # Corresponds to the JSON property `totalConsumed`
        # @return [String]
        attr_accessor :total_consumed
      
        # Output only. The total number of IP addresses produced in the Range.
        # Corresponds to the JSON property `totalProduced`
        # @return [String]
        attr_accessor :total_produced
      
        # Output only. The usage of the Range as a percentage. This is marked as
        # optional so that we have presence tracking and API responses show 0.0 instead
        # of NULL.
        # Corresponds to the JSON property `usage`
        # @return [Float]
        attr_accessor :usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_consumed = args[:total_consumed] if args.key?(:total_consumed)
          @total_produced = args[:total_produced] if args.key?(:total_produced)
          @usage = args[:usage] if args.key?(:usage)
        end
      end
      
      # A Realm represents a distinct network domain or security zone. It groups
      # Ranges that share the same traffic and management characteristics. All the
      # ranges in a Realm are routable to each other, meaning that they cannot overlap.
      class Realm
        include Google::Apis::Core::Hashable
      
        # Aggregated data for the Realm.
        # Corresponds to the JSON property `aggregatedData`
        # @return [Google::Apis::CloudnumberregistryV1alpha::RealmAggregatedData]
        attr_accessor :aggregated_data
      
        # Output only. The time at which the Realm was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Metadata about a discovered resource, tracking event times, state, and source
        # information.
        # Corresponds to the JSON property `discoveryMetadata`
        # @return [Google::Apis::CloudnumberregistryV1alpha::DiscoveryMetadata]
        attr_accessor :discovery_metadata
      
        # Optional. IP version of the Realm.
        # Corresponds to the JSON property `ipVersion`
        # @return [String]
        attr_accessor :ip_version
      
        # Optional. User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Management type of the Realm.
        # Corresponds to the JSON property `managementType`
        # @return [String]
        attr_accessor :management_type
      
        # Required. Identifier. The resource name of the Realm.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Name of the RegistryBook that claims the Realm.
        # Corresponds to the JSON property `registryBook`
        # @return [String]
        attr_accessor :registry_book
      
        # Required. Traffic type of the Realm.
        # Corresponds to the JSON property `trafficType`
        # @return [String]
        attr_accessor :traffic_type
      
        # Output only. The time at which the Realm was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregated_data = args[:aggregated_data] if args.key?(:aggregated_data)
          @create_time = args[:create_time] if args.key?(:create_time)
          @discovery_metadata = args[:discovery_metadata] if args.key?(:discovery_metadata)
          @ip_version = args[:ip_version] if args.key?(:ip_version)
          @labels = args[:labels] if args.key?(:labels)
          @management_type = args[:management_type] if args.key?(:management_type)
          @name = args[:name] if args.key?(:name)
          @registry_book = args[:registry_book] if args.key?(:registry_book)
          @traffic_type = args[:traffic_type] if args.key?(:traffic_type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Aggregated data for the Realm.
      class RealmAggregatedData
        include Google::Apis::Core::Hashable
      
        # Output only. Number of CustomRanges in the Realm.
        # Corresponds to the JSON property `customRangesCount`
        # @return [Fixnum]
        attr_accessor :custom_ranges_count
      
        # Output only. Number of DiscoveredRanges in the Realm.
        # Corresponds to the JSON property `discoveredRangesCount`
        # @return [Fixnum]
        attr_accessor :discovered_ranges_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_ranges_count = args[:custom_ranges_count] if args.key?(:custom_ranges_count)
          @discovered_ranges_count = args[:discovered_ranges_count] if args.key?(:discovered_ranges_count)
        end
      end
      
      # A RegistryBook organizes and manages IP address space. It claims specific
      # scopes (such as projects) and groups related Realms and Ranges.
      class RegistryBook
        include Google::Apis::Core::Hashable
      
        # Aggregated data for the RegistryBook.
        # Corresponds to the JSON property `aggregatedData`
        # @return [Google::Apis::CloudnumberregistryV1alpha::AggregatedData]
        attr_accessor :aggregated_data
      
        # Optional. List of scopes claimed by the RegistryBook. In Preview, Only project
        # scope is supported. Each scope is in the format of projects/`project`. Each
        # scope can only be claimed once.
        # Corresponds to the JSON property `claimedScopes`
        # @return [Array<String>]
        attr_accessor :claimed_scopes
      
        # Output only. The time at which the RegistryBook was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Whether the RegistryBook is the default one.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # Optional. User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Identifier. The resource name of the RegistryBook.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time at which the RegistryBook was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregated_data = args[:aggregated_data] if args.key?(:aggregated_data)
          @claimed_scopes = args[:claimed_scopes] if args.key?(:claimed_scopes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @is_default = args[:is_default] if args.key?(:is_default)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for the CloudNumberRegistry.SearchIpResources method.
      class SearchIpResourcesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Hint for how to order the results. Supported sort fields are: - `
        # name`: Sort alphabetically by the resource name. - `create_time`: Sort by the
        # creation timestamp of the resource. - `update_time`: Sort by the last update
        # timestamp of the resource. Supported directions are `asc` (ascending) and `
        # desc` (descending). If unspecified, direction defaults to `asc`. Only sorting
        # by a single field is supported.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Optional. Requested page size. Server may return fewer items than requested.
        # If unspecified, server will pick an appropriate default.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A token identifying a page of results the server should return.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. Search query. This string filters resources in an AIP-160-like
        # format. It has some limitations. You can only specify top level conjunctions
        # or attribute level negations. Each restriction can only be used once except
        # the attribute restriction. The available restrictions for Ranges are: - `realm`
        # : The Realm name to search in. - `ip_address`: The IP address to search for
        # within Ranges. - `ip_version`: The IP version to filter by (e.g., "IPV4", "
        # IPV6"). - `parent_range`: The parent Range of the Range to search for. - `
        # attribute_text`: The attribute text to search for within Ranges. - `attribute`:
        # The attribute key and value to filter by. The available restrictions for
        # Realms are: - `ip_version`: The IP version to search for. - `management_type`:
        # The management type of the Realm (e.g., "CNR", "USER"). Only one of
        # attribute_text or multiple attribute filters can be specified. Examples: - `
        # realm=test-realm` - `realm=test-realm AND ip_address=10.0.0.0` - `realm=test-
        # realm AND ip_version=IPV6` - `realm=test-realm AND attribute_text=test` - `
        # ip_address=10.0.0.0 AND attribute:(key1=value1) AND attribute:(key2=value2)` -
        # `attribute_text=test AND parent_range=projects/123/locations/global/
        # discoveredRanges/test-parent-range` - `management_type=CNR`
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Optional. The type of resources to search for. If not specified, the server
        # will return Ranges.
        # Corresponds to the JSON property `searchResourceTypes`
        # @return [Array<String>]
        attr_accessor :search_resource_types
      
        # Optional. Whether to show the utilization of the Ranges in the response.
        # Corresponds to the JSON property `showUtilization`
        # @return [Boolean]
        attr_accessor :show_utilization
        alias_method :show_utilization?, :show_utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
          @search_resource_types = args[:search_resource_types] if args.key?(:search_resource_types)
          @show_utilization = args[:show_utilization] if args.key?(:show_utilization)
        end
      end
      
      # Response message for the CloudNumberRegistry.SearchIpResources method.
      class SearchIpResourcesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Deprecated: Use results field instead. The list of Ranges matching the search
        # query.
        # Corresponds to the JSON property `ranges`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::Range>]
        attr_accessor :ranges
      
        # The list of results matching the search query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::CloudnumberregistryV1alpha::SearchIpResourcesResult>]
        attr_accessor :results
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @ranges = args[:ranges] if args.key?(:ranges)
          @results = args[:results] if args.key?(:results)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A result matching the search query, which can be either a Range or a Realm.
      class SearchIpResourcesResult
        include Google::Apis::Core::Hashable
      
        # Represents either a CustomRange or a DiscoveredRange.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::CloudnumberregistryV1alpha::Range]
        attr_accessor :range
      
        # A Realm represents a distinct network domain or security zone. It groups
        # Ranges that share the same traffic and management characteristics. All the
        # ranges in a Realm are routable to each other, meaning that they cannot overlap.
        # Corresponds to the JSON property `realm`
        # @return [Google::Apis::CloudnumberregistryV1alpha::Realm]
        attr_accessor :realm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
          @realm = args[:realm] if args.key?(:realm)
        end
      end
      
      # Response message for the CloudNumberRegistry.ShowCustomRangeUtilization method.
      class ShowCustomRangeUtilizationResponse
        include Google::Apis::Core::Hashable
      
        # A CustomRange represents a user-defined IP address range.
        # Corresponds to the JSON property `customRange`
        # @return [Google::Apis::CloudnumberregistryV1alpha::CustomRange]
        attr_accessor :custom_range
      
        # Utilization metrics for an IP Range, including consumed and produced address
        # counts.
        # Corresponds to the JSON property `rangeUtilization`
        # @return [Google::Apis::CloudnumberregistryV1alpha::RangeUtilization]
        attr_accessor :range_utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_range = args[:custom_range] if args.key?(:custom_range)
          @range_utilization = args[:range_utilization] if args.key?(:range_utilization)
        end
      end
      
      # Response message for the CloudNumberRegistry.ShowDiscoveredRangeUtilization
      # method.
      class ShowDiscoveredRangeUtilizationResponse
        include Google::Apis::Core::Hashable
      
        # A DiscoveredRange represents an IP address range automatically detected by the
        # discovery pipeline.
        # Corresponds to the JSON property `discoveredRange`
        # @return [Google::Apis::CloudnumberregistryV1alpha::DiscoveredRange]
        attr_accessor :discovered_range
      
        # Utilization metrics for an IP Range, including consumed and produced address
        # counts.
        # Corresponds to the JSON property `rangeUtilization`
        # @return [Google::Apis::CloudnumberregistryV1alpha::RangeUtilization]
        attr_accessor :range_utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovered_range = args[:discovered_range] if args.key?(:discovered_range)
          @range_utilization = args[:range_utilization] if args.key?(:range_utilization)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
    end
  end
end
