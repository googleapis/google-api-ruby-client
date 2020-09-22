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
    module SecuritycenterV1
      
      # Security Command Center representation of a Google Cloud resource. The Asset
      # is a Security Command Center resource that captures information about a single
      # Google Cloud resource. All modifications to an Asset are only within the
      # context of Security Command Center and don't affect the referenced Google
      # Cloud resource.
      class Asset
        include Google::Apis::Core::Hashable
      
        # The time at which the asset was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Cloud IAM Policy information associated with the Google Cloud resource
        # described by the Security Command Center asset. This information is managed
        # and defined by the Google Cloud resource and cannot be modified by the user.
        # Corresponds to the JSON property `iamPolicy`
        # @return [Google::Apis::SecuritycenterV1::IamPolicy]
        attr_accessor :iam_policy
      
        # The relative resource name of this asset. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/assets/`asset_id`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource managed properties. These properties are managed and defined by the
        # Google Cloud resource and cannot be modified by the user.
        # Corresponds to the JSON property `resourceProperties`
        # @return [Hash<String,Object>]
        attr_accessor :resource_properties
      
        # Security Command Center managed properties. These properties are managed by
        # Security Command Center and cannot be modified by the user.
        # Corresponds to the JSON property `securityCenterProperties`
        # @return [Google::Apis::SecuritycenterV1::SecurityCenterProperties]
        attr_accessor :security_center_properties
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        attr_accessor :security_marks
      
        # The time at which the asset was last updated, added, or deleted in Security
        # Command Center.
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
      
      # The configuration used for Asset Discovery runs.
      class AssetDiscoveryConfig
        include Google::Apis::Core::Hashable
      
        # The mode to use for filtering asset discovery.
        # Corresponds to the JSON property `inclusionMode`
        # @return [String]
        attr_accessor :inclusion_mode
      
        # The project ids to use for filtering asset discovery.
        # Corresponds to the JSON property `projectIds`
        # @return [Array<String>]
        attr_accessor :project_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inclusion_mode = args[:inclusion_mode] if args.key?(:inclusion_mode)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts jose@example.com from DATA_READ logging, and aliya@example.com from
      # DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::SecuritycenterV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::SecuritycenterV1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
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
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Security Command Center finding. A finding is a record of assessment data like
      # security, risk, health, or privacy, that is ingested into Security Command
      # Center for presentation, notification, analysis, policy testing, and
      # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
      # Engine application is a finding.
      class Finding
        include Google::Apis::Core::Hashable
      
        # The additional taxonomy group within findings from a given source. This field
        # is immutable after creation time. Example: "XSS_FLASH_INJECTION"
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The time at which the finding was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the event took place, or when an update to the finding
        # occurred. For example, if the finding represents an open firewall it would
        # capture the time the detector believes the firewall became open. The accuracy
        # is determined by the detector. If the finding were to be resolved afterward,
        # this time would reflect when the finding was resolved.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # The relative resource name of this finding. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative resource name of the source the finding belongs to. See: https://
        # cloud.google.com/apis/design/resource_names#relative_resource_name This field
        # is immutable after creation time. For example: "organizations/`organization_id`
        # /sources/`source_id`"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # For findings on Google Cloud resources, the full resource name of the Google
        # Cloud resource this finding is for. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name When the finding is for a non-Google Cloud
        # resource, the resourceName can be a customer or partner defined string. This
        # field is immutable after creation time.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1::SecurityMarks]
        attr_accessor :security_marks
      
        # Source specific properties. These properties are managed by the source that
        # writes the finding. The key names in the source_properties map must be between
        # 1 and 255 characters, and must start with a letter and contain alphanumeric
        # characters or underscores only.
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
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::SecuritycenterV1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The policy format version to be returned. Valid values are 0, 1, and
        # 3. Requests specifying an invalid value will be rejected. Requests for
        # policies with any conditional bindings must specify version 3. Policies
        # without any conditional bindings may specify any valid value or leave the
        # field unset. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # Cloud SCC's Notification
      class GoogleCloudSecuritycenterV1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding. A finding is a record of assessment data like
        # security, risk, health, or privacy, that is ingested into Security Command
        # Center for presentation, notification, analysis, policy testing, and
        # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
        # Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1::Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Information related to the Google Cloud resource.
      class GoogleCloudSecuritycenterV1Resource
        include Google::Apis::Core::Hashable
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full resource name of resource's parent.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The human readable name of resource's parent.
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # The full resource name of project that the resource belongs to.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The human readable name of project that the resource belongs to.
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
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
      
      # Security Command Center finding. A finding is a record of assessment data (
      # security, risk, health or privacy) ingested into Security Command Center for
      # presentation, notification, analysis, policy testing, and enforcement. For
      # example, an XSS vulnerability in an App Engine application is a finding.
      class GoogleCloudSecuritycenterV1p1beta1Finding
        include Google::Apis::Core::Hashable
      
        # The additional taxonomy group within findings from a given source. This field
        # is immutable after creation time. Example: "XSS_FLASH_INJECTION"
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The time at which the finding was created in Security Command Center.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the event took place, or when an update to the finding
        # occurred. For example, if the finding represents an open firewall it would
        # capture the time the detector believes the firewall became open. The accuracy
        # is determined by the detector. If the finding were to be resolved afterward,
        # this time would reflect when the finding was resolved.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The URI that, if available, points to a web page outside of Security Command
        # Center where additional information about the finding can be found. This field
        # is guaranteed to be either empty or a well formed URL.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # The relative resource name of this finding. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The relative resource name of the source the finding belongs to. See: https://
        # cloud.google.com/apis/design/resource_names#relative_resource_name This field
        # is immutable after creation time. For example: "organizations/`organization_id`
        # /sources/`source_id`"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # For findings on Google Cloud resources, the full resource name of the Google
        # Cloud resource this finding is for. See: https://cloud.google.com/apis/design/
        # resource_names#full_resource_name When the finding is for a non-Google Cloud
        # resource, the resourceName can be a customer or partner defined string. This
        # field is immutable after creation time.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # User specified security marks that are attached to the parent Security Command
        # Center resource. Security marks are scoped within a Security Command Center
        # organization -- they can be modified and viewed by all users who have proper
        # permissions on the organization.
        # Corresponds to the JSON property `securityMarks`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1SecurityMarks]
        attr_accessor :security_marks
      
        # The severity of the finding. This field is managed by the source that writes
        # the finding.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Source specific properties. These properties are managed by the source that
        # writes the finding. The key names in the source_properties map must be between
        # 1 and 255 characters, and must start with a letter and contain alphanumeric
        # characters or underscores only.
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
          @severity = args[:severity] if args.key?(:severity)
          @source_properties = args[:source_properties] if args.key?(:source_properties)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Security Command Center's Notification
      class GoogleCloudSecuritycenterV1p1beta1NotificationMessage
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding. A finding is a record of assessment data (
        # security, risk, health or privacy) ingested into Security Command Center for
        # presentation, notification, analysis, policy testing, and enforcement. For
        # example, an XSS vulnerability in an App Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Finding]
        attr_accessor :finding
      
        # Name of the notification config that generated current notification.
        # Corresponds to the JSON property `notificationConfigName`
        # @return [String]
        attr_accessor :notification_config_name
      
        # Information related to the Google Cloud resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1::GoogleCloudSecuritycenterV1p1beta1Resource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @notification_config_name = args[:notification_config_name] if args.key?(:notification_config_name)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Information related to the Google Cloud resource.
      class GoogleCloudSecuritycenterV1p1beta1Resource
        include Google::Apis::Core::Hashable
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full resource name of resource's parent.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # The human readable name of resource's parent.
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # The full resource name of project that the resource belongs to.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The human readable name of project that the resource belongs to.
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @project = args[:project] if args.key?(:project)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
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
      
      # User specified security marks that are attached to the parent Security Command
      # Center resource. Security marks are scoped within a Security Command Center
      # organization -- they can be modified and viewed by all users who have proper
      # permissions on the organization.
      class GoogleCloudSecuritycenterV1p1beta1SecurityMarks
        include Google::Apis::Core::Hashable
      
        # Mutable user specified security marks belonging to the parent resource.
        # Constraints are as follows: * Keys and values are treated as case insensitive *
        # Keys must be between 1 - 256 characters (inclusive) * Keys must be letters,
        # numbers, underscores, or dashes * Values have leading and trailing whitespace
        # trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        # apis/design/resource_names#relative_resource_name Examples: "organizations/`
        # organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
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
      
      # Request message for grouping by assets.
      class GroupAssetsRequest
        include Google::Apis::Core::Hashable
      
        # When compare_duration is set, the GroupResult's "state_change" property is
        # updated to indicate whether the asset was added, removed, or remained present
        # during the compare_duration period of time that precedes the read_time. This
        # is the time between (read_time - compare_duration) and read_time. The state
        # change value is derived based on the presence of the asset at the two points
        # in time. Intermediate state changes between the two times don't affect the
        # result. For example, the results aren't affected if the asset is removed and
        # re-created again. Possible "state_change" values when compare_duration is
        # specified: * "ADDED": indicates that the asset was not present at the start of
        # compare_duration, but present at reference_time. * "REMOVED": indicates that
        # the asset was present at the start of compare_duration, but not present at
        # reference_time. * "ACTIVE": indicates that the asset was present at both the
        # start and the end of the time period defined by compare_duration and
        # reference_time. If compare_duration is not specified, then the only possible
        # state_change is "UNUSED", which will be the state_change set for all assets
        # present at read_time. If this field is set then `state_change` must be a
        # specified field in `group_by`.
        # Corresponds to the JSON property `compareDuration`
        # @return [String]
        attr_accessor :compare_duration
      
        # Expression that defines the filter to apply across assets. The expression is a
        # list of zero or more restrictions combined via logical operators `AND` and `OR`
        # . Parentheses are supported, and `OR` has higher precedence than `AND`.
        # Restrictions have the form ` ` and may have a `-` character in front of them
        # to indicate negation. The fields map to those defined in the Asset resource.
        # Examples include: * name * security_center_properties.resource_name *
        # resource_properties.a_property * security_marks.marks.marka The supported
        # operators are: * `=` for all value types. * `>`, `<`, `>=`, `<=` for integer
        # values. * `:`, meaning substring matching, for strings. The supported value
        # types are: * string literals in quotes. * integer literals without quotes. *
        # boolean literals `true` and `false` without quotes. The following field and
        # operator combinations are supported: * name: `=` * update_time: `=`, `>`, `<`,
        # `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339 string.
        # Examples: `update_time = "2019-06-10T16:07:18-07:00"` `update_time =
        # 1560208038000` * create_time: `=`, `>`, `<`, `>=`, `<=` Usage: This should be
        # milliseconds since epoch or an RFC3339 string. Examples: `create_time = "2019-
        # 06-10T16:07:18-07:00"` `create_time = 1560208038000` * iam_policy.policy_blob:
        # `=`, `:` * resource_properties: `=`, `:`, `>`, `<`, `>=`, `<=` *
        # security_marks.marks: `=`, `:` * security_center_properties.resource_name: `=`,
        # `:` * security_center_properties.resource_display_name: `=`, `:` *
        # security_center_properties.resource_type: `=`, `:` *
        # security_center_properties.resource_parent: `=`, `:` *
        # security_center_properties.resource_parent_display_name: `=`, `:` *
        # security_center_properties.resource_project: `=`, `:` *
        # security_center_properties.resource_project_display_name: `=`, `:` *
        # security_center_properties.resource_owners: `=`, `:` For example, `
        # resource_properties.size = 100` is a valid filter string. Use a partial match
        # on the empty string to filter based on a property existing: `
        # resource_properties.my_property : ""` Use a negated partial match on the empty
        # string to filter based on a property not existing: `-resource_properties.
        # my_property : ""`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Expression that defines what assets fields to use for grouping. The
        # string value should follow SQL syntax: comma separated list of fields. For
        # example: "security_center_properties.resource_project,
        # security_center_properties.project". The following fields are supported when
        # compare_duration is not set: * security_center_properties.resource_project *
        # security_center_properties.resource_project_display_name *
        # security_center_properties.resource_type * security_center_properties.
        # resource_parent * security_center_properties.resource_parent_display_name The
        # following fields are supported when compare_duration is set: *
        # security_center_properties.resource_type * security_center_properties.
        # resource_project_display_name * security_center_properties.
        # resource_parent_display_name
        # Corresponds to the JSON property `groupBy`
        # @return [String]
        attr_accessor :group_by
      
        # The maximum number of results to return in a single response. Default is 10,
        # minimum is 1, maximum is 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The value returned by the last `GroupAssetsResponse`; indicates that this is a
        # continuation of a prior `GroupAssets` call, and that the system should return
        # the next page of data.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Time used as a reference point when filtering assets. The filter is limited to
        # assets existing at the supplied time and their values are those at that
        # specific time. Absence of this field will default to the API's version of NOW.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compare_duration = args[:compare_duration] if args.key?(:compare_duration)
          @filter = args[:filter] if args.key?(:filter)
          @group_by = args[:group_by] if args.key?(:group_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # Response message for grouping by assets.
      class GroupAssetsResponse
        include Google::Apis::Core::Hashable
      
        # Group results. There exists an element for each existing unique combination of
        # property/values. The element contains a count for the number of times those
        # specific property/values appear.
        # Corresponds to the JSON property `groupByResults`
        # @return [Array<Google::Apis::SecuritycenterV1::GroupResult>]
        attr_accessor :group_by_results
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Time used for executing the groupBy request.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The total number of results matching the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_by_results = args[:group_by_results] if args.key?(:group_by_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Request message for grouping by findings.
      class GroupFindingsRequest
        include Google::Apis::Core::Hashable
      
        # When compare_duration is set, the GroupResult's "state_change" attribute is
        # updated to indicate whether the finding had its state changed, the finding's
        # state remained unchanged, or if the finding was added during the
        # compare_duration period of time that precedes the read_time. This is the time
        # between (read_time - compare_duration) and read_time. The state_change value
        # is derived based on the presence and state of the finding at the two points in
        # time. Intermediate state changes between the two times don't affect the result.
        # For example, the results aren't affected if the finding is made inactive and
        # then active again. Possible "state_change" values when compare_duration is
        # specified: * "CHANGED": indicates that the finding was present and matched the
        # given filter at the start of compare_duration, but changed its state at
        # read_time. * "UNCHANGED": indicates that the finding was present and matched
        # the given filter at the start of compare_duration and did not change state at
        # read_time. * "ADDED": indicates that the finding did not match the given
        # filter or was not present at the start of compare_duration, but was present at
        # read_time. * "REMOVED": indicates that the finding was present and matched the
        # filter at the start of compare_duration, but did not match the filter at
        # read_time. If compare_duration is not specified, then the only possible
        # state_change is "UNUSED", which will be the state_change set for all findings
        # present at read_time. If this field is set then `state_change` must be a
        # specified field in `group_by`.
        # Corresponds to the JSON property `compareDuration`
        # @return [String]
        attr_accessor :compare_duration
      
        # Expression that defines the filter to apply across findings. The expression is
        # a list of one or more restrictions combined via logical operators `AND` and `
        # OR`. Parentheses are supported, and `OR` has higher precedence than `AND`.
        # Restrictions have the form ` ` and may have a `-` character in front of them
        # to indicate negation. Examples include: * name * source_properties.a_property *
        # security_marks.marks.marka The supported operators are: * `=` for all value
        # types. * `>`, `<`, `>=`, `<=` for integer values. * `:`, meaning substring
        # matching, for strings. The supported value types are: * string literals in
        # quotes. * integer literals without quotes. * boolean literals `true` and `
        # false` without quotes. The following field and operator combinations are
        # supported: * name: `=` * parent: `=`, `:` * resource_name: `=`, `:` * state: `=
        # `, `:` * category: `=`, `:` * external_uri: `=`, `:` * event_time: `=`, `>`, `<
        # `, `>=`, `<=` Usage: This should be milliseconds since epoch or an RFC3339
        # string. Examples: `event_time = "2019-06-10T16:07:18-07:00"` `event_time =
        # 1560208038000` * security_marks.marks: `=`, `:` * source_properties: `=`, `:`,
        # `>`, `<`, `>=`, `<=` For example, `source_properties.size = 100` is a valid
        # filter string. Use a partial match on the empty string to filter based on a
        # property existing: `source_properties.my_property : ""` Use a negated partial
        # match on the empty string to filter based on a property not existing: `-
        # source_properties.my_property : ""`
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Expression that defines what assets fields to use for grouping (
        # including `state_change`). The string value should follow SQL syntax: comma
        # separated list of fields. For example: "parent,resource_name". The following
        # fields are supported: * resource_name * category * state * parent The
        # following fields are supported when compare_duration is set: * state_change
        # Corresponds to the JSON property `groupBy`
        # @return [String]
        attr_accessor :group_by
      
        # The maximum number of results to return in a single response. Default is 10,
        # minimum is 1, maximum is 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The value returned by the last `GroupFindingsResponse`; indicates that this is
        # a continuation of a prior `GroupFindings` call, and that the system should
        # return the next page of data.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Time used as a reference point when filtering findings. The filter is limited
        # to findings existing at the supplied time and their values are those at that
        # specific time. Absence of this field will default to the API's version of NOW.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compare_duration = args[:compare_duration] if args.key?(:compare_duration)
          @filter = args[:filter] if args.key?(:filter)
          @group_by = args[:group_by] if args.key?(:group_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # Response message for group by findings.
      class GroupFindingsResponse
        include Google::Apis::Core::Hashable
      
        # Group results. There exists an element for each existing unique combination of
        # property/values. The element contains a count for the number of times those
        # specific property/values appear.
        # Corresponds to the JSON property `groupByResults`
        # @return [Array<Google::Apis::SecuritycenterV1::GroupResult>]
        attr_accessor :group_by_results
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Time used for executing the groupBy request.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The total number of results matching the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_by_results = args[:group_by_results] if args.key?(:group_by_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Result containing the properties and count of a groupBy request.
      class GroupResult
        include Google::Apis::Core::Hashable
      
        # Total count of resources for the given properties.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Properties matching the groupBy fields in the request.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Object>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Cloud IAM Policy information associated with the Google Cloud resource
      # described by the Security Command Center asset. This information is managed
      # and defined by the Google Cloud resource and cannot be modified by the user.
      class IamPolicy
        include Google::Apis::Core::Hashable
      
        # The JSON representation of the Policy associated with the asset. See https://
        # cloud.google.com/iam/reference/rest/v1/Policy for format details.
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
      
      # Response message for listing assets.
      class ListAssetsResponse
        include Google::Apis::Core::Hashable
      
        # Assets matching the list request.
        # Corresponds to the JSON property `listAssetsResults`
        # @return [Array<Google::Apis::SecuritycenterV1::ListAssetsResult>]
        attr_accessor :list_assets_results
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Time used for executing the list request.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The total number of assets matching the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_assets_results = args[:list_assets_results] if args.key?(:list_assets_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Result containing the Asset and its State.
      class ListAssetsResult
        include Google::Apis::Core::Hashable
      
        # Security Command Center representation of a Google Cloud resource. The Asset
        # is a Security Command Center resource that captures information about a single
        # Google Cloud resource. All modifications to an Asset are only within the
        # context of Security Command Center and don't affect the referenced Google
        # Cloud resource.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::SecuritycenterV1::Asset]
        attr_accessor :asset
      
        # State change of the asset between the points in time.
        # Corresponds to the JSON property `stateChange`
        # @return [String]
        attr_accessor :state_change
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @state_change = args[:state_change] if args.key?(:state_change)
        end
      end
      
      # Response message for listing findings.
      class ListFindingsResponse
        include Google::Apis::Core::Hashable
      
        # Findings matching the list request.
        # Corresponds to the JSON property `listFindingsResults`
        # @return [Array<Google::Apis::SecuritycenterV1::ListFindingsResult>]
        attr_accessor :list_findings_results
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Time used for executing the list request.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The total number of findings matching the query.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_findings_results = args[:list_findings_results] if args.key?(:list_findings_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Result containing the Finding and its StateChange.
      class ListFindingsResult
        include Google::Apis::Core::Hashable
      
        # Security Command Center finding. A finding is a record of assessment data like
        # security, risk, health, or privacy, that is ingested into Security Command
        # Center for presentation, notification, analysis, policy testing, and
        # enforcement. For example, a cross-site scripting (XSS) vulnerability in an App
        # Engine application is a finding.
        # Corresponds to the JSON property `finding`
        # @return [Google::Apis::SecuritycenterV1::Finding]
        attr_accessor :finding
      
        # Information related to the Google Cloud resource that is associated with this
        # finding. LINT.IfChange
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::SecuritycenterV1::Resource]
        attr_accessor :resource
      
        # State change of the finding between the points in time.
        # Corresponds to the JSON property `stateChange`
        # @return [String]
        attr_accessor :state_change
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finding = args[:finding] if args.key?(:finding)
          @resource = args[:resource] if args.key?(:resource)
          @state_change = args[:state_change] if args.key?(:state_change)
        end
      end
      
      # Response message for listing notification configs.
      class ListNotificationConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Notification configs belonging to the requested parent.
        # Corresponds to the JSON property `notificationConfigs`
        # @return [Array<Google::Apis::SecuritycenterV1::NotificationConfig>]
        attr_accessor :notification_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @notification_configs = args[:notification_configs] if args.key?(:notification_configs)
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
        # @return [Array<Google::Apis::SecuritycenterV1::Operation>]
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
      
      # Response message for listing sources.
      class ListSourcesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Sources belonging to the requested parent.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::SecuritycenterV1::Source>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Cloud Security Command Center (Cloud SCC) notification configs. A notification
      # config is a Cloud SCC resource that contains the configuration to send
      # notifications for create/update events of findings, assets and etc.
      class NotificationConfig
        include Google::Apis::Core::Hashable
      
        # The description of the notification config (max of 1024 characters).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The relative resource name of this notification config. See: https://cloud.
        # google.com/apis/design/resource_names#relative_resource_name Example: "
        # organizations/`organization_id`/notificationConfigs/notify_public_bucket".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The Pub/Sub topic to send notifications to. Its format is "projects/[
        # project_id]/topics/[topic]".
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        # Output only. The service account that needs "pubsub.topics.publish" permission
        # to publish to the Pub/Sub topic.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The config for streaming-based notifications, which send each event as soon as
        # it is detected.
        # Corresponds to the JSON property `streamingConfig`
        # @return [Google::Apis::SecuritycenterV1::StreamingConfig]
        attr_accessor :streaming_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
          @service_account = args[:service_account] if args.key?(:service_account)
          @streaming_config = args[:streaming_config] if args.key?(:streaming_config)
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
        # @return [Google::Apis::SecuritycenterV1::Status]
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
      
      # User specified settings that are attached to the Security Command Center
      # organization.
      class OrganizationSettings
        include Google::Apis::Core::Hashable
      
        # The configuration used for Asset Discovery runs.
        # Corresponds to the JSON property `assetDiscoveryConfig`
        # @return [Google::Apis::SecuritycenterV1::AssetDiscoveryConfig]
        attr_accessor :asset_discovery_config
      
        # A flag that indicates if Asset Discovery should be enabled. If the flag is set
        # to `true`, then discovery of assets will occur. If it is set to `false, all
        # historical assets will remain, but discovery of future assets will not occur.
        # Corresponds to the JSON property `enableAssetDiscovery`
        # @return [Boolean]
        attr_accessor :enable_asset_discovery
        alias_method :enable_asset_discovery?, :enable_asset_discovery
      
        # The relative resource name of the settings. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/organizationSettings".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_discovery_config = args[:asset_discovery_config] if args.key?(:asset_discovery_config)
          @enable_asset_discovery = args[:enable_asset_discovery] if args.key?(:enable_asset_discovery)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members` to a single `role`. Members can be
      # user accounts, service accounts, Google groups, and domains (such as G Suite).
      # A `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role. For some types of Google Cloud resources,
      # a `binding` can also specify a `condition`, which is a logical expression that
      # allows access to a resource only if the expression evaluates to `true`. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
      # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
      # members: - user:mike@example.com - group:admins@example.com - domain:google.
      # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
      # description of IAM and its features, see the [IAM documentation](https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::SecuritycenterV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::SecuritycenterV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Information related to the Google Cloud resource that is associated with this
      # finding. LINT.IfChange
      class Resource
        include Google::Apis::Core::Hashable
      
        # The full resource name of the resource. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The human readable name of resource's parent.
        # Corresponds to the JSON property `parentDisplayName`
        # @return [String]
        attr_accessor :parent_display_name
      
        # The full resource name of resource's parent.
        # Corresponds to the JSON property `parentName`
        # @return [String]
        attr_accessor :parent_name
      
        # The human readable name of project that the resource belongs to.
        # Corresponds to the JSON property `projectDisplayName`
        # @return [String]
        attr_accessor :project_display_name
      
        # The full resource name of project that the resource belongs to.
        # Corresponds to the JSON property `projectName`
        # @return [String]
        attr_accessor :project_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parent_display_name = args[:parent_display_name] if args.key?(:parent_display_name)
          @parent_name = args[:parent_name] if args.key?(:parent_name)
          @project_display_name = args[:project_display_name] if args.key?(:project_display_name)
          @project_name = args[:project_name] if args.key?(:project_name)
        end
      end
      
      # Request message for running asset discovery for an organization.
      class RunAssetDiscoveryRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Security Command Center managed properties. These properties are managed by
      # Security Command Center and cannot be modified by the user.
      class SecurityCenterProperties
        include Google::Apis::Core::Hashable
      
        # The user defined display name for this resource.
        # Corresponds to the JSON property `resourceDisplayName`
        # @return [String]
        attr_accessor :resource_display_name
      
        # The full resource name of the Google Cloud resource this asset represents.
        # This field is immutable after create time. See: https://cloud.google.com/apis/
        # design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Owners of the Google Cloud resource.
        # Corresponds to the JSON property `resourceOwners`
        # @return [Array<String>]
        attr_accessor :resource_owners
      
        # The full resource name of the immediate parent of the resource. See: https://
        # cloud.google.com/apis/design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceParent`
        # @return [String]
        attr_accessor :resource_parent
      
        # The user defined display name for the parent of this resource.
        # Corresponds to the JSON property `resourceParentDisplayName`
        # @return [String]
        attr_accessor :resource_parent_display_name
      
        # The full resource name of the project the resource belongs to. See: https://
        # cloud.google.com/apis/design/resource_names#full_resource_name
        # Corresponds to the JSON property `resourceProject`
        # @return [String]
        attr_accessor :resource_project
      
        # The user defined display name for the project of this resource.
        # Corresponds to the JSON property `resourceProjectDisplayName`
        # @return [String]
        attr_accessor :resource_project_display_name
      
        # The type of the Google Cloud resource. Examples include: APPLICATION, PROJECT,
        # and ORGANIZATION. This is a case insensitive field defined by Security Command
        # Center and/or the producer of the resource and is immutable after create time.
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
      
      # User specified security marks that are attached to the parent Security Command
      # Center resource. Security marks are scoped within a Security Command Center
      # organization -- they can be modified and viewed by all users who have proper
      # permissions on the organization.
      class SecurityMarks
        include Google::Apis::Core::Hashable
      
        # Mutable user specified security marks belonging to the parent resource.
        # Constraints are as follows: * Keys and values are treated as case insensitive *
        # Keys must be between 1 - 256 characters (inclusive) * Keys must be letters,
        # numbers, underscores, or dashes * Values have leading and trailing whitespace
        # trimmed, remaining characters must be between 1 - 4096 characters (inclusive)
        # Corresponds to the JSON property `marks`
        # @return [Hash<String,String>]
        attr_accessor :marks
      
        # The relative resource name of the SecurityMarks. See: https://cloud.google.com/
        # apis/design/resource_names#relative_resource_name Examples: "organizations/`
        # organization_id`/assets/`asset_id`/securityMarks" "organizations/`
        # organization_id`/sources/`source_id`/findings/`finding_id`/securityMarks".
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
      
      # Request message for updating a finding's state.
      class SetFindingStateRequest
        include Google::Apis::Core::Hashable
      
        # Required. The time at which the updated state takes effect.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. The desired State of the finding.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members` to a single `role`. Members can be
        # user accounts, service accounts, Google groups, and domains (such as G Suite).
        # A `role` is a named list of permissions; each `role` can be an IAM predefined
        # role or a user-created custom role. For some types of Google Cloud resources,
        # a `binding` can also specify a `condition`, which is a logical expression that
        # allows access to a resource only if the expression evaluates to `true`. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
        # members: - user:mike@example.com - group:admins@example.com - domain:google.
        # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
        # description of IAM and its features, see the [IAM documentation](https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::SecuritycenterV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Security Command Center finding source. A finding source is an entity or a
      # mechanism that can produce a finding. A source is like a container of findings
      # that come from the same scanner, logger, monitor, and other tools.
      class Source
        include Google::Apis::Core::Hashable
      
        # The description of the source (max of 1024 characters). Example: "Web Security
        # Scanner is a web security scanner for common vulnerabilities in App Engine
        # applications. It can automatically scan and detect four common vulnerabilities,
        # including cross-site-scripting (XSS), Flash injection, mixed content (HTTP in
        # HTTPS), and outdated or insecure libraries."
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The source's display name. A source's display name must be unique amongst its
        # siblings, for example, two sources with the same parent can't share the same
        # display name. The display name must have a length between 1 and 64 characters (
        # inclusive).
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The relative resource name of this source. See: https://cloud.google.com/apis/
        # design/resource_names#relative_resource_name Example: "organizations/`
        # organization_id`/sources/`source_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # The config for streaming-based notifications, which send each event as soon as
      # it is detected.
      class StreamingConfig
        include Google::Apis::Core::Hashable
      
        # Expression that defines the filter to apply across create/update events of
        # assets or findings as specified by the event type. The expression is a list of
        # zero or more restrictions combined via logical operators `AND` and `OR`.
        # Parentheses are supported, and `OR` has higher precedence than `AND`.
        # Restrictions have the form ` ` and may have a `-` character in front of them
        # to indicate negation. The fields map to those defined in the corresponding
        # resource. The supported operators are: * `=` for all value types. * `>`, `<`, `
        # >=`, `<=` for integer values. * `:`, meaning substring matching, for strings.
        # The supported value types are: * string literals in quotes. * integer literals
        # without quotes. * boolean literals `true` and `false` without quotes.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
    end
  end
end
