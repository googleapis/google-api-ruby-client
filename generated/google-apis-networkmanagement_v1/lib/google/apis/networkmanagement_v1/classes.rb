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
    module NetworkmanagementV1
      
      # Details of the final state "abort" and associated resource.
      class AbortInfo
        include Google::Apis::Core::Hashable
      
        # Causes that the analysis is aborted.
        # Corresponds to the JSON property `cause`
        # @return [String]
        attr_accessor :cause
      
        # IP address that caused the abort.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # List of project IDs the user specified in the request but lacks access to. In
        # this case, analysis is aborted with the PERMISSION_DENIED cause.
        # Corresponds to the JSON property `projectsMissingPermission`
        # @return [Array<String>]
        attr_accessor :projects_missing_permission
      
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
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @projects_missing_permission = args[:projects_missing_permission] if args.key?(:projects_missing_permission)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
        end
      end
      
      # Wrapper for the App Engine service version attributes.
      class AppEngineVersionEndpoint
        include Google::Apis::Core::Hashable
      
        # An [App Engine](https://cloud.google.com/appengine) [service version](https://
        # cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.
        # versions) name.
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
      
      # For display only. Metadata associated with an App Engine version.
      class AppEngineVersionInfo
        include Google::Apis::Core::Hashable
      
        # Name of an App Engine version.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # App Engine execution environment for a version.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Runtime of the App Engine version.
        # Corresponds to the JSON property `runtime`
        # @return [String]
        attr_accessor :runtime
      
        # URI of an App Engine version.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environment = args[:environment] if args.key?(:environment)
          @runtime = args[:runtime] if args.key?(:runtime)
          @uri = args[:uri] if args.key?(:uri)
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
        # @return [Google::Apis::NetworkmanagementV1::Expr]
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
      
      # Wrapper for Cloud Function attributes.
      class CloudFunctionEndpoint
        include Google::Apis::Core::Hashable
      
        # A [Cloud Function](https://cloud.google.com/functions) name.
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
      
      # For display only. Metadata associated with a Cloud Function.
      class CloudFunctionInfo
        include Google::Apis::Core::Hashable
      
        # Name of a Cloud Function.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Location in which the Cloud Function is deployed.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # URI of a Cloud Function.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Latest successfully deployed version id of the Cloud Function.
        # Corresponds to the JSON property `versionId`
        # @return [Fixnum]
        attr_accessor :version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @location = args[:location] if args.key?(:location)
          @uri = args[:uri] if args.key?(:uri)
          @version_id = args[:version_id] if args.key?(:version_id)
        end
      end
      
      # Wrapper for Cloud Run revision attributes.
      class CloudRunRevisionEndpoint
        include Google::Apis::Core::Hashable
      
        # Output only. The URI of the Cloud Run service that the revision belongs to.
        # The format is: projects/`project`/locations/`location`/services/`service`
        # Corresponds to the JSON property `serviceUri`
        # @return [String]
        attr_accessor :service_uri
      
        # A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.
        # com/run/docs/reference/rest/v1/namespaces.revisions/get) URI. The format is:
        # projects/`project`/locations/`location`/revisions/`revision`
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_uri = args[:service_uri] if args.key?(:service_uri)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # For display only. Metadata associated with a Cloud Run revision.
      class CloudRunRevisionInfo
        include Google::Apis::Core::Hashable
      
        # Name of a Cloud Run revision.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Location in which this revision is deployed.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # URI of Cloud Run service this revision belongs to.
        # Corresponds to the JSON property `serviceUri`
        # @return [String]
        attr_accessor :service_uri
      
        # URI of a Cloud Run revision.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @location = args[:location] if args.key?(:location)
          @service_uri = args[:service_uri] if args.key?(:service_uri)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # For display only. Metadata associated with a Cloud SQL instance.
      class CloudSqlInstanceInfo
        include Google::Apis::Core::Hashable
      
        # Name of a Cloud SQL instance.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # External IP address of a Cloud SQL instance.
        # Corresponds to the JSON property `externalIp`
        # @return [String]
        attr_accessor :external_ip
      
        # Internal IP address of a Cloud SQL instance.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        # URI of a Cloud SQL instance network or empty string if the instance does not
        # have one.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Region in which the Cloud SQL instance is running.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # URI of a Cloud SQL instance.
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
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @region = args[:region] if args.key?(:region)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A Connectivity Test for a network reachability analysis.
      class ConnectivityTest
        include Google::Apis::Core::Hashable
      
        # Whether the analysis should skip firewall checking. Default value is false.
        # Corresponds to the JSON property `bypassFirewallChecks`
        # @return [Boolean]
        attr_accessor :bypass_firewall_checks
        alias_method :bypass_firewall_checks?, :bypass_firewall_checks
      
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
      
        # Identifier. Unique name of the resource using the form: `projects/`project_id`/
        # locations/global/connectivityTests/`test_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Results of active probing from the last run of the test.
        # Corresponds to the JSON property `probingDetails`
        # @return [Google::Apis::NetworkmanagementV1::ProbingDetails]
        attr_accessor :probing_details
      
        # IP Protocol of the test. When not provided, "TCP" is assumed.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Results of the configuration analysis from the last run of the test.
        # Corresponds to the JSON property `reachabilityDetails`
        # @return [Google::Apis::NetworkmanagementV1::ReachabilityDetails]
        attr_accessor :reachability_details
      
        # Other projects that may be relevant for reachability analysis. This is
        # applicable to scenarios where a test can cross project boundaries.
        # Corresponds to the JSON property `relatedProjects`
        # @return [Array<String>]
        attr_accessor :related_projects
      
        # Results of the configuration analysis from the last run of the test.
        # Corresponds to the JSON property `returnReachabilityDetails`
        # @return [Google::Apis::NetworkmanagementV1::ReachabilityDetails]
        attr_accessor :return_reachability_details
      
        # Whether run analysis for the return path from destination to source. Default
        # value is false.
        # Corresponds to the JSON property `roundTrip`
        # @return [Boolean]
        attr_accessor :round_trip
        alias_method :round_trip?, :round_trip
      
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
          @bypass_firewall_checks = args[:bypass_firewall_checks] if args.key?(:bypass_firewall_checks)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination = args[:destination] if args.key?(:destination)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @probing_details = args[:probing_details] if args.key?(:probing_details)
          @protocol = args[:protocol] if args.key?(:protocol)
          @reachability_details = args[:reachability_details] if args.key?(:reachability_details)
          @related_projects = args[:related_projects] if args.key?(:related_projects)
          @return_reachability_details = args[:return_reachability_details] if args.key?(:return_reachability_details)
          @round_trip = args[:round_trip] if args.key?(:round_trip)
          @source = args[:source] if args.key?(:source)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Details of the final state "deliver" and associated resource.
      class DeliverInfo
        include Google::Apis::Core::Hashable
      
        # Recognized type of a Google Service the packet is delivered to (if applicable).
        # Corresponds to the JSON property `googleServiceType`
        # @return [String]
        attr_accessor :google_service_type
      
        # IP address of the target (if applicable).
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # PSC Google API target the packet is delivered to (if applicable).
        # Corresponds to the JSON property `pscGoogleApiTarget`
        # @return [String]
        attr_accessor :psc_google_api_target
      
        # URI of the resource that the packet is delivered to.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Name of the Cloud Storage Bucket the packet is delivered to (if applicable).
        # Corresponds to the JSON property `storageBucket`
        # @return [String]
        attr_accessor :storage_bucket
      
        # Target type where the packet is delivered to.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_service_type = args[:google_service_type] if args.key?(:google_service_type)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @psc_google_api_target = args[:psc_google_api_target] if args.key?(:psc_google_api_target)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @storage_bucket = args[:storage_bucket] if args.key?(:storage_bucket)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # For display only. Metadata associated with a serverless direct VPC egress
      # connection.
      class DirectVpcEgressConnectionInfo
        include Google::Apis::Core::Hashable
      
        # URI of direct access network.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Region in which the Direct VPC egress is deployed.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Selected starting IP address, from the selected IP range.
        # Corresponds to the JSON property `selectedIpAddress`
        # @return [String]
        attr_accessor :selected_ip_address
      
        # Selected IP range.
        # Corresponds to the JSON property `selectedIpRange`
        # @return [String]
        attr_accessor :selected_ip_range
      
        # URI of direct access subnetwork.
        # Corresponds to the JSON property `subnetworkUri`
        # @return [String]
        attr_accessor :subnetwork_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @region = args[:region] if args.key?(:region)
          @selected_ip_address = args[:selected_ip_address] if args.key?(:selected_ip_address)
          @selected_ip_range = args[:selected_ip_range] if args.key?(:selected_ip_range)
          @subnetwork_uri = args[:subnetwork_uri] if args.key?(:subnetwork_uri)
        end
      end
      
      # Details of the final state "drop" and associated resource.
      class DropInfo
        include Google::Apis::Core::Hashable
      
        # Cause that the packet is dropped.
        # Corresponds to the JSON property `cause`
        # @return [String]
        attr_accessor :cause
      
        # Geolocation (region code) of the destination IP address (if relevant).
        # Corresponds to the JSON property `destinationGeolocationCode`
        # @return [String]
        attr_accessor :destination_geolocation_code
      
        # Destination IP address of the dropped packet (if relevant).
        # Corresponds to the JSON property `destinationIp`
        # @return [String]
        attr_accessor :destination_ip
      
        # Region of the dropped packet (if relevant).
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # URI of the resource that caused the drop.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Geolocation (region code) of the source IP address (if relevant).
        # Corresponds to the JSON property `sourceGeolocationCode`
        # @return [String]
        attr_accessor :source_geolocation_code
      
        # Source IP address of the dropped packet (if relevant).
        # Corresponds to the JSON property `sourceIp`
        # @return [String]
        attr_accessor :source_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @destination_geolocation_code = args[:destination_geolocation_code] if args.key?(:destination_geolocation_code)
          @destination_ip = args[:destination_ip] if args.key?(:destination_ip)
          @region = args[:region] if args.key?(:region)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @source_geolocation_code = args[:source_geolocation_code] if args.key?(:source_geolocation_code)
          @source_ip = args[:source_ip] if args.key?(:source_ip)
        end
      end
      
      # Representation of a network edge location as per https://cloud.google.com/vpc/
      # docs/edge-locations.
      class EdgeLocation
        include Google::Apis::Core::Hashable
      
        # Name of the metropolitan area.
        # Corresponds to the JSON property `metropolitanArea`
        # @return [String]
        attr_accessor :metropolitan_area
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metropolitan_area = args[:metropolitan_area] if args.key?(:metropolitan_area)
        end
      end
      
      # A configuration to generate a response for GetEffectiveVpcFlowLogsConfig
      # request.
      class EffectiveVpcFlowLogsConfig
        include Google::Apis::Core::Hashable
      
        # The aggregation interval for the logs. Default value is INTERVAL_5_SEC.
        # Corresponds to the JSON property `aggregationInterval`
        # @return [String]
        attr_accessor :aggregation_interval
      
        # Determines whether to include cross project annotations in the logs. This
        # field is available only for organization configurations. If not specified in
        # org configs will be set to CROSS_PROJECT_METADATA_ENABLED.
        # Corresponds to the JSON property `crossProjectMetadata`
        # @return [String]
        attr_accessor :cross_project_metadata
      
        # Export filter used to define which VPC Flow Logs should be logged.
        # Corresponds to the JSON property `filterExpr`
        # @return [String]
        attr_accessor :filter_expr
      
        # The value of the field must be in (0, 1]. The sampling rate of VPC Flow Logs
        # where 1.0 means all collected logs are reported. Setting the sampling rate to
        # 0.0 is not allowed. If you want to disable VPC Flow Logs, use the state field
        # instead. Default value is 1.0.
        # Corresponds to the JSON property `flowSampling`
        # @return [Float]
        attr_accessor :flow_sampling
      
        # Traffic will be logged from the Interconnect Attachment. Format: projects/`
        # project_id`/regions/`region`/interconnectAttachments/`name`
        # Corresponds to the JSON property `interconnectAttachment`
        # @return [String]
        attr_accessor :interconnect_attachment
      
        # Configures whether all, none or a subset of metadata fields should be added to
        # the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
        # Corresponds to the JSON property `metadata`
        # @return [String]
        attr_accessor :metadata
      
        # Custom metadata fields to include in the reported VPC flow logs. Can only be
        # specified if "metadata" was set to CUSTOM_METADATA.
        # Corresponds to the JSON property `metadataFields`
        # @return [Array<String>]
        attr_accessor :metadata_fields
      
        # Unique name of the configuration. The name can have one of the following forms:
        # - For project-level configurations: `projects/`project_id`/locations/global/
        # vpcFlowLogsConfigs/`vpc_flow_logs_config_id`` - For organization-level
        # configurations: `organizations/`organization_id`/locations/global/
        # vpcFlowLogsConfigs/`vpc_flow_logs_config_id`` - For a Compute config, the name
        # will be the path of the subnet: `projects/`project_id`/regions/`region`/
        # subnetworks/`subnet_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments
        # within the network. Format: projects/`project_id`/global/networks/`name`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Specifies the scope of the config (e.g., SUBNET, NETWORK, ORGANIZATION..).
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # The state of the VPC Flow Log configuration. Default value is ENABLED. When
        # creating a new configuration, it must be enabled. Setting state=DISABLED will
        # pause the log generation for this config.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Traffic will be logged from VMs within the subnetwork. Format: projects/`
        # project_id`/regions/`region`/subnetworks/`name`
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        # Traffic will be logged from the VPN Tunnel. Format: projects/`project_id`/
        # regions/`region`/vpnTunnels/`name`
        # Corresponds to the JSON property `vpnTunnel`
        # @return [String]
        attr_accessor :vpn_tunnel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_interval = args[:aggregation_interval] if args.key?(:aggregation_interval)
          @cross_project_metadata = args[:cross_project_metadata] if args.key?(:cross_project_metadata)
          @filter_expr = args[:filter_expr] if args.key?(:filter_expr)
          @flow_sampling = args[:flow_sampling] if args.key?(:flow_sampling)
          @interconnect_attachment = args[:interconnect_attachment] if args.key?(:interconnect_attachment)
          @metadata = args[:metadata] if args.key?(:metadata)
          @metadata_fields = args[:metadata_fields] if args.key?(:metadata_fields)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @scope = args[:scope] if args.key?(:scope)
          @state = args[:state] if args.key?(:state)
          @subnet = args[:subnet] if args.key?(:subnet)
          @vpn_tunnel = args[:vpn_tunnel] if args.key?(:vpn_tunnel)
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
      
      # Source or destination of the Connectivity Test.
      class Endpoint
        include Google::Apis::Core::Hashable
      
        # Wrapper for the App Engine service version attributes.
        # Corresponds to the JSON property `appEngineVersion`
        # @return [Google::Apis::NetworkmanagementV1::AppEngineVersionEndpoint]
        attr_accessor :app_engine_version
      
        # Wrapper for Cloud Function attributes.
        # Corresponds to the JSON property `cloudFunction`
        # @return [Google::Apis::NetworkmanagementV1::CloudFunctionEndpoint]
        attr_accessor :cloud_function
      
        # Wrapper for Cloud Run revision attributes.
        # Corresponds to the JSON property `cloudRunRevision`
        # @return [Google::Apis::NetworkmanagementV1::CloudRunRevisionEndpoint]
        attr_accessor :cloud_run_revision
      
        # A [Cloud SQL](https://cloud.google.com/sql) instance URI.
        # Corresponds to the JSON property `cloudSqlInstance`
        # @return [String]
        attr_accessor :cloud_sql_instance
      
        # A forwarding rule and its corresponding IP address represent the frontend
        # configuration of a Google Cloud load balancer. Forwarding rules are also used
        # for protocol forwarding, Private Service Connect and other network services to
        # provide forwarding information in the control plane. Applicable only to
        # destination endpoint. Format: `projects/`project`/global/forwardingRules/`id``
        # or `projects/`project`/regions/`region`/forwardingRules/`id``
        # Corresponds to the JSON property `forwardingRule`
        # @return [String]
        attr_accessor :forwarding_rule
      
        # Output only. Specifies the type of the target of the forwarding rule.
        # Corresponds to the JSON property `forwardingRuleTarget`
        # @return [String]
        attr_accessor :forwarding_rule_target
      
        # DNS endpoint of [Google Kubernetes Engine cluster control plane](https://cloud.
        # google.com/kubernetes-engine/docs/concepts/cluster-architecture). Requires
        # gke_master_cluster to be set, can't be used simultaneoulsly with ip_address or
        # network. Applicable only to destination endpoint.
        # Corresponds to the JSON property `fqdn`
        # @return [String]
        attr_accessor :fqdn
      
        # A cluster URI for [Google Kubernetes Engine cluster control plane](https://
        # cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
        # Corresponds to the JSON property `gkeMasterCluster`
        # @return [String]
        attr_accessor :gke_master_cluster
      
        # A [GKE Pod](https://cloud.google.com/kubernetes-engine/docs/concepts/pod) URI.
        # Corresponds to the JSON property `gkePod`
        # @return [String]
        attr_accessor :gke_pod
      
        # A Compute Engine instance URI.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # The IP address of the endpoint, which can be an external or internal IP.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Output only. ID of the load balancer the forwarding rule points to. Empty for
        # forwarding rules not related to load balancers.
        # Corresponds to the JSON property `loadBalancerId`
        # @return [String]
        attr_accessor :load_balancer_id
      
        # Output only. Type of the load balancer the forwarding rule points to.
        # Corresponds to the JSON property `loadBalancerType`
        # @return [String]
        attr_accessor :load_balancer_type
      
        # A VPC network URI. For source endpoints, used according to the `network_type`.
        # For destination endpoints, used only when the source is an external IP address
        # endpoint, and the destination is an internal IP address endpoint.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # For source endpoints, type of the network where the endpoint is located. Not
        # relevant for destination endpoints.
        # Corresponds to the JSON property `networkType`
        # @return [String]
        attr_accessor :network_type
      
        # The IP protocol port of the endpoint. Only applicable when protocol is TCP or
        # UDP.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # For source endpoints, endpoint project ID. Used according to the `network_type`
        # . Not relevant for destination endpoints.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # A [Redis Cluster](https://cloud.google.com/memorystore/docs/cluster) URI.
        # Applicable only to destination endpoint.
        # Corresponds to the JSON property `redisCluster`
        # @return [String]
        attr_accessor :redis_cluster
      
        # A [Redis Instance](https://cloud.google.com/memorystore/docs/redis) URI.
        # Applicable only to destination endpoint.
        # Corresponds to the JSON property `redisInstance`
        # @return [String]
        attr_accessor :redis_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_version = args[:app_engine_version] if args.key?(:app_engine_version)
          @cloud_function = args[:cloud_function] if args.key?(:cloud_function)
          @cloud_run_revision = args[:cloud_run_revision] if args.key?(:cloud_run_revision)
          @cloud_sql_instance = args[:cloud_sql_instance] if args.key?(:cloud_sql_instance)
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @forwarding_rule_target = args[:forwarding_rule_target] if args.key?(:forwarding_rule_target)
          @fqdn = args[:fqdn] if args.key?(:fqdn)
          @gke_master_cluster = args[:gke_master_cluster] if args.key?(:gke_master_cluster)
          @gke_pod = args[:gke_pod] if args.key?(:gke_pod)
          @instance = args[:instance] if args.key?(:instance)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @load_balancer_id = args[:load_balancer_id] if args.key?(:load_balancer_id)
          @load_balancer_type = args[:load_balancer_type] if args.key?(:load_balancer_type)
          @network = args[:network] if args.key?(:network)
          @network_type = args[:network_type] if args.key?(:network_type)
          @port = args[:port] if args.key?(:port)
          @project_id = args[:project_id] if args.key?(:project_id)
          @redis_cluster = args[:redis_cluster] if args.key?(:redis_cluster)
          @redis_instance = args[:redis_instance] if args.key?(:redis_instance)
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
      
        # URI of the source telemetry agent this packet originates from.
        # Corresponds to the JSON property `sourceAgentUri`
        # @return [String]
        attr_accessor :source_agent_uri
      
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
          @source_agent_uri = args[:source_agent_uri] if args.key?(:source_agent_uri)
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
      
      # For display only. Metadata associated with a VPC firewall rule, an implied VPC
      # firewall rule, or a firewall policy rule.
      class FirewallInfo
        include Google::Apis::Core::Hashable
      
        # Possible values: ALLOW, DENY, APPLY_SECURITY_PROFILE_GROUP
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Possible values: INGRESS, EGRESS
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # The display name of the firewall rule. This field might be empty for firewall
        # policy rules.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The firewall rule's type.
        # Corresponds to the JSON property `firewallRuleType`
        # @return [String]
        attr_accessor :firewall_rule_type
      
        # The URI of the VPC network that the firewall rule is associated with. This
        # field is not applicable to hierarchical firewall policy rules.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # The name of the firewall policy that this rule is associated with. This field
        # is not applicable to VPC firewall rules and implied VPC firewall rules.
        # Corresponds to the JSON property `policy`
        # @return [String]
        attr_accessor :policy
      
        # The priority of the firewall policy that this rule is associated with. This
        # field is not applicable to VPC firewall rules and implied VPC firewall rules.
        # Corresponds to the JSON property `policyPriority`
        # @return [Fixnum]
        attr_accessor :policy_priority
      
        # The URI of the firewall policy that this rule is associated with. This field
        # is not applicable to VPC firewall rules and implied VPC firewall rules.
        # Corresponds to the JSON property `policyUri`
        # @return [String]
        attr_accessor :policy_uri
      
        # The priority of the firewall rule.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # The target service accounts specified by the firewall rule.
        # Corresponds to the JSON property `targetServiceAccounts`
        # @return [Array<String>]
        attr_accessor :target_service_accounts
      
        # The target tags defined by the VPC firewall rule. This field is not applicable
        # to firewall policy rules.
        # Corresponds to the JSON property `targetTags`
        # @return [Array<String>]
        attr_accessor :target_tags
      
        # Target type of the firewall rule.
        # Corresponds to the JSON property `targetType`
        # @return [String]
        attr_accessor :target_type
      
        # The URI of the firewall rule. This field is not applicable to implied VPC
        # firewall rules.
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
          @firewall_rule_type = args[:firewall_rule_type] if args.key?(:firewall_rule_type)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @policy = args[:policy] if args.key?(:policy)
          @policy_priority = args[:policy_priority] if args.key?(:policy_priority)
          @policy_uri = args[:policy_uri] if args.key?(:policy_uri)
          @priority = args[:priority] if args.key?(:priority)
          @target_service_accounts = args[:target_service_accounts] if args.key?(:target_service_accounts)
          @target_tags = args[:target_tags] if args.key?(:target_tags)
          @target_type = args[:target_type] if args.key?(:target_type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Details of the final state "forward" and associated resource.
      class ForwardInfo
        include Google::Apis::Core::Hashable
      
        # IP address of the target (if applicable).
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
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
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # For display only. Metadata associated with a Compute Engine forwarding rule.
      class ForwardingRuleInfo
        include Google::Apis::Core::Hashable
      
        # Name of the forwarding rule.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Name of the load balancer the forwarding rule belongs to. Empty for forwarding
        # rules not related to load balancers (like PSC forwarding rules).
        # Corresponds to the JSON property `loadBalancerName`
        # @return [String]
        attr_accessor :load_balancer_name
      
        # Port range defined in the forwarding rule that matches the packet.
        # Corresponds to the JSON property `matchedPortRange`
        # @return [String]
        attr_accessor :matched_port_range
      
        # Protocol defined in the forwarding rule that matches the packet.
        # Corresponds to the JSON property `matchedProtocol`
        # @return [String]
        attr_accessor :matched_protocol
      
        # Network URI.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # PSC Google API target this forwarding rule targets (if applicable).
        # Corresponds to the JSON property `pscGoogleApiTarget`
        # @return [String]
        attr_accessor :psc_google_api_target
      
        # URI of the PSC service attachment this forwarding rule targets (if applicable).
        # Corresponds to the JSON property `pscServiceAttachmentUri`
        # @return [String]
        attr_accessor :psc_service_attachment_uri
      
        # Region of the forwarding rule. Set only for regional forwarding rules.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Target type of the forwarding rule.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # URI of the forwarding rule.
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
          @load_balancer_name = args[:load_balancer_name] if args.key?(:load_balancer_name)
          @matched_port_range = args[:matched_port_range] if args.key?(:matched_port_range)
          @matched_protocol = args[:matched_protocol] if args.key?(:matched_protocol)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @psc_google_api_target = args[:psc_google_api_target] if args.key?(:psc_google_api_target)
          @psc_service_attachment_uri = args[:psc_service_attachment_uri] if args.key?(:psc_service_attachment_uri)
          @region = args[:region] if args.key?(:region)
          @target = args[:target] if args.key?(:target)
          @uri = args[:uri] if args.key?(:uri)
          @vip = args[:vip] if args.key?(:vip)
        end
      end
      
      # For display only. Metadata associated with a Google Kubernetes Engine (GKE)
      # cluster master.
      class GkeMasterInfo
        include Google::Apis::Core::Hashable
      
        # URI of a GKE cluster network.
        # Corresponds to the JSON property `clusterNetworkUri`
        # @return [String]
        attr_accessor :cluster_network_uri
      
        # URI of a GKE cluster.
        # Corresponds to the JSON property `clusterUri`
        # @return [String]
        attr_accessor :cluster_uri
      
        # DNS endpoint of a GKE cluster control plane.
        # Corresponds to the JSON property `dnsEndpoint`
        # @return [String]
        attr_accessor :dns_endpoint
      
        # External IP address of a GKE cluster control plane.
        # Corresponds to the JSON property `externalIp`
        # @return [String]
        attr_accessor :external_ip
      
        # Internal IP address of a GKE cluster control plane.
        # Corresponds to the JSON property `internalIp`
        # @return [String]
        attr_accessor :internal_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_network_uri = args[:cluster_network_uri] if args.key?(:cluster_network_uri)
          @cluster_uri = args[:cluster_uri] if args.key?(:cluster_uri)
          @dns_endpoint = args[:dns_endpoint] if args.key?(:dns_endpoint)
          @external_ip = args[:external_ip] if args.key?(:external_ip)
          @internal_ip = args[:internal_ip] if args.key?(:internal_ip)
        end
      end
      
      # For display only. Metadata associated with a Google Kubernetes Engine (GKE)
      # Pod.
      class GkePodInfo
        include Google::Apis::Core::Hashable
      
        # IP address of a GKE Pod. If the Pod is dual-stack, this is the IP address
        # relevant to the trace.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # URI of the network containing the GKE Pod.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # URI of a GKE Pod. For Pods in regional Clusters, the URI format is: `projects/`
        # project`/locations/`location`/clusters/`cluster`/k8s/namespaces/`namespace`/
        # pods/`pod`` For Pods in zonal Clusters, the URI format is: `projects/`project`/
        # zones/`zone`/clusters/`cluster`/k8s/namespaces/`namespace`/pods/`pod``
        # Corresponds to the JSON property `podUri`
        # @return [String]
        attr_accessor :pod_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @pod_uri = args[:pod_uri] if args.key?(:pod_uri)
        end
      end
      
      # For display only. Metadata associated with ARRIVE_AT_GOOGLE_MANAGED_SERVICE
      # state.
      class GoogleManagedServiceInfo
        include Google::Apis::Core::Hashable
      
        # IP address of the Google-managed service endpoint.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # URI of the Google-managed service endpoint network, it is empty if the IP
        # address is a public IP address.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Type of a Google-managed service.
        # Corresponds to the JSON property `serviceType`
        # @return [String]
        attr_accessor :service_type
      
        # URI of the Google-managed service.
        # Corresponds to the JSON property `serviceUri`
        # @return [String]
        attr_accessor :service_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @service_type = args[:service_type] if args.key?(:service_type)
          @service_uri = args[:service_uri] if args.key?(:service_uri)
        end
      end
      
      # For display only. Details of a Google Service sending packets to a VPC network.
      # Although the source IP might be a publicly routable address, some Google
      # Services use special routes within Google production infrastructure to reach
      # Compute Engine Instances. https://cloud.google.com/vpc/docs/routes#
      # special_return_paths
      class GoogleServiceInfo
        include Google::Apis::Core::Hashable
      
        # Recognized type of a Google Service.
        # Corresponds to the JSON property `googleServiceType`
        # @return [String]
        attr_accessor :google_service_type
      
        # Source IP address.
        # Corresponds to the JSON property `sourceIp`
        # @return [String]
        attr_accessor :source_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_service_type = args[:google_service_type] if args.key?(:google_service_type)
          @source_ip = args[:source_ip] if args.key?(:source_ip)
        end
      end
      
      # For display only. Metadata associated with a hybrid subnet.
      class HybridSubnetInfo
        include Google::Apis::Core::Hashable
      
        # Name of a hybrid subnet.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Name of a Google Cloud region where the hybrid subnet is configured.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # URI of a hybrid subnet.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @region = args[:region] if args.key?(:region)
          @uri = args[:uri] if args.key?(:uri)
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
      
        # URI of the PSC network attachment the NIC is attached to (if relevant).
        # Corresponds to the JSON property `pscNetworkAttachmentUri`
        # @return [String]
        attr_accessor :psc_network_attachment_uri
      
        # Indicates whether the Compute Engine instance is running. Deprecated: use the `
        # status` field instead.
        # Corresponds to the JSON property `running`
        # @return [Boolean]
        attr_accessor :running
        alias_method :running?, :running
      
        # Service account authorized for the instance.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # The status of the instance.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
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
          @psc_network_attachment_uri = args[:psc_network_attachment_uri] if args.key?(:psc_network_attachment_uri)
          @running = args[:running] if args.key?(:running)
          @service_account = args[:service_account] if args.key?(:service_account)
          @status = args[:status] if args.key?(:status)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # For display only. Metadata associated with an Interconnect attachment.
      class InterconnectAttachmentInfo
        include Google::Apis::Core::Hashable
      
        # URI of the Cloud Router to be used for dynamic routing.
        # Corresponds to the JSON property `cloudRouterUri`
        # @return [String]
        attr_accessor :cloud_router_uri
      
        # Name of an Interconnect attachment.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # URI of the Interconnect where the Interconnect attachment is configured.
        # Corresponds to the JSON property `interconnectUri`
        # @return [String]
        attr_accessor :interconnect_uri
      
        # Appliance IP address that was matched for L2_DEDICATED attachments.
        # Corresponds to the JSON property `l2AttachmentMatchedIpAddress`
        # @return [String]
        attr_accessor :l2_attachment_matched_ip_address
      
        # Name of a Google Cloud region where the Interconnect attachment is configured.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The type of interconnect attachment this is.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # URI of an Interconnect attachment.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_router_uri = args[:cloud_router_uri] if args.key?(:cloud_router_uri)
          @display_name = args[:display_name] if args.key?(:display_name)
          @interconnect_uri = args[:interconnect_uri] if args.key?(:interconnect_uri)
          @l2_attachment_matched_ip_address = args[:l2_attachment_matched_ip_address] if args.key?(:l2_attachment_matched_ip_address)
          @region = args[:region] if args.key?(:region)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # For display only. Contains information about why IP masquerading was skipped
      # for the packet.
      class IpMasqueradingSkippedInfo
        include Google::Apis::Core::Hashable
      
        # The matched non-masquerade IP range. Only set if reason is
        # DESTINATION_IP_IN_CONFIGURED_NON_MASQUERADE_RANGE or
        # DESTINATION_IP_IN_DEFAULT_NON_MASQUERADE_RANGE.
        # Corresponds to the JSON property `nonMasqueradeRange`
        # @return [String]
        attr_accessor :non_masquerade_range
      
        # Reason why IP masquerading was not applied.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @non_masquerade_range = args[:non_masquerade_range] if args.key?(:non_masquerade_range)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Describes measured latency distribution.
      class LatencyDistribution
        include Google::Apis::Core::Hashable
      
        # Representative latency percentiles.
        # Corresponds to the JSON property `latencyPercentiles`
        # @return [Array<Google::Apis::NetworkmanagementV1::LatencyPercentile>]
        attr_accessor :latency_percentiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latency_percentiles = args[:latency_percentiles] if args.key?(:latency_percentiles)
        end
      end
      
      # Latency percentile rank and value.
      class LatencyPercentile
        include Google::Apis::Core::Hashable
      
        # percent-th percentile of latency observed, in microseconds. Fraction of
        # percent/100 of samples have latency lower or equal to the value of this field.
        # Corresponds to the JSON property `latencyMicros`
        # @return [Fixnum]
        attr_accessor :latency_micros
      
        # Percentage of samples this data point applies to.
        # Corresponds to the JSON property `percent`
        # @return [Fixnum]
        attr_accessor :percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latency_micros = args[:latency_micros] if args.key?(:latency_micros)
          @percent = args[:percent] if args.key?(:percent)
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
      
      # Response for the `ListVpcFlowLogsConfigs` method.
      class ListVpcFlowLogsConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Page token to fetch the next set of configurations.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached (when querying all locations with `-`).
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of VPC Flow Log configurations.
        # Corresponds to the JSON property `vpcFlowLogsConfigs`
        # @return [Array<Google::Apis::NetworkmanagementV1::VpcFlowLogsConfig>]
        attr_accessor :vpc_flow_logs_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @vpc_flow_logs_configs = args[:vpc_flow_logs_configs] if args.key?(:vpc_flow_logs_configs)
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
      
      # For display only. Metadata associated with the load balancer backend.
      class LoadBalancerBackendInfo
        include Google::Apis::Core::Hashable
      
        # URI of the backend bucket this backend targets (if applicable).
        # Corresponds to the JSON property `backendBucketUri`
        # @return [String]
        attr_accessor :backend_bucket_uri
      
        # URI of the backend service this backend belongs to (if applicable).
        # Corresponds to the JSON property `backendServiceUri`
        # @return [String]
        attr_accessor :backend_service_uri
      
        # Output only. Health check firewalls configuration state for the backend. This
        # is a result of the static firewall analysis (verifying that health check
        # traffic from required IP ranges to the backend is allowed or not). The backend
        # might still be unhealthy even if these firewalls are configured. Please refer
        # to the documentation for more information: https://cloud.google.com/load-
        # balancing/docs/firewall-rules
        # Corresponds to the JSON property `healthCheckFirewallsConfigState`
        # @return [String]
        attr_accessor :health_check_firewalls_config_state
      
        # URI of the health check attached to this backend (if applicable).
        # Corresponds to the JSON property `healthCheckUri`
        # @return [String]
        attr_accessor :health_check_uri
      
        # URI of the instance group this backend belongs to (if applicable).
        # Corresponds to the JSON property `instanceGroupUri`
        # @return [String]
        attr_accessor :instance_group_uri
      
        # URI of the backend instance (if applicable). Populated for instance group
        # backends, and zonal NEG backends.
        # Corresponds to the JSON property `instanceUri`
        # @return [String]
        attr_accessor :instance_uri
      
        # Display name of the backend. For example, it might be an instance name for the
        # instance group backends, or an IP address and port for zonal network endpoint
        # group backends.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URI of the network endpoint group this backend belongs to (if applicable).
        # Corresponds to the JSON property `networkEndpointGroupUri`
        # @return [String]
        attr_accessor :network_endpoint_group_uri
      
        # PSC Google API target this PSC NEG backend targets (if applicable).
        # Corresponds to the JSON property `pscGoogleApiTarget`
        # @return [String]
        attr_accessor :psc_google_api_target
      
        # URI of the PSC service attachment this PSC NEG backend targets (if applicable).
        # Corresponds to the JSON property `pscServiceAttachmentUri`
        # @return [String]
        attr_accessor :psc_service_attachment_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backend_bucket_uri = args[:backend_bucket_uri] if args.key?(:backend_bucket_uri)
          @backend_service_uri = args[:backend_service_uri] if args.key?(:backend_service_uri)
          @health_check_firewalls_config_state = args[:health_check_firewalls_config_state] if args.key?(:health_check_firewalls_config_state)
          @health_check_uri = args[:health_check_uri] if args.key?(:health_check_uri)
          @instance_group_uri = args[:instance_group_uri] if args.key?(:instance_group_uri)
          @instance_uri = args[:instance_uri] if args.key?(:instance_uri)
          @name = args[:name] if args.key?(:name)
          @network_endpoint_group_uri = args[:network_endpoint_group_uri] if args.key?(:network_endpoint_group_uri)
          @psc_google_api_target = args[:psc_google_api_target] if args.key?(:psc_google_api_target)
          @psc_service_attachment_uri = args[:psc_service_attachment_uri] if args.key?(:psc_service_attachment_uri)
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
      
        # URI of the health check for the load balancer. Deprecated and no longer
        # populated as different load balancer backends might have different health
        # checks.
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
      
      # For display only. Metadata associated with NAT.
      class NatInfo
        include Google::Apis::Core::Hashable
      
        # Type of Cloud NAT gateway. Only valid when `type` is CLOUD_NAT.
        # Corresponds to the JSON property `cloudNatGatewayType`
        # @return [String]
        attr_accessor :cloud_nat_gateway_type
      
        # The name of Cloud NAT Gateway. Only valid when type is CLOUD_NAT.
        # Corresponds to the JSON property `natGatewayName`
        # @return [String]
        attr_accessor :nat_gateway_name
      
        # URI of the network where NAT translation takes place.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Destination IP address after NAT translation.
        # Corresponds to the JSON property `newDestinationIp`
        # @return [String]
        attr_accessor :new_destination_ip
      
        # Destination port after NAT translation. Only valid when protocol is TCP or UDP.
        # Corresponds to the JSON property `newDestinationPort`
        # @return [Fixnum]
        attr_accessor :new_destination_port
      
        # Source IP address after NAT translation.
        # Corresponds to the JSON property `newSourceIp`
        # @return [String]
        attr_accessor :new_source_ip
      
        # Source port after NAT translation. Only valid when protocol is TCP or UDP.
        # Corresponds to the JSON property `newSourcePort`
        # @return [Fixnum]
        attr_accessor :new_source_port
      
        # Destination IP address before NAT translation.
        # Corresponds to the JSON property `oldDestinationIp`
        # @return [String]
        attr_accessor :old_destination_ip
      
        # Destination port before NAT translation. Only valid when protocol is TCP or
        # UDP.
        # Corresponds to the JSON property `oldDestinationPort`
        # @return [Fixnum]
        attr_accessor :old_destination_port
      
        # Source IP address before NAT translation.
        # Corresponds to the JSON property `oldSourceIp`
        # @return [String]
        attr_accessor :old_source_ip
      
        # Source port before NAT translation. Only valid when protocol is TCP or UDP.
        # Corresponds to the JSON property `oldSourcePort`
        # @return [Fixnum]
        attr_accessor :old_source_port
      
        # IP protocol in string format, for example: "TCP", "UDP", "ICMP".
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Uri of the Cloud Router. Only valid when type is CLOUD_NAT.
        # Corresponds to the JSON property `routerUri`
        # @return [String]
        attr_accessor :router_uri
      
        # Type of NAT.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_nat_gateway_type = args[:cloud_nat_gateway_type] if args.key?(:cloud_nat_gateway_type)
          @nat_gateway_name = args[:nat_gateway_name] if args.key?(:nat_gateway_name)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @new_destination_ip = args[:new_destination_ip] if args.key?(:new_destination_ip)
          @new_destination_port = args[:new_destination_port] if args.key?(:new_destination_port)
          @new_source_ip = args[:new_source_ip] if args.key?(:new_source_ip)
          @new_source_port = args[:new_source_port] if args.key?(:new_source_port)
          @old_destination_ip = args[:old_destination_ip] if args.key?(:old_destination_ip)
          @old_destination_port = args[:old_destination_port] if args.key?(:old_destination_port)
          @old_source_ip = args[:old_source_ip] if args.key?(:old_source_ip)
          @old_source_port = args[:old_source_port] if args.key?(:old_source_port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @router_uri = args[:router_uri] if args.key?(:router_uri)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # For display only. Metadata associated with a Compute Engine network.
      class NetworkInfo
        include Google::Apis::Core::Hashable
      
        # Name of a Compute Engine network.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The IP range of the subnet matching the source IP address of the test.
        # Corresponds to the JSON property `matchedIpRange`
        # @return [String]
        attr_accessor :matched_ip_range
      
        # URI of the subnet matching the source IP address of the test.
        # Corresponds to the JSON property `matchedSubnetUri`
        # @return [String]
        attr_accessor :matched_subnet_uri
      
        # The region of the subnet matching the source IP address of the test.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
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
          @matched_subnet_uri = args[:matched_subnet_uri] if args.key?(:matched_subnet_uri)
          @region = args[:region] if args.key?(:region)
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
        # @return [Array<Google::Apis::NetworkmanagementV1::AuditConfig>]
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
      
      # Results of active probing from the last run of the test.
      class ProbingDetails
        include Google::Apis::Core::Hashable
      
        # The reason probing was aborted.
        # Corresponds to the JSON property `abortCause`
        # @return [String]
        attr_accessor :abort_cause
      
        # Representation of a network edge location as per https://cloud.google.com/vpc/
        # docs/edge-locations.
        # Corresponds to the JSON property `destinationEgressLocation`
        # @return [Google::Apis::NetworkmanagementV1::EdgeLocation]
        attr_accessor :destination_egress_location
      
        # Probing results for all edge devices.
        # Corresponds to the JSON property `edgeResponses`
        # @return [Array<Google::Apis::NetworkmanagementV1::SingleEdgeResponse>]
        attr_accessor :edge_responses
      
        # For display only. The specification of the endpoints for the test.
        # EndpointInfo is derived from source and destination Endpoint and validated by
        # the backend data plane model.
        # Corresponds to the JSON property `endpointInfo`
        # @return [Google::Apis::NetworkmanagementV1::EndpointInfo]
        attr_accessor :endpoint_info
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::NetworkmanagementV1::Status]
        attr_accessor :error
      
        # Whether all relevant edge devices were probed.
        # Corresponds to the JSON property `probedAllDevices`
        # @return [Boolean]
        attr_accessor :probed_all_devices
        alias_method :probed_all_devices?, :probed_all_devices
      
        # Describes measured latency distribution.
        # Corresponds to the JSON property `probingLatency`
        # @return [Google::Apis::NetworkmanagementV1::LatencyDistribution]
        attr_accessor :probing_latency
      
        # The overall result of active probing.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # Number of probes sent.
        # Corresponds to the JSON property `sentProbeCount`
        # @return [Fixnum]
        attr_accessor :sent_probe_count
      
        # Number of probes that reached the destination.
        # Corresponds to the JSON property `successfulProbeCount`
        # @return [Fixnum]
        attr_accessor :successful_probe_count
      
        # The time that reachability was assessed through active probing.
        # Corresponds to the JSON property `verifyTime`
        # @return [String]
        attr_accessor :verify_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abort_cause = args[:abort_cause] if args.key?(:abort_cause)
          @destination_egress_location = args[:destination_egress_location] if args.key?(:destination_egress_location)
          @edge_responses = args[:edge_responses] if args.key?(:edge_responses)
          @endpoint_info = args[:endpoint_info] if args.key?(:endpoint_info)
          @error = args[:error] if args.key?(:error)
          @probed_all_devices = args[:probed_all_devices] if args.key?(:probed_all_devices)
          @probing_latency = args[:probing_latency] if args.key?(:probing_latency)
          @result = args[:result] if args.key?(:result)
          @sent_probe_count = args[:sent_probe_count] if args.key?(:sent_probe_count)
          @successful_probe_count = args[:successful_probe_count] if args.key?(:successful_probe_count)
          @verify_time = args[:verify_time] if args.key?(:verify_time)
        end
      end
      
      # For display only. Metadata associated with ProxyConnection.
      class ProxyConnectionInfo
        include Google::Apis::Core::Hashable
      
        # URI of the network where connection is proxied.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Destination IP address of a new connection.
        # Corresponds to the JSON property `newDestinationIp`
        # @return [String]
        attr_accessor :new_destination_ip
      
        # Destination port of a new connection. Only valid when protocol is TCP or UDP.
        # Corresponds to the JSON property `newDestinationPort`
        # @return [Fixnum]
        attr_accessor :new_destination_port
      
        # Source IP address of a new connection.
        # Corresponds to the JSON property `newSourceIp`
        # @return [String]
        attr_accessor :new_source_ip
      
        # Source port of a new connection. Only valid when protocol is TCP or UDP.
        # Corresponds to the JSON property `newSourcePort`
        # @return [Fixnum]
        attr_accessor :new_source_port
      
        # Destination IP address of an original connection
        # Corresponds to the JSON property `oldDestinationIp`
        # @return [String]
        attr_accessor :old_destination_ip
      
        # Destination port of an original connection. Only valid when protocol is TCP or
        # UDP.
        # Corresponds to the JSON property `oldDestinationPort`
        # @return [Fixnum]
        attr_accessor :old_destination_port
      
        # Source IP address of an original connection.
        # Corresponds to the JSON property `oldSourceIp`
        # @return [String]
        attr_accessor :old_source_ip
      
        # Source port of an original connection. Only valid when protocol is TCP or UDP.
        # Corresponds to the JSON property `oldSourcePort`
        # @return [Fixnum]
        attr_accessor :old_source_port
      
        # IP protocol in string format, for example: "TCP", "UDP", "ICMP".
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Uri of proxy subnet.
        # Corresponds to the JSON property `subnetUri`
        # @return [String]
        attr_accessor :subnet_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @new_destination_ip = args[:new_destination_ip] if args.key?(:new_destination_ip)
          @new_destination_port = args[:new_destination_port] if args.key?(:new_destination_port)
          @new_source_ip = args[:new_source_ip] if args.key?(:new_source_ip)
          @new_source_port = args[:new_source_port] if args.key?(:new_source_port)
          @old_destination_ip = args[:old_destination_ip] if args.key?(:old_destination_ip)
          @old_destination_port = args[:old_destination_port] if args.key?(:old_destination_port)
          @old_source_ip = args[:old_source_ip] if args.key?(:old_source_ip)
          @old_source_port = args[:old_source_port] if args.key?(:old_source_port)
          @protocol = args[:protocol] if args.key?(:protocol)
          @subnet_uri = args[:subnet_uri] if args.key?(:subnet_uri)
        end
      end
      
      # Response for the `QueryVpcFlowLogsConfigs` method.
      class QueryOrgVpcFlowLogsConfigsResponse
        include Google::Apis::Core::Hashable
      
        # Page token to fetch the next set of configurations.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached (when querying all locations with `-`).
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of VPC Flow Log configurations.
        # Corresponds to the JSON property `vpcFlowLogsConfigs`
        # @return [Array<Google::Apis::NetworkmanagementV1::VpcFlowLogsConfig>]
        attr_accessor :vpc_flow_logs_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @vpc_flow_logs_configs = args[:vpc_flow_logs_configs] if args.key?(:vpc_flow_logs_configs)
        end
      end
      
      # Results of the configuration analysis from the last run of the test.
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
      
        # The overall result of the test's configuration analysis.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # Result may contain a list of traces if a test has multiple possible paths in
        # the network, such as when destination endpoint is a load balancer with
        # multiple backends.
        # Corresponds to the JSON property `traces`
        # @return [Array<Google::Apis::NetworkmanagementV1::Trace>]
        attr_accessor :traces
      
        # The time of the configuration analysis.
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
      
      # For display only. Metadata associated with a Redis Cluster.
      class RedisClusterInfo
        include Google::Apis::Core::Hashable
      
        # Discovery endpoint IP address of a Redis Cluster.
        # Corresponds to the JSON property `discoveryEndpointIpAddress`
        # @return [String]
        attr_accessor :discovery_endpoint_ip_address
      
        # Name of a Redis Cluster.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Name of the region in which the Redis Cluster is defined. For example, "us-
        # central1".
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # URI of the network containing the Redis Cluster endpoints in format "projects/`
        # project_id`/global/networks/`network_id`".
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Secondary endpoint IP address of a Redis Cluster.
        # Corresponds to the JSON property `secondaryEndpointIpAddress`
        # @return [String]
        attr_accessor :secondary_endpoint_ip_address
      
        # URI of a Redis Cluster in format "projects/`project_id`/locations/`location`/
        # clusters/`cluster_id`"
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @discovery_endpoint_ip_address = args[:discovery_endpoint_ip_address] if args.key?(:discovery_endpoint_ip_address)
          @display_name = args[:display_name] if args.key?(:display_name)
          @location = args[:location] if args.key?(:location)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @secondary_endpoint_ip_address = args[:secondary_endpoint_ip_address] if args.key?(:secondary_endpoint_ip_address)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # For display only. Metadata associated with a Cloud Redis Instance.
      class RedisInstanceInfo
        include Google::Apis::Core::Hashable
      
        # Name of a Cloud Redis Instance.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # URI of a Cloud Redis Instance network.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # Primary endpoint IP address of a Cloud Redis Instance.
        # Corresponds to the JSON property `primaryEndpointIp`
        # @return [String]
        attr_accessor :primary_endpoint_ip
      
        # Read endpoint IP address of a Cloud Redis Instance (if applicable).
        # Corresponds to the JSON property `readEndpointIp`
        # @return [String]
        attr_accessor :read_endpoint_ip
      
        # Region in which the Cloud Redis Instance is defined.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # URI of a Cloud Redis Instance.
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
          @primary_endpoint_ip = args[:primary_endpoint_ip] if args.key?(:primary_endpoint_ip)
          @read_endpoint_ip = args[:read_endpoint_ip] if args.key?(:read_endpoint_ip)
          @region = args[:region] if args.key?(:region)
          @uri = args[:uri] if args.key?(:uri)
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
      
        # For ADVERTISED routes, the URI of their next hop, i.e. the URI of the hybrid
        # endpoint (VPN tunnel, Interconnect attachment, NCC router appliance) the
        # advertised prefix is advertised through, or URI of the source peered network.
        # Deprecated in favor of the next_hop_uri field, not used in new tests.
        # Corresponds to the JSON property `advertisedRouteNextHopUri`
        # @return [String]
        attr_accessor :advertised_route_next_hop_uri
      
        # For ADVERTISED dynamic routes, the URI of the Cloud Router that advertised the
        # corresponding IP prefix.
        # Corresponds to the JSON property `advertisedRouteSourceRouterUri`
        # @return [String]
        attr_accessor :advertised_route_source_router_uri
      
        # Destination IP range of the route.
        # Corresponds to the JSON property `destIpRange`
        # @return [String]
        attr_accessor :dest_ip_range
      
        # Destination port ranges of the route. POLICY_BASED routes only.
        # Corresponds to the JSON property `destPortRanges`
        # @return [Array<String>]
        attr_accessor :dest_port_ranges
      
        # Name of a route.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Instance tags of the route.
        # Corresponds to the JSON property `instanceTags`
        # @return [Array<String>]
        attr_accessor :instance_tags
      
        # For PEERING_SUBNET and PEERING_DYNAMIC routes that are advertised by NCC Hub,
        # the URI of the corresponding route in NCC Hub's routing table.
        # Corresponds to the JSON property `nccHubRouteUri`
        # @return [String]
        attr_accessor :ncc_hub_route_uri
      
        # URI of the NCC Hub the route is advertised by. PEERING_SUBNET and
        # PEERING_DYNAMIC routes that are advertised by NCC Hub only.
        # Corresponds to the JSON property `nccHubUri`
        # @return [String]
        attr_accessor :ncc_hub_uri
      
        # URI of the destination NCC Spoke. PEERING_SUBNET and PEERING_DYNAMIC routes
        # that are advertised by NCC Hub only.
        # Corresponds to the JSON property `nccSpokeUri`
        # @return [String]
        attr_accessor :ncc_spoke_uri
      
        # URI of a VPC network where route is located.
        # Corresponds to the JSON property `networkUri`
        # @return [String]
        attr_accessor :network_uri
      
        # String type of the next hop of the route (for example, "VPN tunnel").
        # Deprecated in favor of the next_hop_type and next_hop_uri fields, not used in
        # new tests.
        # Corresponds to the JSON property `nextHop`
        # @return [String]
        attr_accessor :next_hop
      
        # URI of a VPC network where the next hop resource is located.
        # Corresponds to the JSON property `nextHopNetworkUri`
        # @return [String]
        attr_accessor :next_hop_network_uri
      
        # Type of next hop.
        # Corresponds to the JSON property `nextHopType`
        # @return [String]
        attr_accessor :next_hop_type
      
        # URI of the next hop resource.
        # Corresponds to the JSON property `nextHopUri`
        # @return [String]
        attr_accessor :next_hop_uri
      
        # For PEERING_SUBNET, PEERING_STATIC and PEERING_DYNAMIC routes, the name of the
        # originating SUBNET/STATIC/DYNAMIC route.
        # Corresponds to the JSON property `originatingRouteDisplayName`
        # @return [String]
        attr_accessor :originating_route_display_name
      
        # For PEERING_SUBNET and PEERING_STATIC routes, the URI of the originating
        # SUBNET/STATIC route.
        # Corresponds to the JSON property `originatingRouteUri`
        # @return [String]
        attr_accessor :originating_route_uri
      
        # Priority of the route.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Protocols of the route. POLICY_BASED routes only.
        # Corresponds to the JSON property `protocols`
        # @return [Array<String>]
        attr_accessor :protocols
      
        # Region of the route. DYNAMIC, PEERING_DYNAMIC, POLICY_BASED and ADVERTISED
        # routes only. If set for POLICY_BASED route, this is a region of VLAN
        # attachments for Cloud Interconnect the route applies to.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Indicates where route is applicable. Deprecated, routes with NCC_HUB scope are
        # not included in the trace in new tests.
        # Corresponds to the JSON property `routeScope`
        # @return [String]
        attr_accessor :route_scope
      
        # Type of route.
        # Corresponds to the JSON property `routeType`
        # @return [String]
        attr_accessor :route_type
      
        # Source IP address range of the route. POLICY_BASED routes only.
        # Corresponds to the JSON property `srcIpRange`
        # @return [String]
        attr_accessor :src_ip_range
      
        # Source port ranges of the route. POLICY_BASED routes only.
        # Corresponds to the JSON property `srcPortRanges`
        # @return [Array<String>]
        attr_accessor :src_port_ranges
      
        # URI of a route. SUBNET, STATIC, PEERING_SUBNET (only for peering network) and
        # POLICY_BASED routes only.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertised_route_next_hop_uri = args[:advertised_route_next_hop_uri] if args.key?(:advertised_route_next_hop_uri)
          @advertised_route_source_router_uri = args[:advertised_route_source_router_uri] if args.key?(:advertised_route_source_router_uri)
          @dest_ip_range = args[:dest_ip_range] if args.key?(:dest_ip_range)
          @dest_port_ranges = args[:dest_port_ranges] if args.key?(:dest_port_ranges)
          @display_name = args[:display_name] if args.key?(:display_name)
          @instance_tags = args[:instance_tags] if args.key?(:instance_tags)
          @ncc_hub_route_uri = args[:ncc_hub_route_uri] if args.key?(:ncc_hub_route_uri)
          @ncc_hub_uri = args[:ncc_hub_uri] if args.key?(:ncc_hub_uri)
          @ncc_spoke_uri = args[:ncc_spoke_uri] if args.key?(:ncc_spoke_uri)
          @network_uri = args[:network_uri] if args.key?(:network_uri)
          @next_hop = args[:next_hop] if args.key?(:next_hop)
          @next_hop_network_uri = args[:next_hop_network_uri] if args.key?(:next_hop_network_uri)
          @next_hop_type = args[:next_hop_type] if args.key?(:next_hop_type)
          @next_hop_uri = args[:next_hop_uri] if args.key?(:next_hop_uri)
          @originating_route_display_name = args[:originating_route_display_name] if args.key?(:originating_route_display_name)
          @originating_route_uri = args[:originating_route_uri] if args.key?(:originating_route_uri)
          @priority = args[:priority] if args.key?(:priority)
          @protocols = args[:protocols] if args.key?(:protocols)
          @region = args[:region] if args.key?(:region)
          @route_scope = args[:route_scope] if args.key?(:route_scope)
          @route_type = args[:route_type] if args.key?(:route_type)
          @src_ip_range = args[:src_ip_range] if args.key?(:src_ip_range)
          @src_port_ranges = args[:src_port_ranges] if args.key?(:src_port_ranges)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # For display only. Metadata associated with a serverless public connection.
      class ServerlessExternalConnectionInfo
        include Google::Apis::Core::Hashable
      
        # Selected starting IP address, from the Google dynamic address pool.
        # Corresponds to the JSON property `selectedIpAddress`
        # @return [String]
        attr_accessor :selected_ip_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selected_ip_address = args[:selected_ip_address] if args.key?(:selected_ip_address)
        end
      end
      
      # For display only. Metadata associated with the serverless network endpoint
      # group backend.
      class ServerlessNegInfo
        include Google::Apis::Core::Hashable
      
        # URI of the serverless network endpoint group.
        # Corresponds to the JSON property `negUri`
        # @return [String]
        attr_accessor :neg_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @neg_uri = args[:neg_uri] if args.key?(:neg_uri)
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
      
      # Response for the `ShowEffectiveFlowLogsConfigs` method.
      class ShowEffectiveFlowLogsConfigsResponse
        include Google::Apis::Core::Hashable
      
        # List of Effective Vpc Flow Logs configurations.
        # Corresponds to the JSON property `effectiveFlowLogsConfigs`
        # @return [Array<Google::Apis::NetworkmanagementV1::EffectiveVpcFlowLogsConfig>]
        attr_accessor :effective_flow_logs_configs
      
        # Page token to fetch the next set of configurations.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached (when querying all locations with `-`).
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effective_flow_logs_configs = args[:effective_flow_logs_configs] if args.key?(:effective_flow_logs_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Probing results for a single edge device.
      class SingleEdgeResponse
        include Google::Apis::Core::Hashable
      
        # Representation of a network edge location as per https://cloud.google.com/vpc/
        # docs/edge-locations.
        # Corresponds to the JSON property `destinationEgressLocation`
        # @return [Google::Apis::NetworkmanagementV1::EdgeLocation]
        attr_accessor :destination_egress_location
      
        # Router name in the format '`router`.`metroshard`'. For example: pf01.aaa01,
        # pr02.aaa01.
        # Corresponds to the JSON property `destinationRouter`
        # @return [String]
        attr_accessor :destination_router
      
        # Describes measured latency distribution.
        # Corresponds to the JSON property `probingLatency`
        # @return [Google::Apis::NetworkmanagementV1::LatencyDistribution]
        attr_accessor :probing_latency
      
        # The overall result of active probing for this egress device.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # Number of probes sent.
        # Corresponds to the JSON property `sentProbeCount`
        # @return [Fixnum]
        attr_accessor :sent_probe_count
      
        # Number of probes that reached the destination.
        # Corresponds to the JSON property `successfulProbeCount`
        # @return [Fixnum]
        attr_accessor :successful_probe_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_egress_location = args[:destination_egress_location] if args.key?(:destination_egress_location)
          @destination_router = args[:destination_router] if args.key?(:destination_router)
          @probing_latency = args[:probing_latency] if args.key?(:probing_latency)
          @result = args[:result] if args.key?(:result)
          @sent_probe_count = args[:sent_probe_count] if args.key?(:sent_probe_count)
          @successful_probe_count = args[:successful_probe_count] if args.key?(:successful_probe_count)
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
      
        # For display only. Metadata associated with an App Engine version.
        # Corresponds to the JSON property `appEngineVersion`
        # @return [Google::Apis::NetworkmanagementV1::AppEngineVersionInfo]
        attr_accessor :app_engine_version
      
        # This is a step that leads to the final state Drop.
        # Corresponds to the JSON property `causesDrop`
        # @return [Boolean]
        attr_accessor :causes_drop
        alias_method :causes_drop?, :causes_drop
      
        # For display only. Metadata associated with a Cloud Function.
        # Corresponds to the JSON property `cloudFunction`
        # @return [Google::Apis::NetworkmanagementV1::CloudFunctionInfo]
        attr_accessor :cloud_function
      
        # For display only. Metadata associated with a Cloud Run revision.
        # Corresponds to the JSON property `cloudRunRevision`
        # @return [Google::Apis::NetworkmanagementV1::CloudRunRevisionInfo]
        attr_accessor :cloud_run_revision
      
        # For display only. Metadata associated with a Cloud SQL instance.
        # Corresponds to the JSON property `cloudSqlInstance`
        # @return [Google::Apis::NetworkmanagementV1::CloudSqlInstanceInfo]
        attr_accessor :cloud_sql_instance
      
        # Details of the final state "deliver" and associated resource.
        # Corresponds to the JSON property `deliver`
        # @return [Google::Apis::NetworkmanagementV1::DeliverInfo]
        attr_accessor :deliver
      
        # A description of the step. Usually this is a summary of the state.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # For display only. Metadata associated with a serverless direct VPC egress
        # connection.
        # Corresponds to the JSON property `directVpcEgressConnection`
        # @return [Google::Apis::NetworkmanagementV1::DirectVpcEgressConnectionInfo]
        attr_accessor :direct_vpc_egress_connection
      
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
      
        # For display only. Metadata associated with a VPC firewall rule, an implied VPC
        # firewall rule, or a firewall policy rule.
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
      
        # For display only. Metadata associated with a Google Kubernetes Engine (GKE)
        # cluster master.
        # Corresponds to the JSON property `gkeMaster`
        # @return [Google::Apis::NetworkmanagementV1::GkeMasterInfo]
        attr_accessor :gke_master
      
        # For display only. Metadata associated with a Google Kubernetes Engine (GKE)
        # Pod.
        # Corresponds to the JSON property `gkePod`
        # @return [Google::Apis::NetworkmanagementV1::GkePodInfo]
        attr_accessor :gke_pod
      
        # For display only. Metadata associated with ARRIVE_AT_GOOGLE_MANAGED_SERVICE
        # state.
        # Corresponds to the JSON property `googleManagedService`
        # @return [Google::Apis::NetworkmanagementV1::GoogleManagedServiceInfo]
        attr_accessor :google_managed_service
      
        # For display only. Details of a Google Service sending packets to a VPC network.
        # Although the source IP might be a publicly routable address, some Google
        # Services use special routes within Google production infrastructure to reach
        # Compute Engine Instances. https://cloud.google.com/vpc/docs/routes#
        # special_return_paths
        # Corresponds to the JSON property `googleService`
        # @return [Google::Apis::NetworkmanagementV1::GoogleServiceInfo]
        attr_accessor :google_service
      
        # For display only. Metadata associated with a hybrid subnet.
        # Corresponds to the JSON property `hybridSubnet`
        # @return [Google::Apis::NetworkmanagementV1::HybridSubnetInfo]
        attr_accessor :hybrid_subnet
      
        # For display only. Metadata associated with a Compute Engine instance.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::NetworkmanagementV1::InstanceInfo]
        attr_accessor :instance
      
        # For display only. Metadata associated with an Interconnect attachment.
        # Corresponds to the JSON property `interconnectAttachment`
        # @return [Google::Apis::NetworkmanagementV1::InterconnectAttachmentInfo]
        attr_accessor :interconnect_attachment
      
        # For display only. Contains information about why IP masquerading was skipped
        # for the packet.
        # Corresponds to the JSON property `ipMasqueradingSkipped`
        # @return [Google::Apis::NetworkmanagementV1::IpMasqueradingSkippedInfo]
        attr_accessor :ip_masquerading_skipped
      
        # For display only. Metadata associated with a load balancer.
        # Corresponds to the JSON property `loadBalancer`
        # @return [Google::Apis::NetworkmanagementV1::LoadBalancerInfo]
        attr_accessor :load_balancer
      
        # For display only. Metadata associated with the load balancer backend.
        # Corresponds to the JSON property `loadBalancerBackendInfo`
        # @return [Google::Apis::NetworkmanagementV1::LoadBalancerBackendInfo]
        attr_accessor :load_balancer_backend_info
      
        # For display only. Metadata associated with NAT.
        # Corresponds to the JSON property `nat`
        # @return [Google::Apis::NetworkmanagementV1::NatInfo]
        attr_accessor :nat
      
        # For display only. Metadata associated with a Compute Engine network.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::NetworkmanagementV1::NetworkInfo]
        attr_accessor :network
      
        # Project ID that contains the configuration this step is validating.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # For display only. Metadata associated with ProxyConnection.
        # Corresponds to the JSON property `proxyConnection`
        # @return [Google::Apis::NetworkmanagementV1::ProxyConnectionInfo]
        attr_accessor :proxy_connection
      
        # For display only. Metadata associated with a Redis Cluster.
        # Corresponds to the JSON property `redisCluster`
        # @return [Google::Apis::NetworkmanagementV1::RedisClusterInfo]
        attr_accessor :redis_cluster
      
        # For display only. Metadata associated with a Cloud Redis Instance.
        # Corresponds to the JSON property `redisInstance`
        # @return [Google::Apis::NetworkmanagementV1::RedisInstanceInfo]
        attr_accessor :redis_instance
      
        # For display only. Metadata associated with a Compute Engine route.
        # Corresponds to the JSON property `route`
        # @return [Google::Apis::NetworkmanagementV1::RouteInfo]
        attr_accessor :route
      
        # For display only. Metadata associated with a serverless public connection.
        # Corresponds to the JSON property `serverlessExternalConnection`
        # @return [Google::Apis::NetworkmanagementV1::ServerlessExternalConnectionInfo]
        attr_accessor :serverless_external_connection
      
        # For display only. Metadata associated with the serverless network endpoint
        # group backend.
        # Corresponds to the JSON property `serverlessNeg`
        # @return [Google::Apis::NetworkmanagementV1::ServerlessNegInfo]
        attr_accessor :serverless_neg
      
        # Each step is in one of the pre-defined states.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # For display only. Metadata associated with Storage Bucket.
        # Corresponds to the JSON property `storageBucket`
        # @return [Google::Apis::NetworkmanagementV1::StorageBucketInfo]
        attr_accessor :storage_bucket
      
        # For display only. Metadata associated with a VPC connector.
        # Corresponds to the JSON property `vpcConnector`
        # @return [Google::Apis::NetworkmanagementV1::VpcConnectorInfo]
        attr_accessor :vpc_connector
      
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
          @app_engine_version = args[:app_engine_version] if args.key?(:app_engine_version)
          @causes_drop = args[:causes_drop] if args.key?(:causes_drop)
          @cloud_function = args[:cloud_function] if args.key?(:cloud_function)
          @cloud_run_revision = args[:cloud_run_revision] if args.key?(:cloud_run_revision)
          @cloud_sql_instance = args[:cloud_sql_instance] if args.key?(:cloud_sql_instance)
          @deliver = args[:deliver] if args.key?(:deliver)
          @description = args[:description] if args.key?(:description)
          @direct_vpc_egress_connection = args[:direct_vpc_egress_connection] if args.key?(:direct_vpc_egress_connection)
          @drop = args[:drop] if args.key?(:drop)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @firewall = args[:firewall] if args.key?(:firewall)
          @forward = args[:forward] if args.key?(:forward)
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @gke_master = args[:gke_master] if args.key?(:gke_master)
          @gke_pod = args[:gke_pod] if args.key?(:gke_pod)
          @google_managed_service = args[:google_managed_service] if args.key?(:google_managed_service)
          @google_service = args[:google_service] if args.key?(:google_service)
          @hybrid_subnet = args[:hybrid_subnet] if args.key?(:hybrid_subnet)
          @instance = args[:instance] if args.key?(:instance)
          @interconnect_attachment = args[:interconnect_attachment] if args.key?(:interconnect_attachment)
          @ip_masquerading_skipped = args[:ip_masquerading_skipped] if args.key?(:ip_masquerading_skipped)
          @load_balancer = args[:load_balancer] if args.key?(:load_balancer)
          @load_balancer_backend_info = args[:load_balancer_backend_info] if args.key?(:load_balancer_backend_info)
          @nat = args[:nat] if args.key?(:nat)
          @network = args[:network] if args.key?(:network)
          @project_id = args[:project_id] if args.key?(:project_id)
          @proxy_connection = args[:proxy_connection] if args.key?(:proxy_connection)
          @redis_cluster = args[:redis_cluster] if args.key?(:redis_cluster)
          @redis_instance = args[:redis_instance] if args.key?(:redis_instance)
          @route = args[:route] if args.key?(:route)
          @serverless_external_connection = args[:serverless_external_connection] if args.key?(:serverless_external_connection)
          @serverless_neg = args[:serverless_neg] if args.key?(:serverless_neg)
          @state = args[:state] if args.key?(:state)
          @storage_bucket = args[:storage_bucket] if args.key?(:storage_bucket)
          @vpc_connector = args[:vpc_connector] if args.key?(:vpc_connector)
          @vpn_gateway = args[:vpn_gateway] if args.key?(:vpn_gateway)
          @vpn_tunnel = args[:vpn_tunnel] if args.key?(:vpn_tunnel)
        end
      end
      
      # For display only. Metadata associated with Storage Bucket.
      class StorageBucketInfo
        include Google::Apis::Core::Hashable
      
        # Cloud Storage Bucket name.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
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
      
      # Trace represents one simulated packet forwarding path. * Each trace contains
      # multiple ordered steps. * Each step is in a particular state with associated
      # configuration. * State is categorized as final or non-final states. * Each
      # final state has a reason associated. * Each trace must end with a final state (
      # the last step). ``` |---------------------Trace----------------------| Step1(
      # State) Step2(State) --- StepN(State(final)) ```
      class Trace
        include Google::Apis::Core::Hashable
      
        # For display only. The specification of the endpoints for the test.
        # EndpointInfo is derived from source and destination Endpoint and validated by
        # the backend data plane model.
        # Corresponds to the JSON property `endpointInfo`
        # @return [Google::Apis::NetworkmanagementV1::EndpointInfo]
        attr_accessor :endpoint_info
      
        # ID of trace. For forward traces, this ID is unique for each trace. For return
        # traces, it matches ID of associated forward trace. A single forward trace can
        # be associated with none, one or more than one return trace.
        # Corresponds to the JSON property `forwardTraceId`
        # @return [Fixnum]
        attr_accessor :forward_trace_id
      
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
          @forward_trace_id = args[:forward_trace_id] if args.key?(:forward_trace_id)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # For display only. Metadata associated with a VPC connector.
      class VpcConnectorInfo
        include Google::Apis::Core::Hashable
      
        # Name of a VPC connector.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Location in which the VPC connector is deployed.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # URI of a VPC connector.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @location = args[:location] if args.key?(:location)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A configuration to generate VPC Flow Logs.
      class VpcFlowLogsConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The aggregation interval for the logs. Default value is
        # INTERVAL_5_SEC.
        # Corresponds to the JSON property `aggregationInterval`
        # @return [String]
        attr_accessor :aggregation_interval
      
        # Output only. The time the config was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Determines whether to include cross project annotations in the logs.
        # This field is available only for organization configurations. If not specified
        # in org configs will be set to CROSS_PROJECT_METADATA_ENABLED.
        # Corresponds to the JSON property `crossProjectMetadata`
        # @return [String]
        attr_accessor :cross_project_metadata
      
        # Optional. The user-supplied description of the VPC Flow Logs configuration.
        # Maximum of 512 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Export filter used to define which VPC Flow Logs should be logged.
        # Corresponds to the JSON property `filterExpr`
        # @return [String]
        attr_accessor :filter_expr
      
        # Optional. The value of the field must be in (0, 1]. The sampling rate of VPC
        # Flow Logs where 1.0 means all collected logs are reported. Setting the
        # sampling rate to 0.0 is not allowed. If you want to disable VPC Flow Logs, use
        # the state field instead. Default value is 1.0.
        # Corresponds to the JSON property `flowSampling`
        # @return [Float]
        attr_accessor :flow_sampling
      
        # Traffic will be logged from the Interconnect Attachment. Format: projects/`
        # project_id`/regions/`region`/interconnectAttachments/`name`
        # Corresponds to the JSON property `interconnectAttachment`
        # @return [String]
        attr_accessor :interconnect_attachment
      
        # Optional. Resource labels to represent user-provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. Configures whether all, none or a subset of metadata fields should
        # be added to the reported VPC flow logs. Default value is INCLUDE_ALL_METADATA.
        # Corresponds to the JSON property `metadata`
        # @return [String]
        attr_accessor :metadata
      
        # Optional. Custom metadata fields to include in the reported VPC flow logs. Can
        # only be specified if "metadata" was set to CUSTOM_METADATA.
        # Corresponds to the JSON property `metadataFields`
        # @return [Array<String>]
        attr_accessor :metadata_fields
      
        # Identifier. Unique name of the configuration. The name can have one of the
        # following forms: - For project-level configurations: `projects/`project_id`/
        # locations/global/vpcFlowLogsConfigs/`vpc_flow_logs_config_id`` - For
        # organization-level configurations: `organizations/`organization_id`/locations/
        # global/vpcFlowLogsConfigs/`vpc_flow_logs_config_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments
        # within the network. Format: projects/`project_id`/global/networks/`name`
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. The state of the VPC Flow Log configuration. Default value is
        # ENABLED. When creating a new configuration, it must be enabled. Setting state=
        # DISABLED will pause the log generation for this config.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Traffic will be logged from VMs within the subnetwork. Format: projects/`
        # project_id`/regions/`region`/subnetworks/`name`
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        # Output only. Describes the state of the configured target resource for
        # diagnostic purposes.
        # Corresponds to the JSON property `targetResourceState`
        # @return [String]
        attr_accessor :target_resource_state
      
        # Output only. The time the config was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Traffic will be logged from the VPN Tunnel. Format: projects/`project_id`/
        # regions/`region`/vpnTunnels/`name`
        # Corresponds to the JSON property `vpnTunnel`
        # @return [String]
        attr_accessor :vpn_tunnel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_interval = args[:aggregation_interval] if args.key?(:aggregation_interval)
          @create_time = args[:create_time] if args.key?(:create_time)
          @cross_project_metadata = args[:cross_project_metadata] if args.key?(:cross_project_metadata)
          @description = args[:description] if args.key?(:description)
          @filter_expr = args[:filter_expr] if args.key?(:filter_expr)
          @flow_sampling = args[:flow_sampling] if args.key?(:flow_sampling)
          @interconnect_attachment = args[:interconnect_attachment] if args.key?(:interconnect_attachment)
          @labels = args[:labels] if args.key?(:labels)
          @metadata = args[:metadata] if args.key?(:metadata)
          @metadata_fields = args[:metadata_fields] if args.key?(:metadata_fields)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @state = args[:state] if args.key?(:state)
          @subnet = args[:subnet] if args.key?(:subnet)
          @target_resource_state = args[:target_resource_state] if args.key?(:target_resource_state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vpn_tunnel = args[:vpn_tunnel] if args.key?(:vpn_tunnel)
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
      
        # Name of a Google Cloud region where this VPN gateway is configured.
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
      
        # Name of a Google Cloud region where this VPN tunnel is configured.
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
