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
      
      class AggregatedData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckAvailabilityIpamAdminScopesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CleanupIpamAdminScopeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableIpamAdminScopeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveredRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindCustomRangeFreeIpRangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindDiscoveredRangeFreeIpRangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpamAdminScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpamAdminScopeAvailability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCustomRangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDiscoveredRangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListIpamAdminScopesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRealmsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRegistryBooksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Range
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RangeUtilization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Realm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RealmAggregatedData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegistryBook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchIpResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchIpResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchIpResourcesResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShowCustomRangeUtilizationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ShowDiscoveredRangeUtilizationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregatedData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_ranges_count, as: 'customRangesCount'
          property :custom_realms_count, as: 'customRealmsCount'
          property :discovered_ranges_count, as: 'discoveredRangesCount'
          property :discovered_realms_count, as: 'discoveredRealmsCount'
          property :unique_scopes_count, as: 'uniqueScopesCount'
        end
      end
      
      class Attribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CheckAvailabilityIpamAdminScopesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :scope_availabilities, as: 'scopeAvailabilities', class: Google::Apis::CloudnumberregistryV1alpha::IpamAdminScopeAvailability, decorator: Google::Apis::CloudnumberregistryV1alpha::IpamAdminScopeAvailability::Representation
      
        end
      end
      
      class CleanupIpamAdminScopeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class CustomRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes', class: Google::Apis::CloudnumberregistryV1alpha::Attribute, decorator: Google::Apis::CloudnumberregistryV1alpha::Attribute::Representation
      
          property :description, as: 'description'
          property :ipv4_cidr_range, as: 'ipv4CidrRange'
          property :ipv6_cidr_range, as: 'ipv6CidrRange'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent_range, as: 'parentRange'
          property :realm, as: 'realm'
          property :registry_book, as: 'registryBook'
        end
      end
      
      class DisableIpamAdminScopeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class DiscoveredRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes', class: Google::Apis::CloudnumberregistryV1alpha::Attribute, decorator: Google::Apis::CloudnumberregistryV1alpha::Attribute::Representation
      
          property :child_cidr_overlap_allowed, as: 'childCidrOverlapAllowed'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :discovery_metadata, as: 'discoveryMetadata', class: Google::Apis::CloudnumberregistryV1alpha::DiscoveryMetadata, decorator: Google::Apis::CloudnumberregistryV1alpha::DiscoveryMetadata::Representation
      
          property :ipv4_cidr_range, as: 'ipv4CidrRange'
          property :ipv6_cidr_range, as: 'ipv6CidrRange'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent_range, as: 'parentRange'
          property :realm, as: 'realm'
          property :registry_book, as: 'registryBook'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DiscoveryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :event_time, as: 'eventTime'
          property :resource, as: 'resource'
          property :resource_uri, as: 'resourceUri'
          property :source_id, as: 'sourceId'
          property :source_sub_id, as: 'sourceSubId'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FindCustomRangeFreeIpRangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :free_ip_cidr_ranges, as: 'freeIpCidrRanges'
        end
      end
      
      class FindDiscoveredRangeFreeIpRangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :free_ip_cidr_ranges, as: 'freeIpCidrRanges'
        end
      end
      
      class IpamAdminScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :enabled_addon_platforms, as: 'enabledAddonPlatforms'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :scopes, as: 'scopes'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class IpamAdminScopeAvailability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_project, :numeric_string => true, as: 'adminProject'
          property :availability, as: 'availability'
          property :scope, as: 'scope'
        end
      end
      
      class ListCustomRangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_ranges, as: 'customRanges', class: Google::Apis::CloudnumberregistryV1alpha::CustomRange, decorator: Google::Apis::CloudnumberregistryV1alpha::CustomRange::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDiscoveredRangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovered_ranges, as: 'discoveredRanges', class: Google::Apis::CloudnumberregistryV1alpha::DiscoveredRange, decorator: Google::Apis::CloudnumberregistryV1alpha::DiscoveredRange::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListIpamAdminScopesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ipam_admin_scopes, as: 'ipamAdminScopes', class: Google::Apis::CloudnumberregistryV1alpha::IpamAdminScope, decorator: Google::Apis::CloudnumberregistryV1alpha::IpamAdminScope::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::CloudnumberregistryV1alpha::Location, decorator: Google::Apis::CloudnumberregistryV1alpha::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::CloudnumberregistryV1alpha::Operation, decorator: Google::Apis::CloudnumberregistryV1alpha::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRealmsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :realms, as: 'realms', class: Google::Apis::CloudnumberregistryV1alpha::Realm, decorator: Google::Apis::CloudnumberregistryV1alpha::Realm::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRegistryBooksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :registry_books, as: 'registryBooks', class: Google::Apis::CloudnumberregistryV1alpha::RegistryBook, decorator: Google::Apis::CloudnumberregistryV1alpha::RegistryBook::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudnumberregistryV1alpha::Status, decorator: Google::Apis::CloudnumberregistryV1alpha::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Range
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_range, as: 'customRange', class: Google::Apis::CloudnumberregistryV1alpha::CustomRange, decorator: Google::Apis::CloudnumberregistryV1alpha::CustomRange::Representation
      
          property :discovered_range, as: 'discoveredRange', class: Google::Apis::CloudnumberregistryV1alpha::DiscoveredRange, decorator: Google::Apis::CloudnumberregistryV1alpha::DiscoveredRange::Representation
      
          property :utilization, as: 'utilization', class: Google::Apis::CloudnumberregistryV1alpha::RangeUtilization, decorator: Google::Apis::CloudnumberregistryV1alpha::RangeUtilization::Representation
      
        end
      end
      
      class RangeUtilization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_consumed, as: 'totalConsumed'
          property :total_produced, as: 'totalProduced'
          property :usage, as: 'usage'
        end
      end
      
      class Realm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregated_data, as: 'aggregatedData', class: Google::Apis::CloudnumberregistryV1alpha::RealmAggregatedData, decorator: Google::Apis::CloudnumberregistryV1alpha::RealmAggregatedData::Representation
      
          property :create_time, as: 'createTime'
          property :discovery_metadata, as: 'discoveryMetadata', class: Google::Apis::CloudnumberregistryV1alpha::DiscoveryMetadata, decorator: Google::Apis::CloudnumberregistryV1alpha::DiscoveryMetadata::Representation
      
          property :ip_version, as: 'ipVersion'
          hash :labels, as: 'labels'
          property :management_type, as: 'managementType'
          property :name, as: 'name'
          property :registry_book, as: 'registryBook'
          property :traffic_type, as: 'trafficType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RealmAggregatedData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_ranges_count, as: 'customRangesCount'
          property :discovered_ranges_count, as: 'discoveredRangesCount'
        end
      end
      
      class RegistryBook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregated_data, as: 'aggregatedData', class: Google::Apis::CloudnumberregistryV1alpha::AggregatedData, decorator: Google::Apis::CloudnumberregistryV1alpha::AggregatedData::Representation
      
          collection :claimed_scopes, as: 'claimedScopes'
          property :create_time, as: 'createTime'
          property :is_default, as: 'isDefault'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SearchIpResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :query, as: 'query'
          collection :search_resource_types, as: 'searchResourceTypes'
          property :show_utilization, as: 'showUtilization'
        end
      end
      
      class SearchIpResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :ranges, as: 'ranges', class: Google::Apis::CloudnumberregistryV1alpha::Range, decorator: Google::Apis::CloudnumberregistryV1alpha::Range::Representation
      
          collection :results, as: 'results', class: Google::Apis::CloudnumberregistryV1alpha::SearchIpResourcesResult, decorator: Google::Apis::CloudnumberregistryV1alpha::SearchIpResourcesResult::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class SearchIpResourcesResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range, as: 'range', class: Google::Apis::CloudnumberregistryV1alpha::Range, decorator: Google::Apis::CloudnumberregistryV1alpha::Range::Representation
      
          property :realm, as: 'realm', class: Google::Apis::CloudnumberregistryV1alpha::Realm, decorator: Google::Apis::CloudnumberregistryV1alpha::Realm::Representation
      
        end
      end
      
      class ShowCustomRangeUtilizationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_range, as: 'customRange', class: Google::Apis::CloudnumberregistryV1alpha::CustomRange, decorator: Google::Apis::CloudnumberregistryV1alpha::CustomRange::Representation
      
          property :range_utilization, as: 'rangeUtilization', class: Google::Apis::CloudnumberregistryV1alpha::RangeUtilization, decorator: Google::Apis::CloudnumberregistryV1alpha::RangeUtilization::Representation
      
        end
      end
      
      class ShowDiscoveredRangeUtilizationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discovered_range, as: 'discoveredRange', class: Google::Apis::CloudnumberregistryV1alpha::DiscoveredRange, decorator: Google::Apis::CloudnumberregistryV1alpha::DiscoveredRange::Representation
      
          property :range_utilization, as: 'rangeUtilization', class: Google::Apis::CloudnumberregistryV1alpha::RangeUtilization, decorator: Google::Apis::CloudnumberregistryV1alpha::RangeUtilization::Representation
      
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
