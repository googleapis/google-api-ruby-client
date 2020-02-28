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
    module DisplayvideoV1
      
      class CreateSdfDownloadTaskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleBytestreamMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InventorySourceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ParentEntityFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SdfDownloadTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SdfDownloadTaskMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSdfDownloadTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :advertiser_id, :numeric_string => true, as: 'advertiserId'
          property :id_filter, as: 'idFilter', class: Google::Apis::DisplayvideoV1::IdFilter, decorator: Google::Apis::DisplayvideoV1::IdFilter::Representation
      
          property :inventory_source_filter, as: 'inventorySourceFilter', class: Google::Apis::DisplayvideoV1::InventorySourceFilter, decorator: Google::Apis::DisplayvideoV1::InventorySourceFilter::Representation
      
          property :parent_entity_filter, as: 'parentEntityFilter', class: Google::Apis::DisplayvideoV1::ParentEntityFilter, decorator: Google::Apis::DisplayvideoV1::ParentEntityFilter::Representation
      
          property :partner_id, :numeric_string => true, as: 'partnerId'
          property :version, as: 'version'
        end
      end
      
      class GoogleBytestreamMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class IdFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_group_ad_ids, as: 'adGroupAdIds'
          collection :ad_group_ids, as: 'adGroupIds'
          collection :campaign_ids, as: 'campaignIds'
          collection :insertion_order_ids, as: 'insertionOrderIds'
          collection :line_item_ids, as: 'lineItemIds'
          collection :media_product_ids, as: 'mediaProductIds'
        end
      end
      
      class InventorySourceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventory_source_ids, as: 'inventorySourceIds'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DisplayvideoV1::Status, decorator: Google::Apis::DisplayvideoV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class ParentEntityFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_type, as: 'fileType'
          collection :filter_ids, as: 'filterIds'
          property :filter_type, as: 'filterType'
        end
      end
      
      class SdfDownloadTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class SdfDownloadTaskMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :version, as: 'version'
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
