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
    module AssuredworkloadsV1beta1
      
      # Operation metadata to give request details of CreateWorkload.
      class GoogleCloudAssuredworkloadsV1CreateWorkloadOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Compliance controls that should be applied to the resources managed
        # by the workload.
        # Corresponds to the JSON property `complianceRegime`
        # @return [String]
        attr_accessor :compliance_regime
      
        # Optional. Time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The display name of the workload.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The parent of the workload.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_regime = args[:compliance_regime] if args.key?(:compliance_regime)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # An Workload object for managing highly regulated workloads of cloud customers.
      class GoogleCloudAssuredworkloadsV1Workload
        include Google::Apis::Core::Hashable
      
        # Required. Input only. The billing account used for the resources which are
        # direct children of workload. This billing account is initially associated with
        # the resources created as part of Workload creation. After the initial creation
        # of these resources, the customer can change the assigned billing account. The
        # resource name has the form `billingAccounts/`billing_account_id``. For example,
        # `billingAccounts/012345-567890-ABCDEF`.
        # Corresponds to the JSON property `billingAccount`
        # @return [String]
        attr_accessor :billing_account
      
        # Settings specific to resources needed for CJIS.
        # Corresponds to the JSON property `cjisSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadCjisSettings]
        attr_accessor :cjis_settings
      
        # Required. Immutable. Compliance Regime associated with this workload.
        # Corresponds to the JSON property `complianceRegime`
        # @return [String]
        attr_accessor :compliance_regime
      
        # Output only. Immutable. The Workload creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The user-assigned display name of the Workload. When present it must
        # be between 4 to 30 characters. Allowed characters are: lowercase and uppercase
        # letters, numbers, hyphen, and spaces. Example: My Workload
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. ETag of the workload, it is calculated on the basis of the Workload
        # contents. It will be used in Update & Delete operations.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Settings specific to resources needed for FedRAMP High.
        # Corresponds to the JSON property `fedrampHighSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadFedrampHighSettings]
        attr_accessor :fedramp_high_settings
      
        # Settings specific to resources needed for FedRAMP Moderate.
        # Corresponds to the JSON property `fedrampModerateSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadFedrampModerateSettings]
        attr_accessor :fedramp_moderate_settings
      
        # Settings specific to resources needed for IL4.
        # Corresponds to the JSON property `il4Settings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadIl4Settings]
        attr_accessor :il4_settings
      
        # Optional. Labels applied to the workload.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The resource name of the workload. Format: organizations/`
        # organization`/locations/`location`/workloads/`workload` Read-only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Input only. The parent resource for the resources managed by this Assured
        # Workload. May be either an organization or a folder. Must be the same or a
        # child of the Workload parent. If not specified all resources are created under
        # the Workload parent. Formats: folders/`folder_id` organizations/`
        # organization_id`
        # Corresponds to the JSON property `provisionedResourcesParent`
        # @return [String]
        attr_accessor :provisioned_resources_parent
      
        # Output only. The resources associated with this workload. These resources will
        # be created when creating the workload. If any of the projects already exist,
        # the workload creation will fail. Always read only.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadResourceInfo>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
          @cjis_settings = args[:cjis_settings] if args.key?(:cjis_settings)
          @compliance_regime = args[:compliance_regime] if args.key?(:compliance_regime)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @fedramp_high_settings = args[:fedramp_high_settings] if args.key?(:fedramp_high_settings)
          @fedramp_moderate_settings = args[:fedramp_moderate_settings] if args.key?(:fedramp_moderate_settings)
          @il4_settings = args[:il4_settings] if args.key?(:il4_settings)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @provisioned_resources_parent = args[:provisioned_resources_parent] if args.key?(:provisioned_resources_parent)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Settings specific to resources needed for CJIS.
      class GoogleCloudAssuredworkloadsV1WorkloadCjisSettings
        include Google::Apis::Core::Hashable
      
        # Settings specific to the Key Management Service.
        # Corresponds to the JSON property `kmsSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings]
        attr_accessor :kms_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_settings = args[:kms_settings] if args.key?(:kms_settings)
        end
      end
      
      # Settings specific to resources needed for FedRAMP High.
      class GoogleCloudAssuredworkloadsV1WorkloadFedrampHighSettings
        include Google::Apis::Core::Hashable
      
        # Settings specific to the Key Management Service.
        # Corresponds to the JSON property `kmsSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings]
        attr_accessor :kms_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_settings = args[:kms_settings] if args.key?(:kms_settings)
        end
      end
      
      # Settings specific to resources needed for FedRAMP Moderate.
      class GoogleCloudAssuredworkloadsV1WorkloadFedrampModerateSettings
        include Google::Apis::Core::Hashable
      
        # Settings specific to the Key Management Service.
        # Corresponds to the JSON property `kmsSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings]
        attr_accessor :kms_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_settings = args[:kms_settings] if args.key?(:kms_settings)
        end
      end
      
      # Settings specific to resources needed for IL4.
      class GoogleCloudAssuredworkloadsV1WorkloadIl4Settings
        include Google::Apis::Core::Hashable
      
        # Settings specific to the Key Management Service.
        # Corresponds to the JSON property `kmsSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1WorkloadKmsSettings]
        attr_accessor :kms_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_settings = args[:kms_settings] if args.key?(:kms_settings)
        end
      end
      
      # Settings specific to the Key Management Service.
      class GoogleCloudAssuredworkloadsV1WorkloadKmsSettings
        include Google::Apis::Core::Hashable
      
        # Required. Input only. Immutable. The time at which the Key Management Service
        # will automatically create a new version of the crypto key and mark it as the
        # primary.
        # Corresponds to the JSON property `nextRotationTime`
        # @return [String]
        attr_accessor :next_rotation_time
      
        # Required. Input only. Immutable. [next_rotation_time] will be advanced by this
        # period when the Key Management Service automatically rotates a key. Must be at
        # least 24 hours and at most 876,000 hours.
        # Corresponds to the JSON property `rotationPeriod`
        # @return [String]
        attr_accessor :rotation_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_rotation_time = args[:next_rotation_time] if args.key?(:next_rotation_time)
          @rotation_period = args[:rotation_period] if args.key?(:rotation_period)
        end
      end
      
      # Represent the resources that are children of this Workload.
      class GoogleCloudAssuredworkloadsV1WorkloadResourceInfo
        include Google::Apis::Core::Hashable
      
        # Resource identifier. For a project this represents project_number.
        # Corresponds to the JSON property `resourceId`
        # @return [Fixnum]
        attr_accessor :resource_id
      
        # Indicates the type of resource.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Operation metadata to give request details of CreateWorkload.
      class GoogleCloudAssuredworkloadsV1beta1CreateWorkloadOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Compliance controls that should be applied to the resources managed
        # by the workload.
        # Corresponds to the JSON property `complianceRegime`
        # @return [String]
        attr_accessor :compliance_regime
      
        # Optional. Time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The display name of the workload.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The parent of the workload.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_regime = args[:compliance_regime] if args.key?(:compliance_regime)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Response of ListWorkloads endpoint.
      class GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse
        include Google::Apis::Core::Hashable
      
        # The next page token. Return empty if reached the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Workloads under a given parent.
        # Corresponds to the JSON property `workloads`
        # @return [Array<Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload>]
        attr_accessor :workloads
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workloads = args[:workloads] if args.key?(:workloads)
        end
      end
      
      # An Workload object for managing highly regulated workloads of cloud customers.
      class GoogleCloudAssuredworkloadsV1beta1Workload
        include Google::Apis::Core::Hashable
      
        # Required. Input only. The billing account used for the resources which are
        # direct children of workload. This billing account is initially associated with
        # the resources created as part of Workload creation. After the initial creation
        # of these resources, the customer can change the assigned billing account. The
        # resource name has the form `billingAccounts/`billing_account_id``. For example,
        # `billingAccounts/012345-567890-ABCDEF`.
        # Corresponds to the JSON property `billingAccount`
        # @return [String]
        attr_accessor :billing_account
      
        # Settings specific to resources needed for CJIS.
        # Corresponds to the JSON property `cjisSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings]
        attr_accessor :cjis_settings
      
        # Required. Immutable. Compliance Regime associated with this workload.
        # Corresponds to the JSON property `complianceRegime`
        # @return [String]
        attr_accessor :compliance_regime
      
        # Output only. Immutable. The Workload creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The user-assigned display name of the Workload. When present it must
        # be between 4 to 30 characters. Allowed characters are: lowercase and uppercase
        # letters, numbers, hyphen, and spaces. Example: My Workload
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. ETag of the workload, it is calculated on the basis of the Workload
        # contents. It will be used in Update & Delete operations.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Settings specific to resources needed for FedRAMP High.
        # Corresponds to the JSON property `fedrampHighSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings]
        attr_accessor :fedramp_high_settings
      
        # Settings specific to resources needed for FedRAMP Moderate.
        # Corresponds to the JSON property `fedrampModerateSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings]
        attr_accessor :fedramp_moderate_settings
      
        # Settings specific to resources needed for IL4.
        # Corresponds to the JSON property `il4Settings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings]
        attr_accessor :il4_settings
      
        # Optional. Labels applied to the workload.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The resource name of the workload. Format: organizations/`
        # organization`/locations/`location`/workloads/`workload` Read-only.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Input only. The parent resource for the resources managed by this Assured
        # Workload. May be either an organization or a folder. Must be the same or a
        # child of the Workload parent. If not specified all resources are created under
        # the Workload parent. Formats: folders/`folder_id` organizations/`
        # organization_id`
        # Corresponds to the JSON property `provisionedResourcesParent`
        # @return [String]
        attr_accessor :provisioned_resources_parent
      
        # Output only. The resources associated with this workload. These resources will
        # be created when creating the workload. If any of the projects already exist,
        # the workload creation will fail. Always read only.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
          @cjis_settings = args[:cjis_settings] if args.key?(:cjis_settings)
          @compliance_regime = args[:compliance_regime] if args.key?(:compliance_regime)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @fedramp_high_settings = args[:fedramp_high_settings] if args.key?(:fedramp_high_settings)
          @fedramp_moderate_settings = args[:fedramp_moderate_settings] if args.key?(:fedramp_moderate_settings)
          @il4_settings = args[:il4_settings] if args.key?(:il4_settings)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @provisioned_resources_parent = args[:provisioned_resources_parent] if args.key?(:provisioned_resources_parent)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Settings specific to resources needed for CJIS.
      class GoogleCloudAssuredworkloadsV1beta1WorkloadCjisSettings
        include Google::Apis::Core::Hashable
      
        # Settings specific to the Key Management Service.
        # Corresponds to the JSON property `kmsSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings]
        attr_accessor :kms_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_settings = args[:kms_settings] if args.key?(:kms_settings)
        end
      end
      
      # Settings specific to resources needed for FedRAMP High.
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampHighSettings
        include Google::Apis::Core::Hashable
      
        # Settings specific to the Key Management Service.
        # Corresponds to the JSON property `kmsSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings]
        attr_accessor :kms_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_settings = args[:kms_settings] if args.key?(:kms_settings)
        end
      end
      
      # Settings specific to resources needed for FedRAMP Moderate.
      class GoogleCloudAssuredworkloadsV1beta1WorkloadFedrampModerateSettings
        include Google::Apis::Core::Hashable
      
        # Settings specific to the Key Management Service.
        # Corresponds to the JSON property `kmsSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings]
        attr_accessor :kms_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_settings = args[:kms_settings] if args.key?(:kms_settings)
        end
      end
      
      # Settings specific to resources needed for IL4.
      class GoogleCloudAssuredworkloadsV1beta1WorkloadIl4Settings
        include Google::Apis::Core::Hashable
      
        # Settings specific to the Key Management Service.
        # Corresponds to the JSON property `kmsSettings`
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings]
        attr_accessor :kms_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_settings = args[:kms_settings] if args.key?(:kms_settings)
        end
      end
      
      # Settings specific to the Key Management Service.
      class GoogleCloudAssuredworkloadsV1beta1WorkloadKmsSettings
        include Google::Apis::Core::Hashable
      
        # Required. Input only. Immutable. The time at which the Key Management Service
        # will automatically create a new version of the crypto key and mark it as the
        # primary.
        # Corresponds to the JSON property `nextRotationTime`
        # @return [String]
        attr_accessor :next_rotation_time
      
        # Required. Input only. Immutable. [next_rotation_time] will be advanced by this
        # period when the Key Management Service automatically rotates a key. Must be at
        # least 24 hours and at most 876,000 hours.
        # Corresponds to the JSON property `rotationPeriod`
        # @return [String]
        attr_accessor :rotation_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_rotation_time = args[:next_rotation_time] if args.key?(:next_rotation_time)
          @rotation_period = args[:rotation_period] if args.key?(:rotation_period)
        end
      end
      
      # Represent the resources that are children of this Workload.
      class GoogleCloudAssuredworkloadsV1beta1WorkloadResourceInfo
        include Google::Apis::Core::Hashable
      
        # Resource identifier. For a project this represents project_number.
        # Corresponds to the JSON property `resourceId`
        # @return [Fixnum]
        attr_accessor :resource_id
      
        # Indicates the type of resource.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation>]
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
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleRpcStatus]
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
    end
  end
end
