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
    module VmwareengineV1
      
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
        # @return [Array<Google::Apis::VmwareengineV1::AuditLogConfig>]
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
        # @return [Google::Apis::VmwareengineV1::Expr]
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
      
      # A cluster in a private cloud.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. True if the cluster is a management cluster; false otherwise.
        # There can only be one management cluster in a private cloud and it has to be
        # the first one.
        # Corresponds to the JSON property `management`
        # @return [Boolean]
        attr_accessor :management
        alias_method :management?, :management
      
        # Output only. The resource name of this cluster. Resource names are schemeless
        # URIs that follow the conventions in https://cloud.google.com/apis/design/
        # resource_names. For example: `projects/my-project/locations/us-central1-a/
        # privateClouds/my-cloud/clusters/my-cluster`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The map of cluster node types in this cluster, where the key is
        # canonical identifier of the node type (corresponds to the `NodeType`).
        # Corresponds to the JSON property `nodeTypeConfigs`
        # @return [Hash<String,Google::Apis::VmwareengineV1::NodeTypeConfig>]
        attr_accessor :node_type_configs
      
        # Output only. State of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Configuration of a stretched cluster.
        # Corresponds to the JSON property `stretchedClusterConfig`
        # @return [Google::Apis::VmwareengineV1::StretchedClusterConfig]
        attr_accessor :stretched_cluster_config
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @management = args[:management] if args.key?(:management)
          @name = args[:name] if args.key?(:name)
          @node_type_configs = args[:node_type_configs] if args.key?(:node_type_configs)
          @state = args[:state] if args.key?(:state)
          @stretched_cluster_config = args[:stretched_cluster_config] if args.key?(:stretched_cluster_config)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Credentials for a private cloud.
      class Credentials
        include Google::Apis::Core::Hashable
      
        # Initial password.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Initial username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # DnsBindPermission resource that contains the accounts having the consumer DNS
      # bind permission on the corresponding intranet VPC of the consumer project.
      class DnsBindPermission
        include Google::Apis::Core::Hashable
      
        # Required. Output only. The name of the resource which stores the users/service
        # accounts having the permission to bind to the corresponding intranet VPC of
        # the consumer project. DnsBindPermission is a global resource. Resource names
        # are schemeless URIs that follow the conventions in https://cloud.google.com/
        # apis/design/resource_names. For example: `projects/my-project/locations/global/
        # dnsBindPermission`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Users/Service accounts which have access for binding on the
        # intranet VPC project corresponding to the consumer project.
        # Corresponds to the JSON property `principals`
        # @return [Array<Google::Apis::VmwareengineV1::Principal>]
        attr_accessor :principals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @principals = args[:principals] if args.key?(:principals)
        end
      end
      
      # DNS forwarding config. This config defines a list of domain to name server
      # mappings, and is attached to the private cloud for custom domain resolution.
      class DnsForwarding
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. List of domain mappings to configure
        # Corresponds to the JSON property `forwardingRules`
        # @return [Array<Google::Apis::VmwareengineV1::ForwardingRule>]
        attr_accessor :forwarding_rules
      
        # Output only. The resource name of this DNS profile. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. For example: `projects/my-project/locations/us-central1-
        # a/privateClouds/my-cloud/dnsForwarding`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @forwarding_rules = args[:forwarding_rules] if args.key?(:forwarding_rules)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # External access firewall rules for filtering incoming traffic destined to `
      # ExternalAddress` resources.
      class ExternalAccessRule
        include Google::Apis::Core::Hashable
      
        # The action that the external access rule performs.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-provided description for this external access rule.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If destination ranges are specified, the external access rule applies only to
        # the traffic that has a destination IP address in these ranges. The specified
        # IP addresses must have reserved external IP addresses in the scope of the
        # parent network policy. To match all external IP addresses in the scope of the
        # parent network policy, specify `0.0.0.0/0`. To match a specific external IP
        # address, specify it using the `IpRange.external_address` property.
        # Corresponds to the JSON property `destinationIpRanges`
        # @return [Array<Google::Apis::VmwareengineV1::IpRange>]
        attr_accessor :destination_ip_ranges
      
        # A list of destination ports to which the external access rule applies. This
        # field is only applicable for the UDP or TCP protocol. Each entry must be
        # either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["
        # 12345-12349"]`. To match all destination ports, specify `["0-65535"]`.
        # Corresponds to the JSON property `destinationPorts`
        # @return [Array<String>]
        attr_accessor :destination_ports
      
        # The IP protocol to which the external access rule applies. This value can be
        # one of the following three protocol strings (not case-sensitive): `tcp`, `udp`,
        # or `icmp`.
        # Corresponds to the JSON property `ipProtocol`
        # @return [String]
        attr_accessor :ip_protocol
      
        # Output only. The resource name of this external access rule. Resource names
        # are schemeless URIs that follow the conventions in https://cloud.google.com/
        # apis/design/resource_names. For example: `projects/my-project/locations/us-
        # central1/networkPolicies/my-policy/externalAccessRules/my-rule`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # External access rule priority, which determines the external access rule to
        # use when multiple rules apply. If multiple rules have the same priority, their
        # ordering is non-deterministic. If specific ordering is required, assign unique
        # priorities to enforce such ordering. The external access rule priority is an
        # integer from 100 to 4096, both inclusive. Lower integers indicate higher
        # precedence. For example, a rule with priority `100` has higher precedence than
        # a rule with priority `101`.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # If source ranges are specified, the external access rule applies only to
        # traffic that has a source IP address in these ranges. These ranges can either
        # be expressed in the CIDR format or as an IP address. As only inbound rules are
        # supported, `ExternalAddress` resources cannot be the source IP addresses of an
        # external access rule. To match all source addresses, specify `0.0.0.0/0`.
        # Corresponds to the JSON property `sourceIpRanges`
        # @return [Array<Google::Apis::VmwareengineV1::IpRange>]
        attr_accessor :source_ip_ranges
      
        # A list of source ports to which the external access rule applies. This field
        # is only applicable for the UDP or TCP protocol. Each entry must be either an
        # integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`
        # . To match all source ports, specify `["0-65535"]`.
        # Corresponds to the JSON property `sourcePorts`
        # @return [Array<String>]
        attr_accessor :source_ports
      
        # Output only. The state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination_ip_ranges = args[:destination_ip_ranges] if args.key?(:destination_ip_ranges)
          @destination_ports = args[:destination_ports] if args.key?(:destination_ports)
          @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
          @name = args[:name] if args.key?(:name)
          @priority = args[:priority] if args.key?(:priority)
          @source_ip_ranges = args[:source_ip_ranges] if args.key?(:source_ip_ranges)
          @source_ports = args[:source_ports] if args.key?(:source_ports)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents an allocated external IP address and its corresponding internal IP
      # address in a private cloud.
      class ExternalAddress
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-provided description for this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The external IP address of a workload VM.
        # Corresponds to the JSON property `externalIp`
        # @return [String]
        attr_accessor :external_ip
      
        # The internal IP address of a workload VM.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # Output only. The resource name of this external IP address. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. For example: `projects/my-project/locations/us-central1-
        # a/privateClouds/my-cloud/externalAddresses/my-address`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
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
          @external_ip = args[:external_ip] if args.key?(:external_ip)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for VmwareEngine.FetchNetworkPolicyExternalAddresses
      class FetchNetworkPolicyExternalAddressesResponse
        include Google::Apis::Core::Hashable
      
        # A list of external IP addresses assigned to VMware workload VMs within the
        # scope of the given network policy.
        # Corresponds to the JSON property `externalAddresses`
        # @return [Array<Google::Apis::VmwareengineV1::ExternalAddress>]
        attr_accessor :external_addresses
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_addresses = args[:external_addresses] if args.key?(:external_addresses)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A forwarding rule is a mapping of a `domain` to `name_servers`. This mapping
      # allows VMware Engine to resolve domains for attached private clouds by
      # forwarding DNS requests for a given domain to the specified nameservers.
      class ForwardingRule
        include Google::Apis::Core::Hashable
      
        # Required. Domain used to resolve a `name_servers` list.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Required. List of DNS servers to use for domain resolution
        # Corresponds to the JSON property `nameServers`
        # @return [Array<String>]
        attr_accessor :name_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @name_servers = args[:name_servers] if args.key?(:name_servers)
        end
      end
      
      # Request message for VmwareEngine.GrantDnsBindPermission
      class GrantDnsBindPermissionRequest
        include Google::Apis::Core::Hashable
      
        # Users/Service accounts which have access for DNS binding on the intranet VPC
        # corresponding to the consumer project.
        # Corresponds to the JSON property `principal`
        # @return [Google::Apis::VmwareengineV1::Principal]
        attr_accessor :principal
      
        # Optional. A request ID to identify requests. Specify a unique request ID so
        # that if you must retry your request, the server will know to ignore the
        # request if it has already been completed. The server guarantees that a request
        # doesn't result in creation of duplicate commitments for at least 60 minutes.
        # For example, consider a situation where you make an initial request and the
        # request times out. If you make the request again with the same request ID, the
        # server can check if original operation with the same request ID was received,
        # and if so, will ignore the second request. This prevents clients from
        # accidentally creating duplicate commitments. The request ID must be a valid
        # UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        # 0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal = args[:principal] if args.key?(:principal)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Details about a HCX Cloud Manager appliance.
      class Hcx
        include Google::Apis::Core::Hashable
      
        # Fully qualified domain name of the appliance.
        # Corresponds to the JSON property `fqdn`
        # @return [String]
        attr_accessor :fqdn
      
        # Internal IP address of the appliance.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # Output only. The state of the appliance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Version of the appliance.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fqdn = args[:fqdn] if args.key?(:fqdn)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @state = args[:state] if args.key?(:state)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # HCX activation key. A default key is created during private cloud provisioning,
      # but this behavior is subject to change and you should always verify active
      # keys. Use VmwareEngine.ListHcxActivationKeys to retrieve existing keys and
      # VmwareEngine.CreateHcxActivationKey to create new ones.
      class HcxActivationKey
        include Google::Apis::Core::Hashable
      
        # Output only. HCX activation key.
        # Corresponds to the JSON property `activationKey`
        # @return [String]
        attr_accessor :activation_key
      
        # Output only. Creation time of HCX activation key.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The resource name of this HcxActivationKey. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. For example: `projects/my-project/locations/us-central1/
        # privateClouds/my-cloud/hcxActivationKeys/my-key`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of HCX activation key.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_key = args[:activation_key] if args.key?(:activation_key)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # An IP range provided in any one of the supported formats.
      class IpRange
        include Google::Apis::Core::Hashable
      
        # The name of an `ExternalAddress` resource. The external address must have been
        # reserved in the scope of this external access rule's parent network policy.
        # Provide the external address name in the form of `projects/`project`/locations/
        # `location`/privateClouds/`private_cloud`/externalAddresses/`external_address``.
        # For example: `projects/my-project/locations/us-central1-a/privateClouds/my-
        # cloud/externalAddresses/my-address`.
        # Corresponds to the JSON property `externalAddress`
        # @return [String]
        attr_accessor :external_address
      
        # A single IP address. For example: `10.0.0.5`.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # An IP address range in the CIDR format. For example: `10.0.0.0/24`.
        # Corresponds to the JSON property `ipAddressRange`
        # @return [String]
        attr_accessor :ip_address_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_address = args[:external_address] if args.key?(:external_address)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @ip_address_range = args[:ip_address_range] if args.key?(:ip_address_range)
        end
      end
      
      # Response message for VmwareEngine.ListClusters
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # A list of private cloud clusters.
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::VmwareengineV1::Cluster>]
        attr_accessor :clusters
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListExternalAccessRules
      class ListExternalAccessRulesResponse
        include Google::Apis::Core::Hashable
      
        # A list of external access firewall rules.
        # Corresponds to the JSON property `externalAccessRules`
        # @return [Array<Google::Apis::VmwareengineV1::ExternalAccessRule>]
        attr_accessor :external_access_rules
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_access_rules = args[:external_access_rules] if args.key?(:external_access_rules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListExternalAddresses
      class ListExternalAddressesResponse
        include Google::Apis::Core::Hashable
      
        # A list of external IP addresses.
        # Corresponds to the JSON property `externalAddresses`
        # @return [Array<Google::Apis::VmwareengineV1::ExternalAddress>]
        attr_accessor :external_addresses
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_addresses = args[:external_addresses] if args.key?(:external_addresses)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListHcxActivationKeys
      class ListHcxActivationKeysResponse
        include Google::Apis::Core::Hashable
      
        # List of HCX activation keys.
        # Corresponds to the JSON property `hcxActivationKeys`
        # @return [Array<Google::Apis::VmwareengineV1::HcxActivationKey>]
        attr_accessor :hcx_activation_keys
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hcx_activation_keys = args[:hcx_activation_keys] if args.key?(:hcx_activation_keys)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::VmwareengineV1::Location>]
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
      
      # Response message for VmwareEngine.ListLoggingServers
      class ListLoggingServersResponse
        include Google::Apis::Core::Hashable
      
        # A list of Logging Servers.
        # Corresponds to the JSON property `loggingServers`
        # @return [Array<Google::Apis::VmwareengineV1::LoggingServer>]
        attr_accessor :logging_servers
      
        # A token, which can be send as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logging_servers = args[:logging_servers] if args.key?(:logging_servers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListManagementDnsZoneBindings
      class ListManagementDnsZoneBindingsResponse
        include Google::Apis::Core::Hashable
      
        # A list of management DNS zone bindings.
        # Corresponds to the JSON property `managementDnsZoneBindings`
        # @return [Array<Google::Apis::VmwareengineV1::ManagementDnsZoneBinding>]
        attr_accessor :management_dns_zone_bindings
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @management_dns_zone_bindings = args[:management_dns_zone_bindings] if args.key?(:management_dns_zone_bindings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListNetworkPeerings
      class ListNetworkPeeringsResponse
        include Google::Apis::Core::Hashable
      
        # A list of network peerings.
        # Corresponds to the JSON property `networkPeerings`
        # @return [Array<Google::Apis::VmwareengineV1::NetworkPeering>]
        attr_accessor :network_peerings
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_peerings = args[:network_peerings] if args.key?(:network_peerings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListNetworkPolicies
      class ListNetworkPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # A list of network policies.
        # Corresponds to the JSON property `networkPolicies`
        # @return [Array<Google::Apis::VmwareengineV1::NetworkPolicy>]
        attr_accessor :network_policies
      
        # A token, which can be send as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_policies = args[:network_policies] if args.key?(:network_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListNodeTypes
      class ListNodeTypesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of Node Types.
        # Corresponds to the JSON property `nodeTypes`
        # @return [Array<Google::Apis::VmwareengineV1::NodeType>]
        attr_accessor :node_types
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @node_types = args[:node_types] if args.key?(:node_types)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListNodes
      class ListNodesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The nodes.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::VmwareengineV1::Node>]
        attr_accessor :nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @nodes = args[:nodes] if args.key?(:nodes)
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
        # @return [Array<Google::Apis::VmwareengineV1::Operation>]
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
      
      # Response message for VmwareEngine.ListPeeringRoutes
      class ListPeeringRoutesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of peering routes.
        # Corresponds to the JSON property `peeringRoutes`
        # @return [Array<Google::Apis::VmwareengineV1::PeeringRoute>]
        attr_accessor :peering_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @peering_routes = args[:peering_routes] if args.key?(:peering_routes)
        end
      end
      
      # Response message for VmwareEngine.ListPrivateClouds
      class ListPrivateCloudsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of private clouds.
        # Corresponds to the JSON property `privateClouds`
        # @return [Array<Google::Apis::VmwareengineV1::PrivateCloud>]
        attr_accessor :private_clouds
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @private_clouds = args[:private_clouds] if args.key?(:private_clouds)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListPrivateConnectionPeeringRoutes
      class ListPrivateConnectionPeeringRoutesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of peering routes.
        # Corresponds to the JSON property `peeringRoutes`
        # @return [Array<Google::Apis::VmwareengineV1::PeeringRoute>]
        attr_accessor :peering_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @peering_routes = args[:peering_routes] if args.key?(:peering_routes)
        end
      end
      
      # Response message for VmwareEngine.ListPrivateConnections
      class ListPrivateConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of private connections.
        # Corresponds to the JSON property `privateConnections`
        # @return [Array<Google::Apis::VmwareengineV1::PrivateConnection>]
        attr_accessor :private_connections
      
        # Unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @private_connections = args[:private_connections] if args.key?(:private_connections)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListSubnets
      class ListSubnetsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of subnets.
        # Corresponds to the JSON property `subnets`
        # @return [Array<Google::Apis::VmwareengineV1::Subnet>]
        attr_accessor :subnets
      
        # Locations that could not be reached when making an aggregated query using
        # wildcards.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subnets = args[:subnets] if args.key?(:subnets)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for VmwareEngine.ListVmwareEngineNetworks
      class ListVmwareEngineNetworksResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # A list of VMware Engine networks.
        # Corresponds to the JSON property `vmwareEngineNetworks`
        # @return [Array<Google::Apis::VmwareengineV1::VmwareEngineNetwork>]
        attr_accessor :vmware_engine_networks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @vmware_engine_networks = args[:vmware_engine_networks] if args.key?(:vmware_engine_networks)
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
      
      # VmwareEngine specific metadata for the given google.cloud.location.Location.
      # It is returned as a content of the `google.cloud.location.Location.metadata`
      # field.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Capabilities of this location.
        # Corresponds to the JSON property `capabilities`
        # @return [Array<String>]
        attr_accessor :capabilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
        end
      end
      
      # Logging server to receive vCenter or ESXi logs.
      class LoggingServer
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Fully-qualified domain name (FQDN) or IP Address of the logging
        # server.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Output only. The resource name of this logging server. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. For example: `projects/my-project/locations/us-central1-
        # a/privateClouds/my-cloud/loggingServers/my-logging-server`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Port number at which the logging server receives logs.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Required. Protocol used by vCenter to send logs to a logging server.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Required. The type of component that produces logs that will be forwarded to
        # this logging server.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hostname = args[:hostname] if args.key?(:hostname)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @source_type = args[:source_type] if args.key?(:source_type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Management cluster configuration.
      class ManagementCluster
        include Google::Apis::Core::Hashable
      
        # Required. The user-provided identifier of the new `Cluster`. The identifier
        # must meet the following requirements: * Only contains 1-63 alphanumeric
        # characters and hyphens * Begins with an alphabetical character * Ends with a
        # non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](
        # https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. The map of cluster node types in this cluster, where the key is
        # canonical identifier of the node type (corresponds to the `NodeType`).
        # Corresponds to the JSON property `nodeTypeConfigs`
        # @return [Hash<String,Google::Apis::VmwareengineV1::NodeTypeConfig>]
        attr_accessor :node_type_configs
      
        # Configuration of a stretched cluster.
        # Corresponds to the JSON property `stretchedClusterConfig`
        # @return [Google::Apis::VmwareengineV1::StretchedClusterConfig]
        attr_accessor :stretched_cluster_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @node_type_configs = args[:node_type_configs] if args.key?(:node_type_configs)
          @stretched_cluster_config = args[:stretched_cluster_config] if args.key?(:stretched_cluster_config)
        end
      end
      
      # Represents a binding between a network and the management DNS zone. A
      # management DNS zone is the Cloud DNS cross-project binding zone that VMware
      # Engine creates for each private cloud. It contains FQDNs and corresponding IP
      # addresses for the private cloud's ESXi hosts and management VM appliances like
      # vCenter and NSX Manager.
      class ManagementDnsZoneBinding
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-provided description for this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The resource name of this binding. Resource names are schemeless
        # URIs that follow the conventions in https://cloud.google.com/apis/design/
        # resource_names. For example: `projects/my-project/locations/us-central1-a/
        # privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-
        # binding`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Network to bind is a VMware Engine network. Specify the name in the following
        # form for VMware engine network: `projects/`project`/locations/global/
        # vmwareEngineNetworks/`vmware_engine_network_id``. ``project`` can either be a
        # project number or a project ID.
        # Corresponds to the JSON property `vmwareEngineNetwork`
        # @return [String]
        attr_accessor :vmware_engine_network
      
        # Network to bind is a standard consumer VPC. Specify the name in the following
        # form for consumer VPC network: `projects/`project`/global/networks/`network_id`
        # `. ``project`` can either be a project number or a project ID.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vmware_engine_network = args[:vmware_engine_network] if args.key?(:vmware_engine_network)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # Network configuration in the consumer project with which the peering has to be
      # done.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Output only. DNS Server IP of the Private Cloud. All DNS queries can be
        # forwarded to this address for name resolution of Private Cloud's management
        # entities like vCenter, NSX-T Manager and ESXi hosts.
        # Corresponds to the JSON property `dnsServerIp`
        # @return [String]
        attr_accessor :dns_server_ip
      
        # Required. Management CIDR used by VMware management appliances.
        # Corresponds to the JSON property `managementCidr`
        # @return [String]
        attr_accessor :management_cidr
      
        # Output only. The IP address layout version of the management IP address range.
        # Possible versions include: * `managementIpAddressLayoutVersion=1`: Indicates
        # the legacy IP address layout used by some existing private clouds. This is no
        # longer supported for new private clouds as it does not support all features. *
        # `managementIpAddressLayoutVersion=2`: Indicates the latest IP address layout
        # used by all newly created private clouds. This version supports all current
        # features.
        # Corresponds to the JSON property `managementIpAddressLayoutVersion`
        # @return [Fixnum]
        attr_accessor :management_ip_address_layout_version
      
        # Optional. The relative resource name of the VMware Engine network attached to
        # the private cloud. Specify the name in the following form: `projects/`project`/
        # locations/`location`/vmwareEngineNetworks/`vmware_engine_network_id`` where ``
        # project`` can either be a project number or a project ID.
        # Corresponds to the JSON property `vmwareEngineNetwork`
        # @return [String]
        attr_accessor :vmware_engine_network
      
        # Output only. The canonical name of the VMware Engine network in the form: `
        # projects/`project_number`/locations/`location`/vmwareEngineNetworks/`
        # vmware_engine_network_id``
        # Corresponds to the JSON property `vmwareEngineNetworkCanonical`
        # @return [String]
        attr_accessor :vmware_engine_network_canonical
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_server_ip = args[:dns_server_ip] if args.key?(:dns_server_ip)
          @management_cidr = args[:management_cidr] if args.key?(:management_cidr)
          @management_ip_address_layout_version = args[:management_ip_address_layout_version] if args.key?(:management_ip_address_layout_version)
          @vmware_engine_network = args[:vmware_engine_network] if args.key?(:vmware_engine_network)
          @vmware_engine_network_canonical = args[:vmware_engine_network_canonical] if args.key?(:vmware_engine_network_canonical)
        end
      end
      
      # Details of a network peering.
      class NetworkPeering
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description for this network peering.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. True if full mesh connectivity is created and managed automatically
        # between peered networks; false otherwise. Currently this field is always true
        # because Google Compute Engine automatically creates and manages subnetwork
        # routes between two VPC networks when peering state is 'ACTIVE'.
        # Corresponds to the JSON property `exchangeSubnetRoutes`
        # @return [Boolean]
        attr_accessor :exchange_subnet_routes
        alias_method :exchange_subnet_routes?, :exchange_subnet_routes
      
        # Optional. True if custom routes are exported to the peered network; false
        # otherwise. The default value is true.
        # Corresponds to the JSON property `exportCustomRoutes`
        # @return [Boolean]
        attr_accessor :export_custom_routes
        alias_method :export_custom_routes?, :export_custom_routes
      
        # Optional. True if all subnet routes with a public IP address range are
        # exported; false otherwise. The default value is true. IPv4 special-use ranges (
        # https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to
        # peers and are not controlled by this field.
        # Corresponds to the JSON property `exportCustomRoutesWithPublicIp`
        # @return [Boolean]
        attr_accessor :export_custom_routes_with_public_ip
        alias_method :export_custom_routes_with_public_ip?, :export_custom_routes_with_public_ip
      
        # Optional. True if custom routes are imported from the peered network; false
        # otherwise. The default value is true.
        # Corresponds to the JSON property `importCustomRoutes`
        # @return [Boolean]
        attr_accessor :import_custom_routes
        alias_method :import_custom_routes?, :import_custom_routes
      
        # Optional. True if all subnet routes with public IP address range are imported;
        # false otherwise. The default value is true. IPv4 special-use ranges (https://
        # en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported to peers and
        # are not controlled by this field.
        # Corresponds to the JSON property `importCustomRoutesWithPublicIp`
        # @return [Boolean]
        attr_accessor :import_custom_routes_with_public_ip
        alias_method :import_custom_routes_with_public_ip?, :import_custom_routes_with_public_ip
      
        # Output only. The resource name of the network peering. Resource names are
        # scheme-less URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. For example: `projects/my-project/locations/global/
        # networkPeerings/my-peering`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Maximum transmission unit (MTU) in bytes. The default value is `1500`
        # . If a value of `0` is provided for this field, VMware Engine uses the default
        # value instead.
        # Corresponds to the JSON property `peerMtu`
        # @return [Fixnum]
        attr_accessor :peer_mtu
      
        # Required. The relative resource name of the network to peer with a standard
        # VMware Engine network. The provided network can be a consumer VPC network or
        # another standard VMware Engine network. If the `peer_network_type` is
        # VMWARE_ENGINE_NETWORK, specify the name in the form: `projects/`project`/
        # locations/global/vmwareEngineNetworks/`vmware_engine_network_id``. Otherwise
        # specify the name in the form: `projects/`project`/global/networks/`network_id``
        # , where ``project`` can either be a project number or a project ID.
        # Corresponds to the JSON property `peerNetwork`
        # @return [String]
        attr_accessor :peer_network
      
        # Required. The type of the network to peer with the VMware Engine network.
        # Corresponds to the JSON property `peerNetworkType`
        # @return [String]
        attr_accessor :peer_network_type
      
        # Output only. State of the network peering. This field has a value of 'ACTIVE'
        # when there's a matching configuration in the peer network. New values may be
        # added to this enum when appropriate.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Output Only. Details about the current state of the network
        # peering.
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. The relative resource name of the VMware Engine network. Specify the
        # name in the following form: `projects/`project`/locations/`location`/
        # vmwareEngineNetworks/`vmware_engine_network_id`` where ``project`` can either
        # be a project number or a project ID.
        # Corresponds to the JSON property `vmwareEngineNetwork`
        # @return [String]
        attr_accessor :vmware_engine_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @exchange_subnet_routes = args[:exchange_subnet_routes] if args.key?(:exchange_subnet_routes)
          @export_custom_routes = args[:export_custom_routes] if args.key?(:export_custom_routes)
          @export_custom_routes_with_public_ip = args[:export_custom_routes_with_public_ip] if args.key?(:export_custom_routes_with_public_ip)
          @import_custom_routes = args[:import_custom_routes] if args.key?(:import_custom_routes)
          @import_custom_routes_with_public_ip = args[:import_custom_routes_with_public_ip] if args.key?(:import_custom_routes_with_public_ip)
          @name = args[:name] if args.key?(:name)
          @peer_mtu = args[:peer_mtu] if args.key?(:peer_mtu)
          @peer_network = args[:peer_network] if args.key?(:peer_network)
          @peer_network_type = args[:peer_network_type] if args.key?(:peer_network_type)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vmware_engine_network = args[:vmware_engine_network] if args.key?(:vmware_engine_network)
        end
      end
      
      # Represents a network policy resource. Network policies are regional resources.
      # You can use a network policy to enable or disable internet access and external
      # IP access. Network policies are associated with a VMware Engine network, which
      # might span across regions. For a given region, a network policy applies to all
      # private clouds in the VMware Engine network associated with the policy.
      class NetworkPolicy
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description for this network policy.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. IP address range in CIDR notation used to create internet access and
        # external IP access. An RFC 1918 CIDR block, with a "/26" prefix, is required.
        # The range cannot overlap with any prefixes either in the consumer VPC network
        # or in use by the private clouds attached to that VPC network.
        # Corresponds to the JSON property `edgeServicesCidr`
        # @return [String]
        attr_accessor :edge_services_cidr
      
        # Represents a network service that is managed by a `NetworkPolicy` resource. A
        # network service provides a way to control an aspect of external access to
        # VMware workloads. For example, whether the VMware workloads in the private
        # clouds governed by a network policy can access or be accessed from the
        # internet.
        # Corresponds to the JSON property `externalIp`
        # @return [Google::Apis::VmwareengineV1::NetworkService]
        attr_accessor :external_ip
      
        # Represents a network service that is managed by a `NetworkPolicy` resource. A
        # network service provides a way to control an aspect of external access to
        # VMware workloads. For example, whether the VMware workloads in the private
        # clouds governed by a network policy can access or be accessed from the
        # internet.
        # Corresponds to the JSON property `internetAccess`
        # @return [Google::Apis::VmwareengineV1::NetworkService]
        attr_accessor :internet_access
      
        # Output only. The resource name of this network policy. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. For example: `projects/my-project/locations/us-central1/
        # networkPolicies/my-network-policy`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. The relative resource name of the VMware Engine network. Specify the
        # name in the following form: `projects/`project`/locations/`location`/
        # vmwareEngineNetworks/`vmware_engine_network_id`` where ``project`` can either
        # be a project number or a project ID.
        # Corresponds to the JSON property `vmwareEngineNetwork`
        # @return [String]
        attr_accessor :vmware_engine_network
      
        # Output only. The canonical name of the VMware Engine network in the form: `
        # projects/`project_number`/locations/`location`/vmwareEngineNetworks/`
        # vmware_engine_network_id``
        # Corresponds to the JSON property `vmwareEngineNetworkCanonical`
        # @return [String]
        attr_accessor :vmware_engine_network_canonical
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @edge_services_cidr = args[:edge_services_cidr] if args.key?(:edge_services_cidr)
          @external_ip = args[:external_ip] if args.key?(:external_ip)
          @internet_access = args[:internet_access] if args.key?(:internet_access)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vmware_engine_network = args[:vmware_engine_network] if args.key?(:vmware_engine_network)
          @vmware_engine_network_canonical = args[:vmware_engine_network_canonical] if args.key?(:vmware_engine_network_canonical)
        end
      end
      
      # Represents a network service that is managed by a `NetworkPolicy` resource. A
      # network service provides a way to control an aspect of external access to
      # VMware workloads. For example, whether the VMware workloads in the private
      # clouds governed by a network policy can access or be accessed from the
      # internet.
      class NetworkService
        include Google::Apis::Core::Hashable
      
        # True if the service is enabled; false otherwise.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Output only. State of the service. New values may be added to this enum when
        # appropriate.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Node in a cluster.
      class Node
        include Google::Apis::Core::Hashable
      
        # Output only. Customized number of cores
        # Corresponds to the JSON property `customCoreCount`
        # @return [Fixnum]
        attr_accessor :custom_core_count
      
        # Output only. Fully qualified domain name of the node.
        # Corresponds to the JSON property `fqdn`
        # @return [String]
        attr_accessor :fqdn
      
        # Output only. Internal IP address of the node.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # Output only. The resource name of this node. Resource names are schemeless
        # URIs that follow the conventions in https://cloud.google.com/apis/design/
        # resource_names. For example: projects/my-project/locations/us-central1-a/
        # privateClouds/my-cloud/clusters/my-cluster/nodes/my-node
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The canonical identifier of the node type (corresponds to the `
        # NodeType`). For example: standard-72.
        # Corresponds to the JSON property `nodeTypeId`
        # @return [String]
        attr_accessor :node_type_id
      
        # Output only. The state of the appliance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The version number of the VMware ESXi management component in
        # this cluster.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_core_count = args[:custom_core_count] if args.key?(:custom_core_count)
          @fqdn = args[:fqdn] if args.key?(:fqdn)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @name = args[:name] if args.key?(:name)
          @node_type_id = args[:node_type_id] if args.key?(:node_type_id)
          @state = args[:state] if args.key?(:state)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Describes node type.
      class NodeType
        include Google::Apis::Core::Hashable
      
        # Output only. List of possible values of custom core count.
        # Corresponds to the JSON property `availableCustomCoreCounts`
        # @return [Array<Fixnum>]
        attr_accessor :available_custom_core_counts
      
        # Output only. Capabilities of this node type.
        # Corresponds to the JSON property `capabilities`
        # @return [Array<String>]
        attr_accessor :capabilities
      
        # Output only. The amount of storage available, defined in GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Output only. The friendly name for this node type. For example: ve1-standard-
        # 72
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The amount of physical memory available, defined in GB.
        # Corresponds to the JSON property `memoryGb`
        # @return [Fixnum]
        attr_accessor :memory_gb
      
        # Output only. The resource name of this node type. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. For example: `projects/my-proj/locations/us-central1-a/
        # nodeTypes/standard-72`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The canonical identifier of the node type (corresponds to the `
        # NodeType`). For example: standard-72.
        # Corresponds to the JSON property `nodeTypeId`
        # @return [String]
        attr_accessor :node_type_id
      
        # Output only. The total number of CPU cores in a single node.
        # Corresponds to the JSON property `totalCoreCount`
        # @return [Fixnum]
        attr_accessor :total_core_count
      
        # Output only. The total number of virtual CPUs in a single node.
        # Corresponds to the JSON property `virtualCpuCount`
        # @return [Fixnum]
        attr_accessor :virtual_cpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_custom_core_counts = args[:available_custom_core_counts] if args.key?(:available_custom_core_counts)
          @capabilities = args[:capabilities] if args.key?(:capabilities)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @display_name = args[:display_name] if args.key?(:display_name)
          @memory_gb = args[:memory_gb] if args.key?(:memory_gb)
          @name = args[:name] if args.key?(:name)
          @node_type_id = args[:node_type_id] if args.key?(:node_type_id)
          @total_core_count = args[:total_core_count] if args.key?(:total_core_count)
          @virtual_cpu_count = args[:virtual_cpu_count] if args.key?(:virtual_cpu_count)
        end
      end
      
      # Information about the type and number of nodes associated with the cluster.
      class NodeTypeConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Customized number of cores available to each node of the type. This
        # number must always be one of `nodeType.availableCustomCoreCounts`. If zero is
        # provided max value from `nodeType.availableCustomCoreCounts` will be used.
        # Corresponds to the JSON property `customCoreCount`
        # @return [Fixnum]
        attr_accessor :custom_core_count
      
        # Required. The number of nodes of this type in the cluster
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_core_count = args[:custom_core_count] if args.key?(:custom_core_count)
          @node_count = args[:node_count] if args.key?(:node_count)
        end
      end
      
      # Details about a NSX Manager appliance.
      class Nsx
        include Google::Apis::Core::Hashable
      
        # Fully qualified domain name of the appliance.
        # Corresponds to the JSON property `fqdn`
        # @return [String]
        attr_accessor :fqdn
      
        # Internal IP address of the appliance.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # Output only. The state of the appliance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Version of the appliance.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fqdn = args[:fqdn] if args.key?(:fqdn)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @state = args[:state] if args.key?(:state)
          @version = args[:version] if args.key?(:version)
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
        # @return [Google::Apis::VmwareengineV1::Status]
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
      
        # Output only. True if the user has requested cancellation of the operation;
        # false otherwise. Operations that have successfully been cancelled have
        # Operation.error value with a google.rpc.Status.code of 1, corresponding to `
        # Code.CANCELLED`.
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
      
      # Exchanged network peering route.
      class PeeringRoute
        include Google::Apis::Core::Hashable
      
        # Output only. Destination range of the peering route in CIDR notation.
        # Corresponds to the JSON property `destRange`
        # @return [String]
        attr_accessor :dest_range
      
        # Output only. Direction of the routes exchanged with the peer network, from the
        # VMware Engine network perspective: * Routes of direction `INCOMING` are
        # imported from the peer network. * Routes of direction `OUTGOING` are exported
        # from the intranet VPC network of the VMware Engine network.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # Output only. True if the peering route has been imported from a peered VPC
        # network; false otherwise. The import happens if the field `NetworkPeering.
        # importCustomRoutes` is true for this network, `NetworkPeering.
        # exportCustomRoutes` is true for the peer VPC network, and the import does not
        # result in a route conflict.
        # Corresponds to the JSON property `imported`
        # @return [Boolean]
        attr_accessor :imported
        alias_method :imported?, :imported
      
        # Output only. Region containing the next hop of the peering route. This field
        # only applies to dynamic routes in the peer VPC network.
        # Corresponds to the JSON property `nextHopRegion`
        # @return [String]
        attr_accessor :next_hop_region
      
        # Output only. The priority of the peering route.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Output only. Type of the route in the peer VPC network.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dest_range = args[:dest_range] if args.key?(:dest_range)
          @direction = args[:direction] if args.key?(:direction)
          @imported = args[:imported] if args.key?(:imported)
          @next_hop_region = args[:next_hop_region] if args.key?(:next_hop_region)
          @priority = args[:priority] if args.key?(:priority)
          @type = args[:type] if args.key?(:type)
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
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::VmwareengineV1::AuditConfig>]
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
        # @return [Array<Google::Apis::VmwareengineV1::Binding>]
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
      
      # Users/Service accounts which have access for DNS binding on the intranet VPC
      # corresponding to the consumer project.
      class Principal
        include Google::Apis::Core::Hashable
      
        # The service account which needs to be granted the permission.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The user who needs to be granted permission.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account = args[:service_account] if args.key?(:service_account)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Represents a private cloud resource. Private clouds of type `STANDARD` and `
      # TIME_LIMITED` are zonal resources, `STRETCHED` private clouds are regional.
      class PrivateCloud
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time when the resource was scheduled for deletion.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # User-provided description for this private cloud.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Time when the resource will be irreversibly deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Details about a HCX Cloud Manager appliance.
        # Corresponds to the JSON property `hcx`
        # @return [Google::Apis::VmwareengineV1::Hcx]
        attr_accessor :hcx
      
        # Management cluster configuration.
        # Corresponds to the JSON property `managementCluster`
        # @return [Google::Apis::VmwareengineV1::ManagementCluster]
        attr_accessor :management_cluster
      
        # Output only. The resource name of this private cloud. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. For example: `projects/my-project/locations/us-central1-
        # a/privateClouds/my-cloud`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Network configuration in the consumer project with which the peering has to be
        # done.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::VmwareengineV1::NetworkConfig]
        attr_accessor :network_config
      
        # Details about a NSX Manager appliance.
        # Corresponds to the JSON property `nsx`
        # @return [Google::Apis::VmwareengineV1::Nsx]
        attr_accessor :nsx
      
        # Output only. State of the resource. New values may be added to this enum when
        # appropriate.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. Type of the private cloud. Defaults to STANDARD.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Details about a vCenter Server management appliance.
        # Corresponds to the JSON property `vcenter`
        # @return [Google::Apis::VmwareengineV1::Vcenter]
        attr_accessor :vcenter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @hcx = args[:hcx] if args.key?(:hcx)
          @management_cluster = args[:management_cluster] if args.key?(:management_cluster)
          @name = args[:name] if args.key?(:name)
          @network_config = args[:network_config] if args.key?(:network_config)
          @nsx = args[:nsx] if args.key?(:nsx)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vcenter = args[:vcenter] if args.key?(:vcenter)
        end
      end
      
      # Private connection resource that provides connectivity for VMware Engine
      # private clouds.
      class PrivateConnection
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description for this private connection.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The resource name of the private connection. Resource names are
        # schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        # design/resource_names. For example: `projects/my-project/locations/us-central1/
        # privateConnections/my-connection`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. VPC network peering id between given network VPC and
        # VMwareEngineNetwork.
        # Corresponds to the JSON property `peeringId`
        # @return [String]
        attr_accessor :peering_id
      
        # Output only. Peering state between service network and VMware Engine network.
        # Corresponds to the JSON property `peeringState`
        # @return [String]
        attr_accessor :peering_state
      
        # Optional. Routing Mode. Default value is set to GLOBAL. For type =
        # PRIVATE_SERVICE_ACCESS, this field can be set to GLOBAL or REGIONAL, for other
        # types only GLOBAL is supported.
        # Corresponds to the JSON property `routingMode`
        # @return [String]
        attr_accessor :routing_mode
      
        # Required. Service network to create private connection. Specify the name in
        # the following form: `projects/`project`/global/networks/`network_id`` For type
        # = PRIVATE_SERVICE_ACCESS, this field represents servicenetworking VPC, e.g.
        # projects/project-tp/global/networks/servicenetworking. For type =
        # NETAPP_CLOUD_VOLUME, this field represents NetApp service VPC, e.g. projects/
        # project-tp/global/networks/netapp-tenant-vpc. For type = DELL_POWERSCALE, this
        # field represent Dell service VPC, e.g. projects/project-tp/global/networks/
        # dell-tenant-vpc. For type= THIRD_PARTY_SERVICE, this field could represent a
        # consumer VPC or any other producer VPC to which the VMware Engine Network
        # needs to be connected, e.g. projects/project/global/networks/vpc.
        # Corresponds to the JSON property `serviceNetwork`
        # @return [String]
        attr_accessor :service_network
      
        # Output only. State of the private connection.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. Private connection type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. The relative resource name of Legacy VMware Engine network. Specify
        # the name in the following form: `projects/`project`/locations/`location`/
        # vmwareEngineNetworks/`vmware_engine_network_id`` where ``project``, ``location`
        # ` will be same as specified in private connection resource name and ``
        # vmware_engine_network_id`` will be in the form of ``location``-default e.g.
        # projects/project/locations/us-central1/vmwareEngineNetworks/us-central1-
        # default.
        # Corresponds to the JSON property `vmwareEngineNetwork`
        # @return [String]
        attr_accessor :vmware_engine_network
      
        # Output only. The canonical name of the VMware Engine network in the form: `
        # projects/`project_number`/locations/`location`/vmwareEngineNetworks/`
        # vmware_engine_network_id``
        # Corresponds to the JSON property `vmwareEngineNetworkCanonical`
        # @return [String]
        attr_accessor :vmware_engine_network_canonical
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @peering_id = args[:peering_id] if args.key?(:peering_id)
          @peering_state = args[:peering_state] if args.key?(:peering_state)
          @routing_mode = args[:routing_mode] if args.key?(:routing_mode)
          @service_network = args[:service_network] if args.key?(:service_network)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vmware_engine_network = args[:vmware_engine_network] if args.key?(:vmware_engine_network)
          @vmware_engine_network_canonical = args[:vmware_engine_network_canonical] if args.key?(:vmware_engine_network_canonical)
        end
      end
      
      # Request message for VmwareEngine.RepairManagementDnsZoneBindings
      class RepairManagementDnsZoneBindingRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A request ID to identify requests. Specify a unique request ID so
        # that if you must retry your request, the server will know to ignore the
        # request if it has already been completed. The server guarantees that a request
        # doesn't result in creation of duplicate commitments for at least 60 minutes.
        # For example, consider a situation where you make an initial request and the
        # request times out. If you make the request again with the same request ID, the
        # server can check if the original operation with the same request ID was
        # received, and if so, will ignore the second request. This prevents clients
        # from accidentally creating duplicate commitments. The request ID must be a
        # valid UUID with the exception that zero UUID is not supported (00000000-0000-
        # 0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request message for VmwareEngine.ResetNsxCredentials
      class ResetNsxCredentialsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A request ID to identify requests. Specify a unique request ID so
        # that if you must retry your request, the server will know to ignore the
        # request if it has already been completed. The server guarantees that a request
        # doesn't result in creation of duplicate commitments for at least 60 minutes.
        # For example, consider a situation where you make an initial request and the
        # request times out. If you make the request again with the same request ID, the
        # server can check if original operation with the same request ID was received,
        # and if so, will ignore the second request. This prevents clients from
        # accidentally creating duplicate commitments. The request ID must be a valid
        # UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        # 0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Request message for VmwareEngine.ResetVcenterCredentials
      class ResetVcenterCredentialsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A request ID to identify requests. Specify a unique request ID so
        # that if you must retry your request, the server will know to ignore the
        # request if it has already been completed. The server guarantees that a request
        # doesn't result in creation of duplicate commitments for at least 60 minutes.
        # For example, consider a situation where you make an initial request and the
        # request times out. If you make the request again with the same request ID, the
        # server can check if original operation with the same request ID was received,
        # and if so, will ignore the second request. This prevents clients from
        # accidentally creating duplicate commitments. The request ID must be a valid
        # UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        # 0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. The username of the user to be to reset the credentials. The default
        # value of this field is CloudOwner@gve.local. The provided value should be one
        # of the following: solution-user-01@gve.local, solution-user-02@gve.local,
        # solution-user-03@gve.local, solution-user-04@gve.local, solution-user-05@gve.
        # local, zertoadmin@gve.local.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Request message for VmwareEngine.RevokeDnsBindPermission
      class RevokeDnsBindPermissionRequest
        include Google::Apis::Core::Hashable
      
        # Users/Service accounts which have access for DNS binding on the intranet VPC
        # corresponding to the consumer project.
        # Corresponds to the JSON property `principal`
        # @return [Google::Apis::VmwareengineV1::Principal]
        attr_accessor :principal
      
        # Optional. A request ID to identify requests. Specify a unique request ID so
        # that if you must retry your request, the server will know to ignore the
        # request if it has already been completed. The server guarantees that a request
        # doesn't result in creation of duplicate commitments for at least 60 minutes.
        # For example, consider a situation where you make an initial request and the
        # request times out. If you make the request again with the same request ID, the
        # server can check if original operation with the same request ID was received,
        # and if so, will ignore the second request. This prevents clients from
        # accidentally creating duplicate commitments. The request ID must be a valid
        # UUID with the exception that zero UUID is not supported (00000000-0000-0000-
        # 0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal = args[:principal] if args.key?(:principal)
          @request_id = args[:request_id] if args.key?(:request_id)
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
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::VmwareengineV1::Policy]
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
      
      # Configuration of a stretched cluster.
      class StretchedClusterConfig
        include Google::Apis::Core::Hashable
      
        # Required. Zone that will remain operational when connection between the two
        # zones is lost. Specify the resource name of a zone that belongs to the region
        # of the private cloud. For example: `projects/`project`/locations/europe-west3-
        # a` where ``project`` can either be a project number or a project ID.
        # Corresponds to the JSON property `preferredLocation`
        # @return [String]
        attr_accessor :preferred_location
      
        # Required. Additional zone for a higher level of availability and load
        # balancing. Specify the resource name of a zone that belongs to the region of
        # the private cloud. For example: `projects/`project`/locations/europe-west3-b`
        # where ``project`` can either be a project number or a project ID.
        # Corresponds to the JSON property `secondaryLocation`
        # @return [String]
        attr_accessor :secondary_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @preferred_location = args[:preferred_location] if args.key?(:preferred_location)
          @secondary_location = args[:secondary_location] if args.key?(:secondary_location)
        end
      end
      
      # Subnet in a private cloud. Either `management` subnets (such as vMotion) that
      # are read-only, or `userDefined`, which can also be updated.
      class Subnet
        include Google::Apis::Core::Hashable
      
        # The IP address of the gateway of this subnet. Must fall within the IP prefix
        # defined above.
        # Corresponds to the JSON property `gatewayIp`
        # @return [String]
        attr_accessor :gateway_ip
      
        # The IP address range of the subnet in CIDR format '10.0.0.0/24'.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # Output only. The resource name of this subnet. Resource names are schemeless
        # URIs that follow the conventions in https://cloud.google.com/apis/design/
        # resource_names. For example: `projects/my-project/locations/us-central1-a/
        # privateClouds/my-cloud/subnets/my-subnet`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The type of the subnet. For example "management" or "userDefined".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. VLAN ID of the VLAN on which the subnet is configured
        # Corresponds to the JSON property `vlanId`
        # @return [Fixnum]
        attr_accessor :vlan_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gateway_ip = args[:gateway_ip] if args.key?(:gateway_ip)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @vlan_id = args[:vlan_id] if args.key?(:vlan_id)
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
      
      # Request message for VmwareEngine.UndeletePrivateCloud
      class UndeletePrivateCloudRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The request ID must be a valid UUID with the exception that zero
        # UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Details about a vCenter Server management appliance.
      class Vcenter
        include Google::Apis::Core::Hashable
      
        # Fully qualified domain name of the appliance.
        # Corresponds to the JSON property `fqdn`
        # @return [String]
        attr_accessor :fqdn
      
        # Internal IP address of the appliance.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # Output only. The state of the appliance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Version of the appliance.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fqdn = args[:fqdn] if args.key?(:fqdn)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @state = args[:state] if args.key?(:state)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # VMware Engine network resource that provides connectivity for VMware Engine
      # private clouds.
      class VmwareEngineNetwork
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-provided description for this VMware Engine network.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Checksum that may be sent on update and delete requests to ensure that the
        # user-provided value is up to date before the server processes a request. The
        # server computes checksums based on the value of other fields in the request.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The resource name of the VMware Engine network. Resource names
        # are schemeless URIs that follow the conventions in https://cloud.google.com/
        # apis/design/resource_names. For example: `projects/my-project/locations/global/
        # vmwareEngineNetworks/my-network`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the VMware Engine network.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. VMware Engine network type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. System-generated unique identifier for the resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. Last update time of this resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. VMware Engine service VPC networks that provide connectivity from
        # a private cloud to customer projects, the internet, and other Google Cloud
        # services.
        # Corresponds to the JSON property `vpcNetworks`
        # @return [Array<Google::Apis::VmwareengineV1::VpcNetwork>]
        attr_accessor :vpc_networks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vpc_networks = args[:vpc_networks] if args.key?(:vpc_networks)
        end
      end
      
      # Represents a VMware Engine VPC network that is managed by a VMware Engine
      # network resource.
      class VpcNetwork
        include Google::Apis::Core::Hashable
      
        # Output only. The relative resource name of the service VPC network this VMware
        # Engine network is attached to. For example: `projects/123123/global/networks/
        # my-network`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @type = args[:type] if args.key?(:type)
        end
      end
    end
  end
end
