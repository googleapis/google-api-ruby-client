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
    module SecuritypostureV1
      
      # Details of a Cloud Asset Inventory asset that caused a violation.
      class AssetDetails
        include Google::Apis::Core::Hashable
      
        # Information about the Cloud Asset Inventory asset that violated a policy. The
        # format of this information can change at any time without prior notice. Your
        # application must not depend on this information in any way.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # The type of Cloud Asset Inventory asset. For a list of asset types, see [
        # Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-
        # asset-types).
        # Corresponds to the JSON property `assetType`
        # @return [String]
        attr_accessor :asset_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @asset_type = args[:asset_type] if args.key?(:asset_type)
        end
      end
      
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
      
      # Information about a compliance standard that the policy helps enforce.
      class ComplianceStandard
        include Google::Apis::Core::Hashable
      
        # Optional. The control in the compliance standard that the policy helps enforce.
        # For example, `AC-3`.
        # Corresponds to the JSON property `control`
        # @return [String]
        attr_accessor :control
      
        # Optional. The compliance standard that the policy helps enforce. For example, `
        # NIST SP 800-53`.
        # Corresponds to the JSON property `standard`
        # @return [String]
        attr_accessor :standard
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control = args[:control] if args.key?(:control)
          @standard = args[:standard] if args.key?(:standard)
        end
      end
      
      # Metadata for a constraint in a Policy.
      class Constraint
        include Google::Apis::Core::Hashable
      
        # A predefined organization policy constraint.
        # Corresponds to the JSON property `orgPolicyConstraint`
        # @return [Google::Apis::SecuritypostureV1::OrgPolicyConstraint]
        attr_accessor :org_policy_constraint
      
        # A custom organization policy constraint.
        # Corresponds to the JSON property `orgPolicyConstraintCustom`
        # @return [Google::Apis::SecuritypostureV1::OrgPolicyConstraintCustom]
        attr_accessor :org_policy_constraint_custom
      
        # A custom module for Security Health Analytics.
        # Corresponds to the JSON property `securityHealthAnalyticsCustomModule`
        # @return [Google::Apis::SecuritypostureV1::SecurityHealthAnalyticsCustomModule]
        attr_accessor :security_health_analytics_custom_module
      
        # A built-in detector for Security Health Analytics.
        # Corresponds to the JSON property `securityHealthAnalyticsModule`
        # @return [Google::Apis::SecuritypostureV1::SecurityHealthAnalyticsModule]
        attr_accessor :security_health_analytics_module
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @org_policy_constraint = args[:org_policy_constraint] if args.key?(:org_policy_constraint)
          @org_policy_constraint_custom = args[:org_policy_constraint_custom] if args.key?(:org_policy_constraint_custom)
          @security_health_analytics_custom_module = args[:security_health_analytics_custom_module] if args.key?(:security_health_analytics_custom_module)
          @security_health_analytics_module = args[:security_health_analytics_module] if args.key?(:security_health_analytics_module)
        end
      end
      
      # Request message for CreateIaCValidationReport.
      class CreateIaCValidationReportRequest
        include Google::Apis::Core::Hashable
      
        # Details of an infrastructure-as-code (IaC) configuration.
        # Corresponds to the JSON property `iac`
        # @return [Google::Apis::SecuritypostureV1::IaC]
        attr_accessor :iac
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iac = args[:iac] if args.key?(:iac)
        end
      end
      
      # A custom module configuration for Security Health Analytics. Use `CustomConfig`
      # to create custom detectors that generate custom findings for resources that
      # you specify.
      class CustomConfig
        include Google::Apis::Core::Hashable
      
        # Definitions of custom source properties that can appear in findings.
        # Corresponds to the JSON property `customOutput`
        # @return [Google::Apis::SecuritypostureV1::CustomOutputSpec]
        attr_accessor :custom_output
      
        # Optional. A description of the vulnerability or misconfiguration that the
        # custom module detects. The description appears in each finding. Provide enough
        # information to help an investigator understand the finding. The value must be
        # enclosed in quotation marks.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
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
        # Corresponds to the JSON property `predicate`
        # @return [Google::Apis::SecuritypostureV1::Expr]
        attr_accessor :predicate
      
        # Required. An explanation of the steps that security teams can take to resolve
        # the detected issue. The explanation appears in each finding.
        # Corresponds to the JSON property `recommendation`
        # @return [String]
        attr_accessor :recommendation
      
        # A selector for the resource types to run the detector on.
        # Corresponds to the JSON property `resourceSelector`
        # @return [Google::Apis::SecuritypostureV1::ResourceSelector]
        attr_accessor :resource_selector
      
        # Required. The severity of findings generated by the custom module.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_output = args[:custom_output] if args.key?(:custom_output)
          @description = args[:description] if args.key?(:description)
          @predicate = args[:predicate] if args.key?(:predicate)
          @recommendation = args[:recommendation] if args.key?(:recommendation)
          @resource_selector = args[:resource_selector] if args.key?(:resource_selector)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Definitions of custom source properties that can appear in findings.
      class CustomOutputSpec
        include Google::Apis::Core::Hashable
      
        # Optional. The custom source properties that can appear in findings.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::SecuritypostureV1::Property>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
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
      
      # Request message for ExtractPosture.
      class ExtractPostureRequest
        include Google::Apis::Core::Hashable
      
        # Required. An identifier for the posture.
        # Corresponds to the JSON property `postureId`
        # @return [String]
        attr_accessor :posture_id
      
        # Required. The organization, folder, or project from which policies are
        # extracted. Must be within the organization defined in parent. Use one of the
        # following formats: * `organization/`organization_number`` * `folder/`
        # folder_number`` * `project/`project_number``
        # Corresponds to the JSON property `workload`
        # @return [String]
        attr_accessor :workload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @posture_id = args[:posture_id] if args.key?(:posture_id)
          @workload = args[:workload] if args.key?(:workload)
        end
      end
      
      # A custom, user-defined constraint. You can apply the constraint only to the
      # resource types specified in the constraint, and only within the organization
      # where the constraint is defined. _When you create a custom constraint, it is
      # not enforced automatically._ You must use an organization policy to [enforce
      # the constraint](https://cloud.google.com/resource-manager/help/organization-
      # policy/constraints/enforce).
      class GoogleCloudSecuritypostureV1CustomConstraint
        include Google::Apis::Core::Hashable
      
        # Whether to allow or deny the action.
        # Corresponds to the JSON property `actionType`
        # @return [String]
        attr_accessor :action_type
      
        # A Common Expression Language (CEL) condition expression that must evaluate to `
        # true` for the constraint to be enforced. The maximum length is 1000 characters.
        # For example: + `resource.instanceName.matches('(production|test)_(.+_)?[\d]+')
        # `: Evaluates to `true` if the resource's `instanceName` attribute contains the
        # following: + The prefix `production` or `test` + An underscore (`_`) +
        # Optional: One or more characters, followed by an underscore (`_`) + One or
        # more digits + `resource.management.auto_upgrade == true`: Evaluates to `true`
        # if the resource's `management.auto_upgrade` attribute is `true`.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # A description of the constraint. The maximum length is 2000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A display name for the constraint. The maximum length is 200 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The types of operations that the constraint applies to.
        # Corresponds to the JSON property `methodTypes`
        # @return [Array<String>]
        attr_accessor :method_types
      
        # Immutable. The name of the constraint, in the format `organizations/`
        # organization_id`/customConstraints/custom.`custom_constraint_id``. For example,
        # `organizations/123456789012/customConstraints/custom.createOnlyE2TypeVms`.
        # Must contain 1 to 62 characters, excluding the prefix `organizations/`
        # organization_id`/customConstraints/custom.`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The resource type that the constraint applies to, in the format ``
        # canonical_service_name`/`resource_type_name``. For example, `compute.
        # googleapis.com/Instance`.
        # Corresponds to the JSON property `resourceTypes`
        # @return [Array<String>]
        attr_accessor :resource_types
      
        # Output only. The last time at which the constraint was updated or created.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_type = args[:action_type] if args.key?(:action_type)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @method_types = args[:method_types] if args.key?(:method_types)
          @name = args[:name] if args.key?(:name)
          @resource_types = args[:resource_types] if args.key?(:resource_types)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A rule that defines the allowed and denied values for an organization policy
      # constraint.
      class GoogleCloudSecuritypostureV1PolicyRule
        include Google::Apis::Core::Hashable
      
        # Whether to allow any value for a list constraint. Valid only for list
        # constraints.
        # Corresponds to the JSON property `allowAll`
        # @return [Boolean]
        attr_accessor :allow_all
        alias_method :allow_all?, :allow_all
      
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
        # @return [Google::Apis::SecuritypostureV1::Expr]
        attr_accessor :condition
      
        # Whether to deny all values for a list constraint. Valid only for list
        # constraints.
        # Corresponds to the JSON property `denyAll`
        # @return [Boolean]
        attr_accessor :deny_all
        alias_method :deny_all?, :deny_all
      
        # Whether to enforce the constraint. Valid only for boolean constraints.
        # Corresponds to the JSON property `enforce`
        # @return [Boolean]
        attr_accessor :enforce
        alias_method :enforce?, :enforce
      
        # Optional. Required for managed constraints if parameters are defined. Passes
        # parameter values when policy enforcement is enabled. Ensure that parameter
        # value types match those defined in the constraint definition. For example: ```
        # ` "allowedLocations": ["us-east1", "us-west1"], "allowAll": true ` ```
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # Set multiple resource types for one policy, for example: ``` resourceTypes:
        # included: - compute.googleapis.com/Instance - compute.googleapis.com/Disk ```
        # Constraint definition contains an empty resource type in order to support
        # multiple resource types in the policy. Only supports managed constraints.
        # Method type is `GOVERN_TAGS`.
        # Corresponds to the JSON property `resourceTypes`
        # @return [Google::Apis::SecuritypostureV1::ResourceTypes]
        attr_accessor :resource_types
      
        # The allowed and denied values for a list constraint. For all constraints,
        # these fields can contain literal values. Optionally, you can add the `is:`
        # prefix to these values. If the value contains a colon (`:`), then the `is:`
        # prefix is required. Some constraints allow you to specify a portion of the
        # resource hierarchy, known as a [_hierarchy subtree_](https://cloud.google.com/
        # resource-manager/help/organization-policy/hierarchy-subtree), that the
        # constraint applies to. To specify a hierarchy subtree, use the `under:` prefix,
        # followed by a value with one of these formats: - `projects/`project_id`` (for
        # example, `projects/tokyo-rain-123`) - `folders/`folder_id`` (for example, `
        # folders/1234567890123`) - `organizations/`organization_id`` (for example, `
        # organizations/123456789012`) A constraint's `supports_under` field indicates
        # whether you can specify a hierarchy subtree. To learn which predefined
        # constraints let you specify a hierarchy subtree, see the [constraints
        # reference](https://cloud.google.com/resource-manager/help/organization-policy/
        # constraints/reference).
        # Corresponds to the JSON property `values`
        # @return [Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1PolicyRuleStringValues]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_all = args[:allow_all] if args.key?(:allow_all)
          @condition = args[:condition] if args.key?(:condition)
          @deny_all = args[:deny_all] if args.key?(:deny_all)
          @enforce = args[:enforce] if args.key?(:enforce)
          @parameters = args[:parameters] if args.key?(:parameters)
          @resource_types = args[:resource_types] if args.key?(:resource_types)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The allowed and denied values for a list constraint. For all constraints,
      # these fields can contain literal values. Optionally, you can add the `is:`
      # prefix to these values. If the value contains a colon (`:`), then the `is:`
      # prefix is required. Some constraints allow you to specify a portion of the
      # resource hierarchy, known as a [_hierarchy subtree_](https://cloud.google.com/
      # resource-manager/help/organization-policy/hierarchy-subtree), that the
      # constraint applies to. To specify a hierarchy subtree, use the `under:` prefix,
      # followed by a value with one of these formats: - `projects/`project_id`` (for
      # example, `projects/tokyo-rain-123`) - `folders/`folder_id`` (for example, `
      # folders/1234567890123`) - `organizations/`organization_id`` (for example, `
      # organizations/123456789012`) A constraint's `supports_under` field indicates
      # whether you can specify a hierarchy subtree. To learn which predefined
      # constraints let you specify a hierarchy subtree, see the [constraints
      # reference](https://cloud.google.com/resource-manager/help/organization-policy/
      # constraints/reference).
      class GoogleCloudSecuritypostureV1PolicyRuleStringValues
        include Google::Apis::Core::Hashable
      
        # The allowed values for the constraint.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<String>]
        attr_accessor :allowed_values
      
        # The denied values for the constraint.
        # Corresponds to the JSON property `deniedValues`
        # @return [Array<String>]
        attr_accessor :denied_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
          @denied_values = args[:denied_values] if args.key?(:denied_values)
        end
      end
      
      # Details of an infrastructure-as-code (IaC) configuration.
      class IaC
        include Google::Apis::Core::Hashable
      
        # Optional. A Terraform plan file, formatted as a stringified JSON object. To
        # learn how to generate a Terraform plan file in JSON format, see [JSON output
        # format](https://developer.hashicorp.com/terraform/internals/json-format) in
        # the Terraform documentation.
        # Corresponds to the JSON property `tfPlan`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :tf_plan
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tf_plan = args[:tf_plan] if args.key?(:tf_plan)
        end
      end
      
      # Details of an infrastructure-as-code (IaC) validation report.
      class IaCValidationReport
        include Google::Apis::Core::Hashable
      
        # Additional information about the report.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        # A list of every Violation found in the IaC configuration.
        # Corresponds to the JSON property `violations`
        # @return [Array<Google::Apis::SecuritypostureV1::Violation>]
        attr_accessor :violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @note = args[:note] if args.key?(:note)
          @violations = args[:violations] if args.key?(:violations)
        end
      end
      
      # Represents the criteria for considering an IaC validation as a failure.
      class IacValidationFailureCriteria
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The etag for optimistic concurrency.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Identifier. The resource name of the IacValidationFailureCriteria. Format:
        # organizations/`organization`/locations/`location`/iacValidationFailureCriteria
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. A list of severity thresholds. An IaC validation fails if any
        # threshold is exceeded.
        # Corresponds to the JSON property `severityCountThresholds`
        # @return [Array<Google::Apis::SecuritypostureV1::SeverityCountThreshold>]
        attr_accessor :severity_count_thresholds
      
        # Output only. The time at which the resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @severity_count_thresholds = args[:severity_count_thresholds] if args.key?(:severity_count_thresholds)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::SecuritypostureV1::Location>]
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::SecuritypostureV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListPostureDeployments.
      class ListPostureDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token. To retrieve the next page of results, call the method
        # again with this token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of PostureDeployment resources.
        # Corresponds to the JSON property `postureDeployments`
        # @return [Array<Google::Apis::SecuritypostureV1::PostureDeployment>]
        attr_accessor :posture_deployments
      
        # Locations that were temporarily unavailable and could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @posture_deployments = args[:posture_deployments] if args.key?(:posture_deployments)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListPostureRevisions.
      class ListPostureRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token. To retrieve the next page of results, call the method
        # again with this token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of revisions for the Posture.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::SecuritypostureV1::Posture>]
        attr_accessor :revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @revisions = args[:revisions] if args.key?(:revisions)
        end
      end
      
      # Response message for ListPostureTemplates.
      class ListPostureTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token. To retrieve the next page of results, call the method
        # again with this token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of PostureTemplate resources.
        # Corresponds to the JSON property `postureTemplates`
        # @return [Array<Google::Apis::SecuritypostureV1::PostureTemplate>]
        attr_accessor :posture_templates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @posture_templates = args[:posture_templates] if args.key?(:posture_templates)
        end
      end
      
      # Response message for ListPostures.
      class ListPosturesResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token. To retrieve the next page of results, call the method
        # again with this token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Posture resources.
        # Corresponds to the JSON property `postures`
        # @return [Array<Google::Apis::SecuritypostureV1::Posture>]
        attr_accessor :postures
      
        # Locations that were temporarily unavailable and could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @postures = args[:postures] if args.key?(:postures)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListReports.
      class ListReportsResponse
        include Google::Apis::Core::Hashable
      
        # A pagination token. To retrieve the next page of results, call the method
        # again with this token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Report resources.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::SecuritypostureV1::Report>]
        attr_accessor :reports
      
        # Locations that were temporarily unavailable and could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reports = args[:reports] if args.key?(:reports)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A resource that represents a Google Cloud location.
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
        # @return [Google::Apis::SecuritypostureV1::Status]
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
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
      
      # Metadata for an Operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time at which the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. An error message. Returned when a PostureDeployment enters a
        # failure state like UPDATE_FAILED.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Output only. Whether a request to cancel the operation has been received. For
        # operations that have been cancelled successfully, the Operation.error field
        # contains the error code CANCELLED.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. The status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. The server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. The name of the action executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error_message = args[:error_message] if args.key?(:error_message)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # A predefined organization policy constraint.
      class OrgPolicyConstraint
        include Google::Apis::Core::Hashable
      
        # Required. A unique identifier for the constraint.
        # Corresponds to the JSON property `cannedConstraintId`
        # @return [String]
        attr_accessor :canned_constraint_id
      
        # Required. The rules enforced by the constraint.
        # Corresponds to the JSON property `policyRules`
        # @return [Array<Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1PolicyRule>]
        attr_accessor :policy_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canned_constraint_id = args[:canned_constraint_id] if args.key?(:canned_constraint_id)
          @policy_rules = args[:policy_rules] if args.key?(:policy_rules)
        end
      end
      
      # A custom organization policy constraint.
      class OrgPolicyConstraintCustom
        include Google::Apis::Core::Hashable
      
        # A custom, user-defined constraint. You can apply the constraint only to the
        # resource types specified in the constraint, and only within the organization
        # where the constraint is defined. _When you create a custom constraint, it is
        # not enforced automatically._ You must use an organization policy to [enforce
        # the constraint](https://cloud.google.com/resource-manager/help/organization-
        # policy/constraints/enforce).
        # Corresponds to the JSON property `customConstraint`
        # @return [Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1CustomConstraint]
        attr_accessor :custom_constraint
      
        # Required. The rules enforced by the constraint.
        # Corresponds to the JSON property `policyRules`
        # @return [Array<Google::Apis::SecuritypostureV1::GoogleCloudSecuritypostureV1PolicyRule>]
        attr_accessor :policy_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_constraint = args[:custom_constraint] if args.key?(:custom_constraint)
          @policy_rules = args[:policy_rules] if args.key?(:policy_rules)
        end
      end
      
      # The details of a policy, including the constraints that it includes.
      class Policy
        include Google::Apis::Core::Hashable
      
        # Optional. The compliance standards that the policy helps enforce.
        # Corresponds to the JSON property `complianceStandards`
        # @return [Array<Google::Apis::SecuritypostureV1::ComplianceStandard>]
        attr_accessor :compliance_standards
      
        # Metadata for a constraint in a Policy.
        # Corresponds to the JSON property `constraint`
        # @return [Google::Apis::SecuritypostureV1::Constraint]
        attr_accessor :constraint
      
        # Optional. A description of the policy.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. A user-specified identifier for the policy. In a PolicySet, each
        # policy must have a unique identifier.
        # Corresponds to the JSON property `policyId`
        # @return [String]
        attr_accessor :policy_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_standards = args[:compliance_standards] if args.key?(:compliance_standards)
          @constraint = args[:constraint] if args.key?(:constraint)
          @description = args[:description] if args.key?(:description)
          @policy_id = args[:policy_id] if args.key?(:policy_id)
        end
      end
      
      # Details of a policy that was violated.
      class PolicyDetails
        include Google::Apis::Core::Hashable
      
        # The compliance standards that the policy maps to. For example, `CIS-2.0 1.15`.
        # Corresponds to the JSON property `complianceStandards`
        # @return [Array<String>]
        attr_accessor :compliance_standards
      
        # Information about the constraint that was violated. The format of this
        # information can change at any time without prior notice. Your application must
        # not depend on this information in any way.
        # Corresponds to the JSON property `constraint`
        # @return [String]
        attr_accessor :constraint
      
        # The type of constraint that was violated.
        # Corresponds to the JSON property `constraintType`
        # @return [String]
        attr_accessor :constraint_type
      
        # A description of the policy.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_standards = args[:compliance_standards] if args.key?(:compliance_standards)
          @constraint = args[:constraint] if args.key?(:constraint)
          @constraint_type = args[:constraint_type] if args.key?(:constraint_type)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # A group of one or more Policy resources.
      class PolicySet
        include Google::Apis::Core::Hashable
      
        # Optional. A description of the policy set.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The Policy resources in the policy set. Each policy must have a
        # policy_id that's unique within the policy set.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::SecuritypostureV1::Policy>]
        attr_accessor :policies
      
        # Required. An identifier for the policy set.
        # Corresponds to the JSON property `policySetId`
        # @return [String]
        attr_accessor :policy_set_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @policies = args[:policies] if args.key?(:policies)
          @policy_set_id = args[:policy_set_id] if args.key?(:policy_set_id)
        end
      end
      
      # The details of a posture.
      class Posture
        include Google::Apis::Core::Hashable
      
        # Optional. The user-specified annotations for the posture. For details about
        # the values you can use in an annotation, see [AIP-148: Standard fields](https:/
        # /google.aip.dev/148#annotations).
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The categories that the posture belongs to, as determined by the
        # Security Posture API.
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # Output only. The time at which the posture was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of the posture.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. An opaque identifier for the current version of the posture at the
        # specified `revision_id`. To prevent concurrent updates from overwriting each
        # other, always provide the `etag` when you update a posture. You can also
        # provide the `etag` when you delete a posture, to help ensure that you're
        # deleting the intended version of the posture.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Required. Identifier. The name of the posture, in the format `organizations/`
        # organization`/locations/global/postures/`posture_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The PolicySet resources that the posture includes.
        # Corresponds to the JSON property `policySets`
        # @return [Array<Google::Apis::SecuritypostureV1::PolicySet>]
        attr_accessor :policy_sets
      
        # Output only. Whether the posture is in the process of being updated.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. Immutable. An opaque eight-character string that identifies the
        # revision of the posture. A posture can have multiple revisions; when you
        # deploy a posture, you deploy a specific revision of the posture.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Required. The state of the posture at the specified `revision_id`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which the posture was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @categories = args[:categories] if args.key?(:categories)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @policy_sets = args[:policy_sets] if args.key?(:policy_sets)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Details for a Posture deployment on an organization, folder, or project. You
      # can deploy at most one posture to each organization, folder, or project. The
      # parent resource for a posture deployment is always the organization, even if
      # the deployment applies to a folder or project.
      class PostureDeployment
        include Google::Apis::Core::Hashable
      
        # Optional. The user-specified annotations for the posture deployment. For
        # details about the values you can use in an annotation, see [AIP-148: Standard
        # fields](https://google.aip.dev/148#annotations).
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The categories that the posture deployment belongs to, as
        # determined by the Security Posture API.
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # Output only. The time at which the posture deployment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of the posture deployment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The posture ID that was specified for the deployment. Present
        # only if the posture deployment is in a failed state.
        # Corresponds to the JSON property `desiredPostureId`
        # @return [String]
        attr_accessor :desired_posture_id
      
        # Output only. The revision ID of the posture that was specified for the
        # deployment. Present only if the deployment is in a failed state.
        # Corresponds to the JSON property `desiredPostureRevisionId`
        # @return [String]
        attr_accessor :desired_posture_revision_id
      
        # Optional. An opaque identifier for the current version of the posture
        # deployment. To prevent concurrent updates from overwriting each other, always
        # provide the `etag` when you update a posture deployment. You can also provide
        # the `etag` when you delete a posture deployment, to help ensure that you're
        # deleting the intended posture deployment.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. A description of why the posture deployment failed. Present only
        # if the deployment is in a failed state.
        # Corresponds to the JSON property `failureMessage`
        # @return [String]
        attr_accessor :failure_message
      
        # Required. Identifier. The name of the posture deployment, in the format `
        # organizations/`organization`/locations/global/postureDeployments/`
        # deployment_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The posture used in the deployment, in the format `organizations/`
        # organization`/locations/global/postures/`posture_id``.
        # Corresponds to the JSON property `postureId`
        # @return [String]
        attr_accessor :posture_id
      
        # Required. The revision ID of the posture used in the deployment.
        # Corresponds to the JSON property `postureRevisionId`
        # @return [String]
        attr_accessor :posture_revision_id
      
        # Output only. Whether the posture deployment is in the process of being updated.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The state of the posture deployment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The organization, folder, or project where the posture is deployed.
        # Uses one of the following formats: * `organizations/`organization_number`` * `
        # folders/`folder_number`` * `projects/`project_number``
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        # Output only. The time at which the posture deployment was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @categories = args[:categories] if args.key?(:categories)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @desired_posture_id = args[:desired_posture_id] if args.key?(:desired_posture_id)
          @desired_posture_revision_id = args[:desired_posture_revision_id] if args.key?(:desired_posture_revision_id)
          @etag = args[:etag] if args.key?(:etag)
          @failure_message = args[:failure_message] if args.key?(:failure_message)
          @name = args[:name] if args.key?(:name)
          @posture_id = args[:posture_id] if args.key?(:posture_id)
          @posture_revision_id = args[:posture_revision_id] if args.key?(:posture_revision_id)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Details of a posture deployment.
      class PostureDetails
        include Google::Apis::Core::Hashable
      
        # The identifier for the PolicySet that the relevant policy belongs to.
        # Corresponds to the JSON property `policySet`
        # @return [String]
        attr_accessor :policy_set
      
        # The posture used in the deployment, in the format `organizations/`organization`
        # /locations/global/postures/`posture_id``.
        # Corresponds to the JSON property `posture`
        # @return [String]
        attr_accessor :posture
      
        # The name of the posture deployment, in the format `organizations/`organization`
        # /locations/global/postureDeployments/`deployment_id``.
        # Corresponds to the JSON property `postureDeployment`
        # @return [String]
        attr_accessor :posture_deployment
      
        # The organization, folder, or project where the posture is deployed. Uses one
        # of the following formats: * `organizations/`organization_number`` * `folders/`
        # folder_number`` * `projects/`project_number``
        # Corresponds to the JSON property `postureDeploymentTargetResource`
        # @return [String]
        attr_accessor :posture_deployment_target_resource
      
        # The revision ID of the posture used in the deployment.
        # Corresponds to the JSON property `postureRevisionId`
        # @return [String]
        attr_accessor :posture_revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_set = args[:policy_set] if args.key?(:policy_set)
          @posture = args[:posture] if args.key?(:posture)
          @posture_deployment = args[:posture_deployment] if args.key?(:posture_deployment)
          @posture_deployment_target_resource = args[:posture_deployment_target_resource] if args.key?(:posture_deployment_target_resource)
          @posture_revision_id = args[:posture_revision_id] if args.key?(:posture_revision_id)
        end
      end
      
      # The details of a posture template.
      class PostureTemplate
        include Google::Apis::Core::Hashable
      
        # Output only. The categories that the posture template belongs to, as
        # determined by the Security Posture API.
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # Output only. A description of the posture template.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Identifier. The name of the posture template, in the format `
        # organizations/`organization`/locations/global/postureTemplates/`
        # posture_template``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The PolicySet resources that the posture template includes.
        # Corresponds to the JSON property `policySets`
        # @return [Array<Google::Apis::SecuritypostureV1::PolicySet>]
        attr_accessor :policy_sets
      
        # Output only. A string that identifies the revision of the posture template.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Output only. The state of the posture template at the specified `revision_id`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @policy_sets = args[:policy_sets] if args.key?(:policy_sets)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A name-value pair used as a custom source property.
      class Property
        include Google::Apis::Core::Hashable
      
        # Required. The name of the custom source property.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
        # Corresponds to the JSON property `valueExpression`
        # @return [Google::Apis::SecuritypostureV1::Expr]
        attr_accessor :value_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value_expression = args[:value_expression] if args.key?(:value_expression)
        end
      end
      
      # Details of a report.
      class Report
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the report was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Details of an infrastructure-as-code (IaC) validation report.
        # Corresponds to the JSON property `iacValidationReport`
        # @return [Google::Apis::SecuritypostureV1::IaCValidationReport]
        attr_accessor :iac_validation_report
      
        # Required. The name of the report, in the format `organizations/`organization`/
        # locations/global/reports/`report_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time at which the report was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @iac_validation_report = args[:iac_validation_report] if args.key?(:iac_validation_report)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A selector for the resource types to run the detector on.
      class ResourceSelector
        include Google::Apis::Core::Hashable
      
        # Required. The resource types to run the detector on. Each custom module can
        # specify up to 5 resource types.
        # Corresponds to the JSON property `resourceTypes`
        # @return [Array<String>]
        attr_accessor :resource_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_types = args[:resource_types] if args.key?(:resource_types)
        end
      end
      
      # Set multiple resource types for one policy, for example: ``` resourceTypes:
      # included: - compute.googleapis.com/Instance - compute.googleapis.com/Disk ```
      # Constraint definition contains an empty resource type in order to support
      # multiple resource types in the policy. Only supports managed constraints.
      # Method type is `GOVERN_TAGS`.
      class ResourceTypes
        include Google::Apis::Core::Hashable
      
        # Optional. The resource types we currently support.
        # Corresponds to the JSON property `included`
        # @return [Array<String>]
        attr_accessor :included
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included = args[:included] if args.key?(:included)
        end
      end
      
      # A custom module for Security Health Analytics.
      class SecurityHealthAnalyticsCustomModule
        include Google::Apis::Core::Hashable
      
        # A custom module configuration for Security Health Analytics. Use `CustomConfig`
        # to create custom detectors that generate custom findings for resources that
        # you specify.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::SecuritypostureV1::CustomConfig]
        attr_accessor :config
      
        # Optional. The display name of the custom module. This value is used as the
        # finding category for all the asset violation findings that the custom module
        # returns. The display name must contain between 1 and 128 alphanumeric
        # characters or underscores, and it must start with a lowercase letter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Immutable. The unique identifier for the custom module. Contains
        # 1 to 20 digits.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether the custom module is enabled at a specified level of the resource
        # hierarchy.
        # Corresponds to the JSON property `moduleEnablementState`
        # @return [String]
        attr_accessor :module_enablement_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
          @module_enablement_state = args[:module_enablement_state] if args.key?(:module_enablement_state)
        end
      end
      
      # A built-in detector for Security Health Analytics.
      class SecurityHealthAnalyticsModule
        include Google::Apis::Core::Hashable
      
        # Whether the detector is enabled at a specified level of the resource hierarchy.
        # Corresponds to the JSON property `moduleEnablementState`
        # @return [String]
        attr_accessor :module_enablement_state
      
        # Required. The name of the detector. For example, `BIGQUERY_TABLE_CMEK_DISABLED`
        # . This field is also used as the finding category for all the asset violation
        # findings that the detector returns.
        # Corresponds to the JSON property `moduleName`
        # @return [String]
        attr_accessor :module_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @module_enablement_state = args[:module_enablement_state] if args.key?(:module_enablement_state)
          @module_name = args[:module_name] if args.key?(:module_name)
        end
      end
      
      # Represents a threshold for a specific severity.
      class SeverityCountThreshold
        include Google::Apis::Core::Hashable
      
        # Optional. The severity level, reusing the existing Violation.Severity.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Optional. If violation count meets or exceeds this threshold, validation fails.
        # Corresponds to the JSON property `thresholdCount`
        # @return [Fixnum]
        attr_accessor :threshold_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @severity = args[:severity] if args.key?(:severity)
          @threshold_count = args[:threshold_count] if args.key?(:threshold_count)
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
      
      # Details of a violation.
      class Violation
        include Google::Apis::Core::Hashable
      
        # The full resource name of the asset that caused the violation. For details
        # about the format of the full resource name for each asset type, see [Resource
        # name format](https://cloud.google.com/asset-inventory/docs/resource-name-
        # format).
        # Corresponds to the JSON property `assetId`
        # @return [String]
        attr_accessor :asset_id
      
        # A description of the steps that you can take to fix the violation.
        # Corresponds to the JSON property `nextSteps`
        # @return [String]
        attr_accessor :next_steps
      
        # The policy that was violated.
        # Corresponds to the JSON property `policyId`
        # @return [String]
        attr_accessor :policy_id
      
        # The severity of the violation.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Details of a Cloud Asset Inventory asset that caused a violation.
        # Corresponds to the JSON property `violatedAsset`
        # @return [Google::Apis::SecuritypostureV1::AssetDetails]
        attr_accessor :violated_asset
      
        # Details of a policy that was violated.
        # Corresponds to the JSON property `violatedPolicy`
        # @return [Google::Apis::SecuritypostureV1::PolicyDetails]
        attr_accessor :violated_policy
      
        # Details of a posture deployment.
        # Corresponds to the JSON property `violatedPosture`
        # @return [Google::Apis::SecuritypostureV1::PostureDetails]
        attr_accessor :violated_posture
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_id = args[:asset_id] if args.key?(:asset_id)
          @next_steps = args[:next_steps] if args.key?(:next_steps)
          @policy_id = args[:policy_id] if args.key?(:policy_id)
          @severity = args[:severity] if args.key?(:severity)
          @violated_asset = args[:violated_asset] if args.key?(:violated_asset)
          @violated_policy = args[:violated_policy] if args.key?(:violated_policy)
          @violated_posture = args[:violated_posture] if args.key?(:violated_posture)
        end
      end
    end
  end
end
