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
    module DeploymentmanagerV2beta
      
      # Async options that determine when a resource should finish.
      class AsyncOptions
        include Google::Apis::Core::Hashable
      
        # Method regex where this policy will apply.
        # Corresponds to the JSON property `methodMatch`
        # @return [String]
        attr_accessor :method_match
      
        # Deployment manager will poll instances for this API resource setting a RUNNING
        # state, and blocking until polling conditions tell whether the resource is
        # completed or failed.
        # Corresponds to the JSON property `pollingOptions`
        # @return [Google::Apis::DeploymentmanagerV2beta::PollingOptions]
        attr_accessor :polling_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_match = args[:method_match] if args.key?(:method_match)
          @polling_options = args[:polling_options] if args.key?(:polling_options)
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
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::AuditLogConfig>]
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
      
      # BaseType that describes a service-backed Type.
      class BaseType
        include Google::Apis::Core::Hashable
      
        # Allows resource handling overrides for specific collections
        # Corresponds to the JSON property `collectionOverrides`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::CollectionOverride>]
        attr_accessor :collection_overrides
      
        # The credential used by Deployment Manager and TypeProvider. Only one of the
        # options is permitted.
        # Corresponds to the JSON property `credential`
        # @return [Google::Apis::DeploymentmanagerV2beta::Credential]
        attr_accessor :credential
      
        # Descriptor Url for the this type.
        # Corresponds to the JSON property `descriptorUrl`
        # @return [String]
        attr_accessor :descriptor_url
      
        # Options allows customized resource handling by Deployment Manager.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DeploymentmanagerV2beta::Options]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_overrides = args[:collection_overrides] if args.key?(:collection_overrides)
          @credential = args[:credential] if args.key?(:credential)
          @descriptor_url = args[:descriptor_url] if args.key?(:descriptor_url)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Basic Auth used as a credential.
      class BasicAuth
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # 
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @user = args[:user] if args.key?(:user)
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
        # @return [Google::Apis::DeploymentmanagerV2beta::Expr]
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
      
      # CollectionOverride allows resource handling overrides for specific resources
      # within a BaseType
      class CollectionOverride
        include Google::Apis::Core::Hashable
      
        # The collection that identifies this resource within its service.
        # Corresponds to the JSON property `collection`
        # @return [String]
        attr_accessor :collection
      
        # Options allows customized resource handling by Deployment Manager.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DeploymentmanagerV2beta::Options]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection = args[:collection] if args.key?(:collection)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Holds the composite type.
      class CompositeType
        include Google::Apis::Core::Hashable
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Map of labels; provided by the client when the resource is created or updated.
        # Specifically: Label keys must be between 1 and 63 characters long and must
        # conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`
        # Label values must be between 0 and 63 characters long and must conform to the
        # regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::CompositeTypeLabelEntry>]
        attr_accessor :labels
      
        # Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]`0,
        # 61`[a-z0-9])?`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an Operation resource. Google Compute Engine has three Operation
        # resources: * [Global](/compute/docs/reference/rest/`$api_version`/
        # globalOperations) * [Regional](/compute/docs/reference/rest/`$api_version`/
        # regionOperations) * [Zonal](/compute/docs/reference/rest/`$api_version`/
        # zoneOperations) You can use an operation resource to manage asynchronous API
        # requests. For more information, read Handling API responses. Operations can be
        # global, regional or zonal. - For global operations, use the `globalOperations`
        # resource. - For regional operations, use the `regionOperations` resource. -
        # For zonal operations, use the `zonalOperations` resource. For more information,
        # read Global, Regional, and Zonal Resources.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::DeploymentmanagerV2beta::Operation]
        attr_accessor :operation
      
        # Output only. Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Files that make up the template contents of a template type.
        # Corresponds to the JSON property `templateContents`
        # @return [Google::Apis::DeploymentmanagerV2beta::TemplateContents]
        attr_accessor :template_contents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @operation = args[:operation] if args.key?(:operation)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @template_contents = args[:template_contents] if args.key?(:template_contents)
        end
      end
      
      # Label object for CompositeTypes
      class CompositeTypeLabelEntry
        include Google::Apis::Core::Hashable
      
        # Key of the label
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value of the label
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A response that returns all Composite Types supported by Deployment Manager
      class CompositeTypesListResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A list of resource composite types supported by Deployment
        # Manager.
        # Corresponds to the JSON property `compositeTypes`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::CompositeType>]
        attr_accessor :composite_types
      
        # A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composite_types = args[:composite_types] if args.key?(:composite_types)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ConfigFile
        include Google::Apis::Core::Hashable
      
        # The contents of the file.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # The credential used by Deployment Manager and TypeProvider. Only one of the
      # options is permitted.
      class Credential
        include Google::Apis::Core::Hashable
      
        # Basic Auth used as a credential.
        # Corresponds to the JSON property `basicAuth`
        # @return [Google::Apis::DeploymentmanagerV2beta::BasicAuth]
        attr_accessor :basic_auth
      
        # Service Account used as a credential.
        # Corresponds to the JSON property `serviceAccount`
        # @return [Google::Apis::DeploymentmanagerV2beta::ServiceAccount]
        attr_accessor :service_account
      
        # Specify to use the project default credential, only supported by Deployment.
        # Corresponds to the JSON property `useProjectDefault`
        # @return [Boolean]
        attr_accessor :use_project_default
        alias_method :use_project_default?, :use_project_default
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_auth = args[:basic_auth] if args.key?(:basic_auth)
          @service_account = args[:service_account] if args.key?(:service_account)
          @use_project_default = args[:use_project_default] if args.key?(:use_project_default)
        end
      end
      
      # 
      class Deployment
        include Google::Apis::Core::Hashable
      
        # An optional user-provided description of the deployment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Provides a fingerprint to use in requests to modify a deployment, such as `
        # update()`, `stop()`, and `cancelPreview()` requests. A fingerprint is a
        # randomly generated value that must be provided with `update()`, `stop()`, and `
        # cancelPreview()` requests to perform optimistic locking. This ensures
        # optimistic concurrency so that only one request happens at a time. The
        # fingerprint is initially generated by Deployment Manager and changes after
        # every request to modify data. To get the latest fingerprint value, perform a `
        # get()` request to a deployment.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # 
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Map of One Platform labels; provided by the client when the resource is
        # created or updated. Specifically: Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: `[a-z]([-
        # a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and
        # must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::DeploymentLabelEntry>]
        attr_accessor :labels
      
        # Output only. URL of the manifest representing the last manifest that was
        # successfully deployed. If no manifest has been successfully deployed, this
        # field will be absent.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an Operation resource. Google Compute Engine has three Operation
        # resources: * [Global](/compute/docs/reference/rest/`$api_version`/
        # globalOperations) * [Regional](/compute/docs/reference/rest/`$api_version`/
        # regionOperations) * [Zonal](/compute/docs/reference/rest/`$api_version`/
        # zoneOperations) You can use an operation resource to manage asynchronous API
        # requests. For more information, read Handling API responses. Operations can be
        # global, regional or zonal. - For global operations, use the `globalOperations`
        # resource. - For regional operations, use the `regionOperations` resource. -
        # For zonal operations, use the `zonalOperations` resource. For more information,
        # read Global, Regional, and Zonal Resources.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::DeploymentmanagerV2beta::Operation]
        attr_accessor :operation
      
        # Output only. Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Input Only] The parameters that define your deployment, including the
        # deployment configuration and relevant templates.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DeploymentmanagerV2beta::TargetConfiguration]
        attr_accessor :target
      
        # Output only. If Deployment Manager is currently updating or previewing an
        # update to this deployment, the updated configuration appears here.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::DeploymentmanagerV2beta::DeploymentUpdate]
        attr_accessor :update
      
        # Output only. Update timestamp in RFC3339 text format.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @labels = args[:labels] if args.key?(:labels)
          @manifest = args[:manifest] if args.key?(:manifest)
          @name = args[:name] if args.key?(:name)
          @operation = args[:operation] if args.key?(:operation)
          @self_link = args[:self_link] if args.key?(:self_link)
          @target = args[:target] if args.key?(:target)
          @update = args[:update] if args.key?(:update)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Label object for Deployments
      class DeploymentLabelEntry
        include Google::Apis::Core::Hashable
      
        # Key of the label
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value of the label
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class DeploymentUpdate
        include Google::Apis::Core::Hashable
      
        # Output only. An optional user-provided description of the deployment after the
        # current update has been applied.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Map of One Platform labels; provided by the client when the resource is
        # created or updated. Specifically: Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: `[a-z]([-
        # a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and
        # must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::DeploymentUpdateLabelEntry>]
        attr_accessor :labels
      
        # Output only. URL of the manifest representing the update configuration of this
        # deployment.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @manifest = args[:manifest] if args.key?(:manifest)
        end
      end
      
      # Label object for DeploymentUpdate
      class DeploymentUpdateLabelEntry
        include Google::Apis::Core::Hashable
      
        # Key of the label
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value of the label
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class DeploymentsCancelPreviewRequest
        include Google::Apis::Core::Hashable
      
        # Specifies a fingerprint for `cancelPreview()` requests. A fingerprint is a
        # randomly generated value that must be provided in `cancelPreview()` requests
        # to perform optimistic locking. This ensures optimistic concurrency so that the
        # deployment does not have conflicting requests (e.g. if someone attempts to
        # make a new update request while another user attempts to cancel a preview,
        # this would prevent one of the requests). The fingerprint is initially
        # generated by Deployment Manager and changes after every request to modify a
        # deployment. To get the latest fingerprint value, perform a `get()` request on
        # the deployment.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
        end
      end
      
      # A response containing a partial list of deployments and a page token used to
      # build the next request if the request has been truncated.
      class DeploymentsListResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The deployments contained in this response.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Deployment>]
        attr_accessor :deployments
      
        # Output only. A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployments = args[:deployments] if args.key?(:deployments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class DeploymentsStopRequest
        include Google::Apis::Core::Hashable
      
        # Specifies a fingerprint for `stop()` requests. A fingerprint is a randomly
        # generated value that must be provided in `stop()` requests to perform
        # optimistic locking. This ensures optimistic concurrency so that the deployment
        # does not have conflicting requests (e.g. if someone attempts to make a new
        # update request while another user attempts to stop an ongoing update request,
        # this would prevent a collision). The fingerprint is initially generated by
        # Deployment Manager and changes after every request to modify a deployment. To
        # get the latest fingerprint value, perform a `get()` request on the deployment.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
        end
      end
      
      # 
      class Diagnostic
        include Google::Apis::Core::Hashable
      
        # JsonPath expression on the resource that if non empty, indicates that this
        # field needs to be extracted as a diagnostic.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Level to record this diagnostic.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @level = args[:level] if args.key?(:level)
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
      
      # 
      class GlobalSetPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Flatten Policy to create a backward compatible wire-format. Deprecated. Use '
        # policy' to specify bindings.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Binding>]
        attr_accessor :bindings
      
        # Flatten Policy to create a backward compatible wire-format. Deprecated. Use '
        # policy' to specify the etag.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
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
        # @return [Google::Apis::DeploymentmanagerV2beta::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # 
      class ImportFile
        include Google::Apis::Core::Hashable
      
        # The contents of the file.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The name of the file.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # InputMapping creates a 'virtual' property that will be injected into the
      # properties before sending the request to the underlying API.
      class InputMapping
        include Google::Apis::Core::Hashable
      
        # The name of the field that is going to be injected.
        # Corresponds to the JSON property `fieldName`
        # @return [String]
        attr_accessor :field_name
      
        # The location where this mapping applies.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Regex to evaluate on method to decide if input applies.
        # Corresponds to the JSON property `methodMatch`
        # @return [String]
        attr_accessor :method_match
      
        # A jsonPath expression to select an element.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_name = args[:field_name] if args.key?(:field_name)
          @location = args[:location] if args.key?(:location)
          @method_match = args[:method_match] if args.key?(:method_match)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class Manifest
        include Google::Apis::Core::Hashable
      
        # Output only. The YAML configuration for this manifest.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DeploymentmanagerV2beta::ConfigFile]
        attr_accessor :config
      
        # Output only. The fully-expanded configuration file, including any templates
        # and references.
        # Corresponds to the JSON property `expandedConfig`
        # @return [String]
        attr_accessor :expanded_config
      
        # 
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. The imported files for this manifest.
        # Corresponds to the JSON property `imports`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::ImportFile>]
        attr_accessor :imports
      
        # Output only. Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Output only. The YAML layout for this manifest.
        # Corresponds to the JSON property `layout`
        # @return [String]
        attr_accessor :layout
      
        # Output only. The name of the manifest.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Self link for the manifest.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @expanded_config = args[:expanded_config] if args.key?(:expanded_config)
          @id = args[:id] if args.key?(:id)
          @imports = args[:imports] if args.key?(:imports)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @layout = args[:layout] if args.key?(:layout)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A response containing a partial list of manifests and a page token used to
      # build the next request if the request has been truncated.
      class ManifestsListResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Manifests contained in this list response.
        # Corresponds to the JSON property `manifests`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Manifest>]
        attr_accessor :manifests
      
        # Output only. A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manifests = args[:manifests] if args.key?(:manifests)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Represents an Operation resource. Google Compute Engine has three Operation
      # resources: * [Global](/compute/docs/reference/rest/`$api_version`/
      # globalOperations) * [Regional](/compute/docs/reference/rest/`$api_version`/
      # regionOperations) * [Zonal](/compute/docs/reference/rest/`$api_version`/
      # zoneOperations) You can use an operation resource to manage asynchronous API
      # requests. For more information, read Handling API responses. Operations can be
      # global, regional or zonal. - For global operations, use the `globalOperations`
      # resource. - For regional operations, use the `regionOperations` resource. -
      # For zonal operations, use the `zonalOperations` resource. For more information,
      # read Global, Regional, and Zonal Resources.
      class Operation
        include Google::Apis::Core::Hashable
      
        # [Output Only] The value of `requestId` if you provided it in the request. Not
        # present otherwise.
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # [Deprecated] This field is deprecated.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] A textual description of the operation, which is set when the
        # operation is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The time that this operation was completed. This value is in
        # RFC3339 text format.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DeploymentmanagerV2beta::Operation::Error]
        attr_accessor :error
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # message that was returned, such as `NOT FOUND`.
        # Corresponds to the JSON property `httpErrorMessage`
        # @return [String]
        attr_accessor :http_error_message
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # status code that was returned. For example, a `404` means the resource was not
        # found.
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # [Output Only] The unique identifier for the operation. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] The time that this operation was requested. This value is in
        # RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] Type of the resource. Always `compute#operation` for Operation
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the operation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] The type of operation, such as `insert`, `update`, or `delete`,
        # and so on.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # [Output Only] An optional progress indicator that ranges from 0 to 100. There
        # is no requirement that this be linear or support any granularity of operations.
        # This should not be used to guess when the operation will be complete. This
        # number should monotonically increase as the operation progresses.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] The URL of the region where the operation resides. Only
        # applicable when performing regional operations.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The time that this operation was started by the server. This
        # value is in RFC3339 text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # [Output Only] The status of the operation, which can be one of the following: `
        # PENDING`, `RUNNING`, or `DONE`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional textual description of the current status of the
        # operation.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output Only] The unique target ID, which identifies a specific incarnation of
        # the target resource.
        # Corresponds to the JSON property `targetId`
        # @return [Fixnum]
        attr_accessor :target_id
      
        # [Output Only] The URL of the resource that the operation modifies. For
        # operations related to creating a snapshot, this points to the persistent disk
        # that the snapshot was created from.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # [Output Only] User who requested the operation, for example: `user@example.com`
        # .
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # [Output Only] If warning messages are generated during processing of the
        # operation, this field will be populated.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Operation::Warning>]
        attr_accessor :warnings
      
        # [Output Only] The URL of the zone where the operation resides. Only applicable
        # when performing per-zone operations.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] if args.key?(:client_operation_id)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @http_error_message = args[:http_error_message] if args.key?(:http_error_message)
          @http_error_status_code = args[:http_error_status_code] if args.key?(:http_error_status_code)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @progress = args[:progress] if args.key?(:progress)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target_id = args[:target_id] if args.key?(:target_id)
          @target_link = args[:target_link] if args.key?(:target_link)
          @user = args[:user] if args.key?(:user)
          @warnings = args[:warnings] if args.key?(:warnings)
          @zone = args[:zone] if args.key?(:zone)
        end
        
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::DeploymentmanagerV2beta::Operation::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request that caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example: "
          # data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::DeploymentmanagerV2beta::Operation::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A response containing a partial list of operations and a page token used to
      # build the next request if the request has been truncated.
      class OperationsListResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. Operations contained in this list response.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Operation>]
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
      
      # Options allows customized resource handling by Deployment Manager.
      class Options
        include Google::Apis::Core::Hashable
      
        # Options regarding how to thread async requests.
        # Corresponds to the JSON property `asyncOptions`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::AsyncOptions>]
        attr_accessor :async_options
      
        # The mappings that apply for requests.
        # Corresponds to the JSON property `inputMappings`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::InputMapping>]
        attr_accessor :input_mappings
      
        # Options for how to validate and process properties on a resource.
        # Corresponds to the JSON property `validationOptions`
        # @return [Google::Apis::DeploymentmanagerV2beta::ValidationOptions]
        attr_accessor :validation_options
      
        # Additional properties block described as a jsonSchema, these properties will
        # never be part of the json payload, but they can be consumed by InputMappings,
        # this must be a valid json schema draft-04. The properties specified here will
        # be decouple in a different section. This schema will be merged to the schema
        # validation, and properties here will be extracted From the payload and
        # consumed explicitly by InputMappings. ex: field1: type: string field2: type:
        # number
        # Corresponds to the JSON property `virtualProperties`
        # @return [String]
        attr_accessor :virtual_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @async_options = args[:async_options] if args.key?(:async_options)
          @input_mappings = args[:input_mappings] if args.key?(:input_mappings)
          @validation_options = args[:validation_options] if args.key?(:validation_options)
          @virtual_properties = args[:virtual_properties] if args.key?(:virtual_properties)
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
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Binding>]
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
      
      # 
      class PollingOptions
        include Google::Apis::Core::Hashable
      
        # An array of diagnostics to be collected by Deployment Manager, these
        # diagnostics will be displayed to the user.
        # Corresponds to the JSON property `diagnostics`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Diagnostic>]
        attr_accessor :diagnostics
      
        # JsonPath expression that determines if the request failed.
        # Corresponds to the JSON property `failCondition`
        # @return [String]
        attr_accessor :fail_condition
      
        # JsonPath expression that determines if the request is completed.
        # Corresponds to the JSON property `finishCondition`
        # @return [String]
        attr_accessor :finish_condition
      
        # JsonPath expression that evaluates to string, it indicates where to poll.
        # Corresponds to the JSON property `pollingLink`
        # @return [String]
        attr_accessor :polling_link
      
        # JsonPath expression, after polling is completed, indicates where to fetch the
        # resource.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @diagnostics = args[:diagnostics] if args.key?(:diagnostics)
          @fail_condition = args[:fail_condition] if args.key?(:fail_condition)
          @finish_condition = args[:finish_condition] if args.key?(:finish_condition)
          @polling_link = args[:polling_link] if args.key?(:polling_link)
          @target_link = args[:target_link] if args.key?(:target_link)
        end
      end
      
      # 
      class Resource
        include Google::Apis::Core::Hashable
      
        # The access controls set on the resource.
        # Corresponds to the JSON property `accessControl`
        # @return [Google::Apis::DeploymentmanagerV2beta::ResourceAccessControl]
        attr_accessor :access_control
      
        # Output only. The evaluated properties of the resource with references expanded.
        # Returned as serialized YAML.
        # Corresponds to the JSON property `finalProperties`
        # @return [String]
        attr_accessor :final_properties
      
        # 
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Output only. URL of the manifest representing the current configuration of
        # this resource.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # Output only. The name of the resource as it appears in the YAML config.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current properties of the resource before any references have
        # been filled in. Returned as serialized YAML.
        # Corresponds to the JSON property `properties`
        # @return [String]
        attr_accessor :properties
      
        # Output only. The type of the resource, for example `compute.v1.instance`, or `
        # cloudfunctions.v1beta1.function`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. If Deployment Manager is currently updating or previewing an
        # update to this resource, the updated configuration appears here.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::DeploymentmanagerV2beta::ResourceUpdate]
        attr_accessor :update
      
        # Output only. Update timestamp in RFC3339 text format.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The URL of the actual resource.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # Output only. If warning messages are generated during processing of this
        # resource, this field will be populated.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Resource::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_control = args[:access_control] if args.key?(:access_control)
          @final_properties = args[:final_properties] if args.key?(:final_properties)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @manifest = args[:manifest] if args.key?(:manifest)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
          @type = args[:type] if args.key?(:type)
          @update = args[:update] if args.key?(:update)
          @update_time = args[:update_time] if args.key?(:update_time)
          @url = args[:url] if args.key?(:url)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example: "
          # data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::DeploymentmanagerV2beta::Resource::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # The access controls set on the resource.
      class ResourceAccessControl
        include Google::Apis::Core::Hashable
      
        # The GCP IAM Policy to set on the resource.
        # Corresponds to the JSON property `gcpIamPolicy`
        # @return [String]
        attr_accessor :gcp_iam_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_iam_policy = args[:gcp_iam_policy] if args.key?(:gcp_iam_policy)
        end
      end
      
      # 
      class ResourceUpdate
        include Google::Apis::Core::Hashable
      
        # The access controls set on the resource.
        # Corresponds to the JSON property `accessControl`
        # @return [Google::Apis::DeploymentmanagerV2beta::ResourceAccessControl]
        attr_accessor :access_control
      
        # Output only. If errors are generated during update of the resource, this field
        # will be populated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DeploymentmanagerV2beta::ResourceUpdate::Error]
        attr_accessor :error
      
        # Output only. The expanded properties of the resource with reference values
        # expanded. Returned as serialized YAML.
        # Corresponds to the JSON property `finalProperties`
        # @return [String]
        attr_accessor :final_properties
      
        # Output only. The intent of the resource: `PREVIEW`, `UPDATE`, or `CANCEL`.
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # Output only. URL of the manifest representing the update configuration of this
        # resource.
        # Corresponds to the JSON property `manifest`
        # @return [String]
        attr_accessor :manifest
      
        # Output only. The set of updated properties for this resource, before
        # references are expanded. Returned as serialized YAML.
        # Corresponds to the JSON property `properties`
        # @return [String]
        attr_accessor :properties
      
        # Output only. The state of the resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. If warning messages are generated during processing of this
        # resource, this field will be populated.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::ResourceUpdate::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_control = args[:access_control] if args.key?(:access_control)
          @error = args[:error] if args.key?(:error)
          @final_properties = args[:final_properties] if args.key?(:final_properties)
          @intent = args[:intent] if args.key?(:intent)
          @manifest = args[:manifest] if args.key?(:manifest)
          @properties = args[:properties] if args.key?(:properties)
          @state = args[:state] if args.key?(:state)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
        
        # Output only. If errors are generated during update of the resource, this field
        # will be populated.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::DeploymentmanagerV2beta::ResourceUpdate::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request that caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example: "
          # data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::DeploymentmanagerV2beta::ResourceUpdate::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A response containing a partial list of resources and a page token used to
      # build the next request if the request has been truncated.
      class ResourcesListResponse
        include Google::Apis::Core::Hashable
      
        # A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Resources contained in this list response.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Resource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # Service Account used as a credential.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # The IAM service account email address like test@myproject.iam.gserviceaccount.
        # com
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # 
      class TargetConfiguration
        include Google::Apis::Core::Hashable
      
        # The configuration to use for this deployment.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DeploymentmanagerV2beta::ConfigFile]
        attr_accessor :config
      
        # Specifies any files to import for this configuration. This can be used to
        # import templates or other files. For example, you might import a text file in
        # order to use the file in a template.
        # Corresponds to the JSON property `imports`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::ImportFile>]
        attr_accessor :imports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @imports = args[:imports] if args.key?(:imports)
        end
      end
      
      # Files that make up the template contents of a template type.
      class TemplateContents
        include Google::Apis::Core::Hashable
      
        # Import files referenced by the main template.
        # Corresponds to the JSON property `imports`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::ImportFile>]
        attr_accessor :imports
      
        # Which interpreter (python or jinja) should be used during expansion.
        # Corresponds to the JSON property `interpreter`
        # @return [String]
        attr_accessor :interpreter
      
        # The filename of the mainTemplate
        # Corresponds to the JSON property `mainTemplate`
        # @return [String]
        attr_accessor :main_template
      
        # The contents of the template schema.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        # The contents of the main template file.
        # Corresponds to the JSON property `template`
        # @return [String]
        attr_accessor :template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @imports = args[:imports] if args.key?(:imports)
          @interpreter = args[:interpreter] if args.key?(:interpreter)
          @main_template = args[:main_template] if args.key?(:main_template)
          @schema = args[:schema] if args.key?(:schema)
          @template = args[:template] if args.key?(:template)
        end
      end
      
      # 
      class TestPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the 'resource'. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed.
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
      
      # 
      class TestPermissionsResponse
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
      
      # A resource type supported by Deployment Manager.
      class Type
        include Google::Apis::Core::Hashable
      
        # BaseType that describes a service-backed Type.
        # Corresponds to the JSON property `base`
        # @return [Google::Apis::DeploymentmanagerV2beta::BaseType]
        attr_accessor :base
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Map of One Platform labels; provided by the client when the resource is
        # created or updated. Specifically: Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: `[a-z]([-
        # a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and
        # must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::TypeLabelEntry>]
        attr_accessor :labels
      
        # Name of the type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an Operation resource. Google Compute Engine has three Operation
        # resources: * [Global](/compute/docs/reference/rest/`$api_version`/
        # globalOperations) * [Regional](/compute/docs/reference/rest/`$api_version`/
        # regionOperations) * [Zonal](/compute/docs/reference/rest/`$api_version`/
        # zoneOperations) You can use an operation resource to manage asynchronous API
        # requests. For more information, read Handling API responses. Operations can be
        # global, regional or zonal. - For global operations, use the `globalOperations`
        # resource. - For regional operations, use the `regionOperations` resource. -
        # For zonal operations, use the `zonalOperations` resource. For more information,
        # read Global, Regional, and Zonal Resources.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::DeploymentmanagerV2beta::Operation]
        attr_accessor :operation
      
        # Output only. Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base = args[:base] if args.key?(:base)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @operation = args[:operation] if args.key?(:operation)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Type Information. Contains detailed information about a composite type, base
      # type, or base type with specific collection.
      class TypeInfo
        include Google::Apis::Core::Hashable
      
        # The description of the type.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # For swagger 2.0 externalDocs field will be used. For swagger 1.2 this field
        # will be empty.
        # Corresponds to the JSON property `documentationLink`
        # @return [String]
        attr_accessor :documentation_link
      
        # Output only. Type of the output. Always `deploymentManager#TypeInfo` for
        # TypeInfo.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The base type or composite type name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # For base types with a collection, we return a schema and documentation link
        # For template types, we return only a schema
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::DeploymentmanagerV2beta::TypeInfoSchemaInfo]
        attr_accessor :schema
      
        # Output only. Self link for the type provider.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The title on the API descriptor URL provided.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @documentation_link = args[:documentation_link] if args.key?(:documentation_link)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @schema = args[:schema] if args.key?(:schema)
          @self_link = args[:self_link] if args.key?(:self_link)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class TypeInfoSchemaInfo
        include Google::Apis::Core::Hashable
      
        # The properties that this composite type or base type collection accept as
        # input, represented as a json blob, format is: JSON Schema Draft V4
        # Corresponds to the JSON property `input`
        # @return [String]
        attr_accessor :input
      
        # The properties that this composite type or base type collection exposes as
        # output, these properties can be used for references, represented as json blob,
        # format is: JSON Schema Draft V4
        # Corresponds to the JSON property `output`
        # @return [String]
        attr_accessor :output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input = args[:input] if args.key?(:input)
          @output = args[:output] if args.key?(:output)
        end
      end
      
      # Label object for Types
      class TypeLabelEntry
        include Google::Apis::Core::Hashable
      
        # Key of the label
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value of the label
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A type provider that describes a service-backed Type.
      class TypeProvider
        include Google::Apis::Core::Hashable
      
        # Allows resource handling overrides for specific collections
        # Corresponds to the JSON property `collectionOverrides`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::CollectionOverride>]
        attr_accessor :collection_overrides
      
        # The credential used by Deployment Manager and TypeProvider. Only one of the
        # options is permitted.
        # Corresponds to the JSON property `credential`
        # @return [Google::Apis::DeploymentmanagerV2beta::Credential]
        attr_accessor :credential
      
        # List of up to 2 custom certificate authority roots to use for TLS
        # authentication when making calls on behalf of this type provider. If set, TLS
        # authentication will exclusively use these roots instead of relying on publicly
        # trusted certificate authorities when validating TLS certificate authenticity.
        # The certificates must be in base64-encoded PEM format. The maximum size of
        # each certificate must not exceed 10KB.
        # Corresponds to the JSON property `customCertificateAuthorityRoots`
        # @return [Array<String>]
        attr_accessor :custom_certificate_authority_roots
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Descriptor Url for the this type provider.
        # Corresponds to the JSON property `descriptorUrl`
        # @return [String]
        attr_accessor :descriptor_url
      
        # Output only. Unique identifier for the resource defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Output only. Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Map of One Platform labels; provided by the client when the resource is
        # created or updated. Specifically: Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: `[a-z]([-
        # a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and
        # must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::TypeProviderLabelEntry>]
        attr_accessor :labels
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an Operation resource. Google Compute Engine has three Operation
        # resources: * [Global](/compute/docs/reference/rest/`$api_version`/
        # globalOperations) * [Regional](/compute/docs/reference/rest/`$api_version`/
        # regionOperations) * [Zonal](/compute/docs/reference/rest/`$api_version`/
        # zoneOperations) You can use an operation resource to manage asynchronous API
        # requests. For more information, read Handling API responses. Operations can be
        # global, regional or zonal. - For global operations, use the `globalOperations`
        # resource. - For regional operations, use the `regionOperations` resource. -
        # For zonal operations, use the `zonalOperations` resource. For more information,
        # read Global, Regional, and Zonal Resources.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::DeploymentmanagerV2beta::Operation]
        attr_accessor :operation
      
        # Options allows customized resource handling by Deployment Manager.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DeploymentmanagerV2beta::Options]
        attr_accessor :options
      
        # Output only. Self link for the type provider.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_overrides = args[:collection_overrides] if args.key?(:collection_overrides)
          @credential = args[:credential] if args.key?(:credential)
          @custom_certificate_authority_roots = args[:custom_certificate_authority_roots] if args.key?(:custom_certificate_authority_roots)
          @description = args[:description] if args.key?(:description)
          @descriptor_url = args[:descriptor_url] if args.key?(:descriptor_url)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @operation = args[:operation] if args.key?(:operation)
          @options = args[:options] if args.key?(:options)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Label object for TypeProviders
      class TypeProviderLabelEntry
        include Google::Apis::Core::Hashable
      
        # Key of the label
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value of the label
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A response that returns all Type Providers supported by Deployment Manager
      class TypeProvidersListResponse
        include Google::Apis::Core::Hashable
      
        # A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. A list of resource type providers supported by Deployment Manager.
        # Corresponds to the JSON property `typeProviders`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::TypeProvider>]
        attr_accessor :type_providers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @type_providers = args[:type_providers] if args.key?(:type_providers)
        end
      end
      
      # 
      class TypeProvidersListTypesResponse
        include Google::Apis::Core::Hashable
      
        # A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. A list of resource type info.
        # Corresponds to the JSON property `types`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::TypeInfo>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # A response that returns all Types supported by Deployment Manager
      class TypesListResponse
        include Google::Apis::Core::Hashable
      
        # A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. A list of resource types supported by Deployment Manager.
        # Corresponds to the JSON property `types`
        # @return [Array<Google::Apis::DeploymentmanagerV2beta::Type>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # Options for how to validate and process properties on a resource.
      class ValidationOptions
        include Google::Apis::Core::Hashable
      
        # Customize how deployment manager will validate the resource against schema
        # errors.
        # Corresponds to the JSON property `schemaValidation`
        # @return [String]
        attr_accessor :schema_validation
      
        # Specify what to do with extra properties when executing a request.
        # Corresponds to the JSON property `undeclaredProperties`
        # @return [String]
        attr_accessor :undeclared_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema_validation = args[:schema_validation] if args.key?(:schema_validation)
          @undeclared_properties = args[:undeclared_properties] if args.key?(:undeclared_properties)
        end
      end
    end
  end
end
