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
    module NetworksecurityV1beta1
      
      # Request used by the AddAddressGroupItems method.
      class AddAddressGroupItemsRequest
        include Google::Apis::Core::Hashable
      
        # Required. List of items to add.
        # Corresponds to the JSON property `items`
        # @return [Array<String>]
        attr_accessor :items
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # AddressGroup is a resource that specifies how a collection of IP/DNS used in
      # Firewall Policy.
      class AddressGroup
        include Google::Apis::Core::Hashable
      
        # Required. Capacity of the Address Group
        # Corresponds to the JSON property `capacity`
        # @return [Fixnum]
        attr_accessor :capacity
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Free-text description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. List of items.
        # Corresponds to the JSON property `items`
        # @return [Array<String>]
        attr_accessor :items
      
        # Optional. Set of label tags associated with the AddressGroup resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Name of the AddressGroup resource. It matches pattern `projects/*/
        # locations/`location`/addressGroups/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. List of supported purposes of the Address Group.
        # Corresponds to the JSON property `purpose`
        # @return [Array<String>]
        attr_accessor :purpose
      
        # Output only. Server-defined fully-qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Required. The type of the Address Group. Possible values are "IPv4" or "IPV6".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The timestamp when the resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity = args[:capacity] if args.key?(:capacity)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @items = args[:items] if args.key?(:items)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @purpose = args[:purpose] if args.key?(:purpose)
          @self_link = args[:self_link] if args.key?(:self_link)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Defines what action to take for antivirus threats per protocol.
      class AntivirusOverride
        include Google::Apis::Core::Hashable
      
        # Required. Threat action override. For some threat types, only a subset of
        # actions applies.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Required. Protocol to match.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @protocol = args[:protocol] if args.key?(:protocol)
        end
      end
      
      # AuthorizationPolicy is a resource that specifies how a server should authorize
      # incoming connections. This resource in itself does not change the
      # configuration unless it's attached to a target https proxy or endpoint config
      # selector resource.
      class AuthorizationPolicy
        include Google::Apis::Core::Hashable
      
        # Required. The action to take when a rule match is found. Possible values are "
        # ALLOW" or "DENY".
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Free-text description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Set of label tags associated with the AuthorizationPolicy resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Name of the AuthorizationPolicy resource. It matches pattern `
        # projects/`project`/locations/`location`/authorizationPolicies/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. List of rules to match. Note that at least one of the rules must
        # match in order for the action specified in the 'action' field to be taken. A
        # rule is a match if there is a matching source and destination. If left blank,
        # the action specified in the `action` field will be applied on every request.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::Rule>]
        attr_accessor :rules
      
        # Output only. The timestamp when the resource was updated.
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
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # `AuthzPolicy` is a resource that allows to forward traffic to a callout
      # backend designed to scan the traffic for security purposes.
      class AuthzPolicy
        include Google::Apis::Core::Hashable
      
        # Required. Can be one of `ALLOW`, `DENY`, `CUSTOM`. When the action is `CUSTOM`,
        # `customProvider` must be specified. When the action is `ALLOW`, only requests
        # matching the policy will be allowed. When the action is `DENY`, only requests
        # matching the policy will be denied. When a request arrives, the policies are
        # evaluated in the following order: 1. If there is a `CUSTOM` policy that
        # matches the request, the `CUSTOM` policy is evaluated using the custom
        # authorization providers and the request is denied if the provider rejects the
        # request. 2. If there are any `DENY` policies that match the request, the
        # request is denied. 3. If there are no `ALLOW` policies for the resource or if
        # any of the `ALLOW` policies match the request, the request is allowed. 4. Else
        # the request is denied by default if none of the configured AuthzPolicies with `
        # ALLOW` action match the request.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Allows delegating authorization decisions to Cloud IAP or to Service
        # Extensions.
        # Corresponds to the JSON property `customProvider`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyCustomProvider]
        attr_accessor :custom_provider
      
        # Optional. A human-readable description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A list of authorization HTTP rules to match against the incoming
        # request. A policy match occurs when at least one HTTP rule matches the request
        # or when no HTTP rules are specified in the policy. At least one HTTP Rule is
        # required for Allow or Deny Action. Limited to 5 rules.
        # Corresponds to the JSON property `httpRules`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRule>]
        attr_accessor :http_rules
      
        # Optional. Set of labels associated with the `AuthzPolicy` resource. The format
        # must comply with [the following requirements](/compute/docs/labeling-resources#
        # requirements).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Identifier. Name of the `AuthzPolicy` resource in the following
        # format: `projects/`project`/locations/`location`/authzPolicies/`authz_policy``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies the set of targets to which this policy should be applied to.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyTarget]
        attr_accessor :target
      
        # Output only. The timestamp when the resource was updated.
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
          @custom_provider = args[:custom_provider] if args.key?(:custom_provider)
          @description = args[:description] if args.key?(:description)
          @http_rules = args[:http_rules] if args.key?(:http_rules)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @target = args[:target] if args.key?(:target)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Conditions to match against the incoming request.
      class AuthzPolicyAuthzRule
        include Google::Apis::Core::Hashable
      
        # Describes properties of one or more sources of a request.
        # Corresponds to the JSON property `from`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleFrom]
        attr_accessor :from
      
        # Describes properties of one or more targets of a request.
        # Corresponds to the JSON property `to`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleTo]
        attr_accessor :to
      
        # Optional. CEL expression that describes the conditions to be satisfied for the
        # action. The result of the CEL expression is ANDed with the from and to. Refer
        # to the CEL language reference for a list of available attributes.
        # Corresponds to the JSON property `when`
        # @return [String]
        attr_accessor :when
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @from = args[:from] if args.key?(:from)
          @to = args[:to] if args.key?(:to)
          @when = args[:when] if args.key?(:when)
        end
      end
      
      # Describes properties of one or more sources of a request.
      class AuthzPolicyAuthzRuleFrom
        include Google::Apis::Core::Hashable
      
        # Optional. Describes the negated properties of request sources. Matches
        # requests from sources that do not match the criteria specified in this field.
        # At least one of sources or notSources must be specified.
        # Corresponds to the JSON property `notSources`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleFromRequestSource>]
        attr_accessor :not_sources
      
        # Optional. Describes the properties of a request's sources. At least one of
        # sources or notSources must be specified. Limited to 1 source. A match occurs
        # when ANY source (in sources or notSources) matches the request. Within a
        # single source, the match follows AND semantics across fields and OR semantics
        # within a single field, i.e. a match occurs when ANY principal matches AND ANY
        # ipBlocks match.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleFromRequestSource>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @not_sources = args[:not_sources] if args.key?(:not_sources)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Describes the properties of a single source.
      class AuthzPolicyAuthzRuleFromRequestSource
        include Google::Apis::Core::Hashable
      
        # Optional. A list of IP addresses or IP address ranges to match against the
        # source IP address of the request. Limited to 10 ip_blocks per Authorization
        # Policy
        # Corresponds to the JSON property `ipBlocks`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleIpBlock>]
        attr_accessor :ip_blocks
      
        # Optional. A list of identities derived from the client's certificate. This
        # field will not match on a request unless frontend mutual TLS is enabled for
        # the forwarding rule or Gateway and the client certificate has been
        # successfully validated by mTLS. Each identity is a string whose value is
        # matched against a list of URI SANs, DNS Name SANs, or the common name in the
        # client's certificate. A match happens when any principal matches with the rule.
        # Limited to 50 principals per Authorization Policy for regional internal
        # Application Load Balancers, regional external Application Load Balancers,
        # cross-region internal Application Load Balancers, and Cloud Service Mesh. This
        # field is not supported for global external Application Load Balancers.
        # Corresponds to the JSON property `principals`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRulePrincipal>]
        attr_accessor :principals
      
        # Optional. A list of resources to match against the resource of the source VM
        # of a request. Limited to 10 resources per Authorization Policy.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleRequestResource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_blocks = args[:ip_blocks] if args.key?(:ip_blocks)
          @principals = args[:principals] if args.key?(:principals)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Determines how a HTTP header should be matched.
      class AuthzPolicyAuthzRuleHeaderMatch
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the name of the header in the request.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Determines how a string value should be matched.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleStringMatch]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents a range of IP Addresses.
      class AuthzPolicyAuthzRuleIpBlock
        include Google::Apis::Core::Hashable
      
        # Required. The length of the address range.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Required. The address prefix.
        # Corresponds to the JSON property `prefix`
        # @return [String]
        attr_accessor :prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @length = args[:length] if args.key?(:length)
          @prefix = args[:prefix] if args.key?(:prefix)
        end
      end
      
      # Describes the properties of a principal to be matched against.
      class AuthzPolicyAuthzRulePrincipal
        include Google::Apis::Core::Hashable
      
        # Determines how a string value should be matched.
        # Corresponds to the JSON property `principal`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleStringMatch]
        attr_accessor :principal
      
        # Optional. An enum to decide what principal value the principal rule will match
        # against. If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
        # Corresponds to the JSON property `principalSelector`
        # @return [String]
        attr_accessor :principal_selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal = args[:principal] if args.key?(:principal)
          @principal_selector = args[:principal_selector] if args.key?(:principal_selector)
        end
      end
      
      # Describes the properties of a client VM resource accessing the internal
      # application load balancers.
      class AuthzPolicyAuthzRuleRequestResource
        include Google::Apis::Core::Hashable
      
        # Determines how a string value should be matched.
        # Corresponds to the JSON property `iamServiceAccount`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleStringMatch]
        attr_accessor :iam_service_account
      
        # Describes a set of resource tag value permanent IDs to match against the
        # resource manager tags value associated with the source VM of a request.
        # Corresponds to the JSON property `tagValueIdSet`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleRequestResourceTagValueIdSet]
        attr_accessor :tag_value_id_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam_service_account = args[:iam_service_account] if args.key?(:iam_service_account)
          @tag_value_id_set = args[:tag_value_id_set] if args.key?(:tag_value_id_set)
        end
      end
      
      # Describes a set of resource tag value permanent IDs to match against the
      # resource manager tags value associated with the source VM of a request.
      class AuthzPolicyAuthzRuleRequestResourceTagValueIdSet
        include Google::Apis::Core::Hashable
      
        # Required. A list of resource tag value permanent IDs to match against the
        # resource manager tags value associated with the source VM of a request. The
        # match follows AND semantics which means all the ids must match. Limited to 5
        # ids in the Tag value id set.
        # Corresponds to the JSON property `ids`
        # @return [Array<Fixnum>]
        attr_accessor :ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ids = args[:ids] if args.key?(:ids)
        end
      end
      
      # Determines how a string value should be matched.
      class AuthzPolicyAuthzRuleStringMatch
        include Google::Apis::Core::Hashable
      
        # The input string must have the substring specified here. Note: empty contains
        # match is not allowed, please use regex instead. Examples: * ``abc`` matches
        # the value ``xyz.abc.def``
        # Corresponds to the JSON property `contains`
        # @return [String]
        attr_accessor :contains
      
        # The input string must match exactly the string specified here. Examples: * ``
        # abc`` only matches the value ``abc``.
        # Corresponds to the JSON property `exact`
        # @return [String]
        attr_accessor :exact
      
        # If true, indicates the exact/prefix/suffix/contains matching should be case
        # insensitive. For example, the matcher ``data`` will match both input string ``
        # Data`` and ``data`` if set to true.
        # Corresponds to the JSON property `ignoreCase`
        # @return [Boolean]
        attr_accessor :ignore_case
        alias_method :ignore_case?, :ignore_case
      
        # The input string must have the prefix specified here. Note: empty prefix is
        # not allowed, please use regex instead. Examples: * ``abc`` matches the value ``
        # abc.xyz``
        # Corresponds to the JSON property `prefix`
        # @return [String]
        attr_accessor :prefix
      
        # The input string must have the suffix specified here. Note: empty prefix is
        # not allowed, please use regex instead. Examples: * ``abc`` matches the value ``
        # xyz.abc``
        # Corresponds to the JSON property `suffix`
        # @return [String]
        attr_accessor :suffix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contains = args[:contains] if args.key?(:contains)
          @exact = args[:exact] if args.key?(:exact)
          @ignore_case = args[:ignore_case] if args.key?(:ignore_case)
          @prefix = args[:prefix] if args.key?(:prefix)
          @suffix = args[:suffix] if args.key?(:suffix)
        end
      end
      
      # Describes properties of one or more targets of a request.
      class AuthzPolicyAuthzRuleTo
        include Google::Apis::Core::Hashable
      
        # Optional. Describes the negated properties of the targets of a request.
        # Matches requests for operations that do not match the criteria specified in
        # this field. At least one of operations or notOperations must be specified.
        # Corresponds to the JSON property `notOperations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleToRequestOperation>]
        attr_accessor :not_operations
      
        # Optional. Describes properties of one or more targets of a request. At least
        # one of operations or notOperations must be specified. Limited to 1 operation.
        # A match occurs when ANY operation (in operations or notOperations) matches.
        # Within an operation, the match follows AND semantics across fields and OR
        # semantics within a field, i.e. a match occurs when ANY path matches AND ANY
        # header matches and ANY method matches.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleToRequestOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @not_operations = args[:not_operations] if args.key?(:not_operations)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Describes properties of one or more targets of a request.
      class AuthzPolicyAuthzRuleToRequestOperation
        include Google::Apis::Core::Hashable
      
        # Describes a set of HTTP headers to match against.
        # Corresponds to the JSON property `headerSet`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleToRequestOperationHeaderSet]
        attr_accessor :header_set
      
        # Optional. A list of HTTP Hosts to match against. The match can be one of exact,
        # prefix, suffix, or contains (substring match). Matches are always case
        # sensitive unless the ignoreCase is set. Limited to 10 hosts per Authorization
        # Policy.
        # Corresponds to the JSON property `hosts`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleStringMatch>]
        attr_accessor :hosts
      
        # Optional. A list of HTTP methods to match against. Each entry must be a valid
        # HTTP method name (GET, PUT, POST, HEAD, PATCH, DELETE, OPTIONS). It only
        # allows exact match and is always case sensitive. Limited to 10 methods per
        # Authorization Policy.
        # Corresponds to the JSON property `methods`
        # @return [Array<String>]
        attr_accessor :methods_prop
      
        # Optional. A list of paths to match against. The match can be one of exact,
        # prefix, suffix, or contains (substring match). Matches are always case
        # sensitive unless the ignoreCase is set. Limited to 10 paths per Authorization
        # Policy. Note that this path match includes the query parameters. For gRPC
        # services, this should be a fully-qualified name of the form /package.service/
        # method.
        # Corresponds to the JSON property `paths`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleStringMatch>]
        attr_accessor :paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header_set = args[:header_set] if args.key?(:header_set)
          @hosts = args[:hosts] if args.key?(:hosts)
          @methods_prop = args[:methods_prop] if args.key?(:methods_prop)
          @paths = args[:paths] if args.key?(:paths)
        end
      end
      
      # Describes a set of HTTP headers to match against.
      class AuthzPolicyAuthzRuleToRequestOperationHeaderSet
        include Google::Apis::Core::Hashable
      
        # Required. A list of headers to match against in http header. The match can be
        # one of exact, prefix, suffix, or contains (substring match). The match follows
        # AND semantics which means all the headers must match. Matches are always case
        # sensitive unless the ignoreCase is set. Limited to 10 headers per
        # Authorization Policy.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicyAuthzRuleHeaderMatch>]
        attr_accessor :headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
        end
      end
      
      # Allows delegating authorization decisions to Cloud IAP or to Service
      # Extensions.
      class AuthzPolicyCustomProvider
        include Google::Apis::Core::Hashable
      
        # Optional. Delegate authorization decision to user authored extension. Only one
        # of cloudIap or authzExtension can be specified.
        # Corresponds to the JSON property `authzExtension`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyCustomProviderAuthzExtension]
        attr_accessor :authz_extension
      
        # Optional. Delegates authorization decisions to Cloud IAP. Applicable only for
        # managed load balancers. Enabling Cloud IAP at the AuthzPolicy level is not
        # compatible with Cloud IAP settings in the BackendService. Enabling IAP in both
        # places will result in request failure. Ensure that IAP is enabled in either
        # the AuthzPolicy or the BackendService but not in both places.
        # Corresponds to the JSON property `cloudIap`
        # @return [Google::Apis::NetworksecurityV1beta1::AuthzPolicyCustomProviderCloudIap]
        attr_accessor :cloud_iap
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authz_extension = args[:authz_extension] if args.key?(:authz_extension)
          @cloud_iap = args[:cloud_iap] if args.key?(:cloud_iap)
        end
      end
      
      # Optional. Delegate authorization decision to user authored extension. Only one
      # of cloudIap or authzExtension can be specified.
      class AuthzPolicyCustomProviderAuthzExtension
        include Google::Apis::Core::Hashable
      
        # Required. A list of references to authorization extensions that will be
        # invoked for requests matching this policy. Limited to 1 custom provider.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Optional. Delegates authorization decisions to Cloud IAP. Applicable only for
      # managed load balancers. Enabling Cloud IAP at the AuthzPolicy level is not
      # compatible with Cloud IAP settings in the BackendService. Enabling IAP in both
      # places will result in request failure. Ensure that IAP is enabled in either
      # the AuthzPolicy or the BackendService but not in both places.
      class AuthzPolicyCustomProviderCloudIap
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Specifies the set of targets to which this policy should be applied to.
      class AuthzPolicyTarget
        include Google::Apis::Core::Hashable
      
        # Required. All gateways and forwarding rules referenced by this policy and
        # extensions must share the same load balancing scheme. Supported values: `
        # INTERNAL_MANAGED` and `EXTERNAL_MANAGED`. For more information, refer to [
        # Backend services overview](https://cloud.google.com/load-balancing/docs/
        # backend-service).
        # Corresponds to the JSON property `loadBalancingScheme`
        # @return [String]
        attr_accessor :load_balancing_scheme
      
        # Required. A list of references to the Forwarding Rules on which this policy
        # will be applied.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @load_balancing_scheme = args[:load_balancing_scheme] if args.key?(:load_balancing_scheme)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # BackendAuthenticationConfig message groups the TrustConfig together with other
      # settings that control how the load balancer authenticates, and expresses its
      # identity to, the backend: * `trustConfig` is the attached TrustConfig. * `
      # wellKnownRoots` indicates whether the load balance should trust backend server
      # certificates that are issued by public certificate authorities, in addition to
      # certificates trusted by the TrustConfig. * `clientCertificate` is a client
      # certificate that the load balancer uses to express its identity to the backend,
      # if the connection to the backend uses mTLS. You can attach the
      # BackendAuthenticationConfig to the load balancer's BackendService directly
      # determining how that BackendService negotiates TLS.
      class BackendAuthenticationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A reference to a certificatemanager.googleapis.com.Certificate
        # resource. This is a relative resource path following the form "projects/`
        # project`/locations/`location`/certificates/`certificate`". Used by a
        # BackendService to negotiate mTLS when the backend connection uses TLS and the
        # backend requests a client certificate. Must have a CLIENT_AUTH scope.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Free-text description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Etag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Set of label tags associated with the resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Name of the BackendAuthenticationConfig resource. It matches the
        # pattern `projects/*/locations/`location`/backendAuthenticationConfigs/`
        # backend_authentication_config``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. A reference to a TrustConfig resource from the certificatemanager.
        # googleapis.com namespace. This is a relative resource path following the form "
        # projects/`project`/locations/`location`/trustConfigs/`trust_config`". A
        # BackendService uses the chain of trust represented by this TrustConfig, if
        # specified, to validate the server certificates presented by the backend.
        # Required unless wellKnownRoots is set to PUBLIC_ROOTS.
        # Corresponds to the JSON property `trustConfig`
        # @return [String]
        attr_accessor :trust_config
      
        # Output only. The timestamp when the resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Well known roots to use for server certificate validation.
        # Corresponds to the JSON property `wellKnownRoots`
        # @return [String]
        attr_accessor :well_known_roots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @trust_config = args[:trust_config] if args.key?(:trust_config)
          @update_time = args[:update_time] if args.key?(:update_time)
          @well_known_roots = args[:well_known_roots] if args.key?(:well_known_roots)
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
      
      # Specification of a TLS certificate provider instance. Workloads may have one
      # or more CertificateProvider instances (plugins) and one of them is enabled and
      # configured by specifying this message. Workloads use the values from this
      # message to locate and load the CertificateProvider instance configuration.
      class CertificateProviderInstance
        include Google::Apis::Core::Hashable
      
        # Required. Plugin instance name, used to locate and load CertificateProvider
        # instance configuration. Set to "google_cloud_private_spiffe" to use
        # Certificate Authority Service certificate provider instance.
        # Corresponds to the JSON property `pluginInstance`
        # @return [String]
        attr_accessor :plugin_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @plugin_instance = args[:plugin_instance] if args.key?(:plugin_instance)
        end
      end
      
      # ClientTlsPolicy is a resource that specifies how a client should authenticate
      # connections to backends of a service. This resource itself does not affect
      # configuration unless it is attached to a backend service resource.
      class ClientTlsPolicy
        include Google::Apis::Core::Hashable
      
        # Specification of certificate provider. Defines the mechanism to obtain the
        # certificate and private key for peer to peer authentication.
        # Corresponds to the JSON property `clientCertificate`
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1CertificateProvider]
        attr_accessor :client_certificate
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Free-text description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Set of label tags associated with the resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Name of the ClientTlsPolicy resource. It matches the pattern `
        # projects/`project`/locations/`location`/clientTlsPolicies/`client_tls_policy``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Defines the mechanism to obtain the Certificate Authority
        # certificate to validate the server certificate. If empty, client does not
        # validate the server certificate.
        # Corresponds to the JSON property `serverValidationCa`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::ValidationCa>]
        attr_accessor :server_validation_ca
      
        # Optional. Server Name Indication string to present to the server during TLS
        # handshake. E.g: "secure.example.com".
        # Corresponds to the JSON property `sni`
        # @return [String]
        attr_accessor :sni
      
        # Output only. The timestamp when the resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @server_validation_ca = args[:server_validation_ca] if args.key?(:server_validation_ca)
          @sni = args[:sni] if args.key?(:sni)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request used by the CloneAddressGroupItems method.
      class CloneAddressGroupItemsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. Source address group to clone items from.
        # Corresponds to the JSON property `sourceAddressGroup`
        # @return [String]
        attr_accessor :source_address_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
          @source_address_group = args[:source_address_group] if args.key?(:source_address_group)
        end
      end
      
      # CustomInterceptProfile defines in-band integration behavior (intercept). It is
      # used by firewall rules with an APPLY_SECURITY_PROFILE_GROUP action.
      class CustomInterceptProfile
        include Google::Apis::Core::Hashable
      
        # Required. The target InterceptEndpointGroup. When a firewall rule with this
        # security profile attached matches a packet, the packet will be intercepted to
        # the location-local target in this group.
        # Corresponds to the JSON property `interceptEndpointGroup`
        # @return [String]
        attr_accessor :intercept_endpoint_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intercept_endpoint_group = args[:intercept_endpoint_group] if args.key?(:intercept_endpoint_group)
        end
      end
      
      # CustomMirroringProfile defines out-of-band integration behavior (mirroring).
      # It is used by mirroring rules with a MIRROR action.
      class CustomMirroringProfile
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The target MirroringEndpointGroup. When a mirroring rule
        # with this security profile attached matches a packet, a replica will be
        # mirrored to the location-local target in this group.
        # Corresponds to the JSON property `mirroringEndpointGroup`
        # @return [String]
        attr_accessor :mirroring_endpoint_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mirroring_endpoint_group = args[:mirroring_endpoint_group] if args.key?(:mirroring_endpoint_group)
        end
      end
      
      # Specification of traffic destination attributes.
      class Destination
        include Google::Apis::Core::Hashable
      
        # Required. List of host names to match. Matched against the ":authority" header
        # in http requests. At least one host should match. Each host can be an exact
        # match, or a prefix match (example "mydomain.*") or a suffix match (example "*.
        # myorg.com") or a presence (any) match "*".
        # Corresponds to the JSON property `hosts`
        # @return [Array<String>]
        attr_accessor :hosts
      
        # Specification of HTTP header match attributes.
        # Corresponds to the JSON property `httpHeaderMatch`
        # @return [Google::Apis::NetworksecurityV1beta1::HttpHeaderMatch]
        attr_accessor :http_header_match
      
        # Optional. A list of HTTP methods to match. At least one method should match.
        # Should not be set for gRPC services.
        # Corresponds to the JSON property `methods`
        # @return [Array<String>]
        attr_accessor :methods_prop
      
        # Required. List of destination ports to match. At least one port should match.
        # Corresponds to the JSON property `ports`
        # @return [Array<Fixnum>]
        attr_accessor :ports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hosts = args[:hosts] if args.key?(:hosts)
          @http_header_match = args[:http_header_match] if args.key?(:http_header_match)
          @methods_prop = args[:methods_prop] if args.key?(:methods_prop)
          @ports = args[:ports] if args.key?(:ports)
        end
      end
      
      # A DNS threat detector sends DNS query logs to a _provider_ that then analyzes
      # the logs to identify threat events in the DNS queries. By default, all VPC
      # networks in your projects are included. You can exclude specific networks by
      # supplying `excluded_networks`.
      class DnsThreatDetector
        include Google::Apis::Core::Hashable
      
        # Output only. Create time stamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A list of network resource names which aren't monitored by this
        # DnsThreatDetector. Example: `projects/PROJECT_ID/global/networks/NETWORK_NAME`.
        # Corresponds to the JSON property `excludedNetworks`
        # @return [Array<String>]
        attr_accessor :excluded_networks
      
        # Optional. Any labels associated with the DnsThreatDetector, listed as key
        # value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. Identifier. Name of the DnsThreatDetector resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The provider used for DNS threat analysis.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Output only. Update time stamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @excluded_networks = args[:excluded_networks] if args.key?(:excluded_networks)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
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
      
      # Message describing Endpoint object.
      class FirewallEndpoint
        include Google::Apis::Core::Hashable
      
        # Output only. List of networks that are associated with this endpoint in the
        # local zone. This is a projection of the FirewallEndpointAssociations pointing
        # at this endpoint. A network will only appear in this list after traffic
        # routing is fully configured. Format: projects/`project`/global/networks/`name`.
        # Corresponds to the JSON property `associatedNetworks`
        # @return [Array<String>]
        attr_accessor :associated_networks
      
        # Output only. List of FirewallEndpointAssociations that are associated to this
        # endpoint. An association will only appear in this list after traffic routing
        # is fully configured.
        # Corresponds to the JSON property `associations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociationReference>]
        attr_accessor :associations
      
        # Required. Project to bill on endpoint uptime usage.
        # Corresponds to the JSON property `billingProjectId`
        # @return [String]
        attr_accessor :billing_project_id
      
        # Output only. Create time stamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the firewall endpoint. Max length 2048 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Settings for the endpoint.
        # Corresponds to the JSON property `endpointSettings`
        # @return [Google::Apis::NetworksecurityV1beta1::FirewallEndpointEndpointSettings]
        attr_accessor :endpoint_settings
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. Identifier. Name of resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Whether reconciling is in progress, recommended per https://
        # google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. [Output Only] Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. [Output Only] Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. Current state of the endpoint.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associated_networks = args[:associated_networks] if args.key?(:associated_networks)
          @associations = args[:associations] if args.key?(:associations)
          @billing_project_id = args[:billing_project_id] if args.key?(:billing_project_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @endpoint_settings = args[:endpoint_settings] if args.key?(:endpoint_settings)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message describing Association object
      class FirewallEndpointAssociation
        include Google::Apis::Core::Hashable
      
        # Output only. Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Whether the association is disabled. True indicates that traffic won'
        # t be intercepted
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Required. The URL of the FirewallEndpoint that is being associated.
        # Corresponds to the JSON property `firewallEndpoint`
        # @return [String]
        attr_accessor :firewall_endpoint
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. Identifier. name of resource
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The URL of the network that is being associated.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. Whether reconciling is in progress, recommended per https://
        # google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. Current state of the association.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. The URL of the TlsInspectionPolicy that is being associated.
        # Corresponds to the JSON property `tlsInspectionPolicy`
        # @return [String]
        attr_accessor :tls_inspection_policy
      
        # Output only. Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @disabled = args[:disabled] if args.key?(:disabled)
          @firewall_endpoint = args[:firewall_endpoint] if args.key?(:firewall_endpoint)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @tls_inspection_policy = args[:tls_inspection_policy] if args.key?(:tls_inspection_policy)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # This is a subset of the FirewallEndpointAssociation message, containing fields
      # to be used by the consumer.
      class FirewallEndpointAssociationReference
        include Google::Apis::Core::Hashable
      
        # Output only. The resource name of the FirewallEndpointAssociation. Format:
        # projects/`project`/locations/`location`/firewallEndpointAssociations/`id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The VPC network associated. Format: projects/`project`/global/
        # networks/`name`.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # Settings for the endpoint.
      class FirewallEndpointEndpointSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. Indicates whether Jumbo Frames are enabled. Default value
        # is false.
        # Corresponds to the JSON property `jumboFramesEnabled`
        # @return [Boolean]
        attr_accessor :jumbo_frames_enabled
        alias_method :jumbo_frames_enabled?, :jumbo_frames_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jumbo_frames_enabled = args[:jumbo_frames_enabled] if args.key?(:jumbo_frames_enabled)
        end
      end
      
      # The GatewaySecurityPolicy resource contains a collection of
      # GatewaySecurityPolicyRules and associated metadata.
      class GatewaySecurityPolicy
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Free-text description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Name of the resource. Name is of the form projects/`project`/
        # locations/`location`/gatewaySecurityPolicies/`gateway_security_policy`
        # gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]`0,61`[a-z0-
        # 9])?$).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Name of a TLS Inspection Policy resource that defines how TLS
        # inspection will be performed for any rule(s) which enables it.
        # Corresponds to the JSON property `tlsInspectionPolicy`
        # @return [String]
        attr_accessor :tls_inspection_policy
      
        # Output only. The timestamp when the resource was updated.
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
          @name = args[:name] if args.key?(:name)
          @tls_inspection_policy = args[:tls_inspection_policy] if args.key?(:tls_inspection_policy)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The GatewaySecurityPolicyRule resource is in a nested collection within a
      # GatewaySecurityPolicy and represents a traffic matching condition and
      # associated action to perform.
      class GatewaySecurityPolicyRule
        include Google::Apis::Core::Hashable
      
        # Optional. CEL expression for matching on L7/application level criteria.
        # Corresponds to the JSON property `applicationMatcher`
        # @return [String]
        attr_accessor :application_matcher
      
        # Required. Profile which tells what the primitive action should be.
        # Corresponds to the JSON property `basicProfile`
        # @return [String]
        attr_accessor :basic_profile
      
        # Output only. Time when the rule was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Free-text description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Whether the rule is enforced.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Required. Immutable. Name of the resource. ame is the full resource name so
        # projects/`project`/locations/`location`/gatewaySecurityPolicies/`
        # gateway_security_policy`/rules/`rule` rule should match the pattern: (^[a-z]([
        # a-z0-9-]`0,61`[a-z0-9])?$).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Priority of the rule. Lower number corresponds to higher precedence.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Required. CEL expression for matching on session criteria.
        # Corresponds to the JSON property `sessionMatcher`
        # @return [String]
        attr_accessor :session_matcher
      
        # Optional. Flag to enable TLS inspection of traffic matching on , can only be
        # true if the parent GatewaySecurityPolicy references a TLSInspectionConfig.
        # Corresponds to the JSON property `tlsInspectionEnabled`
        # @return [Boolean]
        attr_accessor :tls_inspection_enabled
        alias_method :tls_inspection_enabled?, :tls_inspection_enabled
      
        # Output only. Time when the rule was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_matcher = args[:application_matcher] if args.key?(:application_matcher)
          @basic_profile = args[:basic_profile] if args.key?(:basic_profile)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @enabled = args[:enabled] if args.key?(:enabled)
          @name = args[:name] if args.key?(:name)
          @priority = args[:priority] if args.key?(:priority)
          @session_matcher = args[:session_matcher] if args.key?(:session_matcher)
          @tls_inspection_enabled = args[:tls_inspection_enabled] if args.key?(:tls_inspection_enabled)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Specification of certificate provider. Defines the mechanism to obtain the
      # certificate and private key for peer to peer authentication.
      class GoogleCloudNetworksecurityV1beta1CertificateProvider
        include Google::Apis::Core::Hashable
      
        # Specification of a TLS certificate provider instance. Workloads may have one
        # or more CertificateProvider instances (plugins) and one of them is enabled and
        # configured by specifying this message. Workloads use the values from this
        # message to locate and load the CertificateProvider instance configuration.
        # Corresponds to the JSON property `certificateProviderInstance`
        # @return [Google::Apis::NetworksecurityV1beta1::CertificateProviderInstance]
        attr_accessor :certificate_provider_instance
      
        # Specification of the GRPC Endpoint.
        # Corresponds to the JSON property `grpcEndpoint`
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1GrpcEndpoint]
        attr_accessor :grpc_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_provider_instance = args[:certificate_provider_instance] if args.key?(:certificate_provider_instance)
          @grpc_endpoint = args[:grpc_endpoint] if args.key?(:grpc_endpoint)
        end
      end
      
      # Specification of the GRPC Endpoint.
      class GoogleCloudNetworksecurityV1beta1GrpcEndpoint
        include Google::Apis::Core::Hashable
      
        # Required. The target URI of the gRPC endpoint. Only UDS path is supported, and
        # should start with "unix:".
        # Corresponds to the JSON property `targetUri`
        # @return [String]
        attr_accessor :target_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_uri = args[:target_uri] if args.key?(:target_uri)
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
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::GoogleIamV1AuditLogConfig>]
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
      class GoogleIamV1AuditLogConfig
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
      class GoogleIamV1Binding
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
        # @return [Google::Apis::NetworksecurityV1beta1::Expr]
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
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
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
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::GoogleIamV1AuditConfig>]
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
        # @return [Array<Google::Apis::NetworksecurityV1beta1::GoogleIamV1Binding>]
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
      
      # Request message for `SetIamPolicy` method.
      class GoogleIamV1SetIamPolicyRequest
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
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleIamV1Policy]
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
      class GoogleIamV1TestIamPermissionsRequest
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
      class GoogleIamV1TestIamPermissionsResponse
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
      
      # Specification of HTTP header match attributes.
      class HttpHeaderMatch
        include Google::Apis::Core::Hashable
      
        # Required. The name of the HTTP header to match. For matching against the HTTP
        # request's authority, use a headerMatch with the header name ":authority". For
        # matching a request's method, use the headerName ":method".
        # Corresponds to the JSON property `headerName`
        # @return [String]
        attr_accessor :header_name
      
        # Required. The value of the header must match the regular expression specified
        # in regexMatch. For regular expression grammar, please see: en.cppreference.com/
        # w/cpp/regex/ecmascript For matching against a port specified in the HTTP
        # request, use a headerMatch with headerName set to Host and a regular
        # expression that satisfies the RFC2616 Host header's port specifier.
        # Corresponds to the JSON property `regexMatch`
        # @return [String]
        attr_accessor :regex_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header_name = args[:header_name] if args.key?(:header_name)
          @regex_match = args[:regex_match] if args.key?(:regex_match)
        end
      end
      
      # A deployment represents a zonal intercept backend ready to accept GENEVE-
      # encapsulated traffic, e.g. a zonal instance group fronted by an internal
      # passthrough load balancer. Deployments are always part of a global deployment
      # group which represents a global intercept service.
      class InterceptDeployment
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created. See https://google.
        # aip.dev/148#timestamps.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description of the deployment. Used as additional
        # context for the deployment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Immutable. The regional forwarding rule that fronts the interceptors,
        # for example: `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
        # See https://google.aip.dev/124.
        # Corresponds to the JSON property `forwardingRule`
        # @return [String]
        attr_accessor :forwarding_rule
      
        # Required. Immutable. The deployment group that this deployment is a part of,
        # for example: `projects/123456789/locations/global/interceptDeploymentGroups/my-
        # dg`. See https://google.aip.dev/124.
        # Corresponds to the JSON property `interceptDeploymentGroup`
        # @return [String]
        attr_accessor :intercept_deployment_group
      
        # Optional. Labels are key/value pairs that help to organize and filter
        # resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. Identifier. The resource name of this deployment, for example: `
        # projects/123456789/locations/us-central1-a/interceptDeployments/my-dep`. See
        # https://google.aip.dev/122 for more details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the resource does not match the user's
        # intended state, and the system is working to reconcile them. This part of the
        # normal operation (e.g. linking a new association to the parent group). See
        # https://google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of the deployment. See https://google.aip.dev/
        # 216.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the resource was most recently updated. See
        # https://google.aip.dev/148#timestamps.
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
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @intercept_deployment_group = args[:intercept_deployment_group] if args.key?(:intercept_deployment_group)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A deployment group aggregates many zonal intercept backends (deployments) into
      # a single global intercept service. Consumers can connect this service using an
      # endpoint group.
      class InterceptDeploymentGroup
        include Google::Apis::Core::Hashable
      
        # Output only. The list of endpoint groups that are connected to this resource.
        # Corresponds to the JSON property `connectedEndpointGroups`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroupConnectedEndpointGroup>]
        attr_accessor :connected_endpoint_groups
      
        # Output only. The timestamp when the resource was created. See https://google.
        # aip.dev/148#timestamps.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description of the deployment group. Used as
        # additional context for the deployment group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Labels are key/value pairs that help to organize and filter
        # resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The list of locations where the deployment group is present.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptLocation>]
        attr_accessor :locations
      
        # Immutable. Identifier. The resource name of this deployment group, for example:
        # `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`. See
        # https://google.aip.dev/122 for more details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The list of Intercept Deployments that belong to this group.
        # Corresponds to the JSON property `nestedDeployments`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroupDeployment>]
        attr_accessor :nested_deployments
      
        # Required. Immutable. The network that will be used for all child deployments,
        # for example: `projects/`project`/global/networks/`network``. See https://
        # google.aip.dev/124.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. The current state of the resource does not match the user's
        # intended state, and the system is working to reconcile them. This is part of
        # the normal operation (e.g. adding a new deployment to the group) See https://
        # google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of the deployment group. See https://google.aip.
        # dev/216.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the resource was most recently updated. See
        # https://google.aip.dev/148#timestamps.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_endpoint_groups = args[:connected_endpoint_groups] if args.key?(:connected_endpoint_groups)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
          @nested_deployments = args[:nested_deployments] if args.key?(:nested_deployments)
          @network = args[:network] if args.key?(:network)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An endpoint group connected to this deployment group.
      class InterceptDeploymentGroupConnectedEndpointGroup
        include Google::Apis::Core::Hashable
      
        # Output only. The connected endpoint group's resource name, for example: `
        # projects/123456789/locations/global/interceptEndpointGroups/my-eg`. See https:/
        # /google.aip.dev/124.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A deployment belonging to this deployment group.
      class InterceptDeploymentGroupDeployment
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the Intercept Deployment, in the format: `projects/`
        # project`/locations/`location`/interceptDeployments/`intercept_deployment``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Most recent known state of the deployment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # An endpoint group is a consumer frontend for a deployment group (backend). In
      # order to configure intercept for a network, consumers must create: - An
      # association between their network and the endpoint group. - A security profile
      # that points to the endpoint group. - A firewall rule that references the
      # security profile (group).
      class InterceptEndpointGroup
        include Google::Apis::Core::Hashable
      
        # Output only. List of associations to this endpoint group.
        # Corresponds to the JSON property `associations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociationDetails>]
        attr_accessor :associations
      
        # The endpoint group's view of a connected deployment group.
        # Corresponds to the JSON property `connectedDeploymentGroup`
        # @return [Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupConnectedDeploymentGroup]
        attr_accessor :connected_deployment_group
      
        # Output only. The timestamp when the resource was created. See https://google.
        # aip.dev/148#timestamps.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description of the endpoint group. Used as additional
        # context for the endpoint group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Immutable. The deployment group that this endpoint group is
        # connected to, for example: `projects/123456789/locations/global/
        # interceptDeploymentGroups/my-dg`. See https://google.aip.dev/124.
        # Corresponds to the JSON property `interceptDeploymentGroup`
        # @return [String]
        attr_accessor :intercept_deployment_group
      
        # Optional. Labels are key/value pairs that help to organize and filter
        # resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. Identifier. The resource name of this endpoint group, for example: `
        # projects/123456789/locations/global/interceptEndpointGroups/my-eg`. See https:/
        # /google.aip.dev/122 for more details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the resource does not match the user's
        # intended state, and the system is working to reconcile them. This is part of
        # the normal operation (e.g. adding a new association to the group). See https://
        # google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of the endpoint group. See https://google.aip.
        # dev/216.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the resource was most recently updated. See
        # https://google.aip.dev/148#timestamps.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associations = args[:associations] if args.key?(:associations)
          @connected_deployment_group = args[:connected_deployment_group] if args.key?(:connected_deployment_group)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @intercept_deployment_group = args[:intercept_deployment_group] if args.key?(:intercept_deployment_group)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An endpoint group association represents a link between a network and an
      # endpoint group in the organization. Creating an association creates the
      # networking infrastructure linking the network to the endpoint group, but does
      # not enable intercept by itself. To enable intercept, the user must also create
      # a network firewall policy containing intercept rules and associate it with the
      # network.
      class InterceptEndpointGroupAssociation
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created. See https://google.
        # aip.dev/148#timestamps.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Immutable. The endpoint group that this association is connected to,
        # for example: `projects/123456789/locations/global/interceptEndpointGroups/my-
        # eg`. See https://google.aip.dev/124.
        # Corresponds to the JSON property `interceptEndpointGroup`
        # @return [String]
        attr_accessor :intercept_endpoint_group
      
        # Optional. Labels are key/value pairs that help to organize and filter
        # resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The list of locations where the association is configured. This
        # information is retrieved from the linked endpoint group.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptLocation>]
        attr_accessor :locations
      
        # Output only. The list of locations where the association is present. This
        # information is retrieved from the linked endpoint group, and not configured as
        # part of the association itself.
        # Corresponds to the JSON property `locationsDetails`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociationLocationDetails>]
        attr_accessor :locations_details
      
        # Immutable. Identifier. The resource name of this endpoint group association,
        # for example: `projects/123456789/locations/global/
        # interceptEndpointGroupAssociations/my-eg-association`. See https://google.aip.
        # dev/122 for more details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The VPC network that is associated. for example: `
        # projects/123456789/global/networks/my-network`. See https://google.aip.dev/124.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. The current state of the resource does not match the user's
        # intended state, and the system is working to reconcile them. This part of the
        # normal operation (e.g. adding a new location to the target deployment group).
        # See https://google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. Current state of the endpoint group association.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the resource was most recently updated. See
        # https://google.aip.dev/148#timestamps.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @intercept_endpoint_group = args[:intercept_endpoint_group] if args.key?(:intercept_endpoint_group)
          @labels = args[:labels] if args.key?(:labels)
          @locations = args[:locations] if args.key?(:locations)
          @locations_details = args[:locations_details] if args.key?(:locations_details)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The endpoint group's view of a connected association.
      class InterceptEndpointGroupAssociationDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The connected association's resource name, for example: `projects/
        # 123456789/locations/global/interceptEndpointGroupAssociations/my-ega`. See
        # https://google.aip.dev/124.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The associated network, for example: projects/123456789/global/
        # networks/my-network. See https://google.aip.dev/124.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. Most recent known state of the association.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Contains details about the state of an association in a specific cloud
      # location.
      class InterceptEndpointGroupAssociationLocationDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The cloud location, e.g. "us-central1-a" or "asia-south1".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. The current state of the association in this location.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The endpoint group's view of a connected deployment group.
      class InterceptEndpointGroupConnectedDeploymentGroup
        include Google::Apis::Core::Hashable
      
        # Output only. The list of locations where the deployment group is present.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptLocation>]
        attr_accessor :locations
      
        # Output only. The connected deployment group's resource name, for example: `
        # projects/123456789/locations/global/interceptDeploymentGroups/my-dg`. See
        # https://google.aip.dev/124.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details about intercept in a specific cloud location.
      class InterceptLocation
        include Google::Apis::Core::Hashable
      
        # Output only. The cloud location, e.g. "us-central1-a" or "asia-south1".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. The current state of the association in this location.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response of the ListAddressGroupReferences method.
      class ListAddressGroupReferencesResponse
        include Google::Apis::Core::Hashable
      
        # A list of references that matches the specified filter in the request.
        # Corresponds to the JSON property `addressGroupReferences`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::ListAddressGroupReferencesResponseAddressGroupReference>]
        attr_accessor :address_group_references
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_group_references = args[:address_group_references] if args.key?(:address_group_references)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The Reference of AddressGroup.
      class ListAddressGroupReferencesResponseAddressGroupReference
        include Google::Apis::Core::Hashable
      
        # FirewallPolicy that is using the Address Group.
        # Corresponds to the JSON property `firewallPolicy`
        # @return [String]
        attr_accessor :firewall_policy
      
        # Rule priority of the FirewallPolicy that is using the Address Group.
        # Corresponds to the JSON property `rulePriority`
        # @return [Fixnum]
        attr_accessor :rule_priority
      
        # Cloud Armor SecurityPolicy that is using the Address Group.
        # Corresponds to the JSON property `securityPolicy`
        # @return [String]
        attr_accessor :security_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @firewall_policy = args[:firewall_policy] if args.key?(:firewall_policy)
          @rule_priority = args[:rule_priority] if args.key?(:rule_priority)
          @security_policy = args[:security_policy] if args.key?(:security_policy)
        end
      end
      
      # Response returned by the ListAddressGroups method.
      class ListAddressGroupsResponse
        include Google::Apis::Core::Hashable
      
        # List of AddressGroups resources.
        # Corresponds to the JSON property `addressGroups`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AddressGroup>]
        attr_accessor :address_groups
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
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
          @address_groups = args[:address_groups] if args.key?(:address_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListAuthorizationPolicies method.
      class ListAuthorizationPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # List of AuthorizationPolicies resources.
        # Corresponds to the JSON property `authorizationPolicies`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthorizationPolicy>]
        attr_accessor :authorization_policies
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization_policies = args[:authorization_policies] if args.key?(:authorization_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing `AuthzPolicy` resources.
      class ListAuthzPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # The list of `AuthzPolicy` resources.
        # Corresponds to the JSON property `authzPolicies`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AuthzPolicy>]
        attr_accessor :authz_policies
      
        # A token identifying a page of results that the server returns.
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
          @authz_policies = args[:authz_policies] if args.key?(:authz_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListBackendAuthenticationConfigs method.
      class ListBackendAuthenticationConfigsResponse
        include Google::Apis::Core::Hashable
      
        # List of BackendAuthenticationConfig resources.
        # Corresponds to the JSON property `backendAuthenticationConfigs`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::BackendAuthenticationConfig>]
        attr_accessor :backend_authentication_configs
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
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
          @backend_authentication_configs = args[:backend_authentication_configs] if args.key?(:backend_authentication_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListClientTlsPolicies method.
      class ListClientTlsPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # List of ClientTlsPolicy resources.
        # Corresponds to the JSON property `clientTlsPolicies`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::ClientTlsPolicy>]
        attr_accessor :client_tls_policies
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_tls_policies = args[:client_tls_policies] if args.key?(:client_tls_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message to requesting a list of DnsThreatDetectors.
      class ListDnsThreatDetectorsResponse
        include Google::Apis::Core::Hashable
      
        # The list of DnsThreatDetector resources.
        # Corresponds to the JSON property `dnsThreatDetectors`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::DnsThreatDetector>]
        attr_accessor :dns_threat_detectors
      
        # A token, which can be sent as `page_token`, to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unordered list. Unreachable `DnsThreatDetector` resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_threat_detectors = args[:dns_threat_detectors] if args.key?(:dns_threat_detectors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Associations
      class ListFirewallEndpointAssociationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Association
        # Corresponds to the JSON property `firewallEndpointAssociations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::FirewallEndpointAssociation>]
        attr_accessor :firewall_endpoint_associations
      
        # A token identifying a page of results the server should return.
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
          @firewall_endpoint_associations = args[:firewall_endpoint_associations] if args.key?(:firewall_endpoint_associations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Endpoints
      class ListFirewallEndpointsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Endpoint
        # Corresponds to the JSON property `firewallEndpoints`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::FirewallEndpoint>]
        attr_accessor :firewall_endpoints
      
        # A token identifying a page of results the server should return.
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
          @firewall_endpoints = args[:firewall_endpoints] if args.key?(:firewall_endpoints)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListGatewaySecurityPolicies method.
      class ListGatewaySecurityPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # List of GatewaySecurityPolicies resources.
        # Corresponds to the JSON property `gatewaySecurityPolicies`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicy>]
        attr_accessor :gateway_security_policies
      
        # If there might be more results than those appearing in this response, then '
        # next_page_token' is included. To get the next set of results, call this method
        # again using the value of 'next_page_token' as 'page_token'.
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
          @gateway_security_policies = args[:gateway_security_policies] if args.key?(:gateway_security_policies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListGatewaySecurityPolicyRules method.
      class ListGatewaySecurityPolicyRulesResponse
        include Google::Apis::Core::Hashable
      
        # List of GatewaySecurityPolicyRule resources.
        # Corresponds to the JSON property `gatewaySecurityPolicyRules`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::GatewaySecurityPolicyRule>]
        attr_accessor :gateway_security_policy_rules
      
        # If there might be more results than those appearing in this response, then '
        # next_page_token' is included. To get the next set of results, call this method
        # again using the value of 'next_page_token' as 'page_token'.
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
          @gateway_security_policy_rules = args[:gateway_security_policy_rules] if args.key?(:gateway_security_policy_rules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListInterceptDeploymentGroups.
      class ListInterceptDeploymentGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The deployment groups from the specified parent.
        # Corresponds to the JSON property `interceptDeploymentGroups`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptDeploymentGroup>]
        attr_accessor :intercept_deployment_groups
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. See https://google.aip.dev/
        # 158 for more details.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intercept_deployment_groups = args[:intercept_deployment_groups] if args.key?(:intercept_deployment_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListInterceptDeployments.
      class ListInterceptDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # The deployments from the specified parent.
        # Corresponds to the JSON property `interceptDeployments`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptDeployment>]
        attr_accessor :intercept_deployments
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. See https://google.aip.dev/
        # 158 for more details.
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
          @intercept_deployments = args[:intercept_deployments] if args.key?(:intercept_deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListInterceptEndpointGroupAssociations.
      class ListInterceptEndpointGroupAssociationsResponse
        include Google::Apis::Core::Hashable
      
        # The associations from the specified parent.
        # Corresponds to the JSON property `interceptEndpointGroupAssociations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroupAssociation>]
        attr_accessor :intercept_endpoint_group_associations
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. See https://google.aip.dev/
        # 158 for more details.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intercept_endpoint_group_associations = args[:intercept_endpoint_group_associations] if args.key?(:intercept_endpoint_group_associations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListInterceptEndpointGroups.
      class ListInterceptEndpointGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The endpoint groups from the specified parent.
        # Corresponds to the JSON property `interceptEndpointGroups`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::InterceptEndpointGroup>]
        attr_accessor :intercept_endpoint_groups
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. See https://google.aip.dev/
        # 158 for more details.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intercept_endpoint_groups = args[:intercept_endpoint_groups] if args.key?(:intercept_endpoint_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::Location>]
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
      
      # Response message for ListMirroringDeploymentGroups.
      class ListMirroringDeploymentGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The deployment groups from the specified parent.
        # Corresponds to the JSON property `mirroringDeploymentGroups`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroup>]
        attr_accessor :mirroring_deployment_groups
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. See https://google.aip.dev/
        # 158 for more details.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mirroring_deployment_groups = args[:mirroring_deployment_groups] if args.key?(:mirroring_deployment_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListMirroringDeployments.
      class ListMirroringDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # The deployments from the specified parent.
        # Corresponds to the JSON property `mirroringDeployments`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringDeployment>]
        attr_accessor :mirroring_deployments
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. See https://google.aip.dev/
        # 158 for more details.
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
          @mirroring_deployments = args[:mirroring_deployments] if args.key?(:mirroring_deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListMirroringEndpointGroupAssociations.
      class ListMirroringEndpointGroupAssociationsResponse
        include Google::Apis::Core::Hashable
      
        # The associations from the specified parent.
        # Corresponds to the JSON property `mirroringEndpointGroupAssociations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociation>]
        attr_accessor :mirroring_endpoint_group_associations
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. See https://google.aip.dev/
        # 158 for more details.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mirroring_endpoint_group_associations = args[:mirroring_endpoint_group_associations] if args.key?(:mirroring_endpoint_group_associations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListMirroringEndpointGroups.
      class ListMirroringEndpointGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The endpoint groups from the specified parent.
        # Corresponds to the JSON property `mirroringEndpointGroups`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroup>]
        attr_accessor :mirroring_endpoint_groups
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. See https://google.aip.dev/
        # 158 for more details.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mirroring_endpoint_groups = args[:mirroring_endpoint_groups] if args.key?(:mirroring_endpoint_groups)
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
        # @return [Array<Google::Apis::NetworksecurityV1beta1::Operation>]
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
      
      # Response for `ListSACAttachments` method.
      class ListSacAttachmentsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of SACAttachments.
        # Corresponds to the JSON property `sacAttachments`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::SacAttachment>]
        attr_accessor :sac_attachments
      
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
          @sac_attachments = args[:sac_attachments] if args.key?(:sac_attachments)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for `ListSACRealms` method.
      class ListSacRealmsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of SACRealms.
        # Corresponds to the JSON property `sacRealms`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::SacRealm>]
        attr_accessor :sac_realms
      
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
          @sac_realms = args[:sac_realms] if args.key?(:sac_realms)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListSecurityProfileGroups method.
      class ListSecurityProfileGroupsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of SecurityProfileGroups resources.
        # Corresponds to the JSON property `securityProfileGroups`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::SecurityProfileGroup>]
        attr_accessor :security_profile_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_profile_groups = args[:security_profile_groups] if args.key?(:security_profile_groups)
        end
      end
      
      # Response returned by the ListSecurityProfiles method.
      class ListSecurityProfilesResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of SecurityProfile resources.
        # Corresponds to the JSON property `securityProfiles`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::SecurityProfile>]
        attr_accessor :security_profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @security_profiles = args[:security_profiles] if args.key?(:security_profiles)
        end
      end
      
      # Response returned by the ListServerTlsPolicies method.
      class ListServerTlsPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of ServerTlsPolicy resources.
        # Corresponds to the JSON property `serverTlsPolicies`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::ServerTlsPolicy>]
        attr_accessor :server_tls_policies
      
        # Unreachable resources. Populated when the request opts into `
        # return_partial_success` and reading across collections e.g. when attempting to
        # list all resources across all supported locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @server_tls_policies = args[:server_tls_policies] if args.key?(:server_tls_policies)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListTlsInspectionPolicies method.
      class ListTlsInspectionPoliciesResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then '
        # next_page_token' is included. To get the next set of results, call this method
        # again using the value of 'next_page_token' as 'page_token'.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of TlsInspectionPolicies resources.
        # Corresponds to the JSON property `tlsInspectionPolicies`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::TlsInspectionPolicy>]
        attr_accessor :tls_inspection_policies
      
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
          @tls_inspection_policies = args[:tls_inspection_policies] if args.key?(:tls_inspection_policies)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response returned by the ListUrlLists method.
      class ListUrlListsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of UrlList resources.
        # Corresponds to the JSON property `urlLists`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::UrlList>]
        attr_accessor :url_lists
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @url_lists = args[:url_lists] if args.key?(:url_lists)
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
      
      # Specification of the MTLSPolicy.
      class MtlsPolicy
        include Google::Apis::Core::Hashable
      
        # Required if the policy is to be used with Traffic Director. For Application
        # Load Balancers it must be empty. Defines the mechanism to obtain the
        # Certificate Authority certificate to validate the client certificate.
        # Corresponds to the JSON property `clientValidationCa`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::ValidationCa>]
        attr_accessor :client_validation_ca
      
        # When the client presents an invalid certificate or no certificate to the load
        # balancer, the `client_validation_mode` specifies how the client connection is
        # handled. Required if the policy is to be used with the Application Load
        # Balancers. For Traffic Director it must be empty.
        # Corresponds to the JSON property `clientValidationMode`
        # @return [String]
        attr_accessor :client_validation_mode
      
        # Reference to the TrustConfig from certificatemanager.googleapis.com namespace.
        # If specified, the chain validation will be performed against certificates
        # configured in the given TrustConfig. Allowed only if the policy is to be used
        # with Application Load Balancers.
        # Corresponds to the JSON property `clientValidationTrustConfig`
        # @return [String]
        attr_accessor :client_validation_trust_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_validation_ca = args[:client_validation_ca] if args.key?(:client_validation_ca)
          @client_validation_mode = args[:client_validation_mode] if args.key?(:client_validation_mode)
          @client_validation_trust_config = args[:client_validation_trust_config] if args.key?(:client_validation_trust_config)
        end
      end
      
      # A deployment represents a zonal mirroring backend ready to accept GENEVE-
      # encapsulated replica traffic, e.g. a zonal instance group fronted by an
      # internal passthrough load balancer. Deployments are always part of a global
      # deployment group which represents a global mirroring service.
      class MirroringDeployment
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created. See https://google.
        # aip.dev/148#timestamps.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description of the deployment. Used as additional
        # context for the deployment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Immutable. The regional forwarding rule that fronts the mirroring
        # collectors, for example: `projects/123456789/regions/us-central1/
        # forwardingRules/my-rule`. See https://google.aip.dev/124.
        # Corresponds to the JSON property `forwardingRule`
        # @return [String]
        attr_accessor :forwarding_rule
      
        # Optional. Labels are key/value pairs that help to organize and filter
        # resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Immutable. The deployment group that this deployment is a part of,
        # for example: `projects/123456789/locations/global/mirroringDeploymentGroups/my-
        # dg`. See https://google.aip.dev/124.
        # Corresponds to the JSON property `mirroringDeploymentGroup`
        # @return [String]
        attr_accessor :mirroring_deployment_group
      
        # Immutable. Identifier. The resource name of this deployment, for example: `
        # projects/123456789/locations/us-central1-a/mirroringDeployments/my-dep`. See
        # https://google.aip.dev/122 for more details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the resource does not match the user's
        # intended state, and the system is working to reconcile them. This part of the
        # normal operation (e.g. linking a new association to the parent group). See
        # https://google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of the deployment. See https://google.aip.dev/
        # 216.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the resource was most recently updated. See
        # https://google.aip.dev/148#timestamps.
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
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @labels = args[:labels] if args.key?(:labels)
          @mirroring_deployment_group = args[:mirroring_deployment_group] if args.key?(:mirroring_deployment_group)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A deployment group aggregates many zonal mirroring backends (deployments) into
      # a single global mirroring service. Consumers can connect this service using an
      # endpoint group.
      class MirroringDeploymentGroup
        include Google::Apis::Core::Hashable
      
        # Output only. The list of endpoint groups that are connected to this resource.
        # Corresponds to the JSON property `connectedEndpointGroups`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroupConnectedEndpointGroup>]
        attr_accessor :connected_endpoint_groups
      
        # Output only. The timestamp when the resource was created. See https://google.
        # aip.dev/148#timestamps.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description of the deployment group. Used as
        # additional context for the deployment group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Labels are key/value pairs that help to organize and filter
        # resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The list of locations where the deployment group is present.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringLocation>]
        attr_accessor :locations
      
        # Immutable. Identifier. The resource name of this deployment group, for example:
        # `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`. See
        # https://google.aip.dev/122 for more details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The list of Mirroring Deployments that belong to this group.
        # Corresponds to the JSON property `nestedDeployments`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringDeploymentGroupDeployment>]
        attr_accessor :nested_deployments
      
        # Required. Immutable. The network that will be used for all child deployments,
        # for example: `projects/`project`/global/networks/`network``. See https://
        # google.aip.dev/124.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. The current state of the resource does not match the user's
        # intended state, and the system is working to reconcile them. This is part of
        # the normal operation (e.g. adding a new deployment to the group) See https://
        # google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of the deployment group. See https://google.aip.
        # dev/216.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the resource was most recently updated. See
        # https://google.aip.dev/148#timestamps.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_endpoint_groups = args[:connected_endpoint_groups] if args.key?(:connected_endpoint_groups)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
          @nested_deployments = args[:nested_deployments] if args.key?(:nested_deployments)
          @network = args[:network] if args.key?(:network)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An endpoint group connected to this deployment group.
      class MirroringDeploymentGroupConnectedEndpointGroup
        include Google::Apis::Core::Hashable
      
        # Output only. The connected endpoint group's resource name, for example: `
        # projects/123456789/locations/global/mirroringEndpointGroups/my-eg`. See https:/
        # /google.aip.dev/124.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A deployment belonging to this deployment group.
      class MirroringDeploymentGroupDeployment
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the Mirroring Deployment, in the format: `projects/`
        # project`/locations/`location`/mirroringDeployments/`mirroring_deployment``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Most recent known state of the deployment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # An endpoint group is a consumer frontend for a deployment group (backend). In
      # order to configure mirroring for a network, consumers must create: - An
      # association between their network and the endpoint group. - A security profile
      # that points to the endpoint group. - A mirroring rule that references the
      # security profile (group).
      class MirroringEndpointGroup
        include Google::Apis::Core::Hashable
      
        # Output only. List of associations to this endpoint group.
        # Corresponds to the JSON property `associations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociationDetails>]
        attr_accessor :associations
      
        # Output only. List of details about the connected deployment groups to this
        # endpoint group.
        # Corresponds to the JSON property `connectedDeploymentGroups`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupConnectedDeploymentGroup>]
        attr_accessor :connected_deployment_groups
      
        # Output only. The timestamp when the resource was created. See https://google.
        # aip.dev/148#timestamps.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. User-provided description of the endpoint group. Used as additional
        # context for the endpoint group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Labels are key/value pairs that help to organize and filter
        # resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The deployment group that this DIRECT endpoint group is connected
        # to, for example: `projects/123456789/locations/global/
        # mirroringDeploymentGroups/my-dg`. See https://google.aip.dev/124.
        # Corresponds to the JSON property `mirroringDeploymentGroup`
        # @return [String]
        attr_accessor :mirroring_deployment_group
      
        # Immutable. Identifier. The resource name of this endpoint group, for example: `
        # projects/123456789/locations/global/mirroringEndpointGroups/my-eg`. See https:/
        # /google.aip.dev/122 for more details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the resource does not match the user's
        # intended state, and the system is working to reconcile them. This is part of
        # the normal operation (e.g. adding a new association to the group). See https://
        # google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The current state of the endpoint group. See https://google.aip.
        # dev/216.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Immutable. The type of the endpoint group. If left unspecified, defaults to
        # DIRECT.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The timestamp when the resource was most recently updated. See
        # https://google.aip.dev/148#timestamps.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @associations = args[:associations] if args.key?(:associations)
          @connected_deployment_groups = args[:connected_deployment_groups] if args.key?(:connected_deployment_groups)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @mirroring_deployment_group = args[:mirroring_deployment_group] if args.key?(:mirroring_deployment_group)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An endpoint group association represents a link between a network and an
      # endpoint group in the organization. Creating an association creates the
      # networking infrastructure linking the network to the endpoint group, but does
      # not enable mirroring by itself. To enable mirroring, the user must also create
      # a network firewall policy containing mirroring rules and associate it with the
      # network.
      class MirroringEndpointGroupAssociation
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created. See https://google.
        # aip.dev/148#timestamps.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Labels are key/value pairs that help to organize and filter
        # resources.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The list of locations where the association is configured. This
        # information is retrieved from the linked endpoint group.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringLocation>]
        attr_accessor :locations
      
        # Output only. The list of locations where the association is present. This
        # information is retrieved from the linked endpoint group, and not configured as
        # part of the association itself.
        # Corresponds to the JSON property `locationsDetails`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringEndpointGroupAssociationLocationDetails>]
        attr_accessor :locations_details
      
        # Immutable. The endpoint group that this association is connected to, for
        # example: `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
        # See https://google.aip.dev/124.
        # Corresponds to the JSON property `mirroringEndpointGroup`
        # @return [String]
        attr_accessor :mirroring_endpoint_group
      
        # Immutable. Identifier. The resource name of this endpoint group association,
        # for example: `projects/123456789/locations/global/
        # mirroringEndpointGroupAssociations/my-eg-association`. See https://google.aip.
        # dev/122 for more details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The VPC network that is associated. for example: `projects/
        # 123456789/global/networks/my-network`. See https://google.aip.dev/124.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. The current state of the resource does not match the user's
        # intended state, and the system is working to reconcile them. This part of the
        # normal operation (e.g. adding a new location to the target deployment group).
        # See https://google.aip.dev/128.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. Current state of the endpoint group association.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the resource was most recently updated. See
        # https://google.aip.dev/148#timestamps.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @locations = args[:locations] if args.key?(:locations)
          @locations_details = args[:locations_details] if args.key?(:locations_details)
          @mirroring_endpoint_group = args[:mirroring_endpoint_group] if args.key?(:mirroring_endpoint_group)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The endpoint group's view of a connected association.
      class MirroringEndpointGroupAssociationDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The connected association's resource name, for example: `projects/
        # 123456789/locations/global/mirroringEndpointGroupAssociations/my-ega`. See
        # https://google.aip.dev/124.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The associated network, for example: projects/123456789/global/
        # networks/my-network. See https://google.aip.dev/124.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. Most recent known state of the association.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Contains details about the state of an association in a specific cloud
      # location.
      class MirroringEndpointGroupAssociationLocationDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The cloud location, e.g. "us-central1-a" or "asia-south1".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. The current state of the association in this location.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The endpoint group's view of a connected deployment group.
      class MirroringEndpointGroupConnectedDeploymentGroup
        include Google::Apis::Core::Hashable
      
        # Output only. The list of locations where the deployment group is present.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::MirroringLocation>]
        attr_accessor :locations
      
        # Output only. The connected deployment group's resource name, for example: `
        # projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`. See
        # https://google.aip.dev/124.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details about mirroring in a specific cloud location.
      class MirroringLocation
        include Google::Apis::Core::Hashable
      
        # Output only. The cloud location, e.g. "us-central1-a" or "asia-south1".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. The current state of the association in this location.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @state = args[:state] if args.key?(:state)
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
        # @return [Google::Apis::NetworksecurityV1beta1::Status]
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
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
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
      
      # Request used by the RemoveAddressGroupItems method.
      class RemoveAddressGroupItemsRequest
        include Google::Apis::Core::Hashable
      
        # Required. List of items to remove.
        # Corresponds to the JSON property `items`
        # @return [Array<String>]
        attr_accessor :items
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Specification of rules.
      class Rule
        include Google::Apis::Core::Hashable
      
        # Optional. List of attributes for the traffic destination. All of the
        # destinations must match. A destination is a match if a request matches all the
        # specified hosts, ports, methods and headers. If not set, the action specified
        # in the 'action' field will be applied without any rule checks for the
        # destination.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::Destination>]
        attr_accessor :destinations
      
        # Optional. List of attributes for the traffic source. All of the sources must
        # match. A source is a match if both principals and ip_blocks match. If not set,
        # the action specified in the 'action' field will be applied without any rule
        # checks for the source.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::Source>]
        attr_accessor :sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destinations = args[:destinations] if args.key?(:destinations)
          @sources = args[:sources] if args.key?(:sources)
        end
      end
      
      # Represents a Secure Access Connect (SAC) attachment resource. A Secure Access
      # Connect attachment enables NCC Gateway to process traffic with an SSE product.
      class SacAttachment
        include Google::Apis::Core::Hashable
      
        # Optional. Case-insensitive ISO-3166 alpha-2 country code used for localization.
        # Only valid for Symantec attachments.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Output only. Timestamp when the attachment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Optional list of labels applied to the resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Resource name, in the form `projects/`project`/locations/`location`
        # /sacAttachments/`sac_attachment``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. NCC Gateway associated with the attachment. This can be input as an
        # ID or a full resource name. The output always has the form `projects/`
        # project_number`/locations/`location`/spokes/`ncc_gateway``.
        # Corresponds to the JSON property `nccGateway`
        # @return [String]
        attr_accessor :ncc_gateway
      
        # Required. SAC Realm which owns the attachment. This can be input as an ID or a
        # full resource name. The output always has the form `projects/`project_number`/
        # locations/`location`/sacRealms/`sac_realm``.
        # Corresponds to the JSON property `sacRealm`
        # @return [String]
        attr_accessor :sac_realm
      
        # Output only. State of the attachment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Fields specific to attachments associated with Symantec Cloud SWG.
        # Corresponds to the JSON property `symantecOptions`
        # @return [Google::Apis::NetworksecurityV1beta1::SacAttachmentSacAttachmentSymantecOptions]
        attr_accessor :symantec_options
      
        # Optional. Case-sensitive tzinfo identifier used for localization. Only valid
        # for Symantec attachments.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Output only. Timestamp when the attachment was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @ncc_gateway = args[:ncc_gateway] if args.key?(:ncc_gateway)
          @sac_realm = args[:sac_realm] if args.key?(:sac_realm)
          @state = args[:state] if args.key?(:state)
          @symantec_options = args[:symantec_options] if args.key?(:symantec_options)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Fields specific to attachments associated with Symantec Cloud SWG.
      class SacAttachmentSacAttachmentSymantecOptions
        include Google::Apis::Core::Hashable
      
        # Immutable. Name to be used when creating a location on the customer's behalf
        # in Symantec's Location API. Not to be confused with Google Cloud locations.
        # Corresponds to the JSON property `symantecLocationName`
        # @return [String]
        attr_accessor :symantec_location_name
      
        # Immutable. Symantec data center identifier that this attachment will connect
        # to.
        # Corresponds to the JSON property `symantecSite`
        # @return [String]
        attr_accessor :symantec_site
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @symantec_location_name = args[:symantec_location_name] if args.key?(:symantec_location_name)
          @symantec_site = args[:symantec_site] if args.key?(:symantec_site)
        end
      end
      
      # Represents a Secure Access Connect (SAC) realm resource. A Secure Access
      # Connect realm establishes a connection between your Google Cloud project and
      # an SSE service.
      class SacRealm
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the realm was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Optional list of labels applied to the resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. Resource name, in the form `projects/`project`/locations/global/
        # sacRealms/`sacRealm``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Key to be shared with SSE service provider to establish global handshake.
        # Corresponds to the JSON property `pairingKey`
        # @return [Google::Apis::NetworksecurityV1beta1::SacRealmPairingKey]
        attr_accessor :pairing_key
      
        # Immutable. SSE service provider associated with the realm.
        # Corresponds to the JSON property `securityService`
        # @return [String]
        attr_accessor :security_service
      
        # Output only. State of the realm.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Fields specific to realms using Symantec Cloud SWG.
        # Corresponds to the JSON property `symantecOptions`
        # @return [Google::Apis::NetworksecurityV1beta1::SacRealmSacRealmSymantecOptions]
        attr_accessor :symantec_options
      
        # Output only. Timestamp when the realm was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @pairing_key = args[:pairing_key] if args.key?(:pairing_key)
          @security_service = args[:security_service] if args.key?(:security_service)
          @state = args[:state] if args.key?(:state)
          @symantec_options = args[:symantec_options] if args.key?(:symantec_options)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Key to be shared with SSE service provider to establish global handshake.
      class SacRealmPairingKey
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp in UTC of when this resource is considered expired. It
        # expires 7 days after creation.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. Key value.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Fields specific to realms using Symantec Cloud SWG.
      class SacRealmSacRealmSymantecOptions
        include Google::Apis::Core::Hashable
      
        # Output only. Symantec site IDs which the user can choose to connect to.
        # Corresponds to the JSON property `availableSymantecSites`
        # @return [Array<String>]
        attr_accessor :available_symantec_sites
      
        # Optional. API Key used to call Symantec APIs on the user's behalf. Required if
        # using Symantec Cloud SWG. P4SA account needs permissions granted to read this
        # secret. A secret ID, secret name, or secret URI can be specified, but it will
        # be parsed and stored as a secret URI in the form `projects/`project_number`/
        # secrets/my-secret`.
        # Corresponds to the JSON property `secretPath`
        # @return [String]
        attr_accessor :secret_path
      
        # Output only. Connection status to Symantec API.
        # Corresponds to the JSON property `symantecConnectionState`
        # @return [String]
        attr_accessor :symantec_connection_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_symantec_sites = args[:available_symantec_sites] if args.key?(:available_symantec_sites)
          @secret_path = args[:secret_path] if args.key?(:secret_path)
          @symantec_connection_state = args[:symantec_connection_state] if args.key?(:symantec_connection_state)
        end
      end
      
      # SecurityProfile is a resource that defines the behavior for one of many
      # ProfileTypes.
      class SecurityProfile
        include Google::Apis::Core::Hashable
      
        # Output only. Resource creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # CustomInterceptProfile defines in-band integration behavior (intercept). It is
        # used by firewall rules with an APPLY_SECURITY_PROFILE_GROUP action.
        # Corresponds to the JSON property `customInterceptProfile`
        # @return [Google::Apis::NetworksecurityV1beta1::CustomInterceptProfile]
        attr_accessor :custom_intercept_profile
      
        # CustomMirroringProfile defines out-of-band integration behavior (mirroring).
        # It is used by mirroring rules with a MIRROR action.
        # Corresponds to the JSON property `customMirroringProfile`
        # @return [Google::Apis::NetworksecurityV1beta1::CustomMirroringProfile]
        attr_accessor :custom_mirroring_profile
      
        # Optional. An optional description of the profile. Max length 512 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. Identifier. Name of the SecurityProfile resource. It matches
        # pattern `projects|organizations/*/locations/`location`/securityProfiles/`
        # security_profile``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # ThreatPreventionProfile defines an action for specific threat signatures or
        # severity levels.
        # Corresponds to the JSON property `threatPreventionProfile`
        # @return [Google::Apis::NetworksecurityV1beta1::ThreatPreventionProfile]
        attr_accessor :threat_prevention_profile
      
        # Immutable. The single ProfileType that the SecurityProfile resource configures.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Last resource update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # UrlFilteringProfile defines filters based on URL.
        # Corresponds to the JSON property `urlFilteringProfile`
        # @return [Google::Apis::NetworksecurityV1beta1::UrlFilteringProfile]
        attr_accessor :url_filtering_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_intercept_profile = args[:custom_intercept_profile] if args.key?(:custom_intercept_profile)
          @custom_mirroring_profile = args[:custom_mirroring_profile] if args.key?(:custom_mirroring_profile)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @threat_prevention_profile = args[:threat_prevention_profile] if args.key?(:threat_prevention_profile)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @url_filtering_profile = args[:url_filtering_profile] if args.key?(:url_filtering_profile)
        end
      end
      
      # SecurityProfileGroup is a resource that defines the behavior for various
      # ProfileTypes.
      class SecurityProfileGroup
        include Google::Apis::Core::Hashable
      
        # Output only. Resource creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Reference to a SecurityProfile with the CustomIntercept
        # configuration.
        # Corresponds to the JSON property `customInterceptProfile`
        # @return [String]
        attr_accessor :custom_intercept_profile
      
        # Optional. Reference to a SecurityProfile with the CustomMirroring
        # configuration.
        # Corresponds to the JSON property `customMirroringProfile`
        # @return [String]
        attr_accessor :custom_mirroring_profile
      
        # Output only. Identifier used by the data-path. Unique within `container,
        # location`.
        # Corresponds to the JSON property `dataPathId`
        # @return [Fixnum]
        attr_accessor :data_path_id
      
        # Optional. An optional description of the profile group. Max length 2048
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches
        # pattern `projects|organizations/*/locations/`location`/securityProfileGroups/`
        # security_profile_group``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Reference to a SecurityProfile with the ThreatPrevention
        # configuration.
        # Corresponds to the JSON property `threatPreventionProfile`
        # @return [String]
        attr_accessor :threat_prevention_profile
      
        # Output only. Last resource update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. Reference to a SecurityProfile with the UrlFiltering configuration.
        # Corresponds to the JSON property `urlFilteringProfile`
        # @return [String]
        attr_accessor :url_filtering_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_intercept_profile = args[:custom_intercept_profile] if args.key?(:custom_intercept_profile)
          @custom_mirroring_profile = args[:custom_mirroring_profile] if args.key?(:custom_mirroring_profile)
          @data_path_id = args[:data_path_id] if args.key?(:data_path_id)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @threat_prevention_profile = args[:threat_prevention_profile] if args.key?(:threat_prevention_profile)
          @update_time = args[:update_time] if args.key?(:update_time)
          @url_filtering_profile = args[:url_filtering_profile] if args.key?(:url_filtering_profile)
        end
      end
      
      # ServerTlsPolicy is a resource that specifies how a server should authenticate
      # incoming requests. This resource itself does not affect configuration unless
      # it is attached to a target HTTPS proxy or endpoint config selector resource.
      # ServerTlsPolicy in the form accepted by Application Load Balancers can be
      # attached only to TargetHttpsProxy with an `EXTERNAL`, `EXTERNAL_MANAGED` or `
      # INTERNAL_MANAGED` load balancing scheme. Traffic Director compatible
      # ServerTlsPolicies can be attached to EndpointPolicy and TargetHttpsProxy with
      # Traffic Director `INTERNAL_SELF_MANAGED` load balancing scheme.
      class ServerTlsPolicy
        include Google::Apis::Core::Hashable
      
        # This field applies only for Traffic Director policies. It is must be set to
        # false for Application Load Balancer policies. Determines if server allows
        # plaintext connections. If set to true, server allows plain text connections.
        # By default, it is set to false. This setting is not exclusive of other
        # encryption modes. For example, if `allow_open` and `mtls_policy` are set,
        # server allows both plain text and mTLS connections. See documentation of other
        # encryption modes to confirm compatibility. Consider using it if you wish to
        # upgrade in place your deployment to TLS while having mixed TLS and non-TLS
        # traffic reaching port :80.
        # Corresponds to the JSON property `allowOpen`
        # @return [Boolean]
        attr_accessor :allow_open
        alias_method :allow_open?, :allow_open
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Free-text description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Set of label tags associated with the resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Specification of the MTLSPolicy.
        # Corresponds to the JSON property `mtlsPolicy`
        # @return [Google::Apis::NetworksecurityV1beta1::MtlsPolicy]
        attr_accessor :mtls_policy
      
        # Required. Name of the ServerTlsPolicy resource. It matches the pattern `
        # projects/*/locations/`location`/serverTlsPolicies/`server_tls_policy``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specification of certificate provider. Defines the mechanism to obtain the
        # certificate and private key for peer to peer authentication.
        # Corresponds to the JSON property `serverCertificate`
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1CertificateProvider]
        attr_accessor :server_certificate
      
        # Output only. The timestamp when the resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_open = args[:allow_open] if args.key?(:allow_open)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @mtls_policy = args[:mtls_policy] if args.key?(:mtls_policy)
          @name = args[:name] if args.key?(:name)
          @server_certificate = args[:server_certificate] if args.key?(:server_certificate)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Defines what action to take for a specific severity match.
      class SeverityOverride
        include Google::Apis::Core::Hashable
      
        # Required. Threat action override.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Required. Severity level to match.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Specification of traffic source attributes.
      class Source
        include Google::Apis::Core::Hashable
      
        # Optional. List of CIDR ranges to match based on source IP address. At least
        # one IP block should match. Single IP (e.g., "1.2.3.4") and CIDR (e.g., "1.2.3.
        # 0/24") are supported. Authorization based on source IP alone should be avoided.
        # The IP addresses of any load balancers or proxies should be considered
        # untrusted.
        # Corresponds to the JSON property `ipBlocks`
        # @return [Array<String>]
        attr_accessor :ip_blocks
      
        # Optional. List of peer identities to match for authorization. At least one
        # principal should match. Each peer can be an exact match, or a prefix match (
        # example, "namespace/*") or a suffix match (example, "*/service-account") or a
        # presence match "*". Authorization based on the principal name without
        # certificate validation (configured by ServerTlsPolicy resource) is considered
        # insecure.
        # Corresponds to the JSON property `principals`
        # @return [Array<String>]
        attr_accessor :principals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_blocks = args[:ip_blocks] if args.key?(:ip_blocks)
          @principals = args[:principals] if args.key?(:principals)
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
      
      # Defines what action to take for a specific threat_id match.
      class ThreatOverride
        include Google::Apis::Core::Hashable
      
        # Required. Threat action override. For some threat types, only a subset of
        # actions applies.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Required. Vendor-specific ID of a threat to override.
        # Corresponds to the JSON property `threatId`
        # @return [String]
        attr_accessor :threat_id
      
        # Output only. Type of the threat (read only).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @threat_id = args[:threat_id] if args.key?(:threat_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # ThreatPreventionProfile defines an action for specific threat signatures or
      # severity levels.
      class ThreatPreventionProfile
        include Google::Apis::Core::Hashable
      
        # Optional. Configuration for overriding antivirus actions per protocol.
        # Corresponds to the JSON property `antivirusOverrides`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::AntivirusOverride>]
        attr_accessor :antivirus_overrides
      
        # Optional. Configuration for overriding threats actions by severity match.
        # Corresponds to the JSON property `severityOverrides`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::SeverityOverride>]
        attr_accessor :severity_overrides
      
        # Optional. Configuration for overriding threats actions by threat_id match. If
        # a threat is matched both by configuration provided in severity_overrides and
        # threat_overrides, the threat_overrides action is applied.
        # Corresponds to the JSON property `threatOverrides`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::ThreatOverride>]
        attr_accessor :threat_overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @antivirus_overrides = args[:antivirus_overrides] if args.key?(:antivirus_overrides)
          @severity_overrides = args[:severity_overrides] if args.key?(:severity_overrides)
          @threat_overrides = args[:threat_overrides] if args.key?(:threat_overrides)
        end
      end
      
      # The TlsInspectionPolicy resource contains references to CA pools in
      # Certificate Authority Service and associated metadata.
      class TlsInspectionPolicy
        include Google::Apis::Core::Hashable
      
        # Required. A CA pool resource used to issue interception certificates. The CA
        # pool string has a relative resource path following the form "projects/`project`
        # /locations/`location`/caPools/`ca_pool`".
        # Corresponds to the JSON property `caPool`
        # @return [String]
        attr_accessor :ca_pool
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. List of custom TLS cipher suites selected. This field is valid only
        # if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.
        # ListAvailableFeatures method returns the set of features that can be specified
        # in this list. Note that Secure Web Proxy does not yet honor this field.
        # Corresponds to the JSON property `customTlsFeatures`
        # @return [Array<String>]
        attr_accessor :custom_tls_features
      
        # Optional. Free-text description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. If FALSE (the default), use our default set of public CAs in
        # addition to any CAs specified in trust_config. These public CAs are currently
        # based on the Mozilla Root Program and are subject to change over time. If TRUE,
        # do not accept our default set of public CAs. Only CAs specified in
        # trust_config will be accepted. This defaults to FALSE (use public CAs in
        # addition to trust_config) for backwards compatibility, but trusting public
        # root CAs is *not recommended* unless the traffic in question is outbound to
        # public web servers. When possible, prefer setting this to "false" and
        # explicitly specifying trusted CAs and certificates in a TrustConfig. Note that
        # Secure Web Proxy does not yet honor this field.
        # Corresponds to the JSON property `excludePublicCaSet`
        # @return [Boolean]
        attr_accessor :exclude_public_ca_set
        alias_method :exclude_public_ca_set?, :exclude_public_ca_set
      
        # Optional. Minimum TLS version that the firewall should use when negotiating
        # connections with both clients and servers. If this is not set, then the
        # default value is to allow the broadest set of clients and servers (TLS 1.0 or
        # higher). Setting this to more restrictive values may improve security, but may
        # also prevent the firewall from connecting to some clients or servers. Note
        # that Secure Web Proxy does not yet honor this field.
        # Corresponds to the JSON property `minTlsVersion`
        # @return [String]
        attr_accessor :min_tls_version
      
        # Required. Name of the resource. Name is of the form projects/`project`/
        # locations/`location`/tlsInspectionPolicies/`tls_inspection_policy`
        # tls_inspection_policy should match the pattern:(^[a-z]([a-z0-9-]`0,61`[a-z0-9])
        # ?$).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The selected Profile. If this is not set, then the default value is
        # to allow the broadest set of clients and servers ("PROFILE_COMPATIBLE").
        # Setting this to more restrictive values may improve security, but may also
        # prevent the TLS inspection proxy from connecting to some clients or servers.
        # Note that Secure Web Proxy does not yet honor this field.
        # Corresponds to the JSON property `tlsFeatureProfile`
        # @return [String]
        attr_accessor :tls_feature_profile
      
        # Optional. A TrustConfig resource used when making a connection to the TLS
        # server. This is a relative resource path following the form "projects/`project`
        # /locations/`location`/trustConfigs/`trust_config`". This is necessary to
        # intercept TLS connections to servers with certificates signed by a private CA
        # or self-signed certificates. Note that Secure Web Proxy does not yet honor
        # this field.
        # Corresponds to the JSON property `trustConfig`
        # @return [String]
        attr_accessor :trust_config
      
        # Output only. The timestamp when the resource was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_pool = args[:ca_pool] if args.key?(:ca_pool)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_tls_features = args[:custom_tls_features] if args.key?(:custom_tls_features)
          @description = args[:description] if args.key?(:description)
          @exclude_public_ca_set = args[:exclude_public_ca_set] if args.key?(:exclude_public_ca_set)
          @min_tls_version = args[:min_tls_version] if args.key?(:min_tls_version)
          @name = args[:name] if args.key?(:name)
          @tls_feature_profile = args[:tls_feature_profile] if args.key?(:tls_feature_profile)
          @trust_config = args[:trust_config] if args.key?(:trust_config)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A URL filter defines an action to take for some URL match.
      class UrlFilter
        include Google::Apis::Core::Hashable
      
        # Required. The action taken when this filter is applied.
        # Corresponds to the JSON property `filteringAction`
        # @return [String]
        attr_accessor :filtering_action
      
        # Required. The priority of this filter within the URL Filtering Profile. Lower
        # integers indicate higher priorities. The priority of a filter must be unique
        # within a URL Filtering Profile.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Required. The list of strings that a URL must match with for this filter to be
        # applied.
        # Corresponds to the JSON property `urls`
        # @return [Array<String>]
        attr_accessor :urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filtering_action = args[:filtering_action] if args.key?(:filtering_action)
          @priority = args[:priority] if args.key?(:priority)
          @urls = args[:urls] if args.key?(:urls)
        end
      end
      
      # UrlFilteringProfile defines filters based on URL.
      class UrlFilteringProfile
        include Google::Apis::Core::Hashable
      
        # Optional. The list of filtering configs in which each config defines an action
        # to take for some URL match.
        # Corresponds to the JSON property `urlFilters`
        # @return [Array<Google::Apis::NetworksecurityV1beta1::UrlFilter>]
        attr_accessor :url_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url_filters = args[:url_filters] if args.key?(:url_filters)
        end
      end
      
      # UrlList proto helps users to set reusable, independently manageable lists of
      # hosts, host patterns, URLs, URL patterns.
      class UrlList
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the security policy was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Free-text description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Name of the resource provided by the user. Name is of the form
        # projects/`project`/locations/`location`/urlLists/`url_list` url_list should
        # match the pattern:(^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time when the security policy was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. FQDNs and URLs.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Specification of ValidationCA. Defines the mechanism to obtain the Certificate
      # Authority certificate to validate the peer certificate.
      class ValidationCa
        include Google::Apis::Core::Hashable
      
        # Specification of a TLS certificate provider instance. Workloads may have one
        # or more CertificateProvider instances (plugins) and one of them is enabled and
        # configured by specifying this message. Workloads use the values from this
        # message to locate and load the CertificateProvider instance configuration.
        # Corresponds to the JSON property `certificateProviderInstance`
        # @return [Google::Apis::NetworksecurityV1beta1::CertificateProviderInstance]
        attr_accessor :certificate_provider_instance
      
        # Specification of the GRPC Endpoint.
        # Corresponds to the JSON property `grpcEndpoint`
        # @return [Google::Apis::NetworksecurityV1beta1::GoogleCloudNetworksecurityV1beta1GrpcEndpoint]
        attr_accessor :grpc_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_provider_instance = args[:certificate_provider_instance] if args.key?(:certificate_provider_instance)
          @grpc_endpoint = args[:grpc_endpoint] if args.key?(:grpc_endpoint)
        end
      end
    end
  end
end
