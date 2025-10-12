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
    module ChromewebstoreV1_1
      
      class Item
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Item2
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Item
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crx_version, as: 'crxVersion'
          property :id, as: 'id'
          collection :item_error, as: 'itemError', class: Google::Apis::ChromewebstoreV1_1::ItemError, decorator: Google::Apis::ChromewebstoreV1_1::ItemError::Representation
      
          property :kind, as: 'kind'
          property :public_key, as: 'publicKey'
          property :upload_state, as: 'uploadState'
        end
      end
      
      class Item2
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'item_id'
          property :kind, as: 'kind'
          collection :status, as: 'status'
          collection :status_detail, as: 'statusDetail'
        end
      end
      
      class ItemError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_code, as: 'error_code'
          property :error_detail, as: 'error_detail'
        end
      end
      
      class PublishRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deploy_percentage, as: 'deployPercentage'
          property :review_exemption, as: 'reviewExemption'
          property :target, as: 'target'
        end
      end
    end
  end
end
