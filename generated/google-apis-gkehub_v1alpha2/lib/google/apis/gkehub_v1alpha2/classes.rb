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
    module GkehubV1alpha2
      
      # ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
      class ApplianceCluster
        include Google::Apis::Core::Hashable
      
        # Immutable. Self-link of the Google Cloud resource for the Appliance Cluster.
        # For example: //transferappliance.googleapis.com/projects/my-project/locations/
        # us-west1-a/appliances/my-appliance
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
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
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::GkehubV1alpha2::AuditLogConfig>]
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
      
      # Authority encodes how Google will recognize identities from this Membership.
      # See the workload identity documentation for more details: https://cloud.google.
      # com/kubernetes-engine/docs/how-to/workload-identity
      class Authority
        include Google::Apis::Core::Hashable
      
        # Output only. An identity provider that reflects the `issuer` in the workload
        # identity pool.
        # Corresponds to the JSON property `identityProvider`
        # @return [String]
        attr_accessor :identity_provider
      
        # Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://
        # ` and be a valid URL with length <2000 characters. If set, then Google will
        # allow valid OIDC tokens from this issuer to authenticate within the
        # workload_identity_pool. OIDC discovery will be performed on this URI to
        # validate tokens from the issuer, unless `oidc_jwks` is set. Clearing `issuer`
        # disables Workload Identity. `issuer` cannot be directly modified; it must be
        # cleared (and Workload Identity disabled) before using a new issuer (and re-
        # enabling Workload Identity).
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517).
        # When this field is set, OIDC discovery will NOT be performed on `issuer`, and
        # instead OIDC tokens will be validated using this field.
        # Corresponds to the JSON property `oidcJwks`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :oidc_jwks
      
        # Output only. The name of the workload identity pool in which `issuer` will be
        # recognized. There is a single Workload Identity Pool per Hub that is shared
        # between all Memberships that belong to that Hub. For a Hub hosted in `
        # PROJECT_ID`, the workload pool format is ``PROJECT_ID`.hub.id.goog`, although
        # this is subject to change in newer versions of this API.
        # Corresponds to the JSON property `workloadIdentityPool`
        # @return [String]
        attr_accessor :workload_identity_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity_provider = args[:identity_provider] if args.key?(:identity_provider)
          @issuer = args[:issuer] if args.key?(:issuer)
          @oidc_jwks = args[:oidc_jwks] if args.key?(:oidc_jwks)
          @workload_identity_pool = args[:workload_identity_pool] if args.key?(:workload_identity_pool)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
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
        # @return [Google::Apis::GkehubV1alpha2::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
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
      
      # ConnectAgentResource represents a Kubernetes resource manifest for Connect
      # Agent deployment.
      class ConnectAgentResource
        include Google::Apis::Core::Hashable
      
        # YAML manifest of the resource.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # TypeMeta is the type information needed for content unmarshalling of
        # Kubernetes resources in the manifest.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::GkehubV1alpha2::TypeMeta]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manifest = args[:manifest] if args.key?(:manifest)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # EdgeCluster contains information specific to Google Edge Clusters.
      class EdgeCluster
        include Google::Apis::Core::Hashable
      
        # Immutable. Self-link of the Google Cloud resource for the Edge Cluster. For
        # example: //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-
        # a/clusters/my-cluster
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
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
      
      # GenerateConnectManifestResponse contains manifest information for installing/
      # upgrading a Connect agent.
      class GenerateConnectManifestResponse
        include Google::Apis::Core::Hashable
      
        # The ordered list of Kubernetes resources that need to be applied to the
        # cluster for GKE Connect agent installation/upgrade.
        # Corresponds to the JSON property `manifest`
        # @return [Array<Google::Apis::GkehubV1alpha2::ConnectAgentResource>]
        attr_accessor :manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manifest = args[:manifest] if args.key?(:manifest)
        end
      end
      
      # GkeCluster contains information specific to GKE clusters.
      class GkeCluster
        include Google::Apis::Core::Hashable
      
        # Output only. If cluster_missing is set then it denotes that the GKE cluster no
        # longer exists in the GKE Control Plane.
        # Corresponds to the JSON property `clusterMissing`
        # @return [Boolean]
        attr_accessor :cluster_missing
        alias_method :cluster_missing?, :cluster_missing
      
        # Immutable. Self-link of the Google Cloud resource for the GKE cluster. For
        # example: //container.googleapis.com/projects/my-project/locations/us-west1-a/
        # clusters/my-cluster Zonal clusters are also supported.
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_missing = args[:cluster_missing] if args.key?(:cluster_missing)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
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
      
      # Request message for the InitializeHub method.
      class InitializeHubRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the InitializeHub method.
      class InitializeHubResponse
        include Google::Apis::Core::Hashable
      
        # Name of the Hub default service identity, in the format: service-@gcp-sa-
        # gkehub.iam.gserviceaccount.com The service account has `roles/gkehub.
        # serviceAgent` in the Hub project.
        # Corresponds to the JSON property `serviceIdentity`
        # @return [String]
        attr_accessor :service_identity
      
        # The Workload Identity Pool used for Workload Identity-enabled clusters
        # registered with this Hub. Format: `.hub.id.goog`
        # Corresponds to the JSON property `workloadIdentityPool`
        # @return [String]
        attr_accessor :workload_identity_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_identity = args[:service_identity] if args.key?(:service_identity)
          @workload_identity_pool = args[:workload_identity_pool] if args.key?(:workload_identity_pool)
        end
      end
      
      # KubernetesMetadata provides informational metadata for Memberships that are
      # created from Kubernetes Endpoints (currently, these are equivalent to
      # Kubernetes clusters).
      class KubernetesMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Kubernetes API server version string as reported by '/version'.
        # Corresponds to the JSON property `kubernetesApiServerVersion`
        # @return [String]
        attr_accessor :kubernetes_api_server_version
      
        # Output only. The total memory capacity as reported by the sum of all
        # Kubernetes nodes resources, defined in MB.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # Output only. Node count as reported by Kubernetes nodes resources.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        # Output only. Node providerID as reported by the first node in the list of
        # nodes on the Kubernetes endpoint. On Kubernetes platforms that support zero-
        # node clusters (like GKE-on-GCP), the node_count will be zero and the
        # node_provider_id will be empty.
        # Corresponds to the JSON property `nodeProviderId`
        # @return [String]
        attr_accessor :node_provider_id
      
        # Output only. The time at which these details were last updated. This
        # update_time is different from the Membership-level update_time since
        # EndpointDetails are updated internally for API consumers.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. vCPU count as reported by Kubernetes nodes resources.
        # Corresponds to the JSON property `vcpuCount`
        # @return [Fixnum]
        attr_accessor :vcpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kubernetes_api_server_version = args[:kubernetes_api_server_version] if args.key?(:kubernetes_api_server_version)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @node_count = args[:node_count] if args.key?(:node_count)
          @node_provider_id = args[:node_provider_id] if args.key?(:node_provider_id)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vcpu_count = args[:vcpu_count] if args.key?(:vcpu_count)
        end
      end
      
      # KubernetesResource contains the YAML manifests and configuration for
      # Membership Kubernetes resources in the cluster. After CreateMembership or
      # UpdateMembership, these resources should be re-applied in the cluster.
      class KubernetesResource
        include Google::Apis::Core::Hashable
      
        # Output only. The Kubernetes resources for installing the GKE Connect agent.
        # This field is only populated in the Membership returned from a successful long-
        # running operation from CreateMembership or UpdateMembership. It is not
        # populated during normal GetMembership or ListMemberships requests. To get the
        # resource manifest after the initial registration, the caller should make a
        # UpdateMembership call with an empty field mask.
        # Corresponds to the JSON property `connectResources`
        # @return [Array<Google::Apis::GkehubV1alpha2::ResourceManifest>]
        attr_accessor :connect_resources
      
        # Input only. The YAML representation of the Membership CR. This field is
        # ignored for GKE clusters where Hub can read the CR directly. Callers should
        # provide the CR that is currently present in the cluster during Create or
        # Update, or leave this field empty if none exists. The CR manifest is used to
        # validate the cluster has not been registered with another Membership.
        # Corresponds to the JSON property `membershipCrManifest`
        # @return [String]
        attr_accessor :membership_cr_manifest
      
        # Output only. Additional Kubernetes resources that need to be applied to the
        # cluster after Membership creation, and after every update. This field is only
        # populated in the Membership returned from a successful long-running operation
        # from CreateMembership or UpdateMembership. It is not populated during normal
        # GetMembership or ListMemberships requests. To get the resource manifest after
        # the initial registration, the caller should make a UpdateMembership call with
        # an empty field mask.
        # Corresponds to the JSON property `membershipResources`
        # @return [Array<Google::Apis::GkehubV1alpha2::ResourceManifest>]
        attr_accessor :membership_resources
      
        # ResourceOptions represent options for Kubernetes resource generation.
        # Corresponds to the JSON property `resourceOptions`
        # @return [Google::Apis::GkehubV1alpha2::ResourceOptions]
        attr_accessor :resource_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connect_resources = args[:connect_resources] if args.key?(:connect_resources)
          @membership_cr_manifest = args[:membership_cr_manifest] if args.key?(:membership_cr_manifest)
          @membership_resources = args[:membership_resources] if args.key?(:membership_resources)
          @resource_options = args[:resource_options] if args.key?(:resource_options)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::GkehubV1alpha2::Location>]
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
      
      # Response message for the `GkeHub.ListMemberships` method.
      class ListMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # A token to request the next page of resources from the `ListMemberships`
        # method. The value of an empty string means that there are no more resources to
        # return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of matching Memberships.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::GkehubV1alpha2::Membership>]
        attr_accessor :resources
      
        # List of locations that could not be reached while fetching this list.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
        # @return [Array<Google::Apis::GkehubV1alpha2::Operation>]
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
      
      # Membership contains information about a member cluster.
      class Membership
        include Google::Apis::Core::Hashable
      
        # Authority encodes how Google will recognize identities from this Membership.
        # See the workload identity documentation for more details: https://cloud.google.
        # com/kubernetes-engine/docs/how-to/workload-identity
        # Corresponds to the JSON property `authority`
        # @return [Google::Apis::GkehubV1alpha2::Authority]
        attr_accessor :authority
      
        # Output only. When the Membership was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. When the Membership was deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Output only. Description of this membership, limited to 63 characters. Must
        # match the regex: `a-zA-Z0-9*` This field is present for legacy purposes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # MembershipEndpoint contains information needed to contact a Kubernetes API,
        # endpoint and any additional Kubernetes metadata.
        # Corresponds to the JSON property `endpoint`
        # @return [Google::Apis::GkehubV1alpha2::MembershipEndpoint]
        attr_accessor :endpoint
      
        # Optional. An externally-generated and managed ID for this Membership. This ID
        # may be modified after creation, but this is not recommended. For GKE clusters,
        # external_id is managed by the Hub API and updates will be ignored. The ID must
        # match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes
        # cluster, this value should be set to the UID of the `kube-system` namespace
        # object.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # Optional. The infrastructure type this Membership is running on.
        # Corresponds to the JSON property `infrastructureType`
        # @return [String]
        attr_accessor :infrastructure_type
      
        # Optional. Labels for this membership.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. For clusters using Connect, the timestamp of the most recent
        # connection established with Google Cloud. This time is updated every several
        # minutes, not continuously. For clusters that do not use GKE Connect, or that
        # have never connected successfully, this field will be unset.
        # Corresponds to the JSON property `lastConnectionTime`
        # @return [String]
        attr_accessor :last_connection_time
      
        # This field informs Fleet-based applications/services/UIs with the necessary
        # information for where each underlying Cluster reports its metrics.
        # Corresponds to the JSON property `monitoringConfig`
        # @return [Google::Apis::GkehubV1alpha2::MonitoringConfig]
        attr_accessor :monitoring_config
      
        # Output only. The full, unique name of this Membership resource in the format `
        # projects/*/locations/*/memberships/`membership_id``, set during creation. `
        # membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63
        # characters in length 2. It must consist of lower case alphanumeric characters
        # or `-` 3. It must start and end with an alphanumeric character Which can be
        # expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length
        # of 63 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # MembershipState describes the state of a Membership resource.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::GkehubV1alpha2::MembershipState]
        attr_accessor :state
      
        # Output only. Google-generated UUID for this resource. This is unique across
        # all Membership resources. If a Membership resource is deleted and another
        # resource with the same name is created, it gets a different unique_id.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Output only. When the Membership was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authority = args[:authority] if args.key?(:authority)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @external_id = args[:external_id] if args.key?(:external_id)
          @infrastructure_type = args[:infrastructure_type] if args.key?(:infrastructure_type)
          @labels = args[:labels] if args.key?(:labels)
          @last_connection_time = args[:last_connection_time] if args.key?(:last_connection_time)
          @monitoring_config = args[:monitoring_config] if args.key?(:monitoring_config)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # MembershipEndpoint contains information needed to contact a Kubernetes API,
      # endpoint and any additional Kubernetes metadata.
      class MembershipEndpoint
        include Google::Apis::Core::Hashable
      
        # ApplianceCluster contains information specific to GDC Edge Appliance Clusters.
        # Corresponds to the JSON property `applianceCluster`
        # @return [Google::Apis::GkehubV1alpha2::ApplianceCluster]
        attr_accessor :appliance_cluster
      
        # EdgeCluster contains information specific to Google Edge Clusters.
        # Corresponds to the JSON property `edgeCluster`
        # @return [Google::Apis::GkehubV1alpha2::EdgeCluster]
        attr_accessor :edge_cluster
      
        # GkeCluster contains information specific to GKE clusters.
        # Corresponds to the JSON property `gkeCluster`
        # @return [Google::Apis::GkehubV1alpha2::GkeCluster]
        attr_accessor :gke_cluster
      
        # KubernetesMetadata provides informational metadata for Memberships that are
        # created from Kubernetes Endpoints (currently, these are equivalent to
        # Kubernetes clusters).
        # Corresponds to the JSON property `kubernetesMetadata`
        # @return [Google::Apis::GkehubV1alpha2::KubernetesMetadata]
        attr_accessor :kubernetes_metadata
      
        # KubernetesResource contains the YAML manifests and configuration for
        # Membership Kubernetes resources in the cluster. After CreateMembership or
        # UpdateMembership, these resources should be re-applied in the cluster.
        # Corresponds to the JSON property `kubernetesResource`
        # @return [Google::Apis::GkehubV1alpha2::KubernetesResource]
        attr_accessor :kubernetes_resource
      
        # MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
        # Corresponds to the JSON property `multiCloudCluster`
        # @return [Google::Apis::GkehubV1alpha2::MultiCloudCluster]
        attr_accessor :multi_cloud_cluster
      
        # OnPremCluster contains information specific to GKE On-Prem clusters.
        # Corresponds to the JSON property `onPremCluster`
        # @return [Google::Apis::GkehubV1alpha2::OnPremCluster]
        attr_accessor :on_prem_cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appliance_cluster = args[:appliance_cluster] if args.key?(:appliance_cluster)
          @edge_cluster = args[:edge_cluster] if args.key?(:edge_cluster)
          @gke_cluster = args[:gke_cluster] if args.key?(:gke_cluster)
          @kubernetes_metadata = args[:kubernetes_metadata] if args.key?(:kubernetes_metadata)
          @kubernetes_resource = args[:kubernetes_resource] if args.key?(:kubernetes_resource)
          @multi_cloud_cluster = args[:multi_cloud_cluster] if args.key?(:multi_cloud_cluster)
          @on_prem_cluster = args[:on_prem_cluster] if args.key?(:on_prem_cluster)
        end
      end
      
      # MembershipState describes the state of a Membership resource.
      class MembershipState
        include Google::Apis::Core::Hashable
      
        # Output only. The current state of the Membership resource.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # This field informs Fleet-based applications/services/UIs with the necessary
      # information for where each underlying Cluster reports its metrics.
      class MonitoringConfig
        include Google::Apis::Core::Hashable
      
        # Immutable. Cluster name used to report metrics. For Anthos on VMWare/Baremetal,
        # it would be in format `memberClusters/cluster_name`; And for Anthos on
        # MultiCloud, it would be in format ``azureClusters, awsClusters`/cluster_name`.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Immutable. Cluster hash, this is a unique string generated by google code,
        # which does not contain any PII, which we can use to reference the cluster.
        # This is expected to be created by the monitoring stack and persisted into the
        # Cluster object as well as to GKE-Hub.
        # Corresponds to the JSON property `clusterHash`
        # @return [String]
        attr_accessor :cluster_hash
      
        # Kubernetes system metrics, if available, are written to this prefix. This
        # defaults to kubernetes.io for GKE, and kubernetes.io/anthos for Anthos
        # eventually. Noted: Anthos MultiCloud will have kubernetes.io prefix today but
        # will migration to be under kubernetes.io/anthos
        # Corresponds to the JSON property `kubernetesMetricsPrefix`
        # @return [String]
        attr_accessor :kubernetes_metrics_prefix
      
        # Immutable. Location used to report Metrics
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Immutable. Project used to report Metrics
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @cluster_hash = args[:cluster_hash] if args.key?(:cluster_hash)
          @kubernetes_metrics_prefix = args[:kubernetes_metrics_prefix] if args.key?(:kubernetes_metrics_prefix)
          @location = args[:location] if args.key?(:location)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
      class MultiCloudCluster
        include Google::Apis::Core::Hashable
      
        # Output only. If cluster_missing is set then it denotes that API(gkemulticloud.
        # googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.
        # Corresponds to the JSON property `clusterMissing`
        # @return [Boolean]
        attr_accessor :cluster_missing
        alias_method :cluster_missing?, :cluster_missing
      
        # Immutable. Self-link of the Google Cloud resource for the GKE Multi-Cloud
        # cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/
        # locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/
        # projects/my-project/locations/us-west1-a/azureClusters/my-cluster //
        # gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/
        # attachedClusters/my-cluster
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_missing = args[:cluster_missing] if args.key?(:cluster_missing)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
        end
      end
      
      # OnPremCluster contains information specific to GKE On-Prem clusters.
      class OnPremCluster
        include Google::Apis::Core::Hashable
      
        # Immutable. Whether the cluster is an admin cluster.
        # Corresponds to the JSON property `adminCluster`
        # @return [Boolean]
        attr_accessor :admin_cluster
        alias_method :admin_cluster?, :admin_cluster
      
        # Output only. If cluster_missing is set then it denotes that API(gkeonprem.
        # googleapis.com) resource for this GKE On-Prem cluster no longer exists.
        # Corresponds to the JSON property `clusterMissing`
        # @return [Boolean]
        attr_accessor :cluster_missing
        alias_method :cluster_missing?, :cluster_missing
      
        # Immutable. The on prem cluster's type.
        # Corresponds to the JSON property `clusterType`
        # @return [String]
        attr_accessor :cluster_type
      
        # Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster.
        # For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-
        # a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/
        # locations/us-west1-a/bareMetalClusters/my-cluster
        # Corresponds to the JSON property `resourceLink`
        # @return [String]
        attr_accessor :resource_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_cluster = args[:admin_cluster] if args.key?(:admin_cluster)
          @cluster_missing = args[:cluster_missing] if args.key?(:cluster_missing)
          @cluster_type = args[:cluster_type] if args.key?(:cluster_type)
          @resource_link = args[:resource_link] if args.key?(:resource_link)
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
        # @return [Google::Apis::GkehubV1alpha2::GoogleRpcStatus]
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
      
      # Represents the metadata of the long-running operation.
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::GkehubV1alpha2::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::GkehubV1alpha2::Binding>]
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
      
      # ResourceManifest represents a single Kubernetes resource to be applied to the
      # cluster.
      class ResourceManifest
        include Google::Apis::Core::Hashable
      
        # Whether the resource provided in the manifest is `cluster_scoped`. If unset,
        # the manifest is assumed to be namespace scoped. This field is used for REST
        # mapping when applying the resource in a cluster.
        # Corresponds to the JSON property `clusterScoped`
        # @return [Boolean]
        attr_accessor :cluster_scoped
        alias_method :cluster_scoped?, :cluster_scoped
      
        # YAML manifest of the resource.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_scoped = args[:cluster_scoped] if args.key?(:cluster_scoped)
          @manifest = args[:manifest] if args.key?(:manifest)
        end
      end
      
      # ResourceOptions represent options for Kubernetes resource generation.
      class ResourceOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The Connect agent version to use for connect_resources. Defaults to
        # the latest GKE Connect version. The version must be a currently supported
        # version, obsolete versions will be rejected.
        # Corresponds to the JSON property `connectVersion`
        # @return [String]
        attr_accessor :connect_version
      
        # Optional. Major version of the Kubernetes cluster. This is only used to
        # determine which version to use for the CustomResourceDefinition resources, `
        # apiextensions/v1beta1` or`apiextensions/v1`.
        # Corresponds to the JSON property `k8sVersion`
        # @return [String]
        attr_accessor :k8s_version
      
        # Optional. Use `apiextensions/v1beta1` instead of `apiextensions/v1` for
        # CustomResourceDefinition resources. This option should be set for clusters
        # with Kubernetes apiserver versions <1.16.
        # Corresponds to the JSON property `v1beta1Crd`
        # @return [Boolean]
        attr_accessor :v1beta1_crd
        alias_method :v1beta1_crd?, :v1beta1_crd
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connect_version = args[:connect_version] if args.key?(:connect_version)
          @k8s_version = args[:k8s_version] if args.key?(:k8s_version)
          @v1beta1_crd = args[:v1beta1_crd] if args.key?(:v1beta1_crd)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::GkehubV1alpha2::Policy]
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
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
      
      # TypeMeta is the type information needed for content unmarshalling of
      # Kubernetes resources in the manifest.
      class TypeMeta
        include Google::Apis::Core::Hashable
      
        # APIVersion of the resource (e.g. v1).
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Kind of the resource (e.g. Deployment).
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
    end
  end
end
