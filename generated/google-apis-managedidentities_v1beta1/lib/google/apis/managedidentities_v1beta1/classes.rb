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
    module ManagedidentitiesV1beta1
      
      # Request message for AttachTrust
      class AttachTrustRequest
        include Google::Apis::Core::Hashable
      
        # Represents a relationship between two domains. This allows a controller in one
        # domain to authenticate a user in another domain.
        # Corresponds to the JSON property `trust`
        # @return [Google::Apis::ManagedidentitiesV1beta1::TrustProp]
        attr_accessor :trust_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @trust_prop = args[:trust_prop] if args.key?(:trust_prop)
        end
      end
      
      # Represents a Managed Microsoft Identities backup.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Output only. The time the backups was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A short description of the backup.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The unique name of the Backup in the form of projects/`project_id`
        # /locations/global/domains/`domain_name`/backups/`name`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current status of this backup,
        # if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Indicates whether it’s an on-demand backup or scheduled.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Last update time.
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
          @state = args[:state] if args.key?(:state)
          @status_message = args[:status_message] if args.key?(:status_message)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
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
        # @return [Google::Apis::ManagedidentitiesV1beta1::Expr]
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
      
      # Certificate used to configure LDAPS.
      class Certificate
        include Google::Apis::Core::Hashable
      
        # The certificate expire time.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Certificate used to configure LDAPS.
        # Corresponds to the JSON property `issuingCertificate`
        # @return [Google::Apis::ManagedidentitiesV1beta1::Certificate]
        attr_accessor :issuing_certificate
      
        # The certificate subject.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        # The additional hostnames for the domain.
        # Corresponds to the JSON property `subjectAlternativeName`
        # @return [Array<String>]
        attr_accessor :subject_alternative_name
      
        # The certificate thumbprint which uniquely identifies the certificate.
        # Corresponds to the JSON property `thumbprint`
        # @return [String]
        attr_accessor :thumbprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @issuing_certificate = args[:issuing_certificate] if args.key?(:issuing_certificate)
          @subject = args[:subject] if args.key?(:subject)
          @subject_alternative_name = args[:subject_alternative_name] if args.key?(:subject_alternative_name)
          @thumbprint = args[:thumbprint] if args.key?(:thumbprint)
        end
      end
      
      # CheckMigrationPermissionRequest is the request message for
      # CheckMigrationPermission method.
      class CheckMigrationPermissionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # CheckMigrationPermissionResponse is the response message for
      # CheckMigrationPermission method.
      class CheckMigrationPermissionResponse
        include Google::Apis::Core::Hashable
      
        # The state of SID filtering of all the domains which has trust established.
        # Corresponds to the JSON property `onpremDomains`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::OnPremDomainSidDetails>]
        attr_accessor :onprem_domains
      
        # The state of DomainMigration.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @onprem_domains = args[:onprem_domains] if args.key?(:onprem_domains)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Time window specified for daily operations.
      class DailyCycle
        include Google::Apis::Core::Hashable
      
        # Output only. Duration of the time window, set by service producer.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::ManagedidentitiesV1beta1::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # DenyMaintenancePeriod definition. Maintenance is forbidden within the deny
      # period. The start_date must be less than the end_date.
      class DenyMaintenancePeriod
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::ManagedidentitiesV1beta1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::ManagedidentitiesV1beta1::Date]
        attr_accessor :start_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `time`
        # @return [Google::Apis::ManagedidentitiesV1beta1::TimeOfDay]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Request message for DetachTrust
      class DetachTrustRequest
        include Google::Apis::Core::Hashable
      
        # Represents a relationship between two domains. This allows a controller in one
        # domain to authenticate a user in another domain.
        # Corresponds to the JSON property `trust`
        # @return [Google::Apis::ManagedidentitiesV1beta1::TrustProp]
        attr_accessor :trust_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @trust_prop = args[:trust_prop] if args.key?(:trust_prop)
        end
      end
      
      # DisableMigrationRequest is the request message for DisableMigration method.
      class DisableMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a managed Microsoft Active Directory domain. If the domain is being
      # changed, it will be placed into the UPDATING state, which indicates that the
      # resource is being reconciled. At this point, Get will reflect an intermediate
      # state.
      class Domain
        include Google::Apis::Core::Hashable
      
        # Optional. The name of delegated administrator account used to perform Active
        # Directory operations. If not specified, `setupadmin` will be used.
        # Corresponds to the JSON property `admin`
        # @return [String]
        attr_accessor :admin
      
        # Optional. Configuration for audit logs. True if audit logs are enabled, else
        # false. Default is audit logs disabled.
        # Corresponds to the JSON property `auditLogsEnabled`
        # @return [Boolean]
        attr_accessor :audit_logs_enabled
        alias_method :audit_logs_enabled?, :audit_logs_enabled
      
        # Optional. The full names of the Google Compute Engine [networks](/compute/docs/
        # networks-and-firewalls#networks) the domain instance is connected to. Networks
        # can be added using UpdateDomain. The domain is only available on networks
        # listed in `authorized_networks`. If CIDR subnets overlap between networks,
        # domain creation will fail.
        # Corresponds to the JSON property `authorizedNetworks`
        # @return [Array<String>]
        attr_accessor :authorized_networks
      
        # Output only. The time the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The fully-qualified domain name of the exposed domain used by
        # clients to connect to the service. Similar to what would be chosen for an
        # Active Directory set up on an internal network.
        # Corresponds to the JSON property `fqdn`
        # @return [String]
        attr_accessor :fqdn
      
        # Optional. Resource labels that can contain user-provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. Locations where domain needs to be provisioned. regions e.g. us-
        # west1 or us-east4 Service supports up to 4 locations at once. Each location
        # will use a /26 block.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # Output only. The unique name of the domain using the form: `projects/`
        # project_id`/locations/global/domains/`domain_name``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The CIDR range of internal addresses that are reserved for this
        # domain. Reserved networks must be /24 or larger. Ranges must be unique and non-
        # overlapping with existing subnets in [Domain].[authorized_networks].
        # Corresponds to the JSON property `reservedIpRange`
        # @return [String]
        attr_accessor :reserved_ip_range
      
        # Output only. The current state of this domain.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current status of this domain,
        # if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. The current trusts associated with the domain.
        # Corresponds to the JSON property `trusts`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::TrustProp>]
        attr_accessor :trusts
      
        # Output only. The last update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin = args[:admin] if args.key?(:admin)
          @audit_logs_enabled = args[:audit_logs_enabled] if args.key?(:audit_logs_enabled)
          @authorized_networks = args[:authorized_networks] if args.key?(:authorized_networks)
          @create_time = args[:create_time] if args.key?(:create_time)
          @fqdn = args[:fqdn] if args.key?(:fqdn)
          @labels = args[:labels] if args.key?(:labels)
          @locations = args[:locations] if args.key?(:locations)
          @name = args[:name] if args.key?(:name)
          @reserved_ip_range = args[:reserved_ip_range] if args.key?(:reserved_ip_range)
          @state = args[:state] if args.key?(:state)
          @status_message = args[:status_message] if args.key?(:status_message)
          @trusts = args[:trusts] if args.key?(:trusts)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # DomainJoinMachineRequest is the request message for DomainJoinMachine method
      class DomainJoinMachineRequest
        include Google::Apis::Core::Hashable
      
        # Optional. force if True, forces domain join even if the computer account
        # already exists.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Optional. OU name to which the VM needs to be domain joined. If the field is
        # not provided, the VM is joined to the default OU which is created. The default
        # OU for the domain join api is created as GCE Instances under the Cloud OU.
        # Example - OU=GCE Instances,OU=Cloud,DC=ad,DC=test,DC=com If the field is
        # provided, then the custom OU is searched for under GCE Instances OU. Example -
        # if ou_name=test_ou then the VM is domain joined to the following OU: OU=
        # test_ou,OU=GCE Instances,OU=Cloud,DC=ad,DC=test,DC=com if present. If OU is
        # not present under GCE Instances, then error is returned.
        # Corresponds to the JSON property `ouName`
        # @return [String]
        attr_accessor :ou_name
      
        # Required. Full instance id token of compute engine VM to verify instance
        # identity. More about this: https://cloud.google.com/compute/docs/instances/
        # verifying-instance-identity#request_signature
        # Corresponds to the JSON property `vmIdToken`
        # @return [String]
        attr_accessor :vm_id_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @force = args[:force] if args.key?(:force)
          @ou_name = args[:ou_name] if args.key?(:ou_name)
          @vm_id_token = args[:vm_id_token] if args.key?(:vm_id_token)
        end
      end
      
      # DomainJoinMachineResponse is the response message for DomainJoinMachine method
      class DomainJoinMachineResponse
        include Google::Apis::Core::Hashable
      
        # The response is the offline domain join blob that is returned after running
        # the djoin command. To correctly use the response of the API, please refer to
        # the sample usage.
        # Corresponds to the JSON property `domainJoinBlob`
        # @return [String]
        attr_accessor :domain_join_blob
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_join_blob = args[:domain_join_blob] if args.key?(:domain_join_blob)
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
      
      # EnableMigrationRequest is the request message for EnableMigration method.
      class EnableMigrationRequest
        include Google::Apis::Core::Hashable
      
        # Required. List of the on-prem domains to be migrated.
        # Corresponds to the JSON property `migratingDomains`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::OnPremDomainDetails>]
        attr_accessor :migrating_domains
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migrating_domains = args[:migrating_domains] if args.key?(:migrating_domains)
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
      
      # ExtendSchemaRequest is the request message for ExtendSchema method.
      class ExtendSchemaRequest
        include Google::Apis::Core::Hashable
      
        # Required. Description for Schema Change.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # File uploaded as a byte stream input.
        # Corresponds to the JSON property `fileContents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :file_contents
      
        # File stored in Cloud Storage bucket and represented in the form projects/`
        # project_id`/buckets/`bucket_name`/objects/`object_name` File should be in the
        # same project as the domain.
        # Corresponds to the JSON property `gcsPath`
        # @return [String]
        attr_accessor :gcs_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @file_contents = args[:file_contents] if args.key?(:file_contents)
          @gcs_path = args[:gcs_path] if args.key?(:gcs_path)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudManagedidentitiesV1OpMetadata
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
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudManagedidentitiesV1alpha1OpMetadata
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
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudManagedidentitiesV1beta1OpMetadata
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
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Instance represents the interface for SLM services to actuate the state of
      # control plane resources. Example Instance in JSON, where consumer-project-
      # number=123456, producer-project-id=cloud-sql: ```json Instance: ` "name": "
      # projects/123456/locations/us-east1/instances/prod-instance", "create_time": ` "
      # seconds": 1526406431, `, "labels": ` "env": "prod", "foo": "bar" `, "state":
      # READY, "software_versions": ` "software_update": "cloud-sql-09-28-2018", `, "
      # maintenance_policy_names": ` "UpdatePolicy": "projects/123456/locations/us-
      # east1/maintenancePolicies/prod-update-policy", ` "tenant_project_id": "cloud-
      # sql-test-tenant", "producer_metadata": ` "cloud-sql-tier": "basic", "cloud-sql-
      # instance-size": "1G", `, "provisioned_resources": [ ` "resource-type": "
      # compute-instance", "resource-url": "https://www.googleapis.com/compute/v1/
      # projects/cloud-sql/zones/us-east1-b/instances/vm-1", ` ], "
      # maintenance_schedules": ` "csa_rollout": ` "start_time": ` "seconds":
      # 1526406431, `, "end_time": ` "seconds": 1535406431, `, `, "ncsa_rollout": ` "
      # start_time": ` "seconds": 1526406431, `, "end_time": ` "seconds": 1535406431, `
      # , ` `, "consumer_defined_name": "my-sql-instance1", ` ``` LINT.IfChange
      class GoogleCloudSaasacceleratorManagementProvidersV1Instance
        include Google::Apis::Core::Hashable
      
        # consumer_defined_name is the name of the instance set by the service consumers.
        # Generally this is different from the `name` field which reperesents the
        # system-assigned id of the instance which the service consumers do not
        # recognize. This is a required field for tenants onboarding to Maintenance
        # Window notifications (go/slm-rollout-maintenance-policies#prerequisites).
        # Corresponds to the JSON property `consumerDefinedName`
        # @return [String]
        attr_accessor :consumer_defined_name
      
        # Output only. Timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The instance_type of this instance of format: projects/`
        # project_number`/locations/`location_id`/instanceTypes/`instance_type_id`.
        # Instance Type represents a high-level tier or SKU of the service that this
        # instance belong to. When enabled(eg: Maintenance Rollout), Rollout uses '
        # instance_type' along with 'software_versions' to determine whether instance
        # needs an update or not.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Optional. Resource labels to represent user provided metadata. Each label is a
        # key-value pair, where both the key and the value are arbitrary strings
        # provided by the user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The MaintenancePolicies that have been attached to the instance. The
        # key must be of the type name of the oneof policy name defined in
        # MaintenancePolicy, and the referenced policy must define the same policy type.
        # For details, please refer to go/cloud-saas-mw-ug. Should not be set if
        # maintenance_settings.maintenance_policies is set.
        # Corresponds to the JSON property `maintenancePolicyNames`
        # @return [Hash<String,String>]
        attr_accessor :maintenance_policy_names
      
        # The MaintenanceSchedule contains the scheduling information of published
        # maintenance schedule with same key as software_versions.
        # Corresponds to the JSON property `maintenanceSchedules`
        # @return [Hash<String,Google::Apis::ManagedidentitiesV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>]
        attr_accessor :maintenance_schedules
      
        # Maintenance settings associated with instance. Allows service producers and
        # end users to assign settings that controls maintenance on this instance.
        # Corresponds to the JSON property `maintenanceSettings`
        # @return [Google::Apis::ManagedidentitiesV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings]
        attr_accessor :maintenance_settings
      
        # Unique name of the resource. It uses the form: `projects/`project_number`/
        # locations/`location_id`/instances/`instance_id`` Note: This name is passed,
        # stored and logged across the rollout system. So use of consumer project_id or
        # any other consumer PII in the name is strongly discouraged for wipeout (go/
        # wipeout) compliance. See go/elysium/project_ids#storage-guidance for more
        # details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. notification_parameter are information that service producers may
        # like to include that is not relevant to Rollout. This parameter will only be
        # passed to Gamma and Cloud Logging for notification/logging purpose.
        # Corresponds to the JSON property `notificationParameters`
        # @return [Hash<String,Google::Apis::ManagedidentitiesV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter>]
        attr_accessor :notification_parameters
      
        # Output only. Custom string attributes used primarily to expose producer-
        # specific information in monitoring dashboards. See go/get-instance-metadata.
        # Corresponds to the JSON property `producerMetadata`
        # @return [Hash<String,String>]
        attr_accessor :producer_metadata
      
        # Output only. The list of data plane resources provisioned for this instance, e.
        # g. compute VMs. See go/get-instance-metadata.
        # Corresponds to the JSON property `provisionedResources`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>]
        attr_accessor :provisioned_resources
      
        # Link to the SLM instance template. Only populated when updating SLM instances
        # via SSA's Actuation service adaptor. Service producers with custom control
        # plane (e.g. Cloud SQL) doesn't need to populate this field. Instead they
        # should use software_versions.
        # Corresponds to the JSON property `slmInstanceTemplate`
        # @return [String]
        attr_accessor :slm_instance_template
      
        # SloMetadata contains resources required for proper SLO classification of the
        # instance.
        # Corresponds to the JSON property `sloMetadata`
        # @return [Google::Apis::ManagedidentitiesV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata]
        attr_accessor :slo_metadata
      
        # Software versions that are used to deploy this instance. This can be mutated
        # by rollout services.
        # Corresponds to the JSON property `softwareVersions`
        # @return [Hash<String,String>]
        attr_accessor :software_versions
      
        # Output only. Current lifecycle state of the resource (e.g. if it's being
        # created or ready to use).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. ID of the associated GCP tenant project. See go/get-instance-
        # metadata.
        # Corresponds to the JSON property `tenantProjectId`
        # @return [String]
        attr_accessor :tenant_project_id
      
        # Output only. Timestamp when the resource was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_defined_name = args[:consumer_defined_name] if args.key?(:consumer_defined_name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @labels = args[:labels] if args.key?(:labels)
          @maintenance_policy_names = args[:maintenance_policy_names] if args.key?(:maintenance_policy_names)
          @maintenance_schedules = args[:maintenance_schedules] if args.key?(:maintenance_schedules)
          @maintenance_settings = args[:maintenance_settings] if args.key?(:maintenance_settings)
          @name = args[:name] if args.key?(:name)
          @notification_parameters = args[:notification_parameters] if args.key?(:notification_parameters)
          @producer_metadata = args[:producer_metadata] if args.key?(:producer_metadata)
          @provisioned_resources = args[:provisioned_resources] if args.key?(:provisioned_resources)
          @slm_instance_template = args[:slm_instance_template] if args.key?(:slm_instance_template)
          @slo_metadata = args[:slo_metadata] if args.key?(:slo_metadata)
          @software_versions = args[:software_versions] if args.key?(:software_versions)
          @state = args[:state] if args.key?(:state)
          @tenant_project_id = args[:tenant_project_id] if args.key?(:tenant_project_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Maintenance schedule which is exposed to customer and potentially end user,
      # indicating published upcoming future maintenance schedule
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
        include Google::Apis::Core::Hashable
      
        # This field is deprecated, and will be always set to true since reschedule can
        # happen multiple times now. This field should not be removed until all service
        # producers remove this for their customers.
        # Corresponds to the JSON property `canReschedule`
        # @return [Boolean]
        attr_accessor :can_reschedule
        alias_method :can_reschedule?, :can_reschedule
      
        # The scheduled end time for the maintenance.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The rollout management policy this maintenance schedule is associated with.
        # When doing reschedule update request, the reschedule should be against this
        # given policy.
        # Corresponds to the JSON property `rolloutManagementPolicy`
        # @return [String]
        attr_accessor :rollout_management_policy
      
        # schedule_deadline_time is the time deadline any schedule start time cannot go
        # beyond, including reschedule. It's normally the initial schedule start time
        # plus maintenance window length (1 day or 1 week). Maintenance cannot be
        # scheduled to start beyond this deadline.
        # Corresponds to the JSON property `scheduleDeadlineTime`
        # @return [String]
        attr_accessor :schedule_deadline_time
      
        # The scheduled start time for the maintenance.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_reschedule = args[:can_reschedule] if args.key?(:can_reschedule)
          @end_time = args[:end_time] if args.key?(:end_time)
          @rollout_management_policy = args[:rollout_management_policy] if args.key?(:rollout_management_policy)
          @schedule_deadline_time = args[:schedule_deadline_time] if args.key?(:schedule_deadline_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Maintenance settings associated with instance. Allows service producers and
      # end users to assign settings that controls maintenance on this instance.
      class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Exclude instance from maintenance. When true, rollout service will
        # not attempt maintenance on the instance. Rollout service will include the
        # instance in reported rollout progress as not attempted.
        # Corresponds to the JSON property `exclude`
        # @return [Boolean]
        attr_accessor :exclude
        alias_method :exclude?, :exclude
      
        # Optional. If the update call is triggered from rollback, set the value as true.
        # Corresponds to the JSON property `isRollback`
        # @return [Boolean]
        attr_accessor :is_rollback
        alias_method :is_rollback?, :is_rollback
      
        # Optional. The MaintenancePolicies that have been attached to the instance. The
        # key must be of the type name of the oneof policy name defined in
        # MaintenancePolicy, and the embedded policy must define the same policy type.
        # For details, please refer to go/cloud-saas-mw-ug. Should not be set if
        # maintenance_policy_names is set. If only the name is needed, then only
        # populate MaintenancePolicy.name.
        # Corresponds to the JSON property `maintenancePolicies`
        # @return [Hash<String,Google::Apis::ManagedidentitiesV1beta1::MaintenancePolicy>]
        attr_accessor :maintenance_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude = args[:exclude] if args.key?(:exclude)
          @is_rollback = args[:is_rollback] if args.key?(:is_rollback)
          @maintenance_policies = args[:maintenance_policies] if args.key?(:maintenance_policies)
        end
      end
      
      # Node information for custom per-node SLO implementations. SSA does not support
      # per-node SLO, but producers can populate per-node information in SloMetadata
      # for custom precomputations. SSA Eligibility Exporter will emit per-node metric
      # based on this information.
      class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
        include Google::Apis::Core::Hashable
      
        # The location of the node, if different from instance location.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The id of the node. This should be equal to SaasInstanceNode.node_id.
        # Corresponds to the JSON property `nodeId`
        # @return [String]
        attr_accessor :node_id
      
        # PerSliSloEligibility is a mapping from an SLI name to eligibility.
        # Corresponds to the JSON property `perSliEligibility`
        # @return [Google::Apis::ManagedidentitiesV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility]
        attr_accessor :per_sli_eligibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @node_id = args[:node_id] if args.key?(:node_id)
          @per_sli_eligibility = args[:per_sli_eligibility] if args.key?(:per_sli_eligibility)
        end
      end
      
      # Contains notification related data.
      class GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter
        include Google::Apis::Core::Hashable
      
        # Optional. Array of string values. e.g. instance's replica information.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # PerSliSloEligibility is a mapping from an SLI name to eligibility.
      class GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility
        include Google::Apis::Core::Hashable
      
        # An entry in the eligibilities map specifies an eligibility for a particular
        # SLI for the given instance. The SLI key in the name must be a valid SLI name
        # specified in the Eligibility Exporter binary flags otherwise an error will be
        # emitted by Eligibility Exporter and the oncaller will be alerted. If an SLI
        # has been defined in the binary flags but the eligibilities map does not
        # contain it, the corresponding SLI time series will not be emitted by the
        # Eligibility Exporter. This ensures a smooth rollout and compatibility between
        # the data produced by different versions of the Eligibility Exporters. If
        # eligibilities map contains a key for an SLI which has not been declared in the
        # binary flags, there will be an error message emitted in the Eligibility
        # Exporter log and the metric for the SLI in question will not be emitted.
        # Corresponds to the JSON property `eligibilities`
        # @return [Hash<String,Google::Apis::ManagedidentitiesV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility>]
        attr_accessor :eligibilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eligibilities = args[:eligibilities] if args.key?(:eligibilities)
        end
      end
      
      # Describes provisioned dataplane resources.
      class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
        include Google::Apis::Core::Hashable
      
        # Type of the resource. This can be either a GCP resource or a custom one (e.g.
        # another cloud provider's VM). For GCP compute resources use singular form of
        # the names listed in GCP compute API documentation (https://cloud.google.com/
        # compute/docs/reference/rest/v1/), prefixed with 'compute-', for example: '
        # compute-instance', 'compute-disk', 'compute-autoscaler'.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # URL identifying the resource, e.g. "https://www.googleapis.com/compute/v1/
        # projects/...)".
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
        end
      end
      
      # SloEligibility is a tuple containing eligibility value: true if an instance is
      # eligible for SLO calculation or false if it should be excluded from all SLO-
      # related calculations along with a user-defined reason.
      class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
        include Google::Apis::Core::Hashable
      
        # Whether an instance is eligible or ineligible.
        # Corresponds to the JSON property `eligible`
        # @return [Boolean]
        attr_accessor :eligible
        alias_method :eligible?, :eligible
      
        # User-defined reason for the current value of instance eligibility. Usually,
        # this can be directly mapped to the internal state. An empty reason is allowed.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eligible = args[:eligible] if args.key?(:eligible)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # SloMetadata contains resources required for proper SLO classification of the
      # instance.
      class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. List of nodes. Some producers need to use per-node metadata to
        # calculate SLO. This field allows such producers to publish per-node SLO meta
        # data, which will be consumed by SSA Eligibility Exporter and published in the
        # form of per node metric to Monarch.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>]
        attr_accessor :nodes
      
        # PerSliSloEligibility is a mapping from an SLI name to eligibility.
        # Corresponds to the JSON property `perSliEligibility`
        # @return [Google::Apis::ManagedidentitiesV1beta1::GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility]
        attr_accessor :per_sli_eligibility
      
        # Name of the SLO tier the Instance belongs to. This name will be expected to
        # match the tiers specified in the service SLO configuration. Field is mandatory
        # and must not be empty.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
          @per_sli_eligibility = args[:per_sli_eligibility] if args.key?(:per_sli_eligibility)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # LDAPSSettings represents the ldaps settings for domain resource. LDAP is the
      # Lightweight Directory Access Protocol, defined in https://tools.ietf.org/html/
      # rfc4511. The settings object configures LDAP over SSL/TLS, whether it is over
      # port 636 or the StartTLS operation. If LDAPSSettings is being changed, it will
      # be placed into the UPDATING state, which indicates that the resource is being
      # reconciled. At this point, Get will reflect an intermediate state.
      class LdapsSettings
        include Google::Apis::Core::Hashable
      
        # Certificate used to configure LDAPS.
        # Corresponds to the JSON property `certificate`
        # @return [Google::Apis::ManagedidentitiesV1beta1::Certificate]
        attr_accessor :certificate
      
        # Input only. The password used to encrypt the uploaded pfx certificate.
        # Corresponds to the JSON property `certificatePassword`
        # @return [String]
        attr_accessor :certificate_password
      
        # Input only. The uploaded PKCS12-formatted certificate to configure LDAPS with.
        # It will enable the domain controllers in this domain to accept LDAPS
        # connections (either LDAP over SSL/TLS or the StartTLS operation). A valid
        # certificate chain must form a valid x.509 certificate chain (or be comprised
        # of a single self-signed certificate. It must be encrypted with either: 1)
        # PBES2 + PBKDF2 + AES256 encryption and SHA256 PRF; or 2) pbeWithSHA1And3-
        # KeyTripleDES-CBC Private key must be included for the leaf / single self-
        # signed certificate. Note: For a fqdn your-example-domain.com, the wildcard
        # fqdn is *.your-example-domain.com. Specifically the leaf certificate must have:
        # - Either a blank subject or a subject with CN matching the wildcard fqdn. -
        # Exactly two SANs - the fqdn and wildcard fqdn. - Encipherment and digital key
        # signature key usages. - Server authentication extended key usage (OID=1.3.6.1.
        # 5.5.7.3.1) - Private key must be in one of the following formats: RSA, ECDSA,
        # ED25519. - Private key must have appropriate key length: 2048 for RSA, 256 for
        # ECDSA - Signature algorithm of the leaf certificate cannot be MD2, MD5 or SHA1.
        # Corresponds to the JSON property `certificatePfx`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :certificate_pfx
      
        # The resource name of the LDAPS settings. Uses the form: `projects/`project`/
        # locations/`location`/domains/`domain``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of this LDAPS settings.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Last update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @certificate_password = args[:certificate_password] if args.key?(:certificate_password)
          @certificate_pfx = args[:certificate_pfx] if args.key?(:certificate_pfx)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ListBackupsResponse is the response message for ListBackups method.
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # A list of Cloud AD backups in the domain.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::Backup>]
        attr_accessor :backups
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListDomains
      class ListDomainsResponse
        include Google::Apis::Core::Hashable
      
        # A list of Managed Identities Service domains in the project.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::Domain>]
        attr_accessor :domains
      
        # A token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::Location>]
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
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::Operation>]
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
      
      # ListPeeringsResponse is the response message for ListPeerings method.
      class ListPeeringsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of Managed Identities Service Peerings in the project.
        # Corresponds to the JSON property `peerings`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::Peering>]
        attr_accessor :peerings
      
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
          @peerings = args[:peerings] if args.key?(:peerings)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # ListSqlIntegrationsResponse is the response message for ListSqlIntegrations
      # method.
      class ListSqlIntegrationsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of SqlIntegrations of a domain.
        # Corresponds to the JSON property `sqlIntegrations`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::SqlIntegration>]
        attr_accessor :sql_integrations
      
        # A list of locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sql_integrations = args[:sql_integrations] if args.key?(:sql_integrations)
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
      
      # LINT.IfChange Defines policies to service maintenance events.
      class MaintenancePolicy
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of what this policy is for. Create/Update methods return
        # INVALID_ARGUMENT if the length is greater than 512.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Resource labels to represent user provided metadata. Each label is a
        # key-value pair, where both the key and the value are arbitrary strings
        # provided by the user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. MaintenancePolicy name using the form: `projects/`project_id`/
        # locations/`location_id`/maintenancePolicies/`maintenance_policy_id`` where `
        # project_id` refers to a GCP consumer project ID, `location_id` refers to a GCP
        # region/zone, `maintenance_policy_id` must be 1-63 characters long and match
        # the regular expression `[a-z0-9]([-a-z0-9]*[a-z0-9])?`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The state of the policy.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Maintenance policy applicable to instance updates.
        # Corresponds to the JSON property `updatePolicy`
        # @return [Google::Apis::ManagedidentitiesV1beta1::UpdatePolicy]
        attr_accessor :update_policy
      
        # Output only. The time when the resource was updated.
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
          @state = args[:state] if args.key?(:state)
          @update_policy = args[:update_policy] if args.key?(:update_policy)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # MaintenanceWindow definition.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Time window specified for daily operations.
        # Corresponds to the JSON property `dailyCycle`
        # @return [Google::Apis::ManagedidentitiesV1beta1::DailyCycle]
        attr_accessor :daily_cycle
      
        # Time window specified for weekly operations.
        # Corresponds to the JSON property `weeklyCycle`
        # @return [Google::Apis::ManagedidentitiesV1beta1::WeeklyCycle]
        attr_accessor :weekly_cycle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_cycle = args[:daily_cycle] if args.key?(:daily_cycle)
          @weekly_cycle = args[:weekly_cycle] if args.key?(:weekly_cycle)
        end
      end
      
      # OnPremDomainDetails is the message which contains details of on-prem domain
      # which is trusted and needs to be migrated.
      class OnPremDomainDetails
        include Google::Apis::Core::Hashable
      
        # Optional. Option to disable SID filtering.
        # Corresponds to the JSON property `disableSidFiltering`
        # @return [Boolean]
        attr_accessor :disable_sid_filtering
        alias_method :disable_sid_filtering?, :disable_sid_filtering
      
        # Required. FQDN of the on-prem domain being migrated.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_sid_filtering = args[:disable_sid_filtering] if args.key?(:disable_sid_filtering)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
        end
      end
      
      # OnPremDomainDetails is the message which contains details of on-prem domain
      # which is trusted and needs to be migrated.
      class OnPremDomainSidDetails
        include Google::Apis::Core::Hashable
      
        # FQDN of the on-prem domain being migrated.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Current SID filtering state.
        # Corresponds to the JSON property `sidFilteringState`
        # @return [String]
        attr_accessor :sid_filtering_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @sid_filtering_state = args[:sid_filtering_state] if args.key?(:sid_filtering_state)
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
        # @return [Google::Apis::ManagedidentitiesV1beta1::Status]
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
        # operation. Operations that have been cancelled successfully have Operation.
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
      
      # Represents a Managed Microsoft Identities Peering.
      class Peering
        include Google::Apis::Core::Hashable
      
        # Required. The full names of the Google Compute Engine [networks](/compute/docs/
        # networks-and-firewalls#networks) to which the instance is connected. Caller
        # needs to make sure that CIDR subnets do not overlap between networks, else
        # peering creation will fail.
        # Corresponds to the JSON property `authorizedNetwork`
        # @return [String]
        attr_accessor :authorized_network
      
        # Output only. The time the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Full domain resource path for the Managed AD Domain involved in
        # peering. The resource path should be in the form: `projects/`project_id`/
        # locations/global/domains/`domain_name``
        # Corresponds to the JSON property `domainResource`
        # @return [String]
        attr_accessor :domain_resource
      
        # Optional. Resource labels to represent user provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Unique name of the peering in this scope including projects and
        # location using the form: `projects/`project_id`/locations/global/peerings/`
        # peering_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of this Peering.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current status of this peering,
        # if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Last update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_network = args[:authorized_network] if args.key?(:authorized_network)
          @create_time = args[:create_time] if args.key?(:create_time)
          @domain_resource = args[:domain_resource] if args.key?(:domain_resource)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @status_message = args[:status_message] if args.key?(:status_message)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::Binding>]
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
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for ReconfigureTrust
      class ReconfigureTrustRequest
        include Google::Apis::Core::Hashable
      
        # Required. The target DNS server IP addresses to resolve the remote domain
        # involved in the trust.
        # Corresponds to the JSON property `targetDnsIpAddresses`
        # @return [Array<String>]
        attr_accessor :target_dns_ip_addresses
      
        # Required. The fully-qualified target domain name which will be in trust with
        # current domain.
        # Corresponds to the JSON property `targetDomainName`
        # @return [String]
        attr_accessor :target_domain_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_dns_ip_addresses = args[:target_dns_ip_addresses] if args.key?(:target_dns_ip_addresses)
          @target_domain_name = args[:target_domain_name] if args.key?(:target_domain_name)
        end
      end
      
      # Request message for ResetAdminPassword
      class ResetAdminPasswordRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for ResetAdminPassword
      class ResetAdminPasswordResponse
        include Google::Apis::Core::Hashable
      
        # A random password. See admin for more information.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
        end
      end
      
      # RestoreDomainRequest is the request received by RestoreDomain rpc
      class RestoreDomainRequest
        include Google::Apis::Core::Hashable
      
        # Required. ID of the backup to be restored
        # Corresponds to the JSON property `backupId`
        # @return [String]
        attr_accessor :backup_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_id = args[:backup_id] if args.key?(:backup_id)
        end
      end
      
      # Configure the schedule.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # Allows to define schedule that runs specified day of the week.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
        # Output only. Duration of the time window, set by service producer.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::ManagedidentitiesV1beta1::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @duration = args[:duration] if args.key?(:duration)
          @start_time = args[:start_time] if args.key?(:start_time)
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
        # @return [Google::Apis::ManagedidentitiesV1beta1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Represents the Sql instance integrated with AD.
      class SqlIntegration
        include Google::Apis::Core::Hashable
      
        # Output only. The time sql integration was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The unique name of the sql integration in the form of `projects/`project_id`/
        # locations/global/domains/`domain_name`/sqlIntegrations/`sql_integration``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The full resource name of an integrated sql instance
        # Corresponds to the JSON property `sqlInstance`
        # @return [String]
        attr_accessor :sql_instance
      
        # Output only. The current state of the sql integration.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time sql integration was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @sql_instance = args[:sql_instance] if args.key?(:sql_instance)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Represents a relationship between two domains. This allows a controller in one
      # domain to authenticate a user in another domain.
      class TrustProp
        include Google::Apis::Core::Hashable
      
        # Output only. The time the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The last heartbeat time when the trust was known to be connected.
        # Corresponds to the JSON property `lastTrustHeartbeatTime`
        # @return [String]
        attr_accessor :last_trust_heartbeat_time
      
        # The trust authentication type, which decides whether the trusted side has
        # forest/domain wide access or selective access to an approved set of resources.
        # Corresponds to the JSON property `selectiveAuthentication`
        # @return [Boolean]
        attr_accessor :selective_authentication
        alias_method :selective_authentication?, :selective_authentication
      
        # Output only. The current state of the trust.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current state of the trust, if
        # available.
        # Corresponds to the JSON property `stateDescription`
        # @return [String]
        attr_accessor :state_description
      
        # The target DNS server IP addresses which can resolve the remote domain
        # involved in the trust.
        # Corresponds to the JSON property `targetDnsIpAddresses`
        # @return [Array<String>]
        attr_accessor :target_dns_ip_addresses
      
        # The fully qualified target domain name which will be in trust with the current
        # domain.
        # Corresponds to the JSON property `targetDomainName`
        # @return [String]
        attr_accessor :target_domain_name
      
        # The trust direction, which decides if the current domain is trusted, trusting,
        # or both.
        # Corresponds to the JSON property `trustDirection`
        # @return [String]
        attr_accessor :trust_direction
      
        # Input only. The trust secret used for the handshake with the target domain. It
        # will not be stored.
        # Corresponds to the JSON property `trustHandshakeSecret`
        # @return [String]
        attr_accessor :trust_handshake_secret
      
        # The type of trust represented by the trust resource.
        # Corresponds to the JSON property `trustType`
        # @return [String]
        attr_accessor :trust_type
      
        # Output only. The last update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @last_trust_heartbeat_time = args[:last_trust_heartbeat_time] if args.key?(:last_trust_heartbeat_time)
          @selective_authentication = args[:selective_authentication] if args.key?(:selective_authentication)
          @state = args[:state] if args.key?(:state)
          @state_description = args[:state_description] if args.key?(:state_description)
          @target_dns_ip_addresses = args[:target_dns_ip_addresses] if args.key?(:target_dns_ip_addresses)
          @target_domain_name = args[:target_domain_name] if args.key?(:target_domain_name)
          @trust_direction = args[:trust_direction] if args.key?(:trust_direction)
          @trust_handshake_secret = args[:trust_handshake_secret] if args.key?(:trust_handshake_secret)
          @trust_type = args[:trust_type] if args.key?(:trust_type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Maintenance policy applicable to instance updates.
      class UpdatePolicy
        include Google::Apis::Core::Hashable
      
        # Optional. Relative scheduling channel applied to resource.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Deny Maintenance Period that is applied to resource to indicate when
        # maintenance is forbidden. User can specify zero or more non-overlapping deny
        # periods. Maximum number of deny_maintenance_periods expected is one.
        # Corresponds to the JSON property `denyMaintenancePeriods`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::DenyMaintenancePeriod>]
        attr_accessor :deny_maintenance_periods
      
        # MaintenanceWindow definition.
        # Corresponds to the JSON property `window`
        # @return [Google::Apis::ManagedidentitiesV1beta1::MaintenanceWindow]
        attr_accessor :window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @deny_maintenance_periods = args[:deny_maintenance_periods] if args.key?(:deny_maintenance_periods)
          @window = args[:window] if args.key?(:window)
        end
      end
      
      # Request message for ValidateTrust
      class ValidateTrustRequest
        include Google::Apis::Core::Hashable
      
        # Represents a relationship between two domains. This allows a controller in one
        # domain to authenticate a user in another domain.
        # Corresponds to the JSON property `trust`
        # @return [Google::Apis::ManagedidentitiesV1beta1::TrustProp]
        attr_accessor :trust_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @trust_prop = args[:trust_prop] if args.key?(:trust_prop)
        end
      end
      
      # Time window specified for weekly operations.
      class WeeklyCycle
        include Google::Apis::Core::Hashable
      
        # User can specify multiple windows in a week. Minimum of 1 window.
        # Corresponds to the JSON property `schedule`
        # @return [Array<Google::Apis::ManagedidentitiesV1beta1::Schedule>]
        attr_accessor :schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schedule = args[:schedule] if args.key?(:schedule)
        end
      end
    end
  end
end
