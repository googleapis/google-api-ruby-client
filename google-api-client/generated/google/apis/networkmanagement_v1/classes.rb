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
    module NetworkmanagementV1
      
      # Details of the final state "abort" and associated resource.
      class AbortInfo
        include Google::Apis::Core::Hashable
      
        # Causes that the analysis is aborted.
        # Corresponds to the JSON property `cause`
        # @return [String]
        attr_accessor :cause
      
        # URI of the resource that caused the abort.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
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
        # @return [Array<Google::Apis::NetworkmanagementV1::AuditLogConfig>]
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
      
        # 
        # Corresponds to the JSON property `bindingId`
        # @return [String]
        attr_accessor :binding_id
      
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
        # @return [Google::Apis::NetworkmanagementV1::Expr]
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
          @binding_id = args[:binding_id] if args.key?(:binding_id)
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
      
      # A Connectivity Test for a network reachability analysis.
      class ConnectivityTest
        include Google::Apis::Core::Hashable
      
        # Output only. The time the test was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The user-supplied description of the Connectivity Test. Maximum of 512
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Source or destination of the Connectivity Test.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::NetworkmanagementV1::Endpoint]
        attr_accessor :destination
      
        # Output only. The display name of a Connectivity Test.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource labels to represent user-provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Unique name of the resource using the form: `projects/`project_id`/
        # locations/global/connectivityTests/`test_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # IP Protocol of the test. When not provided, "TCP" is assumed.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The details of reachability state from the latest run.
        # Corresponds to the JSON property `reachabilityDetails`
        # @return [Google::Apis::NetworkmanagementV1::ReachabilityDetails]
        attr_accessor :reachability_details
      
        # Other projects that may be relevant for reachability analysis. This is
        # applicable to scenarios where a test can cross project boundaries.
        # Corresponds to the JSON property `relatedProjects`
        # @return [Array<String>]
        attr_accessor :related_projects
      
        # Source or destination of the Connectivity Test.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::NetworkmanagementV1::Endpoint]
        attr_accessor :source
      
        # Output only. The time the test's configuration was updated.
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
          @destination = args[:destination] if args.key?(:destination)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @protocol = args[:protocol] if args.key?(:protocol)
          @reachability_details = args[:reachability_details] if args.key?(:reachability_details)
          @related_projects = args[:related_projects] if args.key?(:related_projects)
          @source = args[:source] if args.key?(:source)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Details of the final state "deliver" and associated resource.
      class DeliverInfo
        include Google::Apis::Core::Hashable
      
        # URI of the resource that the packet is delivered to.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Target type where the packet is delivered to.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Details of the final state "drop" and associated resource.
      class DropInfo
        include Google::Apis::Core::Hashable
      
        # Cause that the packet is dropped.
        # Corresponds to the JSON property `cause`
        # @return [String]
        attr_accessor :cause
      
        # URI of the resource that caused the drop.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
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
      
      # Source or destination of the Connectivity Test.
      class Endpoint
        include Google::Apis::Core::Hashable
      
        # A Compute Engine instance URI.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # The IP address of the endpoint, which can be an external or internal IP. An
        # IPv6 address is only allowed when the test's destination is a [global load
        # balancer VIP](/load-balancing/docs/load-balancing-overview).
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # A Compute Engine network URI.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Type of the network where the endpoint is located. Applicable only to source
        # endpoint, as destination network type can be inferred from the source.
        # Corresponds to the JSON property `networkType`
        # @return [String]
        attr_accessor :network_type
      
        # The IP protocol port of the endpoint. Only applicable when protocol is TCP or
        # UDP.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Project ID where the endpoint is located. The Project ID can be derived from
        # the URI if you provide a VM instance or network URI. The following are two
        # cases where you must provide the project ID: 1. Only the IP address is
        # specified, and the IP address is within a GCP project. 2. When you are using
        # Shared VPC and the IP address that you provide is from the service project. In
        # this case, the network that the IP address resides in is defined in the host
        # project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @network = args[:network] if args.key?(:network)
          @network_type = args[:network_type] if args.key?(:network_type)
          @port = args[:port] if args.key?(:port)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # For display only. The specification of the endpoints for the test.
      # EndpointInfo is derived from source and destination Endpoint and validated by
      # the backend data plane model.
      class EndpointInfo
        include Google::Apis::Core::Hashable
      
        # Destination IP address.
        # Corresponds to the JSON property `destinationIp`
        # @return [String]
        attr_accessor :destination_ip
      
        # URI of the network where this packet is sent to.
        # Corresponds to the JSON property `destinationNetworkUri`
        # @return [String]
        attr_accessor :destination_network_uri
      
        # Destination port. Only valid when protocol is TCP or UDP.
        # Corresponds to the JSON property `destinationPort`
        # @return [Fixnum]
        attr_accessor :destination_port
      
        # IP protocol in string format, for example: "TCP", "UDP", "ICMP".
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Source IP address.
        # Corresponds to the JSON property `sourceIp`
        # @return [String]
        attr_accessor :source_ip
      
        # URI of the network where this packet originates from.
        # Corresponds to the JSON property `sourceNetworkUri`
        # @return [String]
        attr_accessor :source_network_uri
      
        # Source port. Only valid when protocol is TCP or UDP.
        # Corresponds to the JSON property `sourcePort`
        # @return [Fixnum]
        attr_accessor :source_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_ip = args[:destination_ip] if args.key?(:destination_ip)
          @destination_network_uri = args[:destination_network_uri] if args.key?(:destination_network_uri)
          @destination_port = args[:destination_port] if args.key?(:destination_port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @source_ip = args[:source_ip] if args.key?(:source_ip)
          @source_network_uri = args[:source_network_uri] if args.key?(:source_network_uri)
          @source_port = args[:source_port] if args.key?(:source_port)
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
      
      # For display only. Metadata associated with a Compute Engine firewall rule.
      class FirewallInfo
        include Google::Apis::Core::Hashable
      
        # Possible values: ALLOW, DENY
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Possible values: INGRESS, EGRESS
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # Name of a Compute Engine firewall rule.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # URI of a Compute Engine network.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Priority of the firewall rule.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Target service accounts of the firewall rule.
        # Corresponds to the JSON property `targetServiceAccounts`
        # @return [Array<String>]
        attr_accessor :target_service_accounts
      
        # Target tags of the firewall rule.
        # Corresponds to the JSON property `targetTags`
        # @return [Array<String>]
        attr_accessor :target_tags
      
        # URI of a Compute Engine firewall rule. Implied default rule does not have URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @direction = args[:direction] if args.key?(:direction)
          @display_name = args[:display_name] if args.key?(:display_name)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @priority = args[:priority] if args.key?(:priority)
          @target_service_accounts = args[:target_service_accounts] if args.key?(:target_service_accounts)
          @target_tags = args[:target_tags] if args.key?(:target_tags)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Details of the final state "forward" and associated resource.
      class ForwardInfo
        include Google::Apis::Core::Hashable
      
        # URI of the resource that the packet is forwarded to.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Target type where this packet is forwarded to.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # For display only. Metadata associated with a Compute Engine forwarding rule.
      class ForwardingRuleInfo
        include Google::Apis::Core::Hashable
      
        # Name of a Compute Engine forwarding rule.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Port range defined in the forwarding rule that matches the test.
        # Corresponds to the JSON property `matchedPortRange`
        # @return [String]
        attr_accessor :matched_port_range
      
        # Protocol defined in the forwarding rule that matches the test.
        # Corresponds to the JSON property `matchedProtocol`
        # @return [String]
        attr_accessor :matched_protocol
      
        # Network URI. Only valid for Internal Load Balancer.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Target type of the forwarding rule.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # URI of a Compute Engine forwarding rule.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # VIP of the forwarding rule.
        # Corresponds to the JSON property `vip`
        # @return [String]
        attr_accessor :vip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @matched_port_range = args[:matched_port_range] if args.key?(:matched_port_range)
          @matched_protocol = args[:matched_protocol] if args.key?(:matched_protocol)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @target = args[:target] if args.key?(:target)
          @uri = args[:uri] if args.key?(:uri)
          @vip = args[:vip] if args.key?(:vip)
        end
      end
      
      # For display only. Metadata associated with a Compute Engine instance.
      class InstanceInfo
        include Google::Apis::Core::Hashable
      
        # Name of a Compute Engine instance.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # External IP address of the network interface.
        # Corresponds to the JSON property `externalIp`
        # @return [String]
        attr_accessor :external_ip
      
        # Name of the network interface of a Compute Engine instance.
        # Corresponds to the JSON property `interface`
        # @return [String]
        attr_accessor :interface
      
        # Internal IP address of the network interface.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # Network tags configured on the instance.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # URI of a Compute Engine network.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Service account authorized for the instance.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # URI of a Compute Engine instance.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @external_ip = args[:external_ip] if args.key?(:external_ip)
          @interface = args[:interface] if args.key?(:interface)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @service_account = args[:service_account] if args.key?(:service_account)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Response for the `ListConnectivityTests` method.
      class ListConnectivityTestsResponse
        include Google::Apis::Core::Hashable
      
        # Page token to fetch the next set of Connectivity Tests.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Connectivity Tests.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::NetworkmanagementV1::ConnectivityTest>]
        attr_accessor :resources
      
        # Locations that could not be reached (when querying all locations with `-`).
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
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworkmanagementV1::Location>]
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
        # @return [Array<Google::Apis::NetworkmanagementV1::Operation>]
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
      
      # For display only. Metadata associated with a specific load balancer backend.
      class LoadBalancerBackend
        include Google::Apis::Core::Hashable
      
        # Name of a Compute Engine instance or network endpoint.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A list of firewall rule URIs allowing probes from health check IP ranges.
        # Corresponds to the JSON property `healthCheckAllowingFirewallRules`
        # @return [Array<String>]
        attr_accessor :health_check_allowing_firewall_rules
      
        # A list of firewall rule URIs blocking probes from health check IP ranges.
        # Corresponds to the JSON property `healthCheckBlockingFirewallRules`
        # @return [Array<String>]
        attr_accessor :health_check_blocking_firewall_rules
      
        # State of the health check firewall configuration.
        # Corresponds to the JSON property `healthCheckFirewallState`
        # @return [String]
        attr_accessor :health_check_firewall_state
      
        # URI of a Compute Engine instance or network endpoint.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @health_check_allowing_firewall_rules = args[:health_check_allowing_firewall_rules] if args.key?(:health_check_allowing_firewall_rules)
          @health_check_blocking_firewall_rules = args[:health_check_blocking_firewall_rules] if args.key?(:health_check_blocking_firewall_rules)
          @health_check_firewall_state = args[:health_check_firewall_state] if args.key?(:health_check_firewall_state)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # For display only. Metadata associated with a load balancer.
      class LoadBalancerInfo
        include Google::Apis::Core::Hashable
      
        # Type of load balancer's backend configuration.
        # Corresponds to the JSON property `backendType`
        # @return [String]
        attr_accessor :backend_type
      
        # Backend configuration URI.
        # Corresponds to the JSON property `backendUri`
        # @return [String]
        attr_accessor :backend_uri
      
        # Information for the loadbalancer backends.
        # Corresponds to the JSON property `backends`
        # @return [Array<Google::Apis::NetworkmanagementV1::LoadBalancerBackend>]
        attr_accessor :backends
      
        # URI of the health check for the load balancer.
        # Corresponds to the JSON property `healthCheckUri`
        # @return [String]
        attr_accessor :health_check_uri
      
        # Type of the load balancer.
        # Corresponds to the JSON property `loadBalancerType`
        # @return [String]
        attr_accessor :load_balancer_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backend_type = args[:backend_type] if args.key?(:backend_type)
          @backend_uri = args[:backend_uri] if args.key?(:backend_uri)
          @backends = args[:backends] if args.key?(:backends)
          @health_check_uri = args[:health_check_uri] if args.key?(:health_check_uri)
          @load_balancer_type = args[:load_balancer_type] if args.key?(:load_balancer_type)
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
      
      # For display only. Metadata associated with a Compute Engine network.
      class NetworkInfo
        include Google::Apis::Core::Hashable
      
        # Name of a Compute Engine network.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The IP range that matches the test.
        # Corresponds to the JSON property `matchedIpRange`
        # @return [String]
        attr_accessor :matched_ip_range
      
        # URI of a Compute Engine network.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @matched_ip_range = args[:matched_ip_range] if args.key?(:matched_ip_range)
          @uri = args[:uri] if args.key?(:uri)
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
        # @return [Google::Apis::NetworkmanagementV1::Status]
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
      
      # Metadata describing an Operation
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # API version.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Specifies if cancellation was requested for the operation.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # Target of the operation - for example projects/project-1/locations/global/
        # connectivityTests/test-1
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
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
        # @return [Array<Google::Apis::NetworkmanagementV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::NetworkmanagementV1::Binding>]
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
      
      # The details of reachability state from the latest run.
      class ReachabilityDetails
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::NetworkmanagementV1::Status]
        attr_accessor :error
      
        # The overall reachability result of the test.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # Result may contain a list of traces if a test has multiple possible paths in
        # the network, such as when destination endpoint is a load balancer with
        # multiple backends.
        # Corresponds to the JSON property `traces`
        # @return [Array<Google::Apis::NetworkmanagementV1::Trace>]
        attr_accessor :traces
      
        # The time the reachability state was verified.
        # Corresponds to the JSON property `verifyTime`
        # @return [String]
        attr_accessor :verify_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @result = args[:result] if args.key?(:result)
          @traces = args[:traces] if args.key?(:traces)
          @verify_time = args[:verify_time] if args.key?(:verify_time)
        end
      end
      
      # Request for the `RerunConnectivityTest` method.
      class RerunConnectivityTestRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # For display only. Metadata associated with a Compute Engine route.
      class RouteInfo
        include Google::Apis::Core::Hashable
      
        # Destination IP range of the route.
        # Corresponds to the JSON property `destIpRange`
        # @return [String]
        attr_accessor :dest_ip_range
      
        # Name of a Compute Engine route.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Instance tags of the route.
        # Corresponds to the JSON property `instanceTags`
        # @return [Array<String>]
        attr_accessor :instance_tags
      
        # URI of a Compute Engine network.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Next hop of the route.
        # Corresponds to the JSON property `nextHop`
        # @return [String]
        attr_accessor :next_hop
      
        # Type of next hop.
        # Corresponds to the JSON property `nextHopType`
        # @return [String]
        attr_accessor :next_hop_type
      
        # Priority of the route.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Type of route.
        # Corresponds to the JSON property `routeType`
        # @return [String]
        attr_accessor :route_type
      
        # URI of a Compute Engine route. Dynamic route from cloud router does not have a
        # URI. Advertised route from Google Cloud VPC to on-premises network also does
        # not have a URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dest_ip_range = args[:dest_ip_range] if args.key?(:dest_ip_range)
          @display_name = args[:display_name] if args.key?(:display_name)
          @instance_tags = args[:instance_tags] if args.key?(:instance_tags)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @next_hop = args[:next_hop] if args.key?(:next_hop)
          @next_hop_type = args[:next_hop_type] if args.key?(:next_hop_type)
          @priority = args[:priority] if args.key?(:priority)
          @route_type = args[:route_type] if args.key?(:route_type)
          @uri = args[:uri] if args.key?(:uri)
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
        # @return [Google::Apis::NetworkmanagementV1::Policy]
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
      
      # A simulated forwarding path is composed of multiple steps. Each step has a
      # well-defined state and an associated configuration.
      class Step
        include Google::Apis::Core::Hashable
      
        # Details of the final state "abort" and associated resource.
        # Corresponds to the JSON property `abort`
        # @return [Google::Apis::NetworkmanagementV1::AbortInfo]
        attr_accessor :abort
      
        # This is a step that leads to the final state Drop.
        # Corresponds to the JSON property `causesDrop`
        # @return [Boolean]
        attr_accessor :causes_drop
        alias_method :causes_drop?, :causes_drop
      
        # Details of the final state "deliver" and associated resource.
        # Corresponds to the JSON property `deliver`
        # @return [Google::Apis::NetworkmanagementV1::DeliverInfo]
        attr_accessor :deliver
      
        # A description of the step. Usually this is a summary of the state.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Details of the final state "drop" and associated resource.
        # Corresponds to the JSON property `drop`
        # @return [Google::Apis::NetworkmanagementV1::DropInfo]
        attr_accessor :drop
      
        # For display only. The specification of the endpoints for the test.
        # EndpointInfo is derived from source and destination Endpoint and validated by
        # the backend data plane model.
        # Corresponds to the JSON property `endpoint`
        # @return [Google::Apis::NetworkmanagementV1::EndpointInfo]
        attr_accessor :endpoint
      
        # For display only. Metadata associated with a Compute Engine firewall rule.
        # Corresponds to the JSON property `firewall`
        # @return [Google::Apis::NetworkmanagementV1::FirewallInfo]
        attr_accessor :firewall
      
        # Details of the final state "forward" and associated resource.
        # Corresponds to the JSON property `forward`
        # @return [Google::Apis::NetworkmanagementV1::ForwardInfo]
        attr_accessor :forward
      
        # For display only. Metadata associated with a Compute Engine forwarding rule.
        # Corresponds to the JSON property `forwardingRule`
        # @return [Google::Apis::NetworkmanagementV1::ForwardingRuleInfo]
        attr_accessor :forwarding_rule
      
        # For display only. Metadata associated with a Compute Engine instance.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::NetworkmanagementV1::InstanceInfo]
        attr_accessor :instance
      
        # For display only. Metadata associated with a load balancer.
        # Corresponds to the JSON property `loadBalancer`
        # @return [Google::Apis::NetworkmanagementV1::LoadBalancerInfo]
        attr_accessor :load_balancer
      
        # For display only. Metadata associated with a Compute Engine network.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::NetworkmanagementV1::NetworkInfo]
        attr_accessor :network
      
        # Project ID that contains the configuration this step is validating.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # For display only. Metadata associated with a Compute Engine route.
        # Corresponds to the JSON property `route`
        # @return [Google::Apis::NetworkmanagementV1::RouteInfo]
        attr_accessor :route
      
        # Each step is in one of the pre-defined states.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # For display only. Metadata associated with a Compute Engine VPN gateway.
        # Corresponds to the JSON property `vpnGateway`
        # @return [Google::Apis::NetworkmanagementV1::VpnGatewayInfo]
        attr_accessor :vpn_gateway
      
        # For display only. Metadata associated with a Compute Engine VPN tunnel.
        # Corresponds to the JSON property `vpnTunnel`
        # @return [Google::Apis::NetworkmanagementV1::VpnTunnelInfo]
        attr_accessor :vpn_tunnel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abort = args[:abort] if args.key?(:abort)
          @causes_drop = args[:causes_drop] if args.key?(:causes_drop)
          @deliver = args[:deliver] if args.key?(:deliver)
          @description = args[:description] if args.key?(:description)
          @drop = args[:drop] if args.key?(:drop)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @firewall = args[:firewall] if args.key?(:firewall)
          @forward = args[:forward] if args.key?(:forward)
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @instance = args[:instance] if args.key?(:instance)
          @load_balancer = args[:load_balancer] if args.key?(:load_balancer)
          @network = args[:network] if args.key?(:network)
          @project_id = args[:project_id] if args.key?(:project_id)
          @route = args[:route] if args.key?(:route)
          @state = args[:state] if args.key?(:state)
          @vpn_gateway = args[:vpn_gateway] if args.key?(:vpn_gateway)
          @vpn_tunnel = args[:vpn_tunnel] if args.key?(:vpn_tunnel)
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
      
      # Trace represents one simulated packet forwarding path. - Each trace contains
      # multiple ordered steps. - Each step is in a particular state and has an
      # associated configuration. - State is categorized as a final or non-final state.
      # - Each final state has a reason associated with it. - Each trace must end
      # with a final state (the last step). |---------------------Trace----------------
      # ------| Step1(State) Step2(State) --- StepN(State(final))
      class Trace
        include Google::Apis::Core::Hashable
      
        # For display only. The specification of the endpoints for the test.
        # EndpointInfo is derived from source and destination Endpoint and validated by
        # the backend data plane model.
        # Corresponds to the JSON property `endpointInfo`
        # @return [Google::Apis::NetworkmanagementV1::EndpointInfo]
        attr_accessor :endpoint_info
      
        # A trace of a test contains multiple steps from the initial state to the final
        # state (delivered, dropped, forwarded, or aborted). The steps are ordered by
        # the processing sequence within the simulated network state machine. It is
        # critical to preserve the order of the steps and avoid reordering or sorting
        # them.
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::NetworkmanagementV1::Step>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_info = args[:endpoint_info] if args.key?(:endpoint_info)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # For display only. Metadata associated with a Compute Engine VPN gateway.
      class VpnGatewayInfo
        include Google::Apis::Core::Hashable
      
        # Name of a VPN gateway.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # IP address of the VPN gateway.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # URI of a Compute Engine network where the VPN gateway is configured.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Name of a GCP region where this VPN gateway is configured.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # URI of a VPN gateway.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # A VPN tunnel that is associated with this VPN gateway. There may be multiple
        # VPN tunnels configured on a VPN gateway, and only the one relevant to the test
        # is displayed.
        # Corresponds to the JSON property `vpnTunnelUri`
        # @return [String]
        attr_accessor :vpn_tunnel_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @region = args[:region] if args.key?(:region)
          @uri = args[:uri] if args.key?(:uri)
          @vpn_tunnel_uri = args[:vpn_tunnel_uri] if args.key?(:vpn_tunnel_uri)
        end
      end
      
      # For display only. Metadata associated with a Compute Engine VPN tunnel.
      class VpnTunnelInfo
        include Google::Apis::Core::Hashable
      
        # Name of a VPN tunnel.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # URI of a Compute Engine network where the VPN tunnel is configured.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Name of a GCP region where this VPN tunnel is configured.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # URI of a VPN gateway at remote end of the tunnel.
        # Corresponds to the JSON property `remoteGateway`
        # @return [String]
        attr_accessor :remote_gateway
      
        # Remote VPN gateway's IP address.
        # Corresponds to the JSON property `remoteGatewayIp`
        # @return [String]
        attr_accessor :remote_gateway_ip
      
        # Type of the routing policy.
        # Corresponds to the JSON property `routingType`
        # @return [String]
        attr_accessor :routing_type
      
        # URI of the VPN gateway at local end of the tunnel.
        # Corresponds to the JSON property `sourceGateway`
        # @return [String]
        attr_accessor :source_gateway
      
        # Local VPN gateway's IP address.
        # Corresponds to the JSON property `sourceGatewayIp`
        # @return [String]
        attr_accessor :source_gateway_ip
      
        # URI of a VPN tunnel.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @region = args[:region] if args.key?(:region)
          @remote_gateway = args[:remote_gateway] if args.key?(:remote_gateway)
          @remote_gateway_ip = args[:remote_gateway_ip] if args.key?(:remote_gateway_ip)
          @routing_type = args[:routing_type] if args.key?(:routing_type)
          @source_gateway = args[:source_gateway] if args.key?(:source_gateway)
          @source_gateway_ip = args[:source_gateway_ip] if args.key?(:source_gateway_ip)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
    end
  end
end
