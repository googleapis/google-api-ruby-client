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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # FeatureConfig contains configurations for a Fleet feature. FeatureConfig can
      # be applied to MembershipFeature(s) to setup per-membership FeatureSpec.
      class FeatureConfig
        include Google::Apis::Core::Hashable
      
        # Output only. When the FeatureConfig resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the FeatureConfig resource was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # GCP labels for this FeatureConfig.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Resource name of this FeatureConfig, in the format: `projects/`
        # project`/locations/global/FeatureConfigs/`feature_type`/`feature_config``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # FeatureSpec contains user input per-feature spec information.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::GkehubV2alpha::FeatureSpec]
        attr_accessor :spec
      
        # FeatureConfigState describes the state of a FeatureConfig resource.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV2alpha::FeatureConfigState]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all FeatureConfig resources. If a Membership resource is deleted and another
        # resource with the same name is created, it gets a different unique_id.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Output only. When the FeatureConfig resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @spec = args[:spec] if args.key?(:spec)
          @state = args[:state] if args.key?(:state)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information of the FeatureConfig applied on the MembershipFeature.
      class FeatureConfigRef
        include Google::Apis::Core::Hashable
      
        # Input only. Resource name of FeatureConfig, in the format: `projects/`project`/
        # locations/global/featureConfigs/`feature_config``.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Output only. When the FeatureConfig was last applied and copied to FeatureSpec.
        # Corresponds to the JSON property `configUpdateTime`
        # @return [String]
        attr_accessor :config_update_time
      
        # Output only. An id that uniquely identify a FeatureConfig object.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @config_update_time = args[:config_update_time] if args.key?(:config_update_time)
          @uuid = args[:uuid] if args.key?(:uuid)
        end
      end
      
      # FeatureConfigState describes the state of a FeatureConfig resource.
      class FeatureConfigState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the FeatureConfig resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # FeatureSpec contains user input per-feature spec information.
      class FeatureSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # FeatureState contains high-level state information and per-feature state
      # information for this MembershipFeature.
      class FeatureState
        include Google::Apis::Core::Hashable
      
        # High-level state of a MembershipFeature.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV2alpha::State]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      
      # Response message for the `GkeHubFeature.ListFeatureConfigs` method.
      class ListFeatureConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The list of FeatureConfig(s).
        # Corresponds to the JSON property `featureConfigs`
        # @return [Array<Google::Apis::GkehubV2alpha::FeatureConfig>]
        attr_accessor :feature_configs
      
        # A token to request the next page of resources from the `ListFeatureConfigs`
        # method. The value of an empty string means that there are no more resources to
        # return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feature_configs = args[:feature_configs] if args.key?(:feature_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::GkehubV2alpha::Location>]
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
      
      # Response message for the `GkeHubFeature.ListMembershipFeatures` method.
      class ListMembershipFeaturesResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching MembershipFeatures.
        # Corresponds to the JSON property `membershipFeatures`
        # @return [Array<Google::Apis::GkehubV2alpha::MembershipFeature>]
        attr_accessor :membership_features
      
        # A token to request the next page of resources from the `ListMembershipFeatures`
        # method. The value of an empty string means that there are no more resources
        # to return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership_features = args[:membership_features] if args.key?(:membership_features)
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
        # @return [Array<Google::Apis::GkehubV2alpha::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
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
      
      # MembershipFeature represents the settings and status of a Fleet Feature
      # enabled on a single Fleet Membership.
      class MembershipFeature
        include Google::Apis::Core::Hashable
      
        # Output only. When the MembershipFeature resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the MembershipFeature resource was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Information of the FeatureConfig applied on the MembershipFeature.
        # Corresponds to the JSON property `featureConfigRef`
        # @return [Google::Apis::GkehubV2alpha::FeatureConfigRef]
        attr_accessor :feature_config_ref
      
        # GCP labels for this MembershipFeature.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource name of the membershipFeature, in the format: `
        # projects/`project`/locations/`location`/memberships/`membership`/features/`
        # feature``. Note that `membershipFeatures` is shortened to `features` in the
        # resource name. (see http://go/aip/122#collection-identifiers)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ResourceState describes the state of a MembershipFeature *resource* in the
        # GkeHub API. See `FeatureState` for the "running state" of the
        # MembershipFeature.
        # Corresponds to the JSON property `resourceState`
        # @return [Google::Apis::GkehubV2alpha::ResourceState]
        attr_accessor :resource_state
      
        # FeatureSpec contains user input per-feature spec information.
        # Corresponds to the JSON property `spec`
        # @return [Google::Apis::GkehubV2alpha::FeatureSpec]
        attr_accessor :spec
      
        # FeatureState contains high-level state information and per-feature state
        # information for this MembershipFeature.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV2alpha::FeatureState]
        attr_accessor :state
      
        # Output only. When the MembershipFeature resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @feature_config_ref = args[:feature_config_ref] if args.key?(:feature_config_ref)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @resource_state = args[:resource_state] if args.key?(:resource_state)
          @spec = args[:spec] if args.key?(:spec)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
        # @return [Google::Apis::GkehubV2alpha::GoogleRpcStatus]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # Metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
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
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # ResourceState describes the state of a MembershipFeature *resource* in the
      # GkeHub API. See `FeatureState` for the "running state" of the
      # MembershipFeature.
      class ResourceState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the Feature resource in the Hub API.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # High-level state of a MembershipFeature.
      class State
        include Google::Apis::Core::Hashable
      
        # The high-level, machine-readable status of this MembershipFeature.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A human-readable description of the current status.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The time this status and any related Feature-specific details were updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
