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
    module NetworkconnectivityV1
      
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
        # @return [Array<Google::Apis::NetworkconnectivityV1::AuditLogConfig>]
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
        # @return [Google::Apis::NetworkconnectivityV1::Expr]
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
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Array<Google::Apis::NetworkconnectivityV1::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::NetworkconnectivityV1::GoogleRpcStatus]
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
      
      # A Network Connectivity Center hub is a global management resource to which you
      # attach spokes. A single hub can contain spokes from multiple regions. However,
      # if any of a hub's spokes use the site-to-site data transfer feature, the
      # resources associated with those spokes must all be in the same VPC network.
      # Spokes that do not use site-to-site data transfer can be associated with any
      # VPC network in your project.
      class Hub
        include Google::Apis::Core::Hashable
      
        # Output only. The time the hub was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An optional description of the hub.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional labels in key:value format. For more information about labels, see [
        # Requirements for labels](https://cloud.google.com/resource-manager/docs/
        # creating-managing-labels#requirements).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of the hub. Hub names must be unique. They use the
        # following form: `projects/`project_number`/locations/global/hubs/`hub_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The VPC networks associated with this hub's spokes. This field is read-only.
        # Network Connectivity Center automatically populates it based on the set of
        # spokes attached to the hub.
        # Corresponds to the JSON property `routingVpcs`
        # @return [Array<Google::Apis::NetworkconnectivityV1::RoutingVpc>]
        attr_accessor :routing_vpcs
      
        # Output only. The current lifecycle state of this hub.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The Google-generated UUID for the hub. This value is unique
        # across all hub resources. If a hub is deleted and another with the same name
        # is created, the new hub is assigned a different unique_id.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Output only. The time the hub was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @routing_vpcs = args[:routing_vpcs] if args.key?(:routing_vpcs)
          @state = args[:state] if args.key?(:state)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The internal range resource for IPAM operations within a VPC network. Used to
      # represent a private address range along with behavioral characterstics of that
      # range (its usage and peering behavior). Networking resources can link to this
      # range if they are created as belonging to it.
      class InternalRange
        include Google::Apis::Core::Hashable
      
        # Time when the internal range was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The IP range that this internal range defines.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The name of an internal range. Format: projects/`project`/locations/
        # `location`/internalRanges/`internal_range` See: https://google.aip.dev/122#
        # fields-representing-resource-names
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The URL or resource ID of the network in which to reserve the internal range.
        # The network cannot be deleted if there are any reserved internal ranges
        # referring to it. Legacy networks are not supported. This can only be specified
        # for a global internal address. Example: - URL: /compute/v1/projects/`project`/
        # global/networks/`resourceId` - ID: network123
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. Types of resources that are allowed to overlap with the current
        # internal range.
        # Corresponds to the JSON property `overlaps`
        # @return [Array<String>]
        attr_accessor :overlaps
      
        # The type of peering set for this internal range.
        # Corresponds to the JSON property `peering`
        # @return [String]
        attr_accessor :peering
      
        # An alternate to ip_cidr_range. Can be set when trying to create a reservation
        # that automatically finds a free range of the given size. If both ip_cidr_range
        # and prefix_length are set, there is an error if the range sizes do not match.
        # Can also be used during updates to change the range size.
        # Corresponds to the JSON property `prefixLength`
        # @return [Fixnum]
        attr_accessor :prefix_length
      
        # Optional. Can be set to narrow down or pick a different address space while
        # searching for a free range. If not set, defaults to the "10.0.0.0/8" address
        # space. This can be used to search in other rfc-1918 address spaces like "172.
        # 16.0.0/12" and "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
        # Corresponds to the JSON property `targetCidrRange`
        # @return [Array<String>]
        attr_accessor :target_cidr_range
      
        # Time when the internal range was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The type of usage set for this InternalRange.
        # Corresponds to the JSON property `usage`
        # @return [String]
        attr_accessor :usage
      
        # Output only. The list of resources that refer to this internal range.
        # Resources that use the internal range for their range allocation are referred
        # to as users of the range. Other resources mark themselves as users while doing
        # so by creating a reference to this internal range. Having a user, based on
        # this reference, prevents deletion of the internal range referred to. Can be
        # empty.
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @overlaps = args[:overlaps] if args.key?(:overlaps)
          @peering = args[:peering] if args.key?(:peering)
          @prefix_length = args[:prefix_length] if args.key?(:prefix_length)
          @target_cidr_range = args[:target_cidr_range] if args.key?(:target_cidr_range)
          @update_time = args[:update_time] if args.key?(:update_time)
          @usage = args[:usage] if args.key?(:usage)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # A collection of VLAN attachment resources. These resources should be redundant
      # attachments that all advertise the same prefixes to Google Cloud.
      # Alternatively, in active/passive configurations, all attachments should be
      # capable of advertising the same prefixes.
      class LinkedInterconnectAttachments
        include Google::Apis::Core::Hashable
      
        # A value that controls whether site-to-site data transfer is enabled for these
        # resources. Data transfer is available only in [supported locations](https://
        # cloud.google.com/network-connectivity/docs/network-connectivity-center/
        # concepts/locations).
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # The URIs of linked interconnect attachment resources
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        # Output only. The VPC network where these VLAN attachments are located.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @uris = args[:uris] if args.key?(:uris)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # A collection of router appliance instances. If you configure multiple router
      # appliance instances to receive data from the same set of sites outside of
      # Google Cloud, we recommend that you associate those instances with the same
      # spoke.
      class LinkedRouterApplianceInstances
        include Google::Apis::Core::Hashable
      
        # The list of router appliance instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::NetworkconnectivityV1::RouterApplianceInstance>]
        attr_accessor :instances
      
        # A value that controls whether site-to-site data transfer is enabled for these
        # resources. Data transfer is available only in [supported locations](https://
        # cloud.google.com/network-connectivity/docs/network-connectivity-center/
        # concepts/locations).
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # Output only. The VPC network where these router appliance instances are
        # located.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # A collection of Cloud VPN tunnel resources. These resources should be
      # redundant HA VPN tunnels that all advertise the same prefixes to Google Cloud.
      # Alternatively, in a passive/active configuration, all tunnels should be
      # capable of advertising the same prefixes.
      class LinkedVpnTunnels
        include Google::Apis::Core::Hashable
      
        # A value that controls whether site-to-site data transfer is enabled for these
        # resources. Data transfer is available only in [supported locations](https://
        # cloud.google.com/network-connectivity/docs/network-connectivity-center/
        # concepts/locations).
        # Corresponds to the JSON property `siteToSiteDataTransfer`
        # @return [Boolean]
        attr_accessor :site_to_site_data_transfer
        alias_method :site_to_site_data_transfer?, :site_to_site_data_transfer
      
        # The URIs of linked VPN tunnel resources.
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        # Output only. The VPC network where these VPN tunnels are located.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_to_site_data_transfer = args[:site_to_site_data_transfer] if args.key?(:site_to_site_data_transfer)
          @uris = args[:uris] if args.key?(:uris)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # Response for HubService.ListHubs method.
      class ListHubsResponse
        include Google::Apis::Core::Hashable
      
        # The requested hubs.
        # Corresponds to the JSON property `hubs`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Hub>]
        attr_accessor :hubs
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hubs = args[:hubs] if args.key?(:hubs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for InternalRange.ListInternalRanges
      class ListInternalRangesResponse
        include Google::Apis::Core::Hashable
      
        # Internal ranges to be returned.
        # Corresponds to the JSON property `internalRanges`
        # @return [Array<Google::Apis::NetworkconnectivityV1::InternalRange>]
        attr_accessor :internal_ranges
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @internal_ranges = args[:internal_ranges] if args.key?(:internal_ranges)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Location>]
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
      
      # The response for HubService.ListSpokes.
      class ListSpokesResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the List response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested spokes.
        # Corresponds to the JSON property `spokes`
        # @return [Array<Google::Apis::NetworkconnectivityV1::Spoke>]
        attr_accessor :spokes
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spokes = args[:spokes] if args.key?(:spokes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
      # Metadata about locations
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # List of supported features
        # Corresponds to the JSON property `locationFeatures`
        # @return [Array<String>]
        attr_accessor :location_features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_features = args[:location_features] if args.key?(:location_features)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
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
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
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
        # @return [Array<Google::Apis::NetworkconnectivityV1::AuditConfig>]
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
        # @return [Array<Google::Apis::NetworkconnectivityV1::Binding>]
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
      
      # A router appliance instance is a Compute Engine virtual machine (VM) instance
      # that acts as a BGP speaker. A router appliance instance is specified by the
      # URI of the VM and the internal IP address of one of the VM's network
      # interfaces.
      class RouterApplianceInstance
        include Google::Apis::Core::Hashable
      
        # The IP address on the VM to use for peering.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The URI of the VM.
        # Corresponds to the JSON property `virtualMachine`
        # @return [String]
        attr_accessor :virtual_machine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @virtual_machine = args[:virtual_machine] if args.key?(:virtual_machine)
        end
      end
      
      # RoutingVPC contains information about the VPC networks associated with the
      # spokes of a Network Connectivity Center hub.
      class RoutingVpc
        include Google::Apis::Core::Hashable
      
        # Output only. If true, indicates that this VPC network is currently associated
        # with spokes that use the data transfer feature (spokes where the
        # site_to_site_data_transfer field is set to true). If you create new spokes
        # that use data transfer, they must be associated with this VPC network. At most,
        # one VPC network will have this field set to true.
        # Corresponds to the JSON property `requiredForNewSiteToSiteDataTransferSpokes`
        # @return [Boolean]
        attr_accessor :required_for_new_site_to_site_data_transfer_spokes
        alias_method :required_for_new_site_to_site_data_transfer_spokes?, :required_for_new_site_to_site_data_transfer_spokes
      
        # The URI of the VPC network.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @required_for_new_site_to_site_data_transfer_spokes = args[:required_for_new_site_to_site_data_transfer_spokes] if args.key?(:required_for_new_site_to_site_data_transfer_spokes)
          @uri = args[:uri] if args.key?(:uri)
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
        # @return [Google::Apis::NetworkconnectivityV1::Policy]
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
      
      # A Network Connectivity Center spoke represents one or more network
      # connectivity resources. When you create a spoke, you associate it with a hub.
      # You must also identify a value for exactly one of the following fields: *
      # linked_vpn_tunnels * linked_interconnect_attachments *
      # linked_router_appliance_instances
      class Spoke
        include Google::Apis::Core::Hashable
      
        # Output only. The time the spoke was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An optional description of the spoke.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Immutable. The name of the hub that this spoke is attached to.
        # Corresponds to the JSON property `hub`
        # @return [String]
        attr_accessor :hub
      
        # Optional labels in key:value format. For more information about labels, see [
        # Requirements for labels](https://cloud.google.com/resource-manager/docs/
        # creating-managing-labels#requirements).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A collection of VLAN attachment resources. These resources should be redundant
        # attachments that all advertise the same prefixes to Google Cloud.
        # Alternatively, in active/passive configurations, all attachments should be
        # capable of advertising the same prefixes.
        # Corresponds to the JSON property `linkedInterconnectAttachments`
        # @return [Google::Apis::NetworkconnectivityV1::LinkedInterconnectAttachments]
        attr_accessor :linked_interconnect_attachments
      
        # A collection of router appliance instances. If you configure multiple router
        # appliance instances to receive data from the same set of sites outside of
        # Google Cloud, we recommend that you associate those instances with the same
        # spoke.
        # Corresponds to the JSON property `linkedRouterApplianceInstances`
        # @return [Google::Apis::NetworkconnectivityV1::LinkedRouterApplianceInstances]
        attr_accessor :linked_router_appliance_instances
      
        # A collection of Cloud VPN tunnel resources. These resources should be
        # redundant HA VPN tunnels that all advertise the same prefixes to Google Cloud.
        # Alternatively, in a passive/active configuration, all tunnels should be
        # capable of advertising the same prefixes.
        # Corresponds to the JSON property `linkedVpnTunnels`
        # @return [Google::Apis::NetworkconnectivityV1::LinkedVpnTunnels]
        attr_accessor :linked_vpn_tunnels
      
        # Immutable. The name of the spoke. Spoke names must be unique. They use the
        # following form: `projects/`project_number`/locations/`region`/spokes/`spoke_id`
        # `
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current lifecycle state of this spoke.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The Google-generated UUID for the spoke. This value is unique
        # across all spoke resources. If a spoke is deleted and another with the same
        # name is created, the new spoke is assigned a different unique_id.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        # Output only. The time the spoke was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @hub = args[:hub] if args.key?(:hub)
          @labels = args[:labels] if args.key?(:labels)
          @linked_interconnect_attachments = args[:linked_interconnect_attachments] if args.key?(:linked_interconnect_attachments)
          @linked_router_appliance_instances = args[:linked_router_appliance_instances] if args.key?(:linked_router_appliance_instances)
          @linked_vpn_tunnels = args[:linked_vpn_tunnels] if args.key?(:linked_vpn_tunnels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
          @update_time = args[:update_time] if args.key?(:update_time)
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
    end
  end
end
