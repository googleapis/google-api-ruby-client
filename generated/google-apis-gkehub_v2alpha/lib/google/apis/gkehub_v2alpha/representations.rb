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
    module GkehubV2alpha
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureConfigRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureConfigState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeatureState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFeatureConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipFeaturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipFeature
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
      
      class ResourceState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class State
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :spec, as: 'spec', class: Google::Apis::GkehubV2alpha::FeatureSpec, decorator: Google::Apis::GkehubV2alpha::FeatureSpec::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV2alpha::FeatureConfigState, decorator: Google::Apis::GkehubV2alpha::FeatureConfigState::Representation
      
          property :unique_id, as: 'uniqueId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class FeatureConfigRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config'
          property :config_update_time, as: 'configUpdateTime'
          property :uuid, as: 'uuid'
        end
      end
      
      class FeatureConfigState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class FeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FeatureState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state', class: Google::Apis::GkehubV2alpha::State, decorator: Google::Apis::GkehubV2alpha::State::Representation
      
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
      
      class ListFeatureConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feature_configs, as: 'featureConfigs', class: Google::Apis::GkehubV2alpha::FeatureConfig, decorator: Google::Apis::GkehubV2alpha::FeatureConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::GkehubV2alpha::Location, decorator: Google::Apis::GkehubV2alpha::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMembershipFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :membership_features, as: 'membershipFeatures', class: Google::Apis::GkehubV2alpha::MembershipFeature, decorator: Google::Apis::GkehubV2alpha::MembershipFeature::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::GkehubV2alpha::Operation, decorator: Google::Apis::GkehubV2alpha::Operation::Representation
      
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
      
      class MembershipFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :feature_config_ref, as: 'featureConfigRef', class: Google::Apis::GkehubV2alpha::FeatureConfigRef, decorator: Google::Apis::GkehubV2alpha::FeatureConfigRef::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :resource_state, as: 'resourceState', class: Google::Apis::GkehubV2alpha::ResourceState, decorator: Google::Apis::GkehubV2alpha::ResourceState::Representation
      
          property :spec, as: 'spec', class: Google::Apis::GkehubV2alpha::FeatureSpec, decorator: Google::Apis::GkehubV2alpha::FeatureSpec::Representation
      
          property :state, as: 'state', class: Google::Apis::GkehubV2alpha::FeatureState, decorator: Google::Apis::GkehubV2alpha::FeatureState::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::GkehubV2alpha::GoogleRpcStatus, decorator: Google::Apis::GkehubV2alpha::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :cancel_requested, as: 'cancelRequested'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :status_detail, as: 'statusDetail'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class ResourceState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
        end
      end
      
      class State
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :description, as: 'description'
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
