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
    module DnsV1
      class ChangeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ChangesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ManagedZoneRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ManagedZonesListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ProjectRepresentation < Google::Apis::Core::JsonRepresentation; end
      class QuotaRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ResourceRecordSetRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ResourceRecordSetsListResponseRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class ChangeRepresentation < Google::Apis::Core::JsonRepresentation
        collection :additions, as: 'additions', class: Google::Apis::DnsV1::ResourceRecordSet, decorator: Google::Apis::DnsV1::ResourceRecordSetRepresentation
        
        
        collection :deletions, as: 'deletions', class: Google::Apis::DnsV1::ResourceRecordSet, decorator: Google::Apis::DnsV1::ResourceRecordSetRepresentation
        
        
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :start_time, as: 'startTime'
        property :status, as: 'status'
      end

      # @private
      class ChangesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :changes, as: 'changes', class: Google::Apis::DnsV1::Change, decorator: Google::Apis::DnsV1::ChangeRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ManagedZoneRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_time, as: 'creationTime'
        property :description, as: 'description'
        property :dns_name, as: 'dnsName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
        property :name_server_set, as: 'nameServerSet'
        collection :name_servers, as: 'nameServers'
      end

      # @private
      class ManagedZonesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :managed_zones, as: 'managedZones', class: Google::Apis::DnsV1::ManagedZone, decorator: Google::Apis::DnsV1::ManagedZoneRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ProjectRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :number, as: 'number'
        property :quota, as: 'quota', class: Google::Apis::DnsV1::Quota, decorator: Google::Apis::DnsV1::QuotaRepresentation
      end

      # @private
      class QuotaRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :managed_zones, as: 'managedZones'
        property :resource_records_per_rrset, as: 'resourceRecordsPerRrset'
        property :rrset_additions_per_change, as: 'rrsetAdditionsPerChange'
        property :rrset_deletions_per_change, as: 'rrsetDeletionsPerChange'
        property :rrsets_per_managed_zone, as: 'rrsetsPerManagedZone'
        property :total_rrdata_size_per_change, as: 'totalRrdataSizePerChange'
      end

      # @private
      class ResourceRecordSetRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :name, as: 'name'
        collection :rrdatas, as: 'rrdatas'
        
        property :ttl, as: 'ttl'
        property :type, as: 'type'
      end

      # @private
      class ResourceRecordSetsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :rrsets, as: 'rrsets', class: Google::Apis::DnsV1::ResourceRecordSet, decorator: Google::Apis::DnsV1::ResourceRecordSetRepresentation
      end
    end
  end
end
