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
    module AccessapprovalV1
      
      # Access Approval service account related to a project/folder/organization.
      class AccessApprovalServiceAccount
        include Google::Apis::Core::Hashable
      
        # Email address of the service account.
        # Corresponds to the JSON property `accountEmail`
        # @return [String]
        attr_accessor :account_email
      
        # The resource name of the Access Approval service account. Format is one of: * "
        # projects/`project`/serviceAccount" * "folders/`folder`/serviceAccount" * "
        # organizations/`organization`/serviceAccount"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_email = args[:account_email] if args.key?(:account_email)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Settings on a Project/Folder/Organization related to Access Approval.
      class AccessApprovalSettings
        include Google::Apis::Core::Hashable
      
        # The asymmetric crypto key version to use for signing approval requests. Empty
        # active_key_version indicates that a Google-managed key should be used for
        # signing. This property will be ignored if set by an ancestor of this resource,
        # and new non-empty values may not be set.
        # Corresponds to the JSON property `activeKeyVersion`
        # @return [String]
        attr_accessor :active_key_version
      
        # Output only. This field is read only (not settable via
        # UpdateAccessApprovalSettings method). If the field is true, that indicates
        # that an ancestor of this Project or Folder has set active_key_version (this
        # field will always be unset for the organization since organizations do not
        # have ancestors).
        # Corresponds to the JSON property `ancestorHasActiveKeyVersion`
        # @return [Boolean]
        attr_accessor :ancestor_has_active_key_version
        alias_method :ancestor_has_active_key_version?, :ancestor_has_active_key_version
      
        # Output only. Field to differentiate ancestor enrolled services from locally
        # enrolled services.
        # Corresponds to the JSON property `ancestorsEnrolledServices`
        # @return [Array<Google::Apis::AccessapprovalV1::EnrolledService>]
        attr_accessor :ancestors_enrolled_services
      
        # Represents all the policies that can be set for Customer Approval.
        # Corresponds to the JSON property `approvalPolicy`
        # @return [Google::Apis::AccessapprovalV1::CustomerApprovalApprovalPolicy]
        attr_accessor :approval_policy
      
        # Represents all the policies that can be set for Customer Approval.
        # Corresponds to the JSON property `effectiveApprovalPolicy`
        # @return [Google::Apis::AccessapprovalV1::CustomerApprovalApprovalPolicy]
        attr_accessor :effective_approval_policy
      
        # Output only. This field is read only (not settable via
        # UpdateAccessApprovalSettings method). If the field is true, that indicates
        # that at least one service is enrolled for Access Approval in one or more
        # ancestors of the Project or Folder (this field will always be unset for the
        # organization since organizations do not have ancestors).
        # Corresponds to the JSON property `enrolledAncestor`
        # @return [Boolean]
        attr_accessor :enrolled_ancestor
        alias_method :enrolled_ancestor?, :enrolled_ancestor
      
        # A list of Google Cloud Services for which the given resource has Access
        # Approval enrolled. Access requests for the resource given by name against any
        # of these services contained here will be required to have explicit approval.
        # If name refers to an organization, enrollment can be done for individual
        # services. If name refers to a folder or project, enrollment can only be done
        # on an all or nothing basis. If a cloud_product is repeated in this list, the
        # first entry will be honored and all following entries will be discarded.
        # Corresponds to the JSON property `enrolledServices`
        # @return [Array<Google::Apis::AccessapprovalV1::EnrolledService>]
        attr_accessor :enrolled_services
      
        # Output only. This field is read only (not settable via
        # UpdateAccessApprovalSettings method). If the field is true, that indicates
        # that there is some configuration issue with the active_key_version configured
        # at this level in the resource hierarchy (e.g. it doesn't exist or the Access
        # Approval service account doesn't have the correct permissions on it, etc.)
        # This key version is not necessarily the effective key version at this level,
        # as key versions are inherited top-down.
        # Corresponds to the JSON property `invalidKeyVersion`
        # @return [Boolean]
        attr_accessor :invalid_key_version
        alias_method :invalid_key_version?, :invalid_key_version
      
        # The resource name of the settings. Format is one of: * "projects/`project`/
        # accessApprovalSettings" * "folders/`folder`/accessApprovalSettings" * "
        # organizations/`organization`/accessApprovalSettings"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of email addresses to which notifications relating to approval requests
        # should be sent. Notifications relating to a resource will be sent to all
        # emails in the settings of ancestor resources of that resource. A maximum of 50
        # email addresses are allowed.
        # Corresponds to the JSON property `notificationEmails`
        # @return [Array<String>]
        attr_accessor :notification_emails
      
        # Optional. A pubsub topic that notifications relating to access approval are
        # published to. Notifications include pre-approved accesses.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        # This field is used to set a preference for granularity of an access approval
        # request. If true, Google personnel will be asked to send resource-level
        # requests when possible. If false, Google personnel will be asked to send
        # requests at the project level.
        # Corresponds to the JSON property `preferNoBroadApprovalRequests`
        # @return [Boolean]
        attr_accessor :prefer_no_broad_approval_requests
        alias_method :prefer_no_broad_approval_requests?, :prefer_no_broad_approval_requests
      
        # Set the default access approval request expiration time. This value is able to
        # be set directly by the customer at the time of approval, overriding this
        # suggested value. We recommend setting this value to 30 days.
        # Corresponds to the JSON property `preferredRequestExpirationDays`
        # @return [Fixnum]
        attr_accessor :preferred_request_expiration_days
      
        # Optional. A setting that indicates the maximum scope of an Access Approval
        # request: either organization, folder, or project. Google administrators will
        # be asked to send requests no broader than the configured scope.
        # Corresponds to the JSON property `requestScopeMaxWidthPreference`
        # @return [String]
        attr_accessor :request_scope_max_width_preference
      
        # Optional. When enabled, Google will only be able to send approval requests for
        # access reasons with a customer accessible case ID in the reason detail. Also
        # known as "Require customer initiated support case justification"
        # Corresponds to the JSON property `requireCustomerVisibleJustification`
        # @return [Boolean]
        attr_accessor :require_customer_visible_justification
        alias_method :require_customer_visible_justification?, :require_customer_visible_justification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_key_version = args[:active_key_version] if args.key?(:active_key_version)
          @ancestor_has_active_key_version = args[:ancestor_has_active_key_version] if args.key?(:ancestor_has_active_key_version)
          @ancestors_enrolled_services = args[:ancestors_enrolled_services] if args.key?(:ancestors_enrolled_services)
          @approval_policy = args[:approval_policy] if args.key?(:approval_policy)
          @effective_approval_policy = args[:effective_approval_policy] if args.key?(:effective_approval_policy)
          @enrolled_ancestor = args[:enrolled_ancestor] if args.key?(:enrolled_ancestor)
          @enrolled_services = args[:enrolled_services] if args.key?(:enrolled_services)
          @invalid_key_version = args[:invalid_key_version] if args.key?(:invalid_key_version)
          @name = args[:name] if args.key?(:name)
          @notification_emails = args[:notification_emails] if args.key?(:notification_emails)
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
          @prefer_no_broad_approval_requests = args[:prefer_no_broad_approval_requests] if args.key?(:prefer_no_broad_approval_requests)
          @preferred_request_expiration_days = args[:preferred_request_expiration_days] if args.key?(:preferred_request_expiration_days)
          @request_scope_max_width_preference = args[:request_scope_max_width_preference] if args.key?(:request_scope_max_width_preference)
          @require_customer_visible_justification = args[:require_customer_visible_justification] if args.key?(:require_customer_visible_justification)
        end
      end
      
      # Physical assigned office and physical location of the Google administrator
      # performing the access.
      class AccessLocations
        include Google::Apis::Core::Hashable
      
        # The "home office" location of the Google administrator. A two-letter country
        # code (ISO 3166-1 alpha-2), such as "US", "DE" or "GB" or a region code. In
        # some limited situations Google systems may refer refer to a region code
        # instead of a country code. Possible Region Codes: * ASI: Asia * EUR: Europe *
        # OCE: Oceania * AFR: Africa * NAM: North America * SAM: South America * ANT:
        # Antarctica * ANY: Any location
        # Corresponds to the JSON property `principalOfficeCountry`
        # @return [String]
        attr_accessor :principal_office_country
      
        # Physical location of the Google administrator at the time of the access. A two-
        # letter country code (ISO 3166-1 alpha-2), such as "US", "DE" or "GB" or a
        # region code. In some limited situations Google systems may refer refer to a
        # region code instead of a country code. Possible Region Codes: * ASI: Asia *
        # EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America * SAM: South
        # America * ANT: Antarctica * ANY: Any location
        # Corresponds to the JSON property `principalPhysicalLocationCountry`
        # @return [String]
        attr_accessor :principal_physical_location_country
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal_office_country = args[:principal_office_country] if args.key?(:principal_office_country)
          @principal_physical_location_country = args[:principal_physical_location_country] if args.key?(:principal_physical_location_country)
        end
      end
      
      # 
      class AccessReason
        include Google::Apis::Core::Hashable
      
        # More detail about certain reason types. See comments for each type above.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Type of access reason.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A request for the customer to approve access to a resource.
      class ApprovalRequest
        include Google::Apis::Core::Hashable
      
        # A decision that has been made to approve access to a resource.
        # Corresponds to the JSON property `approve`
        # @return [Google::Apis::AccessapprovalV1::ApproveDecision]
        attr_accessor :approve
      
        # A decision that has been made to dismiss an approval request.
        # Corresponds to the JSON property `dismiss`
        # @return [Google::Apis::AccessapprovalV1::DismissDecision]
        attr_accessor :dismiss
      
        # The resource name of the request. Format is "`projects|folders|organizations`/`
        # id`/approvalRequests/`approval_request`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time at which approval was requested.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # This field contains the augmented information of the request. Requires
        # augmented administrative access to be enabled.
        # Corresponds to the JSON property `requestedAugmentedInfo`
        # @return [Google::Apis::AccessapprovalV1::AugmentedInfo]
        attr_accessor :requested_augmented_info
      
        # The requested access duration.
        # Corresponds to the JSON property `requestedDuration`
        # @return [String]
        attr_accessor :requested_duration
      
        # The original requested expiration for the approval. Calculated by adding the
        # requested_duration to the request_time.
        # Corresponds to the JSON property `requestedExpiration`
        # @return [String]
        attr_accessor :requested_expiration
      
        # Physical assigned office and physical location of the Google administrator
        # performing the access.
        # Corresponds to the JSON property `requestedLocations`
        # @return [Google::Apis::AccessapprovalV1::AccessLocations]
        attr_accessor :requested_locations
      
        # The access reason for which approval is being requested.
        # Corresponds to the JSON property `requestedReason`
        # @return [Google::Apis::AccessapprovalV1::AccessReason]
        attr_accessor :requested_reason
      
        # The resource for which approval is being requested. The format of the resource
        # name is defined at https://cloud.google.com/apis/design/resource_names. The
        # resource name here may either be a "full" resource name (e.g. "//library.
        # googleapis.com/shelves/shelf1/books/book2") or a "relative" resource name (e.g.
        # "shelves/shelf1/books/book2") as described in the resource name specification.
        # Corresponds to the JSON property `requestedResourceName`
        # @return [String]
        attr_accessor :requested_resource_name
      
        # The properties associated with the resource of the request.
        # Corresponds to the JSON property `requestedResourceProperties`
        # @return [Google::Apis::AccessapprovalV1::ResourceProperties]
        attr_accessor :requested_resource_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approve = args[:approve] if args.key?(:approve)
          @dismiss = args[:dismiss] if args.key?(:dismiss)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
          @requested_augmented_info = args[:requested_augmented_info] if args.key?(:requested_augmented_info)
          @requested_duration = args[:requested_duration] if args.key?(:requested_duration)
          @requested_expiration = args[:requested_expiration] if args.key?(:requested_expiration)
          @requested_locations = args[:requested_locations] if args.key?(:requested_locations)
          @requested_reason = args[:requested_reason] if args.key?(:requested_reason)
          @requested_resource_name = args[:requested_resource_name] if args.key?(:requested_resource_name)
          @requested_resource_properties = args[:requested_resource_properties] if args.key?(:requested_resource_properties)
        end
      end
      
      # Request to approve an ApprovalRequest.
      class ApproveApprovalRequestMessage
        include Google::Apis::Core::Hashable
      
        # The expiration time of this approval.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
        end
      end
      
      # A decision that has been made to approve access to a resource.
      class ApproveDecision
        include Google::Apis::Core::Hashable
      
        # The time at which approval was granted.
        # Corresponds to the JSON property `approveTime`
        # @return [String]
        attr_accessor :approve_time
      
        # True when the request has been auto-approved.
        # Corresponds to the JSON property `autoApproved`
        # @return [Boolean]
        attr_accessor :auto_approved
        alias_method :auto_approved?, :auto_approved
      
        # The time at which the approval expires.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # If set, denotes the timestamp at which the approval is invalidated.
        # Corresponds to the JSON property `invalidateTime`
        # @return [String]
        attr_accessor :invalidate_time
      
        # True when the request has been approved by the customer's defined policy.
        # Corresponds to the JSON property `policyApproved`
        # @return [Boolean]
        attr_accessor :policy_approved
        alias_method :policy_approved?, :policy_approved
      
        # Information about the digital signature of the resource.
        # Corresponds to the JSON property `signatureInfo`
        # @return [Google::Apis::AccessapprovalV1::SignatureInfo]
        attr_accessor :signature_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approve_time = args[:approve_time] if args.key?(:approve_time)
          @auto_approved = args[:auto_approved] if args.key?(:auto_approved)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @invalidate_time = args[:invalidate_time] if args.key?(:invalidate_time)
          @policy_approved = args[:policy_approved] if args.key?(:policy_approved)
          @signature_info = args[:signature_info] if args.key?(:signature_info)
        end
      end
      
      # This field contains the augmented information of the request. Requires
      # augmented administrative access to be enabled.
      class AugmentedInfo
        include Google::Apis::Core::Hashable
      
        # For command-line tools, the full command-line exactly as entered by the actor
        # without adding any additional characters (such as quotation marks).
        # Corresponds to the JSON property `command`
        # @return [String]
        attr_accessor :command
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command = args[:command] if args.key?(:command)
        end
      end
      
      # Represents all the policies that can be set for Customer Approval.
      class CustomerApprovalApprovalPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. Policy for approval based on the justification given.
        # Corresponds to the JSON property `justificationBasedApprovalPolicy`
        # @return [String]
        attr_accessor :justification_based_approval_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @justification_based_approval_policy = args[:justification_based_approval_policy] if args.key?(:justification_based_approval_policy)
        end
      end
      
      # Request to dismiss an approval request.
      class DismissApprovalRequestMessage
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A decision that has been made to dismiss an approval request.
      class DismissDecision
        include Google::Apis::Core::Hashable
      
        # The time at which the approval request was dismissed.
        # Corresponds to the JSON property `dismissTime`
        # @return [String]
        attr_accessor :dismiss_time
      
        # This field will be true if the ApprovalRequest was implicitly dismissed due to
        # inaction by the access approval approvers (the request is not acted on by the
        # approvers before the exiration time).
        # Corresponds to the JSON property `implicit`
        # @return [Boolean]
        attr_accessor :implicit
        alias_method :implicit?, :implicit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dismiss_time = args[:dismiss_time] if args.key?(:dismiss_time)
          @implicit = args[:implicit] if args.key?(:implicit)
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
      
      # Represents the enrollment of a cloud resource into a specific service.
      class EnrolledService
        include Google::Apis::Core::Hashable
      
        # The product for which Access Approval will be enrolled. Allowed values are
        # listed below (case-sensitive): * all * GA * Access Context Manager * Anthos
        # Identity Service * AlloyDB for PostgreSQL * Apigee * Application Integration *
        # App Hub * Artifact Registry * Anthos Service Mesh * Access Transparency *
        # BigQuery * Certificate Authority Service * Cloud Bigtable * CCAI Assist and
        # Knowledge * Cloud Dataflow * Cloud Dataproc * CEP Security Gateway *
        # Compliance Evaluation Service * Cloud Firestore * Cloud Healthcare API *
        # Chronicle * Cloud AI Companion Gateway - Titan * Google Cloud Armor * Cloud
        # Asset Inventory * Cloud Asset Search * Cloud Deploy * Cloud DNS * Cloud
        # Latency * Cloud Memorystore for Redis * CloudNet Control * Cloud Riptide *
        # Cloud Tasks * Cloud Trace * Cloud Data Transfer * Cloud Composer * Integration
        # Connectors * Contact Center AI Insights * Cloud Pub/Sub * Cloud Run * Resource
        # Manager * Cloud Spanner * Database Center * Cloud Dataform * Cloud Data Fusion
        # * Dataplex * Dialogflow Customer Experience Edition * Cloud DLP * Document AI *
        # Edge Container * Edge Network * Cloud EKM * Eventarc * Firebase Data Connect *
        # Firebase Rules * App Engine * Cloud Build * Compute Engine * Cloud Functions (
        # 2nd Gen) * Cloud Filestore * Cloud Interconnect * Cloud NetApp Volumes * Cloud
        # Storage * Generative AI App Builder * Google Kubernetes Engine * Backup for
        # GKE API * GKE Connect * GKE Hub * Hoverboard * Cloud HSM * Cloud Identity and
        # Access Management * Cloud Identity-Aware Proxy * Infrastructure Manager *
        # Identity Storage Service * Key Access Justifications * Cloud Key Management
        # Service * Cloud Logging * Looker (Google Cloud core) * Looker Studio *
        # Management Hub * Model Armor * Cloud Monitoring * Cloud NAT * Connectivity Hub
        # * External passthrough Network Load Balancer * OIDC One * Organization Policy
        # Service * Org Lifecycle * Persistent Disk * Parameter Manager * Private
        # Services Access * Regional Internal Application Load Balancer * Storage Batch
        # Operations * Cloud Security Command Center * Secure Source Manager * Seeker *
        # Service Provisioning * Speaker ID * Secret Manager * Cloud SQL * Cloud Speech-
        # to-Text * Traffic Director * Cloud Text-to-Speech * USPS Andromeda * Vertex AI
        # * Virtual Private Cloud (VPC) * VPC Access * VPC Service Controls
        # Troubleshooter * VPC virtnet * Cloud Workstations * Web Risk Note: These
        # values are supported as input for legacy purposes, but will not be returned
        # from the API. * all * ga-only * appengine.googleapis.com * artifactregistry.
        # googleapis.com * bigquery.googleapis.com * bigtable.googleapis.com * container.
        # googleapis.com * cloudkms.googleapis.com * cloudresourcemanager.googleapis.com
        # * cloudsql.googleapis.com * compute.googleapis.com * dataflow.googleapis.com *
        # dataproc.googleapis.com * dlp.googleapis.com * iam.googleapis.com * logging.
        # googleapis.com * orgpolicy.googleapis.com * pubsub.googleapis.com * spanner.
        # googleapis.com * secretmanager.googleapis.com * speakerid.googleapis.com *
        # storage.googleapis.com Calls to UpdateAccessApprovalSettings using 'all' or
        # any of the XXX.googleapis.com will be translated to the associated product
        # name ('all', 'App Engine', etc.). Note: 'all' will enroll the resource in all
        # products supported at both 'GA' and 'Preview' levels. More information about
        # levels of support is available at https://cloud.google.com/access-approval/
        # docs/supported-services
        # Corresponds to the JSON property `cloudProduct`
        # @return [String]
        attr_accessor :cloud_product
      
        # The enrollment level of the service.
        # Corresponds to the JSON property `enrollmentLevel`
        # @return [String]
        attr_accessor :enrollment_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_product = args[:cloud_product] if args.key?(:cloud_product)
          @enrollment_level = args[:enrollment_level] if args.key?(:enrollment_level)
        end
      end
      
      # Request to invalidate an existing approval.
      class InvalidateApprovalRequestMessage
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response to listing of ApprovalRequest objects.
      class ListApprovalRequestsResponse
        include Google::Apis::Core::Hashable
      
        # Approval request details.
        # Corresponds to the JSON property `approvalRequests`
        # @return [Array<Google::Apis::AccessapprovalV1::ApprovalRequest>]
        attr_accessor :approval_requests
      
        # Token to retrieve the next page of results, or empty if there are no more.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_requests = args[:approval_requests] if args.key?(:approval_requests)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The properties associated with the resource of the request.
      class ResourceProperties
        include Google::Apis::Core::Hashable
      
        # Whether an approval will exclude the descendants of the resource being
        # requested.
        # Corresponds to the JSON property `excludesDescendants`
        # @return [Boolean]
        attr_accessor :excludes_descendants
        alias_method :excludes_descendants?, :excludes_descendants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excludes_descendants = args[:excludes_descendants] if args.key?(:excludes_descendants)
        end
      end
      
      # Information about the digital signature of the resource.
      class SignatureInfo
        include Google::Apis::Core::Hashable
      
        # The resource name of the customer CryptoKeyVersion used for signing.
        # Corresponds to the JSON property `customerKmsKeyVersion`
        # @return [String]
        attr_accessor :customer_kms_key_version
      
        # The hashing algorithm used for signature verification. It will only be present
        # in the case of Google managed keys.
        # Corresponds to the JSON property `googleKeyAlgorithm`
        # @return [String]
        attr_accessor :google_key_algorithm
      
        # The public key for the Google default signing, encoded in PEM format. The
        # signature was created using a private key which may be verified using this
        # public key.
        # Corresponds to the JSON property `googlePublicKeyPem`
        # @return [String]
        attr_accessor :google_public_key_pem
      
        # The ApprovalRequest that is serialized without the SignatureInfo message field.
        # This data is used with the hashing algorithm to generate the digital
        # signature, and it can be used for signature verification.
        # Corresponds to the JSON property `serializedApprovalRequest`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :serialized_approval_request
      
        # The digital signature.
        # Corresponds to the JSON property `signature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_kms_key_version = args[:customer_kms_key_version] if args.key?(:customer_kms_key_version)
          @google_key_algorithm = args[:google_key_algorithm] if args.key?(:google_key_algorithm)
          @google_public_key_pem = args[:google_public_key_pem] if args.key?(:google_public_key_pem)
          @serialized_approval_request = args[:serialized_approval_request] if args.key?(:serialized_approval_request)
          @signature = args[:signature] if args.key?(:signature)
        end
      end
    end
  end
end
