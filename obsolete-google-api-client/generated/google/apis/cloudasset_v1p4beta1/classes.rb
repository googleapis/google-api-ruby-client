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
    module CloudassetV1p4beta1
      
      # Specifies roles and/or permissions to analyze, to determine both the
      # identities possessing them and the resources they control. If multiple values
      # are specified, results will include identities and resources matching any of
      # them. The total number of roles and permissions should be equal or less than
      # 10.
      class AccessSelector
        include Google::Apis::Core::Hashable
      
        # Optional. The permissions to appear in result.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        # Optional. The roles to appear in result.
        # Corresponds to the JSON property `roles`
        # @return [Array<String>]
        attr_accessor :roles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
          @roles = args[:roles] if args.key?(:roles)
        end
      end
      
      # A response message for AssetService.AnalyzeIamPolicy.
      class AnalyzeIamPolicyResponse
        include Google::Apis::Core::Hashable
      
        # Represents whether all entries in the main_analysis and
        # service_account_impersonation_analysis have been fully explored to answer the
        # query in the request.
        # Corresponds to the JSON property `fullyExplored`
        # @return [Boolean]
        attr_accessor :fully_explored
        alias_method :fully_explored?, :fully_explored
      
        # An analysis message to group the query and results.
        # Corresponds to the JSON property `mainAnalysis`
        # @return [Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis]
        attr_accessor :main_analysis
      
        # A list of non-critical errors happened during the request handling to explain
        # why `fully_explored` is false, or empty if no error happened.
        # Corresponds to the JSON property `nonCriticalErrors`
        # @return [Array<Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState>]
        attr_accessor :non_critical_errors
      
        # The service account impersonation analysis if AnalyzeIamPolicyRequest.
        # analyze_service_account_impersonation is enabled.
        # Corresponds to the JSON property `serviceAccountImpersonationAnalysis`
        # @return [Array<Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysis>]
        attr_accessor :service_account_impersonation_analysis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fully_explored = args[:fully_explored] if args.key?(:fully_explored)
          @main_analysis = args[:main_analysis] if args.key?(:main_analysis)
          @non_critical_errors = args[:non_critical_errors] if args.key?(:non_critical_errors)
          @service_account_impersonation_analysis = args[:service_account_impersonation_analysis] if args.key?(:service_account_impersonation_analysis)
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
        # @return [Google::Apis::CloudassetV1p4beta1::Expr]
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
      
      # A request message for AssetService.ExportIamPolicyAnalysis.
      class ExportIamPolicyAnalysisRequest
        include Google::Apis::Core::Hashable
      
        # IAM policy analysis query message.
        # Corresponds to the JSON property `analysisQuery`
        # @return [Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery]
        attr_accessor :analysis_query
      
        # Contains request options.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::CloudassetV1p4beta1::Options]
        attr_accessor :options
      
        # Output configuration for export IAM policy analysis destination.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisOutputConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_query = args[:analysis_query] if args.key?(:analysis_query)
          @options = args[:options] if args.key?(:options)
          @output_config = args[:output_config] if args.key?(:output_config)
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
      
      # A Cloud Storage location.
      class GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The uri of the Cloud Storage object. It's the same uri that is used
        # by gsutil. For example: "gs://bucket_name/object_name". See [Quickstart: Using
        # the gsutil tool] (https://cloud.google.com/storage/docs/quickstart-gsutil) for
        # examples.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # An IAM role or permission under analysis.
      class GoogleCloudAssetV1p4beta1Access
        include Google::Apis::Core::Hashable
      
        # Represents the detailed state of an entity under analysis, such as a resource,
        # an identity or an access.
        # Corresponds to the JSON property `analysisState`
        # @return [Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState]
        attr_accessor :analysis_state
      
        # The permission.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        # The role.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_state = args[:analysis_state] if args.key?(:analysis_state)
          @permission = args[:permission] if args.key?(:permission)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # An access control list, derived from the above IAM policy binding, which
      # contains a set of resources and accesses. May include one item from each set
      # to compose an access control entry. NOTICE that there could be multiple access
      # control lists for one IAM policy binding. The access control lists are created
      # based on resource and access combinations. For example, assume we have the
      # following cases in one IAM policy binding: - Permission P1 and P2 apply to
      # resource R1 and R2; - Permission P3 applies to resource R2 and R3; This will
      # result in the following access control lists: - AccessControlList 1: [R1, R2],
      # [P1, P2] - AccessControlList 2: [R2, R3], [P3]
      class GoogleCloudAssetV1p4beta1AccessControlList
        include Google::Apis::Core::Hashable
      
        # The accesses that match one of the following conditions: - The access_selector,
        # if it is specified in request; - Otherwise, access specifiers reachable from
        # the policy binding's role.
        # Corresponds to the JSON property `accesses`
        # @return [Array<Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Access>]
        attr_accessor :accesses
      
        # Resource edges of the graph starting from the policy attached resource to any
        # descendant resources. The Edge.source_node contains the full resource name of
        # a parent resource and Edge.target_node contains the full resource name of a
        # child resource. This field is present only if the output_resource_edges option
        # is enabled in request.
        # Corresponds to the JSON property `resourceEdges`
        # @return [Array<Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge>]
        attr_accessor :resource_edges
      
        # The resources that match one of the following conditions: - The
        # resource_selector, if it is specified in request; - Otherwise, resources
        # reachable from the policy attached resource.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Resource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accesses = args[:accesses] if args.key?(:accesses)
          @resource_edges = args[:resource_edges] if args.key?(:resource_edges)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Represents the detailed state of an entity under analysis, such as a resource,
      # an identity or an access.
      class GoogleCloudAssetV1p4beta1AnalysisState
        include Google::Apis::Core::Hashable
      
        # The human-readable description of the cause of failure.
        # Corresponds to the JSON property `cause`
        # @return [String]
        attr_accessor :cause
      
        # The Google standard error code that best describes the state. For example: -
        # OK means the analysis on this entity has been successfully finished; -
        # PERMISSION_DENIED means an access denied error is encountered; -
        # DEADLINE_EXCEEDED means the analysis on this entity hasn't been started in
        # time;
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # A directional edge.
      class GoogleCloudAssetV1p4beta1Edge
        include Google::Apis::Core::Hashable
      
        # The source node of the edge.
        # Corresponds to the JSON property `sourceNode`
        # @return [String]
        attr_accessor :source_node
      
        # The target node of the edge.
        # Corresponds to the JSON property `targetNode`
        # @return [String]
        attr_accessor :target_node
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_node = args[:source_node] if args.key?(:source_node)
          @target_node = args[:target_node] if args.key?(:target_node)
        end
      end
      
      # An identity under analysis.
      class GoogleCloudAssetV1p4beta1Identity
        include Google::Apis::Core::Hashable
      
        # Represents the detailed state of an entity under analysis, such as a resource,
        # an identity or an access.
        # Corresponds to the JSON property `analysisState`
        # @return [Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState]
        attr_accessor :analysis_state
      
        # The identity name in any form of members appear in [IAM policy binding](https:/
        # /cloud.google.com/iam/reference/rest/v1/Binding), such as: - user:foo@google.
        # com - group:group1@google.com - serviceAccount:s1@prj1.iam.gserviceaccount.com
        # - projectOwner:some_project_id - domain:google.com - allUsers - etc.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_state = args[:analysis_state] if args.key?(:analysis_state)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudAssetV1p4beta1IdentityList
        include Google::Apis::Core::Hashable
      
        # Group identity edges of the graph starting from the binding's group members to
        # any node of the identities. The Edge.source_node contains a group, such as "
        # group:parent@google.com". The Edge.target_node contains a member of the group,
        # such as "group:child@google.com" or "user:foo@google.com". This field is
        # present only if the output_group_edges option is enabled in request.
        # Corresponds to the JSON property `groupEdges`
        # @return [Array<Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Edge>]
        attr_accessor :group_edges
      
        # Only the identities that match one of the following conditions will be
        # presented: - The identity_selector, if it is specified in request; - Otherwise,
        # identities reachable from the policy binding's members.
        # Corresponds to the JSON property `identities`
        # @return [Array<Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1Identity>]
        attr_accessor :identities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_edges = args[:group_edges] if args.key?(:group_edges)
          @identities = args[:identities] if args.key?(:identities)
        end
      end
      
      # A Google Cloud resource under analysis.
      class GoogleCloudAssetV1p4beta1Resource
        include Google::Apis::Core::Hashable
      
        # Represents the detailed state of an entity under analysis, such as a resource,
        # an identity or an access.
        # Corresponds to the JSON property `analysisState`
        # @return [Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AnalysisState]
        attr_accessor :analysis_state
      
        # The [full resource name](https://cloud.google.com/asset-inventory/docs/
        # resource-name-format)
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_state = args[:analysis_state] if args.key?(:analysis_state)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
        end
      end
      
      # An analysis message to group the query and results.
      class IamPolicyAnalysis
        include Google::Apis::Core::Hashable
      
        # IAM policy analysis query message.
        # Corresponds to the JSON property `analysisQuery`
        # @return [Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisQuery]
        attr_accessor :analysis_query
      
        # A list of IamPolicyAnalysisResult that matches the analysis query, or empty if
        # no result is found.
        # Corresponds to the JSON property `analysisResults`
        # @return [Array<Google::Apis::CloudassetV1p4beta1::IamPolicyAnalysisResult>]
        attr_accessor :analysis_results
      
        # Represents whether all entries in the analysis_results have been fully
        # explored to answer the query.
        # Corresponds to the JSON property `fullyExplored`
        # @return [Boolean]
        attr_accessor :fully_explored
        alias_method :fully_explored?, :fully_explored
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_query = args[:analysis_query] if args.key?(:analysis_query)
          @analysis_results = args[:analysis_results] if args.key?(:analysis_results)
          @fully_explored = args[:fully_explored] if args.key?(:fully_explored)
        end
      end
      
      # Output configuration for export IAM policy analysis destination.
      class IamPolicyAnalysisOutputConfig
        include Google::Apis::Core::Hashable
      
        # A Cloud Storage location.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::CloudassetV1p4beta1::GcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # IAM policy analysis query message.
      class IamPolicyAnalysisQuery
        include Google::Apis::Core::Hashable
      
        # Specifies roles and/or permissions to analyze, to determine both the
        # identities possessing them and the resources they control. If multiple values
        # are specified, results will include identities and resources matching any of
        # them. The total number of roles and permissions should be equal or less than
        # 10.
        # Corresponds to the JSON property `accessSelector`
        # @return [Google::Apis::CloudassetV1p4beta1::AccessSelector]
        attr_accessor :access_selector
      
        # Specifies an identity for which to determine resource access, based on roles
        # assigned either directly to them or to the groups they belong to, directly or
        # indirectly.
        # Corresponds to the JSON property `identitySelector`
        # @return [Google::Apis::CloudassetV1p4beta1::IdentitySelector]
        attr_accessor :identity_selector
      
        # Required. The relative name of the root asset. Only resources and IAM policies
        # within the parent will be analyzed. This can only be an organization number (
        # such as "organizations/123"), a folder number (such as "folders/123"), a
        # project ID (such as "projects/my-project-id"), or a project number (such as "
        # projects/12345"). To know how to get organization id, visit [here ](https://
        # cloud.google.com/resource-manager/docs/creating-managing-organization#
        # retrieving_your_organization_id). To know how to get folder or project id,
        # visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-
        # folders#viewing_or_listing_folders_and_projects).
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Specifies the resource to analyze for access policies, which may be set
        # directly on the resource, or on ancestors such as organizations, folders or
        # projects.
        # Corresponds to the JSON property `resourceSelector`
        # @return [Google::Apis::CloudassetV1p4beta1::ResourceSelector]
        attr_accessor :resource_selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_selector = args[:access_selector] if args.key?(:access_selector)
          @identity_selector = args[:identity_selector] if args.key?(:identity_selector)
          @parent = args[:parent] if args.key?(:parent)
          @resource_selector = args[:resource_selector] if args.key?(:resource_selector)
        end
      end
      
      # IAM Policy analysis result, consisting of one IAM policy binding and derived
      # access control lists.
      class IamPolicyAnalysisResult
        include Google::Apis::Core::Hashable
      
        # The access control lists derived from the iam_binding that match or
        # potentially match resource and access selectors specified in the request.
        # Corresponds to the JSON property `accessControlLists`
        # @return [Array<Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1AccessControlList>]
        attr_accessor :access_control_lists
      
        # The [full resource name](https://cloud.google.com/asset-inventory/docs/
        # resource-name-format) of the resource to which the iam_binding policy attaches.
        # Corresponds to the JSON property `attachedResourceFullName`
        # @return [String]
        attr_accessor :attached_resource_full_name
      
        # Represents whether all analyses on the iam_binding have successfully finished.
        # Corresponds to the JSON property `fullyExplored`
        # @return [Boolean]
        attr_accessor :fully_explored
        alias_method :fully_explored?, :fully_explored
      
        # Associates `members` with a `role`.
        # Corresponds to the JSON property `iamBinding`
        # @return [Google::Apis::CloudassetV1p4beta1::Binding]
        attr_accessor :iam_binding
      
        # The identity list derived from members of the iam_binding that match or
        # potentially match identity selector specified in the request.
        # Corresponds to the JSON property `identityList`
        # @return [Google::Apis::CloudassetV1p4beta1::GoogleCloudAssetV1p4beta1IdentityList]
        attr_accessor :identity_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_control_lists = args[:access_control_lists] if args.key?(:access_control_lists)
          @attached_resource_full_name = args[:attached_resource_full_name] if args.key?(:attached_resource_full_name)
          @fully_explored = args[:fully_explored] if args.key?(:fully_explored)
          @iam_binding = args[:iam_binding] if args.key?(:iam_binding)
          @identity_list = args[:identity_list] if args.key?(:identity_list)
        end
      end
      
      # Specifies an identity for which to determine resource access, based on roles
      # assigned either directly to them or to the groups they belong to, directly or
      # indirectly.
      class IdentitySelector
        include Google::Apis::Core::Hashable
      
        # Required. The identity appear in the form of members in [IAM policy binding](
        # https://cloud.google.com/iam/reference/rest/v1/Binding). The examples of
        # supported forms are: "user:mike@example.com", "group:admins@example.com", "
        # domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com".
        # Notice that wildcard characters (such as * and ?) are not supported. You must
        # give a specific identity.
        # Corresponds to the JSON property `identity`
        # @return [String]
        attr_accessor :identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity = args[:identity] if args.key?(:identity)
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
        # @return [Google::Apis::CloudassetV1p4beta1::Status]
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
      
      # Contains request options.
      class Options
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the response will include access analysis from identities
        # to resources via service account impersonation. This is a very expensive
        # operation, because many derived queries will be executed. For example, if the
        # request analyzes for which resources user A has permission P, and there's an
        # IAM policy states user A has iam.serviceAccounts.getAccessToken permission to
        # a service account SA, and there's another IAM policy states service account SA
        # has permission P to a GCP folder F, then user A potentially has access to the
        # GCP folder F. And those advanced analysis results will be included in
        # AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Another
        # example, if the request analyzes for who has permission P to a GCP folder F,
        # and there's an IAM policy states user A has iam.serviceAccounts.actAs
        # permission to a service account SA, and there's another IAM policy states
        # service account SA has permission P to the GCP folder F, then user A
        # potentially has access to the GCP folder F. And those advanced analysis
        # results will be included in AnalyzeIamPolicyResponse.
        # service_account_impersonation_analysis. Default is false.
        # Corresponds to the JSON property `analyzeServiceAccountImpersonation`
        # @return [Boolean]
        attr_accessor :analyze_service_account_impersonation
        alias_method :analyze_service_account_impersonation?, :analyze_service_account_impersonation
      
        # Optional. If true, the identities section of the result will expand any Google
        # groups appearing in an IAM policy binding. If identity_selector is specified,
        # the identity in the result will be determined by the selector, and this flag
        # will have no effect. Default is false.
        # Corresponds to the JSON property `expandGroups`
        # @return [Boolean]
        attr_accessor :expand_groups
        alias_method :expand_groups?, :expand_groups
      
        # Optional. If true, the resource section of the result will expand any resource
        # attached to an IAM policy to include resources lower in the resource hierarchy.
        # For example, if the request analyzes for which resources user A has
        # permission P, and the results include an IAM policy with P on a GCP folder,
        # the results will also include resources in that folder with permission P. If
        # resource_selector is specified, the resource section of the result will be
        # determined by the selector, and this flag will have no effect. Default is
        # false.
        # Corresponds to the JSON property `expandResources`
        # @return [Boolean]
        attr_accessor :expand_resources
        alias_method :expand_resources?, :expand_resources
      
        # Optional. If true, the access section of result will expand any roles
        # appearing in IAM policy bindings to include their permissions. If
        # access_selector is specified, the access section of the result will be
        # determined by the selector, and this flag will have no effect. Default is
        # false.
        # Corresponds to the JSON property `expandRoles`
        # @return [Boolean]
        attr_accessor :expand_roles
        alias_method :expand_roles?, :expand_roles
      
        # Optional. If true, the result will output group identity edges, starting from
        # the binding's group members, to any expanded identities. Default is false.
        # Corresponds to the JSON property `outputGroupEdges`
        # @return [Boolean]
        attr_accessor :output_group_edges
        alias_method :output_group_edges?, :output_group_edges
      
        # Optional. If true, the result will output resource edges, starting from the
        # policy attached resource, to any expanded resources. Default is false.
        # Corresponds to the JSON property `outputResourceEdges`
        # @return [Boolean]
        attr_accessor :output_resource_edges
        alias_method :output_resource_edges?, :output_resource_edges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyze_service_account_impersonation = args[:analyze_service_account_impersonation] if args.key?(:analyze_service_account_impersonation)
          @expand_groups = args[:expand_groups] if args.key?(:expand_groups)
          @expand_resources = args[:expand_resources] if args.key?(:expand_resources)
          @expand_roles = args[:expand_roles] if args.key?(:expand_roles)
          @output_group_edges = args[:output_group_edges] if args.key?(:output_group_edges)
          @output_resource_edges = args[:output_resource_edges] if args.key?(:output_resource_edges)
        end
      end
      
      # Specifies the resource to analyze for access policies, which may be set
      # directly on the resource, or on ancestors such as organizations, folders or
      # projects.
      class ResourceSelector
        include Google::Apis::Core::Hashable
      
        # Required. The [full resource name](https://cloud.google.com/asset-inventory/
        # docs/resource-name-format) of a resource of [supported resource types](https://
        # cloud.google.com/asset-inventory/docs/supported-asset-types#
        # analyzable_asset_types).
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
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
    end
  end
end
