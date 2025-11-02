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
    module ChromewebstoreV2
      
      class CancelSubmissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelSubmissionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DistributionChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchItemStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ItemRevisionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetPublishedDeployPercentageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetPublishedDeployPercentageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadItemPackageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadItemPackageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelSubmissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelSubmissionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeployInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deploy_percentage, as: 'deployPercentage'
        end
      end
      
      class DistributionChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crx_version, as: 'crxVersion'
          property :deploy_percentage, as: 'deployPercentage'
        end
      end
      
      class FetchItemStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          property :last_async_upload_state, as: 'lastAsyncUploadState'
          property :name, as: 'name'
          property :public_key, as: 'publicKey'
          property :published_item_revision_status, as: 'publishedItemRevisionStatus', class: Google::Apis::ChromewebstoreV2::ItemRevisionStatus, decorator: Google::Apis::ChromewebstoreV2::ItemRevisionStatus::Representation
      
          property :submitted_item_revision_status, as: 'submittedItemRevisionStatus', class: Google::Apis::ChromewebstoreV2::ItemRevisionStatus, decorator: Google::Apis::ChromewebstoreV2::ItemRevisionStatus::Representation
      
          property :taken_down, as: 'takenDown'
          property :warned, as: 'warned'
        end
      end
      
      class ItemRevisionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :distribution_channels, as: 'distributionChannels', class: Google::Apis::ChromewebstoreV2::DistributionChannel, decorator: Google::Apis::ChromewebstoreV2::DistributionChannel::Representation
      
          property :state, as: 'state'
        end
      end
      
      class PublishItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deploy_infos, as: 'deployInfos', class: Google::Apis::ChromewebstoreV2::DeployInfo, decorator: Google::Apis::ChromewebstoreV2::DeployInfo::Representation
      
          property :publish_type, as: 'publishType'
          property :skip_review, as: 'skipReview'
        end
      end
      
      class PublishItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class SetPublishedDeployPercentageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deploy_percentage, as: 'deployPercentage'
        end
      end
      
      class SetPublishedDeployPercentageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UploadItemPackageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UploadItemPackageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crx_version, as: 'crxVersion'
          property :item_id, as: 'itemId'
          property :name, as: 'name'
          property :upload_state, as: 'uploadState'
        end
      end
    end
  end
end
