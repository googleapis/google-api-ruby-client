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
    module AcmednsV1
      
      class AcmeChallengeSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcmeTxtRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RotateChallengesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcmeChallengeSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :record, as: 'record', class: Google::Apis::AcmednsV1::AcmeTxtRecord, decorator: Google::Apis::AcmednsV1::AcmeTxtRecord::Representation
      
        end
      end
      
      class AcmeTxtRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest'
          property :fqdn, as: 'fqdn'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RotateChallengesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, :base64 => true, as: 'accessToken'
          property :keep_expired_records, as: 'keepExpiredRecords'
          collection :records_to_add, as: 'recordsToAdd', class: Google::Apis::AcmednsV1::AcmeTxtRecord, decorator: Google::Apis::AcmednsV1::AcmeTxtRecord::Representation
      
          collection :records_to_remove, as: 'recordsToRemove', class: Google::Apis::AcmednsV1::AcmeTxtRecord, decorator: Google::Apis::AcmednsV1::AcmeTxtRecord::Representation
      
        end
      end
    end
  end
end
