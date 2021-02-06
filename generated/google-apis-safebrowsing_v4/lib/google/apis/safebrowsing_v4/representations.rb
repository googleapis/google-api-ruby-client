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
    module SafebrowsingV4
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4Checksum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ClientInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4FindFullHashesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4FindFullHashesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ListThreatListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4RawHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4RawIndices
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4RiceDeltaEncoding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatEntryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatEntrySet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatHit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatHitThreatSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatHitUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatListDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV4ThreatMatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleSecuritySafebrowsingV4Checksum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256, :base64 => true, as: 'sha256'
        end
      end
      
      class GoogleSecuritySafebrowsingV4ClientInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_version, as: 'clientVersion'
        end
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client, as: 'client', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo::Representation
      
          collection :list_update_requests, as: 'listUpdateRequests', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :constraints, as: 'constraints', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints::Representation
      
          property :platform_type, as: 'platformType'
          property :state, :base64 => true, as: 'state'
          property :threat_entry_type, as: 'threatEntryType'
          property :threat_type, as: 'threatType'
        end
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesRequestListUpdateRequestConstraints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_location, as: 'deviceLocation'
          property :language, as: 'language'
          property :max_database_entries, as: 'maxDatabaseEntries'
          property :max_update_entries, as: 'maxUpdateEntries'
          property :region, as: 'region'
          collection :supported_compressions, as: 'supportedCompressions'
        end
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :list_update_responses, as: 'listUpdateResponses', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse::Representation
      
          property :minimum_wait_duration, as: 'minimumWaitDuration'
        end
      end
      
      class GoogleSecuritySafebrowsingV4FetchThreatListUpdatesResponseListUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additions, as: 'additions', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntrySet, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntrySet::Representation
      
          property :checksum, as: 'checksum', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4Checksum, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4Checksum::Representation
      
          property :new_client_state, :base64 => true, as: 'newClientState'
          property :platform_type, as: 'platformType'
          collection :removals, as: 'removals', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntrySet, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntrySet::Representation
      
          property :response_type, as: 'responseType'
          property :threat_entry_type, as: 'threatEntryType'
          property :threat_type, as: 'threatType'
        end
      end
      
      class GoogleSecuritySafebrowsingV4FindFullHashesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_client, as: 'apiClient', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo::Representation
      
          property :client, as: 'client', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo::Representation
      
          collection :client_states, as: 'clientStates'
          property :threat_info, as: 'threatInfo', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatInfo, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatInfo::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV4FindFullHashesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :matches, as: 'matches', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatMatch, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatMatch::Representation
      
          property :minimum_wait_duration, as: 'minimumWaitDuration'
          property :negative_cache_duration, as: 'negativeCacheDuration'
        end
      end
      
      class GoogleSecuritySafebrowsingV4FindThreatMatchesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client, as: 'client', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo::Representation
      
          property :threat_info, as: 'threatInfo', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatInfo, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatInfo::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV4FindThreatMatchesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :matches, as: 'matches', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatMatch, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatMatch::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV4ListThreatListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :threat_lists, as: 'threatLists', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatListDescriptor, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatListDescriptor::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV4RawHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prefix_size, as: 'prefixSize'
          property :raw_hashes, :base64 => true, as: 'rawHashes'
        end
      end
      
      class GoogleSecuritySafebrowsingV4RawIndices
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :indices, as: 'indices'
        end
      end
      
      class GoogleSecuritySafebrowsingV4RiceDeltaEncoding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_data, :base64 => true, as: 'encodedData'
          property :first_value, :numeric_string => true, as: 'firstValue'
          property :num_entries, as: 'numEntries'
          property :rice_parameter, as: 'riceParameter'
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, :base64 => true, as: 'digest'
          property :hash_prop, :base64 => true, as: 'hash'
          property :url, as: 'url'
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatEntryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatEntryMetadataMetadataEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, :base64 => true, as: 'key'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatEntrySet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compression_type, as: 'compressionType'
          property :raw_hashes, as: 'rawHashes', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4RawHashes, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4RawHashes::Representation
      
          property :raw_indices, as: 'rawIndices', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4RawIndices, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4RawIndices::Representation
      
          property :rice_hashes, as: 'riceHashes', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4RiceDeltaEncoding, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4RiceDeltaEncoding::Representation
      
          property :rice_indices, as: 'riceIndices', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4RiceDeltaEncoding, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4RiceDeltaEncoding::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatHit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_info, as: 'clientInfo', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ClientInfo::Representation
      
          property :entry, as: 'entry', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntry, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntry::Representation
      
          property :platform_type, as: 'platformType'
          collection :resources, as: 'resources', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatHitThreatSource, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatHitThreatSource::Representation
      
          property :threat_type, as: 'threatType'
          property :user_info, as: 'userInfo', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatHitUserInfo, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatHitUserInfo::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatHitThreatSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :referrer, as: 'referrer'
          property :remote_ip, as: 'remoteIp'
          property :type, as: 'type'
          property :url, as: 'url'
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatHitUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :region_code, as: 'regionCode'
          property :user_id, :base64 => true, as: 'userId'
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :platform_types, as: 'platformTypes'
          collection :threat_entries, as: 'threatEntries', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntry, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntry::Representation
      
          collection :threat_entry_types, as: 'threatEntryTypes'
          collection :threat_types, as: 'threatTypes'
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatListDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :platform_type, as: 'platformType'
          property :threat_entry_type, as: 'threatEntryType'
          property :threat_type, as: 'threatType'
        end
      end
      
      class GoogleSecuritySafebrowsingV4ThreatMatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_duration, as: 'cacheDuration'
          property :platform_type, as: 'platformType'
          property :threat, as: 'threat', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntry, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntry::Representation
      
          property :threat_entry_metadata, as: 'threatEntryMetadata', class: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntryMetadata, decorator: Google::Apis::SafebrowsingV4::GoogleSecuritySafebrowsingV4ThreatEntryMetadata::Representation
      
          property :threat_entry_type, as: 'threatEntryType'
          property :threat_type, as: 'threatType'
        end
      end
    end
  end
end
