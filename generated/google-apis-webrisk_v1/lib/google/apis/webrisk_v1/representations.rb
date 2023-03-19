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
    module WebriskV1
      
      class GoogleCloudWebriskV1ComputeThreatListDiffResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1RawHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1RawIndices
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1RiceDeltaEncoding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1SearchHashesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1SearchHashesResponseThreatHash
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1SearchUrisResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1SearchUrisResponseThreatUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1Submission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1ThreatEntryAdditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1ThreatEntryRemovals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
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
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudWebriskV1ComputeThreatListDiffResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additions, as: 'additions', class: Google::Apis::WebriskV1::GoogleCloudWebriskV1ThreatEntryAdditions, decorator: Google::Apis::WebriskV1::GoogleCloudWebriskV1ThreatEntryAdditions::Representation
      
          property :checksum, as: 'checksum', class: Google::Apis::WebriskV1::GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum, decorator: Google::Apis::WebriskV1::GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum::Representation
      
          property :new_version_token, :base64 => true, as: 'newVersionToken'
          property :recommended_next_diff, as: 'recommendedNextDiff'
          property :removals, as: 'removals', class: Google::Apis::WebriskV1::GoogleCloudWebriskV1ThreatEntryRemovals, decorator: Google::Apis::WebriskV1::GoogleCloudWebriskV1ThreatEntryRemovals::Representation
      
          property :response_type, as: 'responseType'
        end
      end
      
      class GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256, :base64 => true, as: 'sha256'
        end
      end
      
      class GoogleCloudWebriskV1RawHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prefix_size, as: 'prefixSize'
          property :raw_hashes, :base64 => true, as: 'rawHashes'
        end
      end
      
      class GoogleCloudWebriskV1RawIndices
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :indices, as: 'indices'
        end
      end
      
      class GoogleCloudWebriskV1RiceDeltaEncoding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_data, :base64 => true, as: 'encodedData'
          property :entry_count, as: 'entryCount'
          property :first_value, :numeric_string => true, as: 'firstValue'
          property :rice_parameter, as: 'riceParameter'
        end
      end
      
      class GoogleCloudWebriskV1SearchHashesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :negative_expire_time, as: 'negativeExpireTime'
          collection :threats, as: 'threats', class: Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchHashesResponseThreatHash, decorator: Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchHashesResponseThreatHash::Representation
      
        end
      end
      
      class GoogleCloudWebriskV1SearchHashesResponseThreatHash
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          property :hash_prop, :base64 => true, as: 'hash'
          collection :threat_types, as: 'threatTypes'
        end
      end
      
      class GoogleCloudWebriskV1SearchUrisResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :threat, as: 'threat', class: Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchUrisResponseThreatUri, decorator: Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchUrisResponseThreatUri::Representation
      
        end
      end
      
      class GoogleCloudWebriskV1SearchUrisResponseThreatUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          collection :threat_types, as: 'threatTypes'
        end
      end
      
      class GoogleCloudWebriskV1Submission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudWebriskV1ThreatEntryAdditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :raw_hashes, as: 'rawHashes', class: Google::Apis::WebriskV1::GoogleCloudWebriskV1RawHashes, decorator: Google::Apis::WebriskV1::GoogleCloudWebriskV1RawHashes::Representation
      
          property :rice_hashes, as: 'riceHashes', class: Google::Apis::WebriskV1::GoogleCloudWebriskV1RiceDeltaEncoding, decorator: Google::Apis::WebriskV1::GoogleCloudWebriskV1RiceDeltaEncoding::Representation
      
        end
      end
      
      class GoogleCloudWebriskV1ThreatEntryRemovals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :raw_indices, as: 'rawIndices', class: Google::Apis::WebriskV1::GoogleCloudWebriskV1RawIndices, decorator: Google::Apis::WebriskV1::GoogleCloudWebriskV1RawIndices::Representation
      
          property :rice_indices, as: 'riceIndices', class: Google::Apis::WebriskV1::GoogleCloudWebriskV1RiceDeltaEncoding, decorator: Google::Apis::WebriskV1::GoogleCloudWebriskV1RiceDeltaEncoding::Representation
      
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::WebriskV1::GoogleLongrunningOperation, decorator: Google::Apis::WebriskV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::WebriskV1::GoogleRpcStatus, decorator: Google::Apis::WebriskV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
    end
  end
end
