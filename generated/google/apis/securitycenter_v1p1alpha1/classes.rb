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
    module SecuritycenterV1p1alpha1
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Security Command Center finding.
      # A finding is a record of assessment data like security, risk, health, or
      # privacy, that is ingested into Security Command Center for presentation,
      # notification, analysis, policy testing, and enforcement. For example, a
      # cross-site scripting (XSS) vulnerability in an App Engine application is a
      # finding.
      # When adding a new field hidden behind a visibility label, ensure it is also
      # hidden from Notifications:
      # http://google3/java/com/google/cloud/security/riskdashboard/notification/
      # actions/streaming/FindingTranslator.java?l=26
      class Finding
        include Google::Apis::Core::Hashable
      
        # The additional taxonomy group within findings from a given source.
        # This field is immutable after creation time.
        # Example: "XSS_FLASH_INJECTION"
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The time at which the finding was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the event took place. For example, if the finding
        # represents an open firewall it would capture the time the detector believes
        # the firewall became open. The accuracy is determined by the detector.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The URI that, if available, points to a web page outside of Security
        # Command Center where additional information about the finding can be found.
        # This field is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # The relative resource name of this finding. See:
        # https://cloud.google.com/apis/design/resource_names#relative_resource_name
        # Example:
        # "organizations/`organization_id`/sources/`source_id`/findings/`finding_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative resource name of the source the finding belongs to. See:
        # https://cloud.google.com/apis/design/resource_names#relative_resource_name
        # This field is immutable after creation time.
        # For example:
        # "organizations/`organization_id`/sources/`source_id`"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # For findings on Google Cloud resources, the full resource
        # name of the Google Cloud resource this finding is for. See:
        # https://cloud.google.com/apis/design/resource_names#full_resource_name
        # When the finding is for a non-Google Cloud resource, the resourceName can
        # be a customer or partner defined string. This field is immutable after
        # creation time.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # User specified security marks that are attached to the parent Security
        # Command Center resource. Security marks are scoped within a Security Command
        # Center organization -- they can be modified and viewed by all users who have
        # proper permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::SecurityMarks]
        attr_accessor :security_marks
      
        # Source specific properties. These properties are managed by the source
        # that writes the finding. The key names in the source_properties map must be
        # between 1 and 255 characters, and must start with a letter and contain
        # alphanumeric characters or underscores only.
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # The state of the finding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Cloud SCC's Notification
      class GoogleCloudSecuritycenterV1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding.
        # A finding is a record of assessment data like security, risk, health, or
        # privacy, that is ingested into Security Command Center for presentation,
        # notification, analysis, policy testing, and enforcement. For example, a
        # cross-site scripting (XSS) vulnerability in an App Engine application is a
        # finding.
        # When adding a new field hidden behind a visibility label, ensure it is also
        # hidden from Notifications:
        # http://google3/java/com/google/cloud/security/riskdashboard/notification/
        # actions/streaming/FindingTranslator.java?l=26
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
        end
      end
      
      # Response of asset discovery run
      class GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # The duration between asset discovery run start and end
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The state of an asset discovery run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response of asset discovery run
      class GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # The duration between asset discovery run start and end
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The state of an asset discovery run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Security Command Center representation of a Google Cloud
      # resource.
      # The Asset is a Security Command Center resource that captures information
      # about a single Google Cloud resource. All modifications to an Asset are only
      # within the context of Security Command Center and don't affect the referenced
      # Google Cloud resource.
      class GoogleCloudSecuritycenterV1p1beta1Asset
        include Google::Apis::Core::Hashable
      
        # The time at which the asset was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Cloud IAM Policy information associated with the Google Cloud resource
        # described by the Security Command Center asset. This information is managed
        # and defined by the Google Cloud resource and cannot be modified by the
        # user.
        # Corresponds to the JSON property `iamPolicy`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::GoogleCloudSecuritycenterV1p1beta1IamPolicy]
        attr_accessor :iam_policy
      
        # The relative resource name of this asset. See:
        # https://cloud.google.com/apis/design/resource_names#relative_resource_name
        # Example:
        # "organizations/`organization_id`/assets/`asset_id`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource managed properties. These properties are managed and defined by
        # the Google Cloud resource and cannot be modified by the user.
        # Corresponds to the JSON property `resourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :resource_properties
      
        # Security Command Center managed properties. These properties are managed by
        # Security Command Center and cannot be modified by the user.
        # Corresponds to the JSON property `securityCenterProperties`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties]
        attr_accessor :security_center_properties
      
        # User specified security marks that are attached to the parent Security
        # Command Center resource. Security marks are scoped within a Security Command
        # Center organization -- they can be modified and viewed by all users who have
        # proper permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::GoogleCloudSecuritycenterV1p1beta1SecurityMarks]
        attr_accessor :security_marks
      
        # The time at which the asset was last updated, added, or deleted in Cloud
        # SCC.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @iam_policy = args[:iam_policy] if args.key?(:iam_policy)
          @name = args[:name] if args.key?(:name)
          @resource_properties = args[:resource_properties] if args.key?(:resource_properties)
          @security_center_properties = args[:security_center_properties] if args.key?(:security_center_properties)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Security Command Center finding.
      # A finding is a record of assessment data (security, risk, health or privacy)
      # ingested into Security Command Center for presentation, notification,
      # analysis, policy testing, and enforcement. For example, an XSS vulnerability
      # in an App Engine application is a finding.
      class GoogleCloudSecuritycenterV1p1beta1Finding
        include Google::Apis::Core::Hashable
      
        # The additional taxonomy group within findings from a given source.
        # This field is immutable after creation time.
        # Example: "XSS_FLASH_INJECTION"
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The time at which the finding was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the event took place. For example, if the finding
        # represents an open firewall it would capture the time the detector believes
        # the firewall became open. The accuracy is determined by the detector.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The URI that, if available, points to a web page outside of Security
        # Command Center where additional information about the finding can be found.
        # This field is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # The relative resource name of this finding. See:
        # https://cloud.google.com/apis/design/resource_names#relative_resource_name
        # Example:
        # "organizations/`organization_id`/sources/`source_id`/findings/`finding_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative resource name of the source the finding belongs to. See:
        # https://cloud.google.com/apis/design/resource_names#relative_resource_name
        # This field is immutable after creation time.
        # For example:
        # "organizations/`organization_id`/sources/`source_id`"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # For findings on Google Cloud resources, the full resource
        # name of the Google Cloud resource this finding is for. See:
        # https://cloud.google.com/apis/design/resource_names#full_resource_name
        # When the finding is for a non-Google Cloud resource, the resourceName can
        # be a customer or partner defined string. This field is immutable after
        # creation time.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # User specified security marks that are attached to the parent Security
        # Command Center resource. Security marks are scoped within a Security Command
        # Center organization -- they can be modified and viewed by all users who have
        # proper permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::GoogleCloudSecuritycenterV1p1beta1SecurityMarks]
        attr_accessor :security_marks
      
        # Source specific properties. These properties are managed by the source
        # that writes the finding. The key names in the source_properties map must be
        # between 1 and 255 characters, and must start with a letter and contain
        # alphanumeric characters or underscores only.
        # Corresponds to the JSON property `sourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :source_properties
      
        # The state of the finding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @security_marks = args[:security_marks] if args.key?(:security_marks)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Cloud IAM Policy information associated with the Google Cloud resource
      # described by the Security Command Center asset. This information is managed
      # and defined by the Google Cloud resource and cannot be modified by the
      # user.
      class GoogleCloudSecuritycenterV1p1beta1IamPolicy
        include Google::Apis::Core::Hashable
      
        # The JSON representation of the Policy associated with the asset.
        # See https://cloud.google.com/iam/docs/reference/rest/v1/Policy for
        # format details.
        # Corresponds to the JSON property `policyBlob`
        # @return [String]
        attr_accessor :policy_blob
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_blob = args[:policy_blob] if args.key?(:policy_blob)
        end
      end
      
      # Security Command Center's Notification
      class GoogleCloudSecuritycenterV1p1beta1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding.
        # A finding is a record of assessment data (security, risk, health or privacy)
        # ingested into Security Command Center for presentation, notification,
        # analysis, policy testing, and enforcement. For example, an XSS vulnerability
        # in an App Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::GoogleCloudSecuritycenterV1p1beta1Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Wrapper over asset object that also captures the state change for the asset
        # e.g. if it was a newly created asset vs updated or deleted asset.
        # Corresponds to the JSON property `temporalAsset`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::GoogleCloudSecuritycenterV1p1beta1TemporalAsset]
        attr_accessor :temporal_asset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @temporal_asset = args[:temporal_asset] if args.key?(:temporal_asset)
        end
      end
      
      # Response of asset discovery run
      class GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
        include Google::Apis::Core::Hashable
      
        # The duration between asset discovery run start and end
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The state of an asset discovery run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Security Command Center managed properties. These properties are managed by
      # Security Command Center and cannot be modified by the user.
      class GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
        include Google::Apis::Core::Hashable
      
        # The user defined display name for this resource.
        # Corresponds to the JSON property `resourceDisplayName`
        # @return [String]
        attr_accessor :resource_display_name
      
        # The full resource name of the Google Cloud resource this asset
        # represents. This field is immutable after create time. See:
        # https://cloud.google.com/apis/design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Owners of the Google Cloud resource.
        # Corresponds to the JSON property `resourceOwners`
        # @return [Array<String>]
        attr_accessor :resource_owners
      
        # The full resource name of the immediate parent of the resource. See:
        # https://cloud.google.com/apis/design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceParent`
        # @return [String]
        attr_accessor :resource_parent
      
        # The user defined display name for the parent of this resource.
        # Corresponds to the JSON property `resourceParentDisplayName`
        # @return [String]
        attr_accessor :resource_parent_display_name
      
        # The full resource name of the project the resource belongs to. See:
        # https://cloud.google.com/apis/design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceProject`
        # @return [String]
        attr_accessor :resource_project
      
        # The user defined display name for the project of this resource.
        # Corresponds to the JSON property `resourceProjectDisplayName`
        # @return [String]
        attr_accessor :resource_project_display_name
      
        # The type of the Google Cloud resource. Examples include: APPLICATION,
        # PROJECT, and ORGANIZATION. This is a case insensitive field defined by
        # Security Command Center and/or the producer of the resource and is
        # immutable after create time.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_display_name = args[:resource_display_name] if args.key?(:resource_display_name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_owners = args[:resource_owners] if args.key?(:resource_owners)
          @resource_parent = args[:resource_parent] if args.key?(:resource_parent)
          @resource_parent_display_name = args[:resource_parent_display_name] if args.key?(:resource_parent_display_name)
          @resource_project = args[:resource_project] if args.key?(:resource_project)
          @resource_project_display_name = args[:resource_project_display_name] if args.key?(:resource_project_display_name)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # User specified security marks that are attached to the parent Security
      # Command Center resource. Security marks are scoped within a Security Command
      # Center organization -- they can be modified and viewed by all users who have
      # proper permissions on the organization.
      class GoogleCloudSecuritycenterV1p1beta1SecurityMarks
        include Google::Apis::Core::Hashable
      
        # Mutable user specified security marks belonging to the parent resource.
        # Constraints are as follows:
        # * Keys and values are treated as case insensitive
        # * Keys must be between 1 - 256 characters (inclusive)
        # * Keys must be letters, numbers, underscores, or dashes
        # * Values have leading and trailing whitespace trimmed, remaining
        # characters must be between 1 - 4096 characters (inclusive)
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # The relative resource name of the SecurityMarks. See:
        # https://cloud.google.com/apis/design/resource_names#relative_resource_name
        # Examples:
        # "organizations/`organization_id`/assets/`asset_id`/securityMarks"
        # "organizations/`organization_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Wrapper over asset object that also captures the state change for the asset
      # e.g. if it was a newly created asset vs updated or deleted asset.
      class GoogleCloudSecuritycenterV1p1beta1TemporalAsset
        include Google::Apis::Core::Hashable
      
        # Security Command Center representation of a Google Cloud
        # resource.
        # The Asset is a Security Command Center resource that captures information
        # about a single Google Cloud resource. All modifications to an Asset are only
        # within the context of Security Command Center and don't affect the referenced
        # Google Cloud resource.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::GoogleCloudSecuritycenterV1p1beta1Asset]
        attr_accessor :asset
      
        # Represents if the asset was created/updated/deleted.
        # Corresponds to the JSON property `changeType`
        # @return [String]
        attr_accessor :change_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @change_type = args[:change_type] if args.key?(:change_type)
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
        # @return [Array<Google::Apis::SecuritycenterV1p1alpha1::Operation>]
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
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::SecuritycenterV1p1alpha1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # User specified security marks that are attached to the parent Security
      # Command Center resource. Security marks are scoped within a Security Command
      # Center organization -- they can be modified and viewed by all users who have
      # proper permissions on the organization.
      class SecurityMarks
        include Google::Apis::Core::Hashable
      
        # Mutable user specified security marks belonging to the parent resource.
        # Constraints are as follows:
        # * Keys and values are treated as case insensitive
        # * Keys must be between 1 - 256 characters (inclusive)
        # * Keys must be letters, numbers, underscores, or dashes
        # * Values have leading and trailing whitespace trimmed, remaining
        # characters must be between 1 - 4096 characters (inclusive)
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # The relative resource name of the SecurityMarks. See:
        # https://cloud.google.com/apis/design/resource_names#relative_resource_name
        # Examples:
        # "organizations/`organization_id`/assets/`asset_id`/securityMarks"
        # "organizations/`organization_id`/sources/`source_id`/findings/`finding_id`/
        # securityMarks".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @marks = args[:marks] if args.key?(:marks)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for
      # different programming environments, including REST APIs and RPC APIs. It is
      # used by [gRPC](https://github.com/grpc). Each `Status` message contains
      # three pieces of data: error code, error message, and error details.
      # You can find out more about this error model and how to work with it in the
      # [API Design Guide](https://cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
