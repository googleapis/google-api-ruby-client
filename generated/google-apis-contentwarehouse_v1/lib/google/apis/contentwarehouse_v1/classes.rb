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
    module ContentwarehouseV1
      
      # The identity to configure a CloudSQL instance provisioned via SLM Terraform.
      class CloudAiPlatformTenantresourceCloudSqlInstanceConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The CloudSQL instance connection name.
        # Corresponds to the JSON property `cloudSqlInstanceConnectionName`
        # @return [String]
        attr_accessor :cloud_sql_instance_connection_name
      
        # Input/Output [Optional]. The CloudSQL instance name within SLM instance. If
        # not set, a random UUIC will be generated as instance name.
        # Corresponds to the JSON property `cloudSqlInstanceName`
        # @return [String]
        attr_accessor :cloud_sql_instance_name
      
        # Input [Optional]. The KMS key name or the KMS grant name used for CMEK
        # encryption. Only set this field when provisioning new CloudSQL instances. For
        # existing CloudSQL instances, this field will be ignored because CMEK re-
        # encryption is not supported.
        # Corresponds to the JSON property `kmsKeyReference`
        # @return [String]
        attr_accessor :kms_key_reference
      
        # Input [Optional]. MDB roles for corp access to CloudSQL instance.
        # Corresponds to the JSON property `mdbRolesForCorpAccess`
        # @return [Array<String>]
        attr_accessor :mdb_roles_for_corp_access
      
        # Output only. The SLM instance's full resource name.
        # Corresponds to the JSON property `slmInstanceName`
        # @return [String]
        attr_accessor :slm_instance_name
      
        # Input [Required]. The SLM instance template to provision CloudSQL.
        # Corresponds to the JSON property `slmInstanceTemplate`
        # @return [String]
        attr_accessor :slm_instance_template
      
        # Input [Required]. The SLM instance type to provision CloudSQL.
        # Corresponds to the JSON property `slmInstanceType`
        # @return [String]
        attr_accessor :slm_instance_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql_instance_connection_name = args[:cloud_sql_instance_connection_name] if args.key?(:cloud_sql_instance_connection_name)
          @cloud_sql_instance_name = args[:cloud_sql_instance_name] if args.key?(:cloud_sql_instance_name)
          @kms_key_reference = args[:kms_key_reference] if args.key?(:kms_key_reference)
          @mdb_roles_for_corp_access = args[:mdb_roles_for_corp_access] if args.key?(:mdb_roles_for_corp_access)
          @slm_instance_name = args[:slm_instance_name] if args.key?(:slm_instance_name)
          @slm_instance_template = args[:slm_instance_template] if args.key?(:slm_instance_template)
          @slm_instance_type = args[:slm_instance_type] if args.key?(:slm_instance_type)
        end
      end
      
      # The identity to configure a GCS bucket.
      class CloudAiPlatformTenantresourceGcsBucketConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `admins`
        # @return [Array<String>]
        attr_accessor :admins
      
        # Input/Output [Optional]. The name of a GCS bucket with max length of 63 chars.
        # If not set, a random UUID will be generated as bucket name.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Input/Output [Optional]. Only needed for per-entity tenant GCP resources.
        # During Deprovision API, the on-demand deletion will only cover the tenant GCP
        # resources with the specified entity name.
        # Corresponds to the JSON property `entityName`
        # @return [String]
        attr_accessor :entity_name
      
        # Input/Output [Optional]. The KMS key name or the KMS grant name used for CMEK
        # encryption. Only set this field when provisioning new GCS bucket. For existing
        # GCS bucket, this field will be ignored because CMEK re-encryption is not
        # supported.
        # Corresponds to the JSON property `kmsKeyReference`
        # @return [String]
        attr_accessor :kms_key_reference
      
        # Input/Output [Optional]. Only needed when the content in bucket need to be
        # garbage collected within some amount of days.
        # Corresponds to the JSON property `ttlDays`
        # @return [Fixnum]
        attr_accessor :ttl_days
      
        # Input/Output [Required]. IAM roles (viewer/admin) put on the bucket.
        # Corresponds to the JSON property `viewers`
        # @return [Array<String>]
        attr_accessor :viewers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admins = args[:admins] if args.key?(:admins)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @entity_name = args[:entity_name] if args.key?(:entity_name)
          @kms_key_reference = args[:kms_key_reference] if args.key?(:kms_key_reference)
          @ttl_days = args[:ttl_days] if args.key?(:ttl_days)
          @viewers = args[:viewers] if args.key?(:viewers)
        end
      end
      
      # The dynamic IAM bindings to be granted after tenant projects are created.
      class CloudAiPlatformTenantresourceIamPolicyBinding
        include Google::Apis::Core::Hashable
      
        # Input/Output [Required]. The member service accounts with the roles above.
        # Note: placeholders are same as the resource above.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Input/Output [Required]. The resource name that will be accessed by members,
        # which also depends on resource_type. Note: placeholders are supported in
        # resource names. For example, $`tpn` will be used when the tenant project
        # number is not ready.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Input/Output [Required]. Specifies the type of resource that will be accessed
        # by members.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Input/Output [Required]. The role for members below.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @resource = args[:resource] if args.key?(:resource)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # The configuration for a spanner database provisioning. Next ID: 8
      class CloudAiPlatformTenantresourceInfraSpannerConfig
        include Google::Apis::Core::Hashable
      
        # The options to create a spanner database. KMS key access audit logging and AxT
        # logging will be associated with the given resource name, resource type and
        # service name. Please ensure to give right options to enable correct audit
        # logging and AxT logging.
        # Corresponds to the JSON property `createDatabaseOptions`
        # @return [Google::Apis::ContentwarehouseV1::CloudAiPlatformTenantresourceInfraSpannerConfigCreateDatabaseOptions]
        attr_accessor :create_database_options
      
        # Input [Optional]. The KMS key name or the KMS grant name used for CMEK
        # encryption. Only set this field when provisioning new Infra Spanner databases.
        # For existing Infra Spanner databases, this field will be ignored because CMEK
        # re-encryption is not supported. For example, projects//locations//keyRings//
        # cryptoKeys/
        # Corresponds to the JSON property `kmsKeyReference`
        # @return [String]
        attr_accessor :kms_key_reference
      
        # Input [Required]. The file path to the spanner SDL bundle.
        # Corresponds to the JSON property `sdlBundlePath`
        # @return [String]
        attr_accessor :sdl_bundle_path
      
        # Input [Optional]. The spanner borg service account for delegating the kms key
        # to. For example, spanner-infra-cmek-nonprod@system.gserviceaccount.com, for
        # the nonprod universe.
        # Corresponds to the JSON property `spannerBorgServiceAccount`
        # @return [String]
        attr_accessor :spanner_borg_service_account
      
        # 
        # Corresponds to the JSON property `spannerLocalNamePrefix`
        # @return [String]
        attr_accessor :spanner_local_name_prefix
      
        # 
        # Corresponds to the JSON property `spannerNamespace`
        # @return [String]
        attr_accessor :spanner_namespace
      
        # Input [Required]. Every database in Spanner can be identified by the following
        # path name: /span//:
        # Corresponds to the JSON property `spannerUniverse`
        # @return [String]
        attr_accessor :spanner_universe
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_database_options = args[:create_database_options] if args.key?(:create_database_options)
          @kms_key_reference = args[:kms_key_reference] if args.key?(:kms_key_reference)
          @sdl_bundle_path = args[:sdl_bundle_path] if args.key?(:sdl_bundle_path)
          @spanner_borg_service_account = args[:spanner_borg_service_account] if args.key?(:spanner_borg_service_account)
          @spanner_local_name_prefix = args[:spanner_local_name_prefix] if args.key?(:spanner_local_name_prefix)
          @spanner_namespace = args[:spanner_namespace] if args.key?(:spanner_namespace)
          @spanner_universe = args[:spanner_universe] if args.key?(:spanner_universe)
        end
      end
      
      # The options to create a spanner database. KMS key access audit logging and AxT
      # logging will be associated with the given resource name, resource type and
      # service name. Please ensure to give right options to enable correct audit
      # logging and AxT logging.
      class CloudAiPlatformTenantresourceInfraSpannerConfigCreateDatabaseOptions
        include Google::Apis::Core::Hashable
      
        # The cloud resource name for the CMEK encryption. For example, projects//
        # locations/
        # Corresponds to the JSON property `cmekCloudResourceName`
        # @return [String]
        attr_accessor :cmek_cloud_resource_name
      
        # The cloud resource type for the CMEK encryption. For example, contentwarehouse.
        # googleapis.com/Location
        # Corresponds to the JSON property `cmekCloudResourceType`
        # @return [String]
        attr_accessor :cmek_cloud_resource_type
      
        # The service name for the CMEK encryption. For example, contentwarehouse.
        # googleapis.com
        # Corresponds to the JSON property `cmekServiceName`
        # @return [String]
        attr_accessor :cmek_service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cmek_cloud_resource_name = args[:cmek_cloud_resource_name] if args.key?(:cmek_cloud_resource_name)
          @cmek_cloud_resource_type = args[:cmek_cloud_resource_type] if args.key?(:cmek_cloud_resource_type)
          @cmek_service_name = args[:cmek_service_name] if args.key?(:cmek_service_name)
        end
      end
      
      # The identity to configure a service account.
      class CloudAiPlatformTenantresourceServiceAccountIdentity
        include Google::Apis::Core::Hashable
      
        # Output only. The service account email that has been created.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # Input/Output [Optional]. The tag that configures the service account, as
        # defined in google3/configs/production/cdpush/acl-zanzibar-cloud-prod/
        # activation_grants/activation_grants.gcl. Note: The default P4 service account
        # has the empty tag.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # The identity to configure a tenant project.
      class CloudAiPlatformTenantresourceTenantProjectConfig
        include Google::Apis::Core::Hashable
      
        # Describes the billing configuration for a new tenant project.
        # Corresponds to the JSON property `billingConfig`
        # @return [Google::Apis::ContentwarehouseV1::GoogleApiServiceconsumermanagementV1BillingConfig]
        attr_accessor :billing_config
      
        # Input/Output [Required]. The folder that holds tenant projects and folder-
        # level permissions will be automatically granted to all tenant projects under
        # the folder. Note: the valid folder format is `folders/`folder_number``.
        # Corresponds to the JSON property `folder`
        # @return [String]
        attr_accessor :folder
      
        # Input/Output [Required]. The policy bindings that are applied to the tenant
        # project during creation. At least one binding must have the role `roles/owner`
        # with either `user` or `group` type.
        # Corresponds to the JSON property `policyBindings`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleApiServiceconsumermanagementV1PolicyBinding>]
        attr_accessor :policy_bindings
      
        # Input/Output [Required]. The API services that are enabled on the tenant
        # project during creation.
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_config = args[:billing_config] if args.key?(:billing_config)
          @folder = args[:folder] if args.key?(:folder)
          @policy_bindings = args[:policy_bindings] if args.key?(:policy_bindings)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # The tenant project and tenant resources. Next ID: 10
      class CloudAiPlatformTenantresourceTenantProjectResource
        include Google::Apis::Core::Hashable
      
        # The CloudSQL instances that are provisioned under the tenant project.
        # Corresponds to the JSON property `cloudSqlInstances`
        # @return [Array<Google::Apis::ContentwarehouseV1::CloudAiPlatformTenantresourceCloudSqlInstanceConfig>]
        attr_accessor :cloud_sql_instances
      
        # The GCS buckets that are provisioned under the tenant project.
        # Corresponds to the JSON property `gcsBuckets`
        # @return [Array<Google::Apis::ContentwarehouseV1::CloudAiPlatformTenantresourceGcsBucketConfig>]
        attr_accessor :gcs_buckets
      
        # The dynamic IAM bindings that are granted under the tenant project. Note: this
        # should only add new bindings to the project if they don't exist and the
        # existing bindings won't be affected.
        # Corresponds to the JSON property `iamPolicyBindings`
        # @return [Array<Google::Apis::ContentwarehouseV1::CloudAiPlatformTenantresourceIamPolicyBinding>]
        attr_accessor :iam_policy_bindings
      
        # The Infra Spanner databases that are provisioned under the tenant project.
        # Note: this is an experimental feature.
        # Corresponds to the JSON property `infraSpannerConfigs`
        # @return [Array<Google::Apis::ContentwarehouseV1::CloudAiPlatformTenantresourceInfraSpannerConfig>]
        attr_accessor :infra_spanner_configs
      
        # Input/Output [Required]. The tag that uniquely identifies a tenant project
        # within a tenancy unit. Note: for the same tenant project tag, all tenant
        # manager operations should be idempotent.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # The identity to configure a tenant project.
        # Corresponds to the JSON property `tenantProjectConfig`
        # @return [Google::Apis::ContentwarehouseV1::CloudAiPlatformTenantresourceTenantProjectConfig]
        attr_accessor :tenant_project_config
      
        # Output only. The tenant project ID that has been created.
        # Corresponds to the JSON property `tenantProjectId`
        # @return [String]
        attr_accessor :tenant_project_id
      
        # Output only. The tenant project number that has been created.
        # Corresponds to the JSON property `tenantProjectNumber`
        # @return [Fixnum]
        attr_accessor :tenant_project_number
      
        # The service account identities (or enabled API service's P4SA) that are
        # expclicitly created under the tenant project (before JIT provisioning during
        # enabled API services).
        # Corresponds to the JSON property `tenantServiceAccounts`
        # @return [Array<Google::Apis::ContentwarehouseV1::CloudAiPlatformTenantresourceTenantServiceAccountIdentity>]
        attr_accessor :tenant_service_accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql_instances = args[:cloud_sql_instances] if args.key?(:cloud_sql_instances)
          @gcs_buckets = args[:gcs_buckets] if args.key?(:gcs_buckets)
          @iam_policy_bindings = args[:iam_policy_bindings] if args.key?(:iam_policy_bindings)
          @infra_spanner_configs = args[:infra_spanner_configs] if args.key?(:infra_spanner_configs)
          @tag = args[:tag] if args.key?(:tag)
          @tenant_project_config = args[:tenant_project_config] if args.key?(:tenant_project_config)
          @tenant_project_id = args[:tenant_project_id] if args.key?(:tenant_project_id)
          @tenant_project_number = args[:tenant_project_number] if args.key?(:tenant_project_number)
          @tenant_service_accounts = args[:tenant_service_accounts] if args.key?(:tenant_service_accounts)
        end
      end
      
      # A collection of tenant resources.
      class CloudAiPlatformTenantresourceTenantResource
        include Google::Apis::Core::Hashable
      
        # A list of P4 service accounts (go/p4sa) to provision or deprovision.
        # Corresponds to the JSON property `p4ServiceAccounts`
        # @return [Array<Google::Apis::ContentwarehouseV1::CloudAiPlatformTenantresourceServiceAccountIdentity>]
        attr_accessor :p4_service_accounts
      
        # A list of tenant projects and tenant resources to provision or deprovision.
        # Corresponds to the JSON property `tenantProjectResources`
        # @return [Array<Google::Apis::ContentwarehouseV1::CloudAiPlatformTenantresourceTenantProjectResource>]
        attr_accessor :tenant_project_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @p4_service_accounts = args[:p4_service_accounts] if args.key?(:p4_service_accounts)
          @tenant_project_resources = args[:tenant_project_resources] if args.key?(:tenant_project_resources)
        end
      end
      
      # The identity of service accounts that have been explicitly created under
      # tenant projects.
      class CloudAiPlatformTenantresourceTenantServiceAccountIdentity
        include Google::Apis::Core::Hashable
      
        # Output only. The email address of the generated service account.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # Input/Output [Required]. The service that the service account belongs to. (e.g.
        # cloudbuild.googleapis.com for GCB service accounts)
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # Describes the billing configuration for a new tenant project.
      class GoogleApiServiceconsumermanagementV1BillingConfig
        include Google::Apis::Core::Hashable
      
        # Name of the billing account. For example `billingAccounts/012345-567890-ABCDEF`
        # .
        # Corresponds to the JSON property `billingAccount`
        # @return [String]
        attr_accessor :billing_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_account = args[:billing_account] if args.key?(:billing_account)
        end
      end
      
      # Translates to IAM Policy bindings (without auditing at this level)
      class GoogleApiServiceconsumermanagementV1PolicyBinding
        include Google::Apis::Core::Hashable
      
        # Uses the same format as in IAM policy. `member` must include both a prefix and
        # ID. For example, `user:`emailId``, `serviceAccount:`emailId``, `group:`emailId`
        # `.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role. (https://cloud.google.com/iam/docs/understanding-roles) For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Represents the action responsible for access control list management
      # operations.
      class GoogleCloudContentwarehouseV1AccessControlAction
        include Google::Apis::Core::Hashable
      
        # Identifies the type of operation.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
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
        # @return [Google::Apis::ContentwarehouseV1::GoogleIamV1Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Represents the action triggered by Rule Engine when the rule is true.
      class GoogleCloudContentwarehouseV1Action
        include Google::Apis::Core::Hashable
      
        # Represents the action responsible for access control list management
        # operations.
        # Corresponds to the JSON property `accessControl`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1AccessControlAction]
        attr_accessor :access_control
      
        # ID of the action. Managed internally.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        # Represents the action responsible for adding document under a folder.
        # Corresponds to the JSON property `addToFolder`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1AddToFolderAction]
        attr_accessor :add_to_folder
      
        # Represents the action responsible for properties update operations.
        # Corresponds to the JSON property `dataUpdate`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DataUpdateAction]
        attr_accessor :data_update
      
        # Represents the action responsible for data validation operations.
        # Corresponds to the JSON property `dataValidation`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DataValidationAction]
        attr_accessor :data_validation
      
        # Represents the action responsible for deleting the document.
        # Corresponds to the JSON property `deleteDocumentAction`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DeleteDocumentAction]
        attr_accessor :delete_document_action
      
        # Represents the action responsible for publishing messages to a Pub/Sub topic.
        # Corresponds to the JSON property `publishToPubSub`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1PublishAction]
        attr_accessor :publish_to_pub_sub
      
        # Represents the action responsible for remove a document from a specific folder.
        # Corresponds to the JSON property `removeFromFolderAction`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RemoveFromFolderAction]
        attr_accessor :remove_from_folder_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_control = args[:access_control] if args.key?(:access_control)
          @action_id = args[:action_id] if args.key?(:action_id)
          @add_to_folder = args[:add_to_folder] if args.key?(:add_to_folder)
          @data_update = args[:data_update] if args.key?(:data_update)
          @data_validation = args[:data_validation] if args.key?(:data_validation)
          @delete_document_action = args[:delete_document_action] if args.key?(:delete_document_action)
          @publish_to_pub_sub = args[:publish_to_pub_sub] if args.key?(:publish_to_pub_sub)
          @remove_from_folder_action = args[:remove_from_folder_action] if args.key?(:remove_from_folder_action)
        end
      end
      
      # Represents the output of the Action Executor.
      class GoogleCloudContentwarehouseV1ActionExecutorOutput
        include Google::Apis::Core::Hashable
      
        # List of rule and corresponding actions result.
        # Corresponds to the JSON property `ruleActionsPairs`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleActionsPair>]
        attr_accessor :rule_actions_pairs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule_actions_pairs = args[:rule_actions_pairs] if args.key?(:rule_actions_pairs)
        end
      end
      
      # Represents the result of executing an action.
      class GoogleCloudContentwarehouseV1ActionOutput
        include Google::Apis::Core::Hashable
      
        # ID of the action.
        # Corresponds to the JSON property `actionId`
        # @return [String]
        attr_accessor :action_id
      
        # State of an action.
        # Corresponds to the JSON property `actionState`
        # @return [String]
        attr_accessor :action_state
      
        # Action execution output message.
        # Corresponds to the JSON property `outputMessage`
        # @return [String]
        attr_accessor :output_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_id = args[:action_id] if args.key?(:action_id)
          @action_state = args[:action_state] if args.key?(:action_state)
          @output_message = args[:output_message] if args.key?(:output_message)
        end
      end
      
      # Represents the action responsible for adding document under a folder.
      class GoogleCloudContentwarehouseV1AddToFolderAction
        include Google::Apis::Core::Hashable
      
        # Names of the folder under which new document is to be added. Format: projects/`
        # project_number`/locations/`location`/documents/`document_id`.
        # Corresponds to the JSON property `folders`
        # @return [Array<String>]
        attr_accessor :folders
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folders = args[:folders] if args.key?(:folders)
        end
      end
      
      # Request Option for processing Cloud AI Document in CW Document.
      class GoogleCloudContentwarehouseV1CloudAiDocumentOption
        include Google::Apis::Core::Hashable
      
        # If set, only selected entities will be converted to properties.
        # Corresponds to the JSON property `customizedEntitiesPropertiesConversions`
        # @return [Hash<String,String>]
        attr_accessor :customized_entities_properties_conversions
      
        # Whether to convert all the entities to properties.
        # Corresponds to the JSON property `enableEntitiesConversions`
        # @return [Boolean]
        attr_accessor :enable_entities_conversions
        alias_method :enable_entities_conversions?, :enable_entities_conversions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customized_entities_properties_conversions = args[:customized_entities_properties_conversions] if args.key?(:customized_entities_properties_conversions)
          @enable_entities_conversions = args[:enable_entities_conversions] if args.key?(:enable_entities_conversions)
        end
      end
      
      # Request message for DocumentLinkService.CreateDocumentLink.
      class GoogleCloudContentwarehouseV1CreateDocumentLinkRequest
        include Google::Apis::Core::Hashable
      
        # A document-link between source and target document.
        # Corresponds to the JSON property `documentLink`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentLink]
        attr_accessor :document_link
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_link = args[:document_link] if args.key?(:document_link)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Metadata object for CreateDocument request (currently empty).
      class GoogleCloudContentwarehouseV1CreateDocumentMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for DocumentService.CreateDocument.
      class GoogleCloudContentwarehouseV1CreateDocumentRequest
        include Google::Apis::Core::Hashable
      
        # Request Option for processing Cloud AI Document in CW Document.
        # Corresponds to the JSON property `cloudAiDocumentOption`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CloudAiDocumentOption]
        attr_accessor :cloud_ai_document_option
      
        # Field mask for creating Document fields. If mask path is empty, it means all
        # fields are masked. For the `FieldMask` definition, see https://developers.
        # google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
        # Corresponds to the JSON property `createMask`
        # @return [String]
        attr_accessor :create_mask
      
        # Defines the structure for content warehouse document proto.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document]
        attr_accessor :document
      
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
        # @return [Google::Apis::ContentwarehouseV1::GoogleIamV1Policy]
        attr_accessor :policy
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_ai_document_option = args[:cloud_ai_document_option] if args.key?(:cloud_ai_document_option)
          @create_mask = args[:create_mask] if args.key?(:create_mask)
          @document = args[:document] if args.key?(:document)
          @policy = args[:policy] if args.key?(:policy)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Response message for DocumentService.CreateDocument.
      class GoogleCloudContentwarehouseV1CreateDocumentResponse
        include Google::Apis::Core::Hashable
      
        # Defines the structure for content warehouse document proto.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document]
        attr_accessor :document
      
        # post-processing LROs
        # Corresponds to the JSON property `longRunningOperations`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleLongrunningOperation>]
        attr_accessor :long_running_operations
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ResponseMetadata]
        attr_accessor :metadata
      
        # Records the output of Rule Engine including rule evaluation and actions result.
        # Corresponds to the JSON property `ruleEngineOutput`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleEngineOutput]
        attr_accessor :rule_engine_output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @long_running_operations = args[:long_running_operations] if args.key?(:long_running_operations)
          @metadata = args[:metadata] if args.key?(:metadata)
          @rule_engine_output = args[:rule_engine_output] if args.key?(:rule_engine_output)
        end
      end
      
      # To support the custom weighting across document schemas.
      class GoogleCloudContentwarehouseV1CustomWeightsMetadata
        include Google::Apis::Core::Hashable
      
        # List of schema and property name. Allows a maximum of 10 schemas to be
        # specified for relevance boosting.
        # Corresponds to the JSON property `weightedSchemaProperties`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1WeightedSchemaProperty>]
        attr_accessor :weighted_schema_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @weighted_schema_properties = args[:weighted_schema_properties] if args.key?(:weighted_schema_properties)
        end
      end
      
      # Represents the action responsible for properties update operations.
      class GoogleCloudContentwarehouseV1DataUpdateAction
        include Google::Apis::Core::Hashable
      
        # Map of (K, V) -> (valid name of the field, new value of the field) E.g., ("age"
        # , "60") entry triggers update of field age with a value of 60. If the field is
        # not present then new entry is added. During update action execution, value
        # strings will be casted to appropriate types.
        # Corresponds to the JSON property `entries`
        # @return [Hash<String,String>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Represents the action responsible for data validation operations.
      class GoogleCloudContentwarehouseV1DataValidationAction
        include Google::Apis::Core::Hashable
      
        # Map of (K, V) -> (field, string condition to be evaluated on the field) E.g., (
        # "age", "age > 18 && age < 60") entry triggers validation of field age with the
        # given condition. Map entries will be ANDed during validation.
        # Corresponds to the JSON property `conditions`
        # @return [Hash<String,String>]
        attr_accessor :conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
        end
      end
      
      # DateTime values.
      class GoogleCloudContentwarehouseV1DateTimeArray
        include Google::Apis::Core::Hashable
      
        # List of datetime values. Both OffsetDateTime and ZonedDateTime are supported.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleTypeDateTime>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Configurations for a date time property.
      class GoogleCloudContentwarehouseV1DateTimeTypeOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents the action responsible for deleting the document.
      class GoogleCloudContentwarehouseV1DeleteDocumentAction
        include Google::Apis::Core::Hashable
      
        # Boolean field to select between hard vs soft delete options. Set 'true' for '
        # hard delete' and 'false' for 'soft delete'.
        # Corresponds to the JSON property `enableHardDelete`
        # @return [Boolean]
        attr_accessor :enable_hard_delete
        alias_method :enable_hard_delete?, :enable_hard_delete
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_hard_delete = args[:enable_hard_delete] if args.key?(:enable_hard_delete)
        end
      end
      
      # Request message for DocumentLinkService.DeleteDocumentLink.
      class GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest
        include Google::Apis::Core::Hashable
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Request message for DocumentService.DeleteDocument.
      class GoogleCloudContentwarehouseV1DeleteDocumentRequest
        include Google::Apis::Core::Hashable
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Defines the structure for content warehouse document proto.
      class GoogleCloudContentwarehouseV1Document
        include Google::Apis::Core::Hashable
      
        # Document represents the canonical document resource in Document AI. It is an
        # interchange format that provides insights into documents and allows for
        # collaboration between users and Document AI to iterate and optimize for
        # quality.
        # Corresponds to the JSON property `cloudAiDocument`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1Document]
        attr_accessor :cloud_ai_document
      
        # Indicates the category (image, audio, video etc.) of the original content.
        # Corresponds to the JSON property `contentCategory`
        # @return [String]
        attr_accessor :content_category
      
        # Output only. The time when the document is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The user who creates the document.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Required. Display name of the document given by the user. This name will be
        # displayed in the UI. Customer can populate this field with the name of the
        # document. This differs from the 'title' field as 'title' is optional and
        # stores the top heading in the document.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Uri to display the document, for example, in the UI.
        # Corresponds to the JSON property `displayUri`
        # @return [String]
        attr_accessor :display_uri
      
        # Output only. If linked to a Collection with RetentionPolicy, the date when the
        # document becomes mutable.
        # Corresponds to the JSON property `dispositionTime`
        # @return [String]
        attr_accessor :disposition_time
      
        # The Document schema name. Format: projects/`project_number`/locations/`
        # location`/documentSchemas/`document_schema_id`.
        # Corresponds to the JSON property `documentSchemaName`
        # @return [String]
        attr_accessor :document_schema_name
      
        # Raw document content.
        # Corresponds to the JSON property `inlineRawDocument`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :inline_raw_document
      
        # Output only. Indicates if the document has a legal hold on it.
        # Corresponds to the JSON property `legalHold`
        # @return [Boolean]
        attr_accessor :legal_hold
        alias_method :legal_hold?, :legal_hold
      
        # The resource name of the document. Format: projects/`project_number`/locations/
        # `location`/documents/`document_id`. The name is ignored when creating a
        # document.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Other document format, such as PPTX, XLXS
        # Corresponds to the JSON property `plainText`
        # @return [String]
        attr_accessor :plain_text
      
        # List of values that are user supplied metadata.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Property>]
        attr_accessor :properties
      
        # This is used when DocAI was not used to load the document and parsing/
        # extracting is needed for the inline_raw_document. For example, if
        # inline_raw_document is the byte representation of a PDF file, then this should
        # be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
        # Corresponds to the JSON property `rawDocumentFileType`
        # @return [String]
        attr_accessor :raw_document_file_type
      
        # Raw document file in Cloud Storage path.
        # Corresponds to the JSON property `rawDocumentPath`
        # @return [String]
        attr_accessor :raw_document_path
      
        # The reference ID set by customers. Must be unique per project and location.
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        # If true, text extraction will not be performed.
        # Corresponds to the JSON property `textExtractionDisabled`
        # @return [Boolean]
        attr_accessor :text_extraction_disabled
        alias_method :text_extraction_disabled?, :text_extraction_disabled
      
        # If true, text extraction will be performed.
        # Corresponds to the JSON property `textExtractionEnabled`
        # @return [Boolean]
        attr_accessor :text_extraction_enabled
        alias_method :text_extraction_enabled?, :text_extraction_enabled
      
        # Title that describes the document. This can be the top heading or text that
        # describes the document.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. The time when the document is last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The user who lastly updates the document.
        # Corresponds to the JSON property `updater`
        # @return [String]
        attr_accessor :updater
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_ai_document = args[:cloud_ai_document] if args.key?(:cloud_ai_document)
          @content_category = args[:content_category] if args.key?(:content_category)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_uri = args[:display_uri] if args.key?(:display_uri)
          @disposition_time = args[:disposition_time] if args.key?(:disposition_time)
          @document_schema_name = args[:document_schema_name] if args.key?(:document_schema_name)
          @inline_raw_document = args[:inline_raw_document] if args.key?(:inline_raw_document)
          @legal_hold = args[:legal_hold] if args.key?(:legal_hold)
          @name = args[:name] if args.key?(:name)
          @plain_text = args[:plain_text] if args.key?(:plain_text)
          @properties = args[:properties] if args.key?(:properties)
          @raw_document_file_type = args[:raw_document_file_type] if args.key?(:raw_document_file_type)
          @raw_document_path = args[:raw_document_path] if args.key?(:raw_document_path)
          @reference_id = args[:reference_id] if args.key?(:reference_id)
          @text_extraction_disabled = args[:text_extraction_disabled] if args.key?(:text_extraction_disabled)
          @text_extraction_enabled = args[:text_extraction_enabled] if args.key?(:text_extraction_enabled)
          @title = args[:title] if args.key?(:title)
          @update_time = args[:update_time] if args.key?(:update_time)
          @updater = args[:updater] if args.key?(:updater)
        end
      end
      
      # A document-link between source and target document.
      class GoogleCloudContentwarehouseV1DocumentLink
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the documentLink is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of this document-link.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of this document-link. It is required that the parent derived form the
        # name to be consistent with the source document reference. Otherwise an
        # exception will be thrown. Format: projects/`project_number`/locations/`
        # location`/documents/`source_document_id`/documentLinks/`document_link_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # References to the documents.
        # Corresponds to the JSON property `sourceDocumentReference`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentReference]
        attr_accessor :source_document_reference
      
        # The state of the documentlink. If target node has been deleted, the link is
        # marked as invalid. Removing a source node will result in removal of all
        # associated links.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # References to the documents.
        # Corresponds to the JSON property `targetDocumentReference`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentReference]
        attr_accessor :target_document_reference
      
        # Output only. The time when the documentLink is last updated.
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
          @source_document_reference = args[:source_document_reference] if args.key?(:source_document_reference)
          @state = args[:state] if args.key?(:state)
          @target_document_reference = args[:target_document_reference] if args.key?(:target_document_reference)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudContentwarehouseV1DocumentQuery
        include Google::Apis::Core::Hashable
      
        # This filter specifies a structured syntax to match against the [
        # PropertyDefinition].is_filterable marked as `true`. The syntax for this
        # expression is a subset of SQL syntax. Supported operators are: `=`, `!=`, `<`,
        # `<=`, `>`, and `>=` where the left of the operator is a property name and the
        # right of the operator is a number or a quoted string. You must escape
        # backslash (\\) and quote (\") characters. Supported functions are `LOWER([
        # property_name])` to perform a case insensitive match and `EMPTY([property_name]
        # )` to filter on the existence of a key. Boolean expressions (AND/OR/NOT) are
        # supported up to 3 levels of nesting (for example, "((A AND B AND C) OR NOT D)
        # AND E"), a maximum of 100 comparisons or functions are allowed in the
        # expression. The expression must be < 6000 bytes in length. Sample Query: `(
        # LOWER(driving_license)="class \"a\"" OR EMPTY(driving_license)) AND
        # driving_years > 10`
        # Corresponds to the JSON property `customPropertyFilter`
        # @return [String]
        attr_accessor :custom_property_filter
      
        # To support the custom weighting across document schemas.
        # Corresponds to the JSON property `customWeightsMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CustomWeightsMetadata]
        attr_accessor :custom_weights_metadata
      
        # The exact creator(s) of the documents to search against. If a value isn't
        # specified, documents within the search results are associated with any creator.
        # If multiple values are specified, documents within the search results may be
        # associated with any of the specified creators.
        # Corresponds to the JSON property `documentCreatorFilter`
        # @return [Array<String>]
        attr_accessor :document_creator_filter
      
        # Search the documents in the list. Format: projects/`project_number`/locations/`
        # location`/documents/`document_id`.
        # Corresponds to the JSON property `documentNameFilter`
        # @return [Array<String>]
        attr_accessor :document_name_filter
      
        # This filter specifies the exact document schema Document.document_schema_name
        # of the documents to search against. If a value isn't specified, documents
        # within the search results are associated with any schema. If multiple values
        # are specified, documents within the search results may be associated with any
        # of the specified schemas. At most 20 document schema names are allowed.
        # Corresponds to the JSON property `documentSchemaNames`
        # @return [Array<String>]
        attr_accessor :document_schema_names
      
        # Filter for the specific types of documents returned.
        # Corresponds to the JSON property `fileTypeFilter`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FileTypeFilter]
        attr_accessor :file_type_filter
      
        # Search all the documents under this specified folder. Format: projects/`
        # project_number`/locations/`location`/documents/`document_id`.
        # Corresponds to the JSON property `folderNameFilter`
        # @return [String]
        attr_accessor :folder_name_filter
      
        # Experimental, do not use. If the query is a natural language question. False
        # by default. If true, then the question-answering feature will be used instead
        # of search, and `result_count` in SearchDocumentsRequest must be set. In
        # addition, all other input fields related to search (pagination, histograms,
        # etc.) will be ignored.
        # Corresponds to the JSON property `isNlQuery`
        # @return [Boolean]
        attr_accessor :is_nl_query
        alias_method :is_nl_query?, :is_nl_query
      
        # This filter specifies a structured syntax to match against the
        # PropertyDefinition.is_filterable marked as `true`. The relationship between
        # the PropertyFilters is OR.
        # Corresponds to the JSON property `propertyFilter`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1PropertyFilter>]
        attr_accessor :property_filter
      
        # The query string that matches against the full text of the document and the
        # searchable properties. The query partially supports [Google AIP style syntax](
        # https://google.aip.dev/160). Specifically, the query supports literals,
        # logical operators, negation operators, comparison operators, and functions.
        # Literals: A bare literal value (examples: "42", "Hugo") is a value to be
        # matched against. It searches over the full text of the document and the
        # searchable properties. Logical operators: "AND", "and", "OR", and "or" are
        # binary logical operators (example: "engineer OR developer"). Negation
        # operators: "NOT" and "!" are negation operators (example: "NOT software").
        # Comparison operators: support the binary comparison operators =, !=, <, >, <=
        # and >= for string, numeric, enum, boolean. Also support like operator `~~` for
        # string. It provides semantic search functionality by parsing, stemming and
        # doing synonyms expansion against the input query. To specify a property in the
        # query, the left hand side expression in the comparison must be the property ID
        # including the parent. The right hand side must be literals. For example: "\"
        # projects/123/locations/us\".property_a < 1" matches results whose "property_a"
        # is less than 1 in project 123 and us location. The literals and comparison
        # expression can be connected in a single query (example: "software engineer \"
        # projects/123/locations/us\".salary > 100"). Functions: supported functions are
        # `LOWER([property_name])` to perform a case insensitive match and `EMPTY([
        # property_name])` to filter on the existence of a key. Support nested
        # expressions connected using parenthesis and logical operators. The default
        # logical operators is `AND` if there is no operators between expressions. The
        # query can be used with other filters e.g. `time_filters` and `
        # folder_name_filter`. They are connected with `AND` operator under the hood.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # For custom synonyms. Customers provide the synonyms based on context. One
        # customer can provide multiple set of synonyms based on different context. The
        # search query will be expanded based on the custom synonyms of the query
        # context set. By default, no custom synonyms wll be applied if no query context
        # is provided. It is not supported for CMEK compliant deployment.
        # Corresponds to the JSON property `queryContext`
        # @return [Array<String>]
        attr_accessor :query_context
      
        # Documents created/updated within a range specified by this filter are searched
        # against.
        # Corresponds to the JSON property `timeFilters`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1TimeFilter>]
        attr_accessor :time_filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_property_filter = args[:custom_property_filter] if args.key?(:custom_property_filter)
          @custom_weights_metadata = args[:custom_weights_metadata] if args.key?(:custom_weights_metadata)
          @document_creator_filter = args[:document_creator_filter] if args.key?(:document_creator_filter)
          @document_name_filter = args[:document_name_filter] if args.key?(:document_name_filter)
          @document_schema_names = args[:document_schema_names] if args.key?(:document_schema_names)
          @file_type_filter = args[:file_type_filter] if args.key?(:file_type_filter)
          @folder_name_filter = args[:folder_name_filter] if args.key?(:folder_name_filter)
          @is_nl_query = args[:is_nl_query] if args.key?(:is_nl_query)
          @property_filter = args[:property_filter] if args.key?(:property_filter)
          @query = args[:query] if args.key?(:query)
          @query_context = args[:query_context] if args.key?(:query_context)
          @time_filters = args[:time_filters] if args.key?(:time_filters)
        end
      end
      
      # References to the documents.
      class GoogleCloudContentwarehouseV1DocumentReference
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the document is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time when the document is deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # display_name of the referenced document; this name does not need to be
        # consistent to the display_name in the Document proto, depending on the ACL
        # constraint.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The document type of the document being referenced.
        # Corresponds to the JSON property `documentIsFolder`
        # @return [Boolean]
        attr_accessor :document_is_folder
        alias_method :document_is_folder?, :document_is_folder
      
        # Document is a folder with legal hold.
        # Corresponds to the JSON property `documentIsLegalHoldFolder`
        # @return [Boolean]
        attr_accessor :document_is_legal_hold_folder
        alias_method :document_is_legal_hold_folder?, :document_is_legal_hold_folder
      
        # Document is a folder with retention policy.
        # Corresponds to the JSON property `documentIsRetentionFolder`
        # @return [Boolean]
        attr_accessor :document_is_retention_folder
        alias_method :document_is_retention_folder?, :document_is_retention_folder
      
        # Required. Name of the referenced document.
        # Corresponds to the JSON property `documentName`
        # @return [String]
        attr_accessor :document_name
      
        # Stores the subset of the referenced document's content. This is useful to
        # allow user peek the information of the referenced document.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # Output only. The time when the document is last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @document_is_folder = args[:document_is_folder] if args.key?(:document_is_folder)
          @document_is_legal_hold_folder = args[:document_is_legal_hold_folder] if args.key?(:document_is_legal_hold_folder)
          @document_is_retention_folder = args[:document_is_retention_folder] if args.key?(:document_is_retention_folder)
          @document_name = args[:document_name] if args.key?(:document_name)
          @snippet = args[:snippet] if args.key?(:snippet)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A document schema used to define document structure.
      class GoogleCloudContentwarehouseV1DocumentSchema
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the document schema is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Schema description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Name of the schema given by the user. Must be unique per project.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Document Type, true refers the document is a folder, otherwise it is a typical
        # document.
        # Corresponds to the JSON property `documentIsFolder`
        # @return [Boolean]
        attr_accessor :document_is_folder
        alias_method :document_is_folder?, :document_is_folder
      
        # The resource name of the document schema. Format: projects/`project_number`/
        # locations/`location`/documentSchemas/`document_schema_id`. The name is ignored
        # when creating a document schema.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Document details.
        # Corresponds to the JSON property `propertyDefinitions`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1PropertyDefinition>]
        attr_accessor :property_definitions
      
        # Output only. The time when the document schema is last updated.
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @document_is_folder = args[:document_is_folder] if args.key?(:document_is_folder)
          @name = args[:name] if args.key?(:name)
          @property_definitions = args[:property_definitions] if args.key?(:property_definitions)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Enum values.
      class GoogleCloudContentwarehouseV1EnumArray
        include Google::Apis::Core::Hashable
      
        # List of enum values.
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
      
      # Configurations for an enum/categorical property.
      class GoogleCloudContentwarehouseV1EnumTypeOptions
        include Google::Apis::Core::Hashable
      
        # Required. List of possible enum values.
        # Corresponds to the JSON property `possibleValues`
        # @return [Array<String>]
        attr_accessor :possible_values
      
        # Make sure the Enum property value provided in the document is in the possile
        # value list during document creation. The validation check runs by default.
        # Corresponds to the JSON property `validationCheckDisabled`
        # @return [Boolean]
        attr_accessor :validation_check_disabled
        alias_method :validation_check_disabled?, :validation_check_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @possible_values = args[:possible_values] if args.key?(:possible_values)
          @validation_check_disabled = args[:validation_check_disabled] if args.key?(:validation_check_disabled)
        end
      end
      
      # Represents the string value of the enum field.
      class GoogleCloudContentwarehouseV1EnumValue
        include Google::Apis::Core::Hashable
      
        # String value of the enum field. This must match defined set of enums in
        # document schema using EnumTypeOptions.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The configuration of exporting documents from the Document Warehouse to CDW
      # pipeline.
      class GoogleCloudContentwarehouseV1ExportToCdwPipeline
        include Google::Apis::Core::Hashable
      
        # Optional. The CDW dataset resource name. This field is optional. If not set,
        # the documents will be exported to Cloud Storage only. Format: projects/`
        # project`/locations/`location`/processors/`processor`/dataset
        # Corresponds to the JSON property `docAiDataset`
        # @return [String]
        attr_accessor :doc_ai_dataset
      
        # The list of all the resource names of the documents to be processed. Format:
        # projects/`project_number`/locations/`location`/documents/`document_id`.
        # Corresponds to the JSON property `documents`
        # @return [Array<String>]
        attr_accessor :documents
      
        # The Cloud Storage folder path used to store the exported documents before
        # being sent to CDW. Format: `gs:///`.
        # Corresponds to the JSON property `exportFolderPath`
        # @return [String]
        attr_accessor :export_folder_path
      
        # Ratio of training dataset split. When importing into Document AI Workbench,
        # documents will be automatically split into training and test split category
        # with the specified ratio. This field is required if doc_ai_dataset is set.
        # Corresponds to the JSON property `trainingSplitRatio`
        # @return [Float]
        attr_accessor :training_split_ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @doc_ai_dataset = args[:doc_ai_dataset] if args.key?(:doc_ai_dataset)
          @documents = args[:documents] if args.key?(:documents)
          @export_folder_path = args[:export_folder_path] if args.key?(:export_folder_path)
          @training_split_ratio = args[:training_split_ratio] if args.key?(:training_split_ratio)
        end
      end
      
      # Request message for DocumentService.FetchAcl
      class GoogleCloudContentwarehouseV1FetchAclRequest
        include Google::Apis::Core::Hashable
      
        # For Get Project ACL only. Authorization check for end user will be ignored
        # when project_owner=true.
        # Corresponds to the JSON property `projectOwner`
        # @return [Boolean]
        attr_accessor :project_owner
        alias_method :project_owner?, :project_owner
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_owner = args[:project_owner] if args.key?(:project_owner)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Response message for DocumentService.FetchAcl.
      class GoogleCloudContentwarehouseV1FetchAclResponse
        include Google::Apis::Core::Hashable
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ResponseMetadata]
        attr_accessor :metadata
      
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
        # @return [Google::Apis::ContentwarehouseV1::GoogleIamV1Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Filter for the specific types of documents returned.
      class GoogleCloudContentwarehouseV1FileTypeFilter
        include Google::Apis::Core::Hashable
      
        # The type of files to return.
        # Corresponds to the JSON property `fileType`
        # @return [String]
        attr_accessor :file_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_type = args[:file_type] if args.key?(:file_type)
        end
      end
      
      # Float values.
      class GoogleCloudContentwarehouseV1FloatArray
        include Google::Apis::Core::Hashable
      
        # List of float values.
        # Corresponds to the JSON property `values`
        # @return [Array<Float>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Configurations for a float property.
      class GoogleCloudContentwarehouseV1FloatTypeOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The configuration of the Cloud Storage Ingestion pipeline.
      class GoogleCloudContentwarehouseV1GcsIngestPipeline
        include Google::Apis::Core::Hashable
      
        # The input Cloud Storage folder. All files under this folder will be imported
        # to Document Warehouse. Format: `gs:///`.
        # Corresponds to the JSON property `inputPath`
        # @return [String]
        attr_accessor :input_path
      
        # The ingestion pipeline config.
        # Corresponds to the JSON property `pipelineConfig`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1IngestPipelineConfig]
        attr_accessor :pipeline_config
      
        # The Doc AI processor type name. Only used when the format of ingested files is
        # Doc AI Document proto format.
        # Corresponds to the JSON property `processorType`
        # @return [String]
        attr_accessor :processor_type
      
        # The Document Warehouse schema resource name. All documents processed by this
        # pipeline will use this schema. Format: projects/`project_number`/locations/`
        # location`/documentSchemas/`document_schema_id`.
        # Corresponds to the JSON property `schemaName`
        # @return [String]
        attr_accessor :schema_name
      
        # The flag whether to skip ingested documents. If it is set to true, documents
        # in Cloud Storage contains key "status" with value "status=ingested" in custom
        # metadata will be skipped to ingest.
        # Corresponds to the JSON property `skipIngestedDocuments`
        # @return [Boolean]
        attr_accessor :skip_ingested_documents
        alias_method :skip_ingested_documents?, :skip_ingested_documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_path = args[:input_path] if args.key?(:input_path)
          @pipeline_config = args[:pipeline_config] if args.key?(:pipeline_config)
          @processor_type = args[:processor_type] if args.key?(:processor_type)
          @schema_name = args[:schema_name] if args.key?(:schema_name)
          @skip_ingested_documents = args[:skip_ingested_documents] if args.key?(:skip_ingested_documents)
        end
      end
      
      # The configuration of the Cloud Storage Ingestion with DocAI Processors
      # pipeline.
      class GoogleCloudContentwarehouseV1GcsIngestWithDocAiProcessorsPipeline
        include Google::Apis::Core::Hashable
      
        # The extract processors information. One matched extract processor will be used
        # to process documents based on the classify processor result. If no classify
        # processor is specified, the first extract processor will be used.
        # Corresponds to the JSON property `extractProcessorInfos`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ProcessorInfo>]
        attr_accessor :extract_processor_infos
      
        # The input Cloud Storage folder. All files under this folder will be imported
        # to Document Warehouse. Format: `gs:///`.
        # Corresponds to the JSON property `inputPath`
        # @return [String]
        attr_accessor :input_path
      
        # The ingestion pipeline config.
        # Corresponds to the JSON property `pipelineConfig`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1IngestPipelineConfig]
        attr_accessor :pipeline_config
      
        # The Cloud Storage folder path used to store the raw results from processors.
        # Format: `gs:///`.
        # Corresponds to the JSON property `processorResultsFolderPath`
        # @return [String]
        attr_accessor :processor_results_folder_path
      
        # The flag whether to skip ingested documents. If it is set to true, documents
        # in Cloud Storage contains key "status" with value "status=ingested" in custom
        # metadata will be skipped to ingest.
        # Corresponds to the JSON property `skipIngestedDocuments`
        # @return [Boolean]
        attr_accessor :skip_ingested_documents
        alias_method :skip_ingested_documents?, :skip_ingested_documents
      
        # The DocAI processor information.
        # Corresponds to the JSON property `splitClassifyProcessorInfo`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ProcessorInfo]
        attr_accessor :split_classify_processor_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extract_processor_infos = args[:extract_processor_infos] if args.key?(:extract_processor_infos)
          @input_path = args[:input_path] if args.key?(:input_path)
          @pipeline_config = args[:pipeline_config] if args.key?(:pipeline_config)
          @processor_results_folder_path = args[:processor_results_folder_path] if args.key?(:processor_results_folder_path)
          @skip_ingested_documents = args[:skip_ingested_documents] if args.key?(:skip_ingested_documents)
          @split_classify_processor_info = args[:split_classify_processor_info] if args.key?(:split_classify_processor_info)
        end
      end
      
      # Request message for DocumentService.GetDocument.
      class GoogleCloudContentwarehouseV1GetDocumentRequest
        include Google::Apis::Core::Hashable
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # The histogram request.
      class GoogleCloudContentwarehouseV1HistogramQuery
        include Google::Apis::Core::Hashable
      
        # Optional. Filter the result of histogram query by the property names. It only
        # works with histogram query count('FilterableProperties'). It is an optional.
        # It will perform histogram on all the property names for all the document
        # schemas. Setting this field will have a better performance.
        # Corresponds to the JSON property `filters`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter]
        attr_accessor :filters
      
        # An expression specifies a histogram request against matching documents for
        # searches. See SearchDocumentsRequest.histogram_queries for details about
        # syntax.
        # Corresponds to the JSON property `histogramQuery`
        # @return [String]
        attr_accessor :histogram_query
      
        # Controls if the histogram query requires the return of a precise count. Enable
        # this flag may adversely impact performance. Defaults to true.
        # Corresponds to the JSON property `requirePreciseResultSize`
        # @return [Boolean]
        attr_accessor :require_precise_result_size
        alias_method :require_precise_result_size?, :require_precise_result_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
          @histogram_query = args[:histogram_query] if args.key?(:histogram_query)
          @require_precise_result_size = args[:require_precise_result_size] if args.key?(:require_precise_result_size)
        end
      end
      
      # 
      class GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter
        include Google::Apis::Core::Hashable
      
        # This filter specifies the exact document schema(s) Document.
        # document_schema_name to run histogram query against. It is optional. It will
        # perform histogram for property names for all the document schemas if it is not
        # set. At most 10 document schema names are allowed. Format: projects/`
        # project_number`/locations/`location`/documentSchemas/`document_schema_id`.
        # Corresponds to the JSON property `documentSchemas`
        # @return [Array<String>]
        attr_accessor :document_schemas
      
        # It is optional. It will perform histogram for all the property names if it is
        # not set. The properties need to be defined with the is_filterable flag set to
        # true and the name of the property should be in the format: "schemaId.
        # propertyName". The property needs to be defined in the schema. Example: the
        # schema id is abc. Then the name of property for property MORTGAGE_TYPE will be
        # "abc.MORTGAGE_TYPE".
        # Corresponds to the JSON property `propertyNames`
        # @return [Array<String>]
        attr_accessor :property_names
      
        # By default, the y_axis is HISTOGRAM_YAXIS_DOCUMENT if this field is not set.
        # Corresponds to the JSON property `yAxis`
        # @return [String]
        attr_accessor :y_axis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_schemas = args[:document_schemas] if args.key?(:document_schemas)
          @property_names = args[:property_names] if args.key?(:property_names)
          @y_axis = args[:y_axis] if args.key?(:y_axis)
        end
      end
      
      # Histogram result that matches HistogramQuery specified in searches.
      class GoogleCloudContentwarehouseV1HistogramQueryResult
        include Google::Apis::Core::Hashable
      
        # A map from the values of the facet associated with distinct values to the
        # number of matching entries with corresponding value. The key format is: * (for
        # string histogram) string values stored in the field.
        # Corresponds to the JSON property `histogram`
        # @return [Hash<String,Fixnum>]
        attr_accessor :histogram
      
        # Requested histogram expression.
        # Corresponds to the JSON property `histogramQuery`
        # @return [String]
        attr_accessor :histogram_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @histogram = args[:histogram] if args.key?(:histogram)
          @histogram_query = args[:histogram_query] if args.key?(:histogram_query)
        end
      end
      
      # The ingestion pipeline config.
      class GoogleCloudContentwarehouseV1IngestPipelineConfig
        include Google::Apis::Core::Hashable
      
        # The Cloud Function resource name. The Cloud Function needs to live inside
        # consumer project and is accessible to Document AI Warehouse P4SA. Only Cloud
        # Functions V2 is supported. Cloud function execution should complete within 5
        # minutes or this file ingestion may fail due to timeout. Format: `https://`
        # region`-`project_id`.cloudfunctions.net/`cloud_function`` The following keys
        # are available the request json payload. * display_name * properties *
        # plain_text * reference_id * document_schema_name * raw_document_path *
        # raw_document_file_type The following keys from the cloud function json
        # response payload will be ingested to the Document AI Warehouse as part of
        # Document proto content and/or related information. The original values will be
        # overridden if any key is present in the response. * display_name * properties *
        # plain_text * document_acl_policy * folder
        # Corresponds to the JSON property `cloudFunction`
        # @return [String]
        attr_accessor :cloud_function
      
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
        # Corresponds to the JSON property `documentAclPolicy`
        # @return [Google::Apis::ContentwarehouseV1::GoogleIamV1Policy]
        attr_accessor :document_acl_policy
      
        # The document text extraction enabled flag. If the flag is set to true, DWH
        # will perform text extraction on the raw document.
        # Corresponds to the JSON property `enableDocumentTextExtraction`
        # @return [Boolean]
        attr_accessor :enable_document_text_extraction
        alias_method :enable_document_text_extraction?, :enable_document_text_extraction
      
        # Optional. The name of the folder to which all ingested documents will be
        # linked during ingestion process. Format is `projects/`project`/locations/`
        # location`/documents/`folder_id``
        # Corresponds to the JSON property `folder`
        # @return [String]
        attr_accessor :folder
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_function = args[:cloud_function] if args.key?(:cloud_function)
          @document_acl_policy = args[:document_acl_policy] if args.key?(:document_acl_policy)
          @enable_document_text_extraction = args[:enable_document_text_extraction] if args.key?(:enable_document_text_extraction)
          @folder = args[:folder] if args.key?(:folder)
        end
      end
      
      # Request message for projectService.InitializeProject
      class GoogleCloudContentwarehouseV1InitializeProjectRequest
        include Google::Apis::Core::Hashable
      
        # Required. The access control mode for accessing the customer data
        # Corresponds to the JSON property `accessControlMode`
        # @return [String]
        attr_accessor :access_control_mode
      
        # Required. The type of database used to store customer data
        # Corresponds to the JSON property `databaseType`
        # @return [String]
        attr_accessor :database_type
      
        # Optional. The default role for the person who create a document.
        # Corresponds to the JSON property `documentCreatorDefaultRole`
        # @return [String]
        attr_accessor :document_creator_default_role
      
        # Optional. Whether to enable CAL user email logging.
        # Corresponds to the JSON property `enableCalUserEmailLogging`
        # @return [Boolean]
        attr_accessor :enable_cal_user_email_logging
        alias_method :enable_cal_user_email_logging?, :enable_cal_user_email_logging
      
        # Optional. The KMS key used for CMEK encryption. It is required that the kms
        # key is in the same region as the endpoint. The same key will be used for all
        # provisioned resources, if encryption is available. If the kms_key is left
        # empty, no encryption will be enforced.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_control_mode = args[:access_control_mode] if args.key?(:access_control_mode)
          @database_type = args[:database_type] if args.key?(:database_type)
          @document_creator_default_role = args[:document_creator_default_role] if args.key?(:document_creator_default_role)
          @enable_cal_user_email_logging = args[:enable_cal_user_email_logging] if args.key?(:enable_cal_user_email_logging)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
        end
      end
      
      # Response message for projectService.InitializeProject
      class GoogleCloudContentwarehouseV1InitializeProjectResponse
        include Google::Apis::Core::Hashable
      
        # The message of the project initialization process.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The state of the project initialization process.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Integer values.
      class GoogleCloudContentwarehouseV1IntegerArray
        include Google::Apis::Core::Hashable
      
        # List of integer values.
        # Corresponds to the JSON property `values`
        # @return [Array<Fixnum>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Configurations for an integer property.
      class GoogleCloudContentwarehouseV1IntegerTypeOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A triggered rule that failed the validation check(s) after parsing.
      class GoogleCloudContentwarehouseV1InvalidRule
        include Google::Apis::Core::Hashable
      
        # Validation error on a parsed expression.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Represents the rule for a content warehouse trigger.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Rule]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @rule = args[:rule] if args.key?(:rule)
        end
      end
      
      # Response message for DocumentSchemaService.ListDocumentSchemas.
      class GoogleCloudContentwarehouseV1ListDocumentSchemasResponse
        include Google::Apis::Core::Hashable
      
        # The document schemas from the specified parent.
        # Corresponds to the JSON property `documentSchemas`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema>]
        attr_accessor :document_schemas
      
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
          @document_schemas = args[:document_schemas] if args.key?(:document_schemas)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for DocumentLinkService.ListLinkedSources.
      class GoogleCloudContentwarehouseV1ListLinkedSourcesRequest
        include Google::Apis::Core::Hashable
      
        # The maximum number of document-links to return. The service may return fewer
        # than this value. If unspecified, at most 50 document-links will be returned.
        # The maximum value is 1000; values above 1000 will be coerced to 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous `ListLinkedSources` call. Provide this
        # to retrieve the subsequent page. When paginating, all other parameters
        # provided to `ListLinkedSources` must match the call that provided the page
        # token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Response message for DocumentLinkService.ListLinkedSources.
      class GoogleCloudContentwarehouseV1ListLinkedSourcesResponse
        include Google::Apis::Core::Hashable
      
        # Source document-links.
        # Corresponds to the JSON property `documentLinks`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentLink>]
        attr_accessor :document_links
      
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
          @document_links = args[:document_links] if args.key?(:document_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for DocumentLinkService.ListLinkedTargets.
      class GoogleCloudContentwarehouseV1ListLinkedTargetsRequest
        include Google::Apis::Core::Hashable
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Response message for DocumentLinkService.ListLinkedTargets.
      class GoogleCloudContentwarehouseV1ListLinkedTargetsResponse
        include Google::Apis::Core::Hashable
      
        # Target document-links.
        # Corresponds to the JSON property `documentLinks`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentLink>]
        attr_accessor :document_links
      
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
          @document_links = args[:document_links] if args.key?(:document_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for RuleSetService.ListRuleSets.
      class GoogleCloudContentwarehouseV1ListRuleSetsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The rule sets from the specified parent.
        # Corresponds to the JSON property `ruleSets`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet>]
        attr_accessor :rule_sets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rule_sets = args[:rule_sets] if args.key?(:rule_sets)
        end
      end
      
      # Response message for SynonymSetService.ListSynonymSets.
      class GoogleCloudContentwarehouseV1ListSynonymSetsResponse
        include Google::Apis::Core::Hashable
      
        # A page token, received from a previous `ListSynonymSets` call. Provide this to
        # retrieve the subsequent page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The synonymSets from the specified parent.
        # Corresponds to the JSON property `synonymSets`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSet>]
        attr_accessor :synonym_sets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @synonym_sets = args[:synonym_sets] if args.key?(:synonym_sets)
        end
      end
      
      # Request message for DocumentService.LockDocument.
      class GoogleCloudContentwarehouseV1LockDocumentRequest
        include Google::Apis::Core::Hashable
      
        # The collection the document connects to.
        # Corresponds to the JSON property `collectionId`
        # @return [String]
        attr_accessor :collection_id
      
        # The user information.
        # Corresponds to the JSON property `lockingUser`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UserInfo]
        attr_accessor :locking_user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_id = args[:collection_id] if args.key?(:collection_id)
          @locking_user = args[:locking_user] if args.key?(:locking_user)
        end
      end
      
      # Map property value. Represents a structured entries of key value pairs,
      # consisting of field names which map to dynamically typed values.
      class GoogleCloudContentwarehouseV1MapProperty
        include Google::Apis::Core::Hashable
      
        # Unordered map of dynamically typed values.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Value>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Configurations for a Map property.
      class GoogleCloudContentwarehouseV1MapTypeOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Options for merging updated fields.
      class GoogleCloudContentwarehouseV1MergeFieldsOptions
        include Google::Apis::Core::Hashable
      
        # When merging message fields, the default behavior is to merge the content of
        # two message fields together. If you instead want to use the field from the
        # source message to replace the corresponding field in the destination message,
        # set this flag to true. When this flag is set, specified submessage fields that
        # are missing in source will be cleared in destination.
        # Corresponds to the JSON property `replaceMessageFields`
        # @return [Boolean]
        attr_accessor :replace_message_fields
        alias_method :replace_message_fields?, :replace_message_fields
      
        # When merging repeated fields, the default behavior is to append entries from
        # the source repeated field to the destination repeated field. If you instead
        # want to keep only the entries from the source repeated field, set this flag to
        # true. If you want to replace a repeated field within a message field on the
        # destination message, you must set both replace_repeated_fields and
        # replace_message_fields to true, otherwise the repeated fields will be appended.
        # Corresponds to the JSON property `replaceRepeatedFields`
        # @return [Boolean]
        attr_accessor :replace_repeated_fields
        alias_method :replace_repeated_fields?, :replace_repeated_fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @replace_message_fields = args[:replace_message_fields] if args.key?(:replace_message_fields)
          @replace_repeated_fields = args[:replace_repeated_fields] if args.key?(:replace_repeated_fields)
        end
      end
      
      # The configuration of processing documents in Document Warehouse with DocAi
      # processors pipeline.
      class GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline
        include Google::Apis::Core::Hashable
      
        # The list of all the resource names of the documents to be processed. Format:
        # projects/`project_number`/locations/`location`/documents/`document_id`.
        # Corresponds to the JSON property `documents`
        # @return [Array<String>]
        attr_accessor :documents
      
        # The Cloud Storage folder path used to store the exported documents before
        # being sent to CDW. Format: `gs:///`.
        # Corresponds to the JSON property `exportFolderPath`
        # @return [String]
        attr_accessor :export_folder_path
      
        # The DocAI processor information.
        # Corresponds to the JSON property `processorInfo`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ProcessorInfo]
        attr_accessor :processor_info
      
        # The Cloud Storage folder path used to store the raw results from processors.
        # Format: `gs:///`.
        # Corresponds to the JSON property `processorResultsFolderPath`
        # @return [String]
        attr_accessor :processor_results_folder_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @export_folder_path = args[:export_folder_path] if args.key?(:export_folder_path)
          @processor_info = args[:processor_info] if args.key?(:processor_info)
          @processor_results_folder_path = args[:processor_results_folder_path] if args.key?(:processor_results_folder_path)
        end
      end
      
      # The DocAI processor information.
      class GoogleCloudContentwarehouseV1ProcessorInfo
        include Google::Apis::Core::Hashable
      
        # The processor will process the documents with this document type.
        # Corresponds to the JSON property `documentType`
        # @return [String]
        attr_accessor :document_type
      
        # The processor resource name. Format is `projects/`project`/locations/`location`
        # /processors/`processor``, or `projects/`project`/locations/`location`/
        # processors/`processor`/processorVersions/`processorVersion``
        # Corresponds to the JSON property `processorName`
        # @return [String]
        attr_accessor :processor_name
      
        # The Document schema resource name. All documents processed by this processor
        # will use this schema. Format: projects/`project_number`/locations/`location`/
        # documentSchemas/`document_schema_id`.
        # Corresponds to the JSON property `schemaName`
        # @return [String]
        attr_accessor :schema_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_type = args[:document_type] if args.key?(:document_type)
          @processor_name = args[:processor_name] if args.key?(:processor_name)
          @schema_name = args[:schema_name] if args.key?(:schema_name)
        end
      end
      
      # Status of a project, including the project state, dbType, aclMode and etc.
      class GoogleCloudContentwarehouseV1ProjectStatus
        include Google::Apis::Core::Hashable
      
        # Access control mode.
        # Corresponds to the JSON property `accessControlMode`
        # @return [String]
        attr_accessor :access_control_mode
      
        # Database type.
        # Corresponds to the JSON property `databaseType`
        # @return [String]
        attr_accessor :database_type
      
        # The default role for the person who create a document.
        # Corresponds to the JSON property `documentCreatorDefaultRole`
        # @return [String]
        attr_accessor :document_creator_default_role
      
        # The location of the queried project.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # If the qa is enabled on this project.
        # Corresponds to the JSON property `qaEnabled`
        # @return [Boolean]
        attr_accessor :qa_enabled
        alias_method :qa_enabled?, :qa_enabled
      
        # State of the project.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_control_mode = args[:access_control_mode] if args.key?(:access_control_mode)
          @database_type = args[:database_type] if args.key?(:database_type)
          @document_creator_default_role = args[:document_creator_default_role] if args.key?(:document_creator_default_role)
          @location = args[:location] if args.key?(:location)
          @qa_enabled = args[:qa_enabled] if args.key?(:qa_enabled)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Property of a document.
      class GoogleCloudContentwarehouseV1Property
        include Google::Apis::Core::Hashable
      
        # DateTime values.
        # Corresponds to the JSON property `dateTimeValues`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DateTimeArray]
        attr_accessor :date_time_values
      
        # Enum values.
        # Corresponds to the JSON property `enumValues`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1EnumArray]
        attr_accessor :enum_values
      
        # Float values.
        # Corresponds to the JSON property `floatValues`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FloatArray]
        attr_accessor :float_values
      
        # Integer values.
        # Corresponds to the JSON property `integerValues`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1IntegerArray]
        attr_accessor :integer_values
      
        # Map property value. Represents a structured entries of key value pairs,
        # consisting of field names which map to dynamically typed values.
        # Corresponds to the JSON property `mapProperty`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1MapProperty]
        attr_accessor :map_property
      
        # Required. Must match the name of a PropertyDefinition in the DocumentSchema.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Property values.
        # Corresponds to the JSON property `propertyValues`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1PropertyArray]
        attr_accessor :property_values
      
        # String/text values.
        # Corresponds to the JSON property `textValues`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1TextArray]
        attr_accessor :text_values
      
        # Timestamp values.
        # Corresponds to the JSON property `timestampValues`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1TimestampArray]
        attr_accessor :timestamp_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_time_values = args[:date_time_values] if args.key?(:date_time_values)
          @enum_values = args[:enum_values] if args.key?(:enum_values)
          @float_values = args[:float_values] if args.key?(:float_values)
          @integer_values = args[:integer_values] if args.key?(:integer_values)
          @map_property = args[:map_property] if args.key?(:map_property)
          @name = args[:name] if args.key?(:name)
          @property_values = args[:property_values] if args.key?(:property_values)
          @text_values = args[:text_values] if args.key?(:text_values)
          @timestamp_values = args[:timestamp_values] if args.key?(:timestamp_values)
        end
      end
      
      # Property values.
      class GoogleCloudContentwarehouseV1PropertyArray
        include Google::Apis::Core::Hashable
      
        # List of property values.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Property>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Defines the metadata for a schema property.
      class GoogleCloudContentwarehouseV1PropertyDefinition
        include Google::Apis::Core::Hashable
      
        # Configurations for a date time property.
        # Corresponds to the JSON property `dateTimeTypeOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DateTimeTypeOptions]
        attr_accessor :date_time_type_options
      
        # The display-name for the property, used for front-end.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Configurations for an enum/categorical property.
        # Corresponds to the JSON property `enumTypeOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1EnumTypeOptions]
        attr_accessor :enum_type_options
      
        # Configurations for a float property.
        # Corresponds to the JSON property `floatTypeOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1FloatTypeOptions]
        attr_accessor :float_type_options
      
        # Configurations for an integer property.
        # Corresponds to the JSON property `integerTypeOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1IntegerTypeOptions]
        attr_accessor :integer_type_options
      
        # Whether the property can be filtered. If this is a sub-property, all the
        # parent properties must be marked filterable.
        # Corresponds to the JSON property `isFilterable`
        # @return [Boolean]
        attr_accessor :is_filterable
        alias_method :is_filterable?, :is_filterable
      
        # Whether the property is user supplied metadata. This out-of-the box
        # placeholder setting can be used to tag derived properties. Its value and
        # interpretation logic should be implemented by API user.
        # Corresponds to the JSON property `isMetadata`
        # @return [Boolean]
        attr_accessor :is_metadata
        alias_method :is_metadata?, :is_metadata
      
        # Whether the property can have multiple values.
        # Corresponds to the JSON property `isRepeatable`
        # @return [Boolean]
        attr_accessor :is_repeatable
        alias_method :is_repeatable?, :is_repeatable
      
        # Whether the property is mandatory. Default is 'false', i.e. populating
        # property value can be skipped. If 'true' then user must populate the value for
        # this property.
        # Corresponds to the JSON property `isRequired`
        # @return [Boolean]
        attr_accessor :is_required
        alias_method :is_required?, :is_required
      
        # Indicates that the property should be included in a global search.
        # Corresponds to the JSON property `isSearchable`
        # @return [Boolean]
        attr_accessor :is_searchable
        alias_method :is_searchable?, :is_searchable
      
        # Configurations for a Map property.
        # Corresponds to the JSON property `mapTypeOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1MapTypeOptions]
        attr_accessor :map_type_options
      
        # Required. The name of the metadata property. Must be unique within a document
        # schema and is case insensitive. Names must be non-blank, start with a letter,
        # and can contain alphanumeric characters and: /, :, -, _, and .
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configurations for a nested structured data property.
        # Corresponds to the JSON property `propertyTypeOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1PropertyTypeOptions]
        attr_accessor :property_type_options
      
        # The retrieval importance of the property during search.
        # Corresponds to the JSON property `retrievalImportance`
        # @return [String]
        attr_accessor :retrieval_importance
      
        # The mapping information between this property to another schema source.
        # Corresponds to the JSON property `schemaSources`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource>]
        attr_accessor :schema_sources
      
        # Configurations for a text property.
        # Corresponds to the JSON property `textTypeOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1TextTypeOptions]
        attr_accessor :text_type_options
      
        # Configurations for a timestamp property.
        # Corresponds to the JSON property `timestampTypeOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1TimestampTypeOptions]
        attr_accessor :timestamp_type_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_time_type_options = args[:date_time_type_options] if args.key?(:date_time_type_options)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enum_type_options = args[:enum_type_options] if args.key?(:enum_type_options)
          @float_type_options = args[:float_type_options] if args.key?(:float_type_options)
          @integer_type_options = args[:integer_type_options] if args.key?(:integer_type_options)
          @is_filterable = args[:is_filterable] if args.key?(:is_filterable)
          @is_metadata = args[:is_metadata] if args.key?(:is_metadata)
          @is_repeatable = args[:is_repeatable] if args.key?(:is_repeatable)
          @is_required = args[:is_required] if args.key?(:is_required)
          @is_searchable = args[:is_searchable] if args.key?(:is_searchable)
          @map_type_options = args[:map_type_options] if args.key?(:map_type_options)
          @name = args[:name] if args.key?(:name)
          @property_type_options = args[:property_type_options] if args.key?(:property_type_options)
          @retrieval_importance = args[:retrieval_importance] if args.key?(:retrieval_importance)
          @schema_sources = args[:schema_sources] if args.key?(:schema_sources)
          @text_type_options = args[:text_type_options] if args.key?(:text_type_options)
          @timestamp_type_options = args[:timestamp_type_options] if args.key?(:timestamp_type_options)
        end
      end
      
      # The schema source information.
      class GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource
        include Google::Apis::Core::Hashable
      
        # The schema name in the source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The Doc AI processor type name.
        # Corresponds to the JSON property `processorType`
        # @return [String]
        attr_accessor :processor_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @processor_type = args[:processor_type] if args.key?(:processor_type)
        end
      end
      
      # 
      class GoogleCloudContentwarehouseV1PropertyFilter
        include Google::Apis::Core::Hashable
      
        # The filter condition. The syntax for this expression is a subset of SQL syntax.
        # Supported operators are: `=`, `!=`, `<`, `<=`, `>`, `>=`, and `~~` where the
        # left of the operator is a property name and the right of the operator is a
        # number or a quoted string. You must escape backslash (\\) and quote (\")
        # characters. `~~` is the LIKE operator. The right of the operator must be a
        # string. The only supported property data type for LIKE is text_values. It
        # provides semantic search functionality by parsing, stemming and doing synonyms
        # expansion against the input query. It matches if the property contains
        # semantic similar content to the query. It is not regex matching or wildcard
        # matching. For example, "property.company ~~ \"google\"" will match records
        # whose property `property.compnay` have values like "Google Inc.", "Google LLC"
        # or "Google Company". Supported functions are `LOWER([property_name])` to
        # perform a case insensitive match and `EMPTY([property_name])` to filter on the
        # existence of a key. Boolean expressions (AND/OR/NOT) are supported up to 3
        # levels of nesting (for example, "((A AND B AND C) OR NOT D) AND E"), a maximum
        # of 100 comparisons or functions are allowed in the expression. The expression
        # must be < 6000 bytes in length. Only properties that are marked filterable are
        # allowed (PropertyDefinition.is_filterable). Property names do not need to be
        # prefixed by the document schema id (as is the case with histograms), however
        # property names will need to be prefixed by its parent hierarchy, if any. For
        # example: top_property_name.sub_property_name. Sample Query: `(LOWER(
        # driving_license)="class \"a\"" OR EMPTY(driving_license)) AND driving_years >
        # 10` CMEK compliant deployment only supports: * Operators: `=`, `<`, `<=`, `>`,
        # and `>=`. * Boolean expressions: AND and OR.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The Document schema name Document.document_schema_name. Format: projects/`
        # project_number`/locations/`location`/documentSchemas/`document_schema_id`.
        # Corresponds to the JSON property `documentSchemaName`
        # @return [String]
        attr_accessor :document_schema_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @document_schema_name = args[:document_schema_name] if args.key?(:document_schema_name)
        end
      end
      
      # Configurations for a nested structured data property.
      class GoogleCloudContentwarehouseV1PropertyTypeOptions
        include Google::Apis::Core::Hashable
      
        # Required. List of property definitions.
        # Corresponds to the JSON property `propertyDefinitions`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1PropertyDefinition>]
        attr_accessor :property_definitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property_definitions = args[:property_definitions] if args.key?(:property_definitions)
        end
      end
      
      # Represents the action responsible for publishing messages to a Pub/Sub topic.
      class GoogleCloudContentwarehouseV1PublishAction
        include Google::Apis::Core::Hashable
      
        # Messages to be published.
        # Corresponds to the JSON property `messages`
        # @return [Array<String>]
        attr_accessor :messages
      
        # The topic id in the Pub/Sub service for which messages will be published to.
        # Corresponds to the JSON property `topicId`
        # @return [String]
        attr_accessor :topic_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
          @topic_id = args[:topic_id] if args.key?(:topic_id)
        end
      end
      
      # Additional result info for the question-answering feature.
      class GoogleCloudContentwarehouseV1QaResult
        include Google::Apis::Core::Hashable
      
        # The calibrated confidence score for this document, in the range [0., 1.]. This
        # represents the confidence level for whether the returned document and snippet
        # answers the user's query.
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # Highlighted sections in the snippet.
        # Corresponds to the JSON property `highlights`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1QaResultHighlight>]
        attr_accessor :highlights
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @highlights = args[:highlights] if args.key?(:highlights)
        end
      end
      
      # A text span in the search text snippet that represents a highlighted section (
      # answer context, highly relevant sentence, etc.).
      class GoogleCloudContentwarehouseV1QaResultHighlight
        include Google::Apis::Core::Hashable
      
        # End index of the highlight, exclusive.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # Start index of the highlight.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # Represents the action responsible for remove a document from a specific folder.
      class GoogleCloudContentwarehouseV1RemoveFromFolderAction
        include Google::Apis::Core::Hashable
      
        # Condition of the action to be executed.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Name of the folder under which new document is to be added. Format: projects/`
        # project_number`/locations/`location`/documents/`document_id`.
        # Corresponds to the JSON property `folder`
        # @return [String]
        attr_accessor :folder
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @folder = args[:folder] if args.key?(:folder)
        end
      end
      
      # Meta information is used to improve the performance of the service.
      class GoogleCloudContentwarehouseV1RequestMetadata
        include Google::Apis::Core::Hashable
      
        # The user information.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UserInfo]
        attr_accessor :user_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_info = args[:user_info] if args.key?(:user_info)
        end
      end
      
      # Additional information returned to client, such as debugging information.
      class GoogleCloudContentwarehouseV1ResponseMetadata
        include Google::Apis::Core::Hashable
      
        # A unique id associated with this call. This id is logged for tracking purpose.
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
      
      # Represents the rule for a content warehouse trigger.
      class GoogleCloudContentwarehouseV1Rule
        include Google::Apis::Core::Hashable
      
        # List of actions that are executed when the rule is satisfied.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Action>]
        attr_accessor :actions
      
        # Represents the conditional expression to be evaluated. Expression should
        # evaluate to a boolean result. When the condition is true actions are executed.
        # Example: user_role = "hsbc_role_1" AND doc.salary > 20000
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Short description of the rule and its context.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ID of the rule. It has to be unique across all the examples. This is managed
        # internally.
        # Corresponds to the JSON property `ruleId`
        # @return [String]
        attr_accessor :rule_id
      
        # Identifies the trigger type for running the policy.
        # Corresponds to the JSON property `triggerType`
        # @return [String]
        attr_accessor :trigger_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @rule_id = args[:rule_id] if args.key?(:rule_id)
          @trigger_type = args[:trigger_type] if args.key?(:trigger_type)
        end
      end
      
      # Represents a rule and outputs of associated actions.
      class GoogleCloudContentwarehouseV1RuleActionsPair
        include Google::Apis::Core::Hashable
      
        # Outputs of executing the actions associated with the above rule.
        # Corresponds to the JSON property `actionOutputs`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ActionOutput>]
        attr_accessor :action_outputs
      
        # Represents the rule for a content warehouse trigger.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Rule]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_outputs = args[:action_outputs] if args.key?(:action_outputs)
          @rule = args[:rule] if args.key?(:rule)
        end
      end
      
      # Records the output of Rule Engine including rule evaluation and actions result.
      class GoogleCloudContentwarehouseV1RuleEngineOutput
        include Google::Apis::Core::Hashable
      
        # Represents the output of the Action Executor.
        # Corresponds to the JSON property `actionExecutorOutput`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ActionExecutorOutput]
        attr_accessor :action_executor_output
      
        # Name of the document against which the rules and actions were evaluated.
        # Corresponds to the JSON property `documentName`
        # @return [String]
        attr_accessor :document_name
      
        # Represents the output of the Rule Evaluator.
        # Corresponds to the JSON property `ruleEvaluatorOutput`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleEvaluatorOutput]
        attr_accessor :rule_evaluator_output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_executor_output = args[:action_executor_output] if args.key?(:action_executor_output)
          @document_name = args[:document_name] if args.key?(:document_name)
          @rule_evaluator_output = args[:rule_evaluator_output] if args.key?(:rule_evaluator_output)
        end
      end
      
      # Represents the output of the Rule Evaluator.
      class GoogleCloudContentwarehouseV1RuleEvaluatorOutput
        include Google::Apis::Core::Hashable
      
        # A subset of triggered rules that failed the validation check(s) after parsing.
        # Corresponds to the JSON property `invalidRules`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1InvalidRule>]
        attr_accessor :invalid_rules
      
        # A subset of triggered rules that are evaluated true for a given request.
        # Corresponds to the JSON property `matchedRules`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Rule>]
        attr_accessor :matched_rules
      
        # List of rules fetched from database for the given request trigger type.
        # Corresponds to the JSON property `triggeredRules`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Rule>]
        attr_accessor :triggered_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invalid_rules = args[:invalid_rules] if args.key?(:invalid_rules)
          @matched_rules = args[:matched_rules] if args.key?(:matched_rules)
          @triggered_rules = args[:triggered_rules] if args.key?(:triggered_rules)
        end
      end
      
      # Represents a set of rules from a single customer.
      class GoogleCloudContentwarehouseV1RuleSet
        include Google::Apis::Core::Hashable
      
        # Short description of the rule-set.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The resource name of the rule set. Managed internally. Format: projects/`
        # project_number`/locations/`location`/ruleSet/`rule_set_id`. The name is
        # ignored when creating a rule set.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of rules given by the customer.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Rule>]
        attr_accessor :rules
      
        # Source of the rules i.e., customer name.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @rules = args[:rules] if args.key?(:rules)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Metadata message of RunPipeline method.
      class GoogleCloudContentwarehouseV1RunPipelineMetadata
        include Google::Apis::Core::Hashable
      
        # The metadata message for Export-to-CDW pipeline.
        # Corresponds to the JSON property `exportToCdwPipelineMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RunPipelineMetadataExportToCdwPipelineMetadata]
        attr_accessor :export_to_cdw_pipeline_metadata
      
        # Number of files that have failed at some point in the pipeline.
        # Corresponds to the JSON property `failedFileCount`
        # @return [Fixnum]
        attr_accessor :failed_file_count
      
        # The metadata message for GcsIngest pipeline.
        # Corresponds to the JSON property `gcsIngestPipelineMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RunPipelineMetadataGcsIngestPipelineMetadata]
        attr_accessor :gcs_ingest_pipeline_metadata
      
        # The list of response details of each document.
        # Corresponds to the JSON property `individualDocumentStatuses`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RunPipelineMetadataIndividualDocumentStatus>]
        attr_accessor :individual_document_statuses
      
        # The metadata message for Process-with-DocAi pipeline.
        # Corresponds to the JSON property `processWithDocAiPipelineMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RunPipelineMetadataProcessWithDocAiPipelineMetadata]
        attr_accessor :process_with_doc_ai_pipeline_metadata
      
        # Number of files that were processed by the pipeline.
        # Corresponds to the JSON property `totalFileCount`
        # @return [Fixnum]
        attr_accessor :total_file_count
      
        # The user information.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UserInfo]
        attr_accessor :user_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_to_cdw_pipeline_metadata = args[:export_to_cdw_pipeline_metadata] if args.key?(:export_to_cdw_pipeline_metadata)
          @failed_file_count = args[:failed_file_count] if args.key?(:failed_file_count)
          @gcs_ingest_pipeline_metadata = args[:gcs_ingest_pipeline_metadata] if args.key?(:gcs_ingest_pipeline_metadata)
          @individual_document_statuses = args[:individual_document_statuses] if args.key?(:individual_document_statuses)
          @process_with_doc_ai_pipeline_metadata = args[:process_with_doc_ai_pipeline_metadata] if args.key?(:process_with_doc_ai_pipeline_metadata)
          @total_file_count = args[:total_file_count] if args.key?(:total_file_count)
          @user_info = args[:user_info] if args.key?(:user_info)
        end
      end
      
      # The metadata message for Export-to-CDW pipeline.
      class GoogleCloudContentwarehouseV1RunPipelineMetadataExportToCdwPipelineMetadata
        include Google::Apis::Core::Hashable
      
        # The output CDW dataset resource name.
        # Corresponds to the JSON property `docAiDataset`
        # @return [String]
        attr_accessor :doc_ai_dataset
      
        # The input list of all the resource names of the documents to be exported.
        # Corresponds to the JSON property `documents`
        # @return [Array<String>]
        attr_accessor :documents
      
        # The output Cloud Storage folder in this pipeline.
        # Corresponds to the JSON property `outputPath`
        # @return [String]
        attr_accessor :output_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @doc_ai_dataset = args[:doc_ai_dataset] if args.key?(:doc_ai_dataset)
          @documents = args[:documents] if args.key?(:documents)
          @output_path = args[:output_path] if args.key?(:output_path)
        end
      end
      
      # The metadata message for GcsIngest pipeline.
      class GoogleCloudContentwarehouseV1RunPipelineMetadataGcsIngestPipelineMetadata
        include Google::Apis::Core::Hashable
      
        # The input Cloud Storage folder in this pipeline. Format: `gs:///`.
        # Corresponds to the JSON property `inputPath`
        # @return [String]
        attr_accessor :input_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_path = args[:input_path] if args.key?(:input_path)
        end
      end
      
      # The status of processing a document.
      class GoogleCloudContentwarehouseV1RunPipelineMetadataIndividualDocumentStatus
        include Google::Apis::Core::Hashable
      
        # Document identifier of an existing document.
        # Corresponds to the JSON property `documentId`
        # @return [String]
        attr_accessor :document_id
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::ContentwarehouseV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The metadata message for Process-with-DocAi pipeline.
      class GoogleCloudContentwarehouseV1RunPipelineMetadataProcessWithDocAiPipelineMetadata
        include Google::Apis::Core::Hashable
      
        # The input list of all the resource names of the documents to be processed.
        # Corresponds to the JSON property `documents`
        # @return [Array<String>]
        attr_accessor :documents
      
        # The DocAI processor information.
        # Corresponds to the JSON property `processorInfo`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ProcessorInfo]
        attr_accessor :processor_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @processor_info = args[:processor_info] if args.key?(:processor_info)
        end
      end
      
      # Request message for DocumentService.RunPipeline.
      class GoogleCloudContentwarehouseV1RunPipelineRequest
        include Google::Apis::Core::Hashable
      
        # The configuration of exporting documents from the Document Warehouse to CDW
        # pipeline.
        # Corresponds to the JSON property `exportCdwPipeline`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ExportToCdwPipeline]
        attr_accessor :export_cdw_pipeline
      
        # The configuration of the Cloud Storage Ingestion pipeline.
        # Corresponds to the JSON property `gcsIngestPipeline`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1GcsIngestPipeline]
        attr_accessor :gcs_ingest_pipeline
      
        # The configuration of the Cloud Storage Ingestion with DocAI Processors
        # pipeline.
        # Corresponds to the JSON property `gcsIngestWithDocAiProcessorsPipeline`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1GcsIngestWithDocAiProcessorsPipeline]
        attr_accessor :gcs_ingest_with_doc_ai_processors_pipeline
      
        # The configuration of processing documents in Document Warehouse with DocAi
        # processors pipeline.
        # Corresponds to the JSON property `processWithDocAiPipeline`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline]
        attr_accessor :process_with_doc_ai_pipeline
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_cdw_pipeline = args[:export_cdw_pipeline] if args.key?(:export_cdw_pipeline)
          @gcs_ingest_pipeline = args[:gcs_ingest_pipeline] if args.key?(:gcs_ingest_pipeline)
          @gcs_ingest_with_doc_ai_processors_pipeline = args[:gcs_ingest_with_doc_ai_processors_pipeline] if args.key?(:gcs_ingest_with_doc_ai_processors_pipeline)
          @process_with_doc_ai_pipeline = args[:process_with_doc_ai_pipeline] if args.key?(:process_with_doc_ai_pipeline)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Request message for DocumentService.SearchDocuments.
      class GoogleCloudContentwarehouseV1SearchDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # Query used to search against documents (keyword, filters, etc.).
        # Corresponds to the JSON property `documentQuery`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentQuery]
        attr_accessor :document_query
      
        # An expression specifying a histogram request against matching documents.
        # Expression syntax is an aggregation function call with histogram facets and
        # other options. The following aggregation functions are supported: * `count(
        # string_histogram_facet)`: Count the number of matching entities for each
        # distinct attribute value. Data types: * Histogram facet (aka filterable
        # properties): Facet names with format <schema id>.<facet>. Facets will have the
        # format of: `a-zA-Z`. If the facet is a child facet, then the parent hierarchy
        # needs to be specified separated by dots in the prefix after the schema id.
        # Thus, the format for a multi- level facet is: <schema id>.<parent facet name>.
        # <child facet name>. Example: schema123.root_parent_facet.middle_facet.
        # child_facet * DocumentSchemaId: (with no schema id prefix) to get histograms
        # for each document type (returns the schema id path, e.g. projects/12345/
        # locations/us-west/documentSchemas/abc123). Example expression: * Document type
        # counts: count('DocumentSchemaId') * For schema id, abc123, get the counts for
        # MORTGAGE_TYPE: count('abc123.MORTGAGE_TYPE')
        # Corresponds to the JSON property `histogramQueries`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1HistogramQuery>]
        attr_accessor :histogram_queries
      
        # An integer that specifies the current offset (that is, starting result
        # location, amongst the documents deemed by the API as relevant) in search
        # results. This field is only considered if page_token is unset. The maximum
        # allowed value is 5000. Otherwise an error is thrown. For example, 0 means to
        # return results starting from the first matching document, and 10 means to
        # return from the 11th document. This can be used for pagination, (for example,
        # pageSize = 10 and offset = 10 means to return from the second page).
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The criteria determining how search results are sorted. For non-empty query,
        # default is `"relevance desc"`. For empty query, default is `"upload_date desc"`
        # . Supported options are: * `"relevance desc"`: By relevance descending, as
        # determined by the API algorithms. * `"upload_date desc"`: By upload date
        # descending. * `"upload_date"`: By upload date ascending. * `"update_date desc"`
        # : By last updated date descending. * `"update_date"`: By last updated date
        # ascending. * `"retrieval_importance desc"`: By retrieval importance of
        # properties descending. This feature is still under development, please do not
        # use unless otherwise instructed to do so.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # A limit on the number of documents returned in the search results. Increasing
        # this value above the default value of 10 can increase search response time.
        # The value can be between 1 and 100.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The token specifying the current offset within search results. See
        # SearchDocumentsResponse.next_page_token for an explanation of how to obtain
        # the next set of query results.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Experimental, do not use. The limit on the number of documents returned for
        # the question-answering feature. To enable the question-answering feature, set [
        # DocumentQuery].is_nl_query to true.
        # Corresponds to the JSON property `qaSizeLimit`
        # @return [Fixnum]
        attr_accessor :qa_size_limit
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        # Controls if the search document request requires the return of a total size of
        # matched documents. See SearchDocumentsResponse.total_size. Enabling this flag
        # may adversely impact performance. Hint: If this is used with pagination, set
        # this flag on the initial query but set this to false on subsequent page calls (
        # keep the total count locally). Defaults to false.
        # Corresponds to the JSON property `requireTotalSize`
        # @return [Boolean]
        attr_accessor :require_total_size
        alias_method :require_total_size?, :require_total_size
      
        # Controls if the search document request requires the return of a total size of
        # matched documents. See SearchDocumentsResponse.total_size.
        # Corresponds to the JSON property `totalResultSize`
        # @return [String]
        attr_accessor :total_result_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_query = args[:document_query] if args.key?(:document_query)
          @histogram_queries = args[:histogram_queries] if args.key?(:histogram_queries)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @qa_size_limit = args[:qa_size_limit] if args.key?(:qa_size_limit)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
          @require_total_size = args[:require_total_size] if args.key?(:require_total_size)
          @total_result_size = args[:total_result_size] if args.key?(:total_result_size)
        end
      end
      
      # Response message for DocumentService.SearchDocuments.
      class GoogleCloudContentwarehouseV1SearchDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The histogram results that match with the specified SearchDocumentsRequest.
        # histogram_queries.
        # Corresponds to the JSON property `histogramQueryResults`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1HistogramQueryResult>]
        attr_accessor :histogram_query_results
      
        # The document entities that match the specified SearchDocumentsRequest.
        # Corresponds to the JSON property `matchingDocuments`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument>]
        attr_accessor :matching_documents
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ResponseMetadata]
        attr_accessor :metadata
      
        # The token that specifies the starting position of the next page of results.
        # This field is empty if there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Experimental. Question answer from the query against the document.
        # Corresponds to the JSON property `questionAnswer`
        # @return [String]
        attr_accessor :question_answer
      
        # The total number of matched documents which is available only if the client
        # set SearchDocumentsRequest.require_total_size to `true` or set
        # SearchDocumentsRequest.total_result_size to `ESTIMATED_SIZE` or `ACTUAL_SIZE`.
        # Otherwise, the value will be `-1`. Typically a UI would handle this condition
        # by displaying "of many", for example: "Displaying 10 of many".
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @histogram_query_results = args[:histogram_query_results] if args.key?(:histogram_query_results)
          @matching_documents = args[:matching_documents] if args.key?(:matching_documents)
          @metadata = args[:metadata] if args.key?(:metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @question_answer = args[:question_answer] if args.key?(:question_answer)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Document entry with metadata inside SearchDocumentsResponse
      class GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument
        include Google::Apis::Core::Hashable
      
        # Defines the structure for content warehouse document proto.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document]
        attr_accessor :document
      
        # Return the 1-based page indices where those pages have one or more matched
        # tokens.
        # Corresponds to the JSON property `matchedTokenPageIndices`
        # @return [Array<Fixnum>]
        attr_accessor :matched_token_page_indices
      
        # Additional result info for the question-answering feature.
        # Corresponds to the JSON property `qaResult`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1QaResult]
        attr_accessor :qa_result
      
        # Contains snippets of text from the document full raw text that most closely
        # match a search query's keywords, if available. All HTML tags in the original
        # fields are stripped when returned in this field, and matching query keywords
        # are enclosed in HTML bold tags. If the question-answering feature is enabled,
        # this field will instead contain a snippet that answers the user's natural-
        # language query. No HTML bold tags will be present, and highlights in the
        # answer snippet can be found in QAResult.highlights.
        # Corresponds to the JSON property `searchTextSnippet`
        # @return [String]
        attr_accessor :search_text_snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @matched_token_page_indices = args[:matched_token_page_indices] if args.key?(:matched_token_page_indices)
          @qa_result = args[:qa_result] if args.key?(:qa_result)
          @search_text_snippet = args[:search_text_snippet] if args.key?(:search_text_snippet)
        end
      end
      
      # Request message for DocumentService.SetAcl.
      class GoogleCloudContentwarehouseV1SetAclRequest
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
        # @return [Google::Apis::ContentwarehouseV1::GoogleIamV1Policy]
        attr_accessor :policy
      
        # For Set Project ACL only. Authorization check for end user will be ignored
        # when project_owner=true.
        # Corresponds to the JSON property `projectOwner`
        # @return [Boolean]
        attr_accessor :project_owner
        alias_method :project_owner?, :project_owner
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @project_owner = args[:project_owner] if args.key?(:project_owner)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
        end
      end
      
      # Response message for DocumentService.SetAcl.
      class GoogleCloudContentwarehouseV1SetAclResponse
        include Google::Apis::Core::Hashable
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ResponseMetadata]
        attr_accessor :metadata
      
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
        # @return [Google::Apis::ContentwarehouseV1::GoogleIamV1Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Represents a list of synonyms for a given context. For example a context "
      # sales" could contain: Synonym 1: sale, invoice, bill, order Synonym 2: money,
      # credit, finance, payment Synonym 3: shipping, freight, transport Each
      # SynonymSets should be disjoint
      class GoogleCloudContentwarehouseV1SynonymSet
        include Google::Apis::Core::Hashable
      
        # This is a freeform field. Example contexts can be "sales," "engineering," "
        # real estate," "accounting," etc. The context can be supplied during search
        # requests.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        # The resource name of the SynonymSet This is mandatory for google.api.resource.
        # Format: projects/`project_number`/locations/`location`/synonymSets/`context`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of Synonyms for the context.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1SynonymSetSynonym>]
        attr_accessor :synonyms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @name = args[:name] if args.key?(:name)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
        end
      end
      
      # Represents a list of words given by the customer All these words are synonyms
      # of each other.
      class GoogleCloudContentwarehouseV1SynonymSetSynonym
        include Google::Apis::Core::Hashable
      
        # For example: sale, invoice, bill, order
        # Corresponds to the JSON property `words`
        # @return [Array<String>]
        attr_accessor :words
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @words = args[:words] if args.key?(:words)
        end
      end
      
      # String/text values.
      class GoogleCloudContentwarehouseV1TextArray
        include Google::Apis::Core::Hashable
      
        # List of text values.
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
      
      # Configurations for a text property.
      class GoogleCloudContentwarehouseV1TextTypeOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Filter on create timestamp or update timestamp of documents.
      class GoogleCloudContentwarehouseV1TimeFilter
        include Google::Apis::Core::Hashable
      
        # Specifies which time field to filter documents on. Defaults to TimeField.
        # UPLOAD_TIME.
        # Corresponds to the JSON property `timeField`
        # @return [String]
        attr_accessor :time_field
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeInterval]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_field = args[:time_field] if args.key?(:time_field)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # Timestamp values.
      class GoogleCloudContentwarehouseV1TimestampArray
        include Google::Apis::Core::Hashable
      
        # List of timestamp values.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1TimestampValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Configurations for a timestamp property.
      class GoogleCloudContentwarehouseV1TimestampTypeOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Timestamp value type.
      class GoogleCloudContentwarehouseV1TimestampValue
        include Google::Apis::Core::Hashable
      
        # The string must represent a valid instant in UTC and is parsed using java.time.
        # format.DateTimeFormatter.ISO_INSTANT. e.g. "2013-09-29T18:46:19Z"
        # Corresponds to the JSON property `textValue`
        # @return [String]
        attr_accessor :text_value
      
        # Timestamp value
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text_value = args[:text_value] if args.key?(:text_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # Metadata object for UpdateDocument request (currently empty).
      class GoogleCloudContentwarehouseV1UpdateDocumentMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for DocumentService.UpdateDocument.
      class GoogleCloudContentwarehouseV1UpdateDocumentRequest
        include Google::Apis::Core::Hashable
      
        # Request Option for processing Cloud AI Document in CW Document.
        # Corresponds to the JSON property `cloudAiDocumentOption`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1CloudAiDocumentOption]
        attr_accessor :cloud_ai_document_option
      
        # Defines the structure for content warehouse document proto.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document]
        attr_accessor :document
      
        # Meta information is used to improve the performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RequestMetadata]
        attr_accessor :request_metadata
      
        # Options for Update operations.
        # Corresponds to the JSON property `updateOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1UpdateOptions]
        attr_accessor :update_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_ai_document_option = args[:cloud_ai_document_option] if args.key?(:cloud_ai_document_option)
          @document = args[:document] if args.key?(:document)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
          @update_options = args[:update_options] if args.key?(:update_options)
        end
      end
      
      # Response message for DocumentService.UpdateDocument.
      class GoogleCloudContentwarehouseV1UpdateDocumentResponse
        include Google::Apis::Core::Hashable
      
        # Defines the structure for content warehouse document proto.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1Document]
        attr_accessor :document
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1ResponseMetadata]
        attr_accessor :metadata
      
        # Records the output of Rule Engine including rule evaluation and actions result.
        # Corresponds to the JSON property `ruleEngineOutput`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleEngineOutput]
        attr_accessor :rule_engine_output
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @metadata = args[:metadata] if args.key?(:metadata)
          @rule_engine_output = args[:rule_engine_output] if args.key?(:rule_engine_output)
        end
      end
      
      # Request message for DocumentSchemaService.UpdateDocumentSchema.
      class GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest
        include Google::Apis::Core::Hashable
      
        # A document schema used to define document structure.
        # Corresponds to the JSON property `documentSchema`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1DocumentSchema]
        attr_accessor :document_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_schema = args[:document_schema] if args.key?(:document_schema)
        end
      end
      
      # Options for Update operations.
      class GoogleCloudContentwarehouseV1UpdateOptions
        include Google::Apis::Core::Hashable
      
        # Options for merging updated fields.
        # Corresponds to the JSON property `mergeFieldsOptions`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1MergeFieldsOptions]
        attr_accessor :merge_fields_options
      
        # Field mask for merging Document fields. For the `FieldMask` definition, see
        # https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        # fieldmask
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        # Type for update.
        # Corresponds to the JSON property `updateType`
        # @return [String]
        attr_accessor :update_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merge_fields_options = args[:merge_fields_options] if args.key?(:merge_fields_options)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
          @update_type = args[:update_type] if args.key?(:update_type)
        end
      end
      
      # Request message for RuleSetService.UpdateRuleSet.
      class GoogleCloudContentwarehouseV1UpdateRuleSetRequest
        include Google::Apis::Core::Hashable
      
        # Represents a set of rules from a single customer.
        # Corresponds to the JSON property `ruleSet`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1RuleSet]
        attr_accessor :rule_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule_set = args[:rule_set] if args.key?(:rule_set)
        end
      end
      
      # The user information.
      class GoogleCloudContentwarehouseV1UserInfo
        include Google::Apis::Core::Hashable
      
        # The unique group identifications which the user is belong to. The format is "
        # group:yyyy@example.com";
        # Corresponds to the JSON property `groupIds`
        # @return [Array<String>]
        attr_accessor :group_ids
      
        # A unique user identification string, as determined by the client. The maximum
        # number of allowed characters is 255. Allowed characters include numbers 0 to 9,
        # uppercase and lowercase letters, and restricted special symbols (:, @, +, -,
        # _, ~) The format is "user:xxxx@example.com";
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_ids = args[:group_ids] if args.key?(:group_ids)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # `Value` represents a dynamically typed value which can be either be a float, a
      # integer, a string, or a datetime value. A producer of value is expected to set
      # one of these variants. Absence of any variant indicates an error.
      class GoogleCloudContentwarehouseV1Value
        include Google::Apis::Core::Hashable
      
        # Represents a boolean value.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `datetimeValue`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeDateTime]
        attr_accessor :datetime_value
      
        # Represents the string value of the enum field.
        # Corresponds to the JSON property `enumValue`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1EnumValue]
        attr_accessor :enum_value
      
        # Represents a float value.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # Represents a integer value.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Represents a string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Timestamp value type.
        # Corresponds to the JSON property `timestampValue`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudContentwarehouseV1TimestampValue]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
          @enum_value = args[:enum_value] if args.key?(:enum_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # Specifies the schema property name.
      class GoogleCloudContentwarehouseV1WeightedSchemaProperty
        include Google::Apis::Core::Hashable
      
        # The document schema name.
        # Corresponds to the JSON property `documentSchemaName`
        # @return [String]
        attr_accessor :document_schema_name
      
        # The property definition names in the schema.
        # Corresponds to the JSON property `propertyNames`
        # @return [Array<String>]
        attr_accessor :property_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_schema_name = args[:document_schema_name] if args.key?(:document_schema_name)
          @property_names = args[:property_names] if args.key?(:property_names)
        end
      end
      
      # Metadata object for CreateDocument request (currently empty).
      class GoogleCloudContentwarehouseV1beta1CreateDocumentMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for projectService.InitializeProject
      class GoogleCloudContentwarehouseV1beta1InitializeProjectResponse
        include Google::Apis::Core::Hashable
      
        # The message of the project initialization process.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The state of the project initialization process.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata object for UpdateDocument request (currently empty).
      class GoogleCloudContentwarehouseV1beta1UpdateDocumentMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encodes the detailed information of a barcode.
      class GoogleCloudDocumentaiV1Barcode
        include Google::Apis::Core::Hashable
      
        # Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. -
        # `CODE_39`: Code 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type.
        # - `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13
        # type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`: UPC-A
        # type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D Aztec code
        # type. - `DATABAR`: GS1 DataBar code type.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https:/
        # /www.google.com;;'`.
        # Corresponds to the JSON property `rawValue`
        # @return [String]
        attr_accessor :raw_value
      
        # Value format describes the format of the value that a barcode encodes. The
        # supported formats are: - `CONTACT_INFO`: Contact information. - `EMAIL`: Email
        # address. - `ISBN`: ISBN identifier. - `PHONE`: Phone number. - `PRODUCT`:
        # Product. - `SMS`: SMS message. - `TEXT`: Text string. - `URL`: URL address. - `
        # WIFI`: Wifi information. - `GEO`: Geo-localization. - `CALENDAR_EVENT`:
        # Calendar event. - `DRIVER_LICENSE`: Driver's license.
        # Corresponds to the JSON property `valueFormat`
        # @return [String]
        attr_accessor :value_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @raw_value = args[:raw_value] if args.key?(:raw_value)
          @value_format = args[:value_format] if args.key?(:value_format)
        end
      end
      
      # A bounding polygon for the detected image annotation.
      class GoogleCloudDocumentaiV1BoundingPoly
        include Google::Apis::Core::Hashable
      
        # The bounding polygon normalized vertices.
        # Corresponds to the JSON property `normalizedVertices`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1NormalizedVertex>]
        attr_accessor :normalized_vertices
      
        # The bounding polygon vertices.
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_vertices = args[:normalized_vertices] if args.key?(:normalized_vertices)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # Document represents the canonical document resource in Document AI. It is an
      # interchange format that provides insights into documents and allows for
      # collaboration between users and Document AI to iterate and optimize for
      # quality.
      class GoogleCloudDocumentaiV1Document
        include Google::Apis::Core::Hashable
      
        # Represents the chunks that the document is divided into.
        # Corresponds to the JSON property `chunkedDocument`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentChunkedDocument]
        attr_accessor :chunked_document
      
        # Optional. Inline document content, represented as a stream of bytes. Note: As
        # with all `bytes` fields, protobuffers use a pure binary representation,
        # whereas JSON representations use base64.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # Represents the parsed layout of a document as a collection of blocks that the
        # document is divided into.
        # Corresponds to the JSON property `documentLayout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayout]
        attr_accessor :document_layout
      
        # A list of entities detected on Document.text. For document shards, entities in
        # this list may cross shard boundaries.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentEntity>]
        attr_accessor :entities
      
        # Placeholder. Relationship among Document.entities.
        # Corresponds to the JSON property `entityRelations`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentEntityRelation>]
        attr_accessor :entity_relations
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ContentwarehouseV1::GoogleRpcStatus]
        attr_accessor :error
      
        # An IANA published [media type (MIME type)](https://www.iana.org/assignments/
        # media-types/media-types.xhtml).
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Visual page layout for the Document.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPage>]
        attr_accessor :pages
      
        # Placeholder. Revision history of this document.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentRevision>]
        attr_accessor :revisions
      
        # For a large document, sharding may be performed to produce several document
        # shards. Each document shard contains this field to detail which shard it is.
        # Corresponds to the JSON property `shardInfo`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentShardInfo]
        attr_accessor :shard_info
      
        # Optional. UTF-8 encoded text in reading order from the document.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Placeholder. A list of text corrections made to Document.text. This is usually
        # used for annotating corrections to OCR mistakes. Text changes for a given
        # revision may not overlap with each other.
        # Corresponds to the JSON property `textChanges`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentTextChange>]
        attr_accessor :text_changes
      
        # Styles for the Document.text.
        # Corresponds to the JSON property `textStyles`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentStyle>]
        attr_accessor :text_styles
      
        # Optional. Currently supports Google Cloud Storage URI of the form `gs://
        # bucket_name/object_name`. Object versioning is not supported. For more
        # information, refer to [Google Cloud Storage Request URIs](https://cloud.google.
        # com/storage/docs/reference-uris).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chunked_document = args[:chunked_document] if args.key?(:chunked_document)
          @content = args[:content] if args.key?(:content)
          @document_layout = args[:document_layout] if args.key?(:document_layout)
          @entities = args[:entities] if args.key?(:entities)
          @entity_relations = args[:entity_relations] if args.key?(:entity_relations)
          @error = args[:error] if args.key?(:error)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @pages = args[:pages] if args.key?(:pages)
          @revisions = args[:revisions] if args.key?(:revisions)
          @shard_info = args[:shard_info] if args.key?(:shard_info)
          @text = args[:text] if args.key?(:text)
          @text_changes = args[:text_changes] if args.key?(:text_changes)
          @text_styles = args[:text_styles] if args.key?(:text_styles)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents the chunks that the document is divided into.
      class GoogleCloudDocumentaiV1DocumentChunkedDocument
        include Google::Apis::Core::Hashable
      
        # List of chunks.
        # Corresponds to the JSON property `chunks`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentChunkedDocumentChunk>]
        attr_accessor :chunks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chunks = args[:chunks] if args.key?(:chunks)
        end
      end
      
      # Represents a chunk.
      class GoogleCloudDocumentaiV1DocumentChunkedDocumentChunk
        include Google::Apis::Core::Hashable
      
        # ID of the chunk.
        # Corresponds to the JSON property `chunkId`
        # @return [String]
        attr_accessor :chunk_id
      
        # Text content of the chunk.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Page footers associated with the chunk.
        # Corresponds to the JSON property `pageFooters`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageFooter>]
        attr_accessor :page_footers
      
        # Page headers associated with the chunk.
        # Corresponds to the JSON property `pageHeaders`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageHeader>]
        attr_accessor :page_headers
      
        # Represents where the chunk starts and ends in the document.
        # Corresponds to the JSON property `pageSpan`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan]
        attr_accessor :page_span
      
        # Unused.
        # Corresponds to the JSON property `sourceBlockIds`
        # @return [Array<String>]
        attr_accessor :source_block_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chunk_id = args[:chunk_id] if args.key?(:chunk_id)
          @content = args[:content] if args.key?(:content)
          @page_footers = args[:page_footers] if args.key?(:page_footers)
          @page_headers = args[:page_headers] if args.key?(:page_headers)
          @page_span = args[:page_span] if args.key?(:page_span)
          @source_block_ids = args[:source_block_ids] if args.key?(:source_block_ids)
        end
      end
      
      # Represents the page footer associated with the chunk.
      class GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageFooter
        include Google::Apis::Core::Hashable
      
        # Represents where the chunk starts and ends in the document.
        # Corresponds to the JSON property `pageSpan`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan]
        attr_accessor :page_span
      
        # Footer in text format.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_span = args[:page_span] if args.key?(:page_span)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents the page header associated with the chunk.
      class GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageHeader
        include Google::Apis::Core::Hashable
      
        # Represents where the chunk starts and ends in the document.
        # Corresponds to the JSON property `pageSpan`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan]
        attr_accessor :page_span
      
        # Header in text format.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_span = args[:page_span] if args.key?(:page_span)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents where the chunk starts and ends in the document.
      class GoogleCloudDocumentaiV1DocumentChunkedDocumentChunkChunkPageSpan
        include Google::Apis::Core::Hashable
      
        # Page where chunk ends in the document.
        # Corresponds to the JSON property `pageEnd`
        # @return [Fixnum]
        attr_accessor :page_end
      
        # Page where chunk starts in the document.
        # Corresponds to the JSON property `pageStart`
        # @return [Fixnum]
        attr_accessor :page_start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_end = args[:page_end] if args.key?(:page_end)
          @page_start = args[:page_start] if args.key?(:page_start)
        end
      end
      
      # Represents the parsed layout of a document as a collection of blocks that the
      # document is divided into.
      class GoogleCloudDocumentaiV1DocumentDocumentLayout
        include Google::Apis::Core::Hashable
      
        # List of blocks in the document.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock>]
        attr_accessor :blocks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
        end
      end
      
      # Represents a block. A block could be one of the various types (text, table,
      # list) supported.
      class GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock
        include Google::Apis::Core::Hashable
      
        # ID of the block.
        # Corresponds to the JSON property `blockId`
        # @return [String]
        attr_accessor :block_id
      
        # Represents a list type block.
        # Corresponds to the JSON property `listBlock`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock]
        attr_accessor :list_block
      
        # Represents where the block starts and ends in the document.
        # Corresponds to the JSON property `pageSpan`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan]
        attr_accessor :page_span
      
        # Represents a table type block.
        # Corresponds to the JSON property `tableBlock`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock]
        attr_accessor :table_block
      
        # Represents a text type block.
        # Corresponds to the JSON property `textBlock`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock]
        attr_accessor :text_block
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @block_id = args[:block_id] if args.key?(:block_id)
          @list_block = args[:list_block] if args.key?(:list_block)
          @page_span = args[:page_span] if args.key?(:page_span)
          @table_block = args[:table_block] if args.key?(:table_block)
          @text_block = args[:text_block] if args.key?(:text_block)
        end
      end
      
      # Represents a list type block.
      class GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock
        include Google::Apis::Core::Hashable
      
        # List entries that constitute a list block.
        # Corresponds to the JSON property `listEntries`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry>]
        attr_accessor :list_entries
      
        # Type of the list_entries (if exist). Available options are `ordered` and `
        # unordered`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_entries = args[:list_entries] if args.key?(:list_entries)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents an entry in the list.
      class GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry
        include Google::Apis::Core::Hashable
      
        # A list entry is a list of blocks. Repeated blocks support further hierarchies
        # and nested blocks.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock>]
        attr_accessor :blocks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
        end
      end
      
      # Represents where the block starts and ends in the document.
      class GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan
        include Google::Apis::Core::Hashable
      
        # Page where block ends in the document.
        # Corresponds to the JSON property `pageEnd`
        # @return [Fixnum]
        attr_accessor :page_end
      
        # Page where block starts in the document.
        # Corresponds to the JSON property `pageStart`
        # @return [Fixnum]
        attr_accessor :page_start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_end = args[:page_end] if args.key?(:page_end)
          @page_start = args[:page_start] if args.key?(:page_start)
        end
      end
      
      # Represents a table type block.
      class GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock
        include Google::Apis::Core::Hashable
      
        # Body rows containing main table content.
        # Corresponds to the JSON property `bodyRows`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow>]
        attr_accessor :body_rows
      
        # Table caption/title.
        # Corresponds to the JSON property `caption`
        # @return [String]
        attr_accessor :caption
      
        # Header rows at the top of the table.
        # Corresponds to the JSON property `headerRows`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow>]
        attr_accessor :header_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_rows = args[:body_rows] if args.key?(:body_rows)
          @caption = args[:caption] if args.key?(:caption)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
        end
      end
      
      # Represents a cell in a table row.
      class GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell
        include Google::Apis::Core::Hashable
      
        # A table cell is a list of blocks. Repeated blocks support further hierarchies
        # and nested blocks.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock>]
        attr_accessor :blocks
      
        # How many columns this cell spans.
        # Corresponds to the JSON property `colSpan`
        # @return [Fixnum]
        attr_accessor :col_span
      
        # How many rows this cell spans.
        # Corresponds to the JSON property `rowSpan`
        # @return [Fixnum]
        attr_accessor :row_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
          @col_span = args[:col_span] if args.key?(:col_span)
          @row_span = args[:row_span] if args.key?(:row_span)
        end
      end
      
      # Represents a row in a table.
      class GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
        include Google::Apis::Core::Hashable
      
        # A table row is a list of table cells.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # Represents a text type block.
      class GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock
        include Google::Apis::Core::Hashable
      
        # A text block could further have child blocks. Repeated blocks support further
        # hierarchies and nested blocks.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlock>]
        attr_accessor :blocks
      
        # Text content stored in the block.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Type of the text in the block. Available options are: `paragraph`, `subtitle`,
        # `heading-1`, `heading-2`, `heading-3`, `heading-4`, `heading-5`, `header`, `
        # footer`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
          @text = args[:text] if args.key?(:text)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An entity that could be a phrase in the text or a property that belongs to the
      # document. It is a known entity type, such as a person, an organization, or
      # location.
      class GoogleCloudDocumentaiV1DocumentEntity
        include Google::Apis::Core::Hashable
      
        # Optional. Confidence of detected Schema entity. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Optional. Canonical id. This will be a unique value in the entity list for
        # this document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Deprecated. Use `id` field instead.
        # Corresponds to the JSON property `mentionId`
        # @return [String]
        attr_accessor :mention_id
      
        # Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
        # Corresponds to the JSON property `mentionText`
        # @return [String]
        attr_accessor :mention_text
      
        # Parsed and normalized entity value.
        # Corresponds to the JSON property `normalizedValue`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentEntityNormalizedValue]
        attr_accessor :normalized_value
      
        # Referencing the visual context of the entity in the Document.pages. Page
        # anchors can be cross-page, consist of multiple bounding polygons and
        # optionally reference specific layout element types.
        # Corresponds to the JSON property `pageAnchor`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageAnchor]
        attr_accessor :page_anchor
      
        # Optional. Entities can be nested to form a hierarchical data structure
        # representing the content in the document.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentEntity>]
        attr_accessor :properties
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        # Optional. Whether the entity will be redacted for de-identification purposes.
        # Corresponds to the JSON property `redacted`
        # @return [Boolean]
        attr_accessor :redacted
        alias_method :redacted?, :redacted
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Required. Entity type from a schema e.g. `Address`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @id = args[:id] if args.key?(:id)
          @mention_id = args[:mention_id] if args.key?(:mention_id)
          @mention_text = args[:mention_text] if args.key?(:mention_text)
          @normalized_value = args[:normalized_value] if args.key?(:normalized_value)
          @page_anchor = args[:page_anchor] if args.key?(:page_anchor)
          @properties = args[:properties] if args.key?(:properties)
          @provenance = args[:provenance] if args.key?(:provenance)
          @redacted = args[:redacted] if args.key?(:redacted)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Parsed and normalized entity value.
      class GoogleCloudDocumentaiV1DocumentEntityNormalizedValue
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an internationalization-ready address widget
        # such as https://github.com/google/libaddressinput) - Users should not be
        # presented with UI elements for input or editing of fields outside countries
        # where that field is used. For more guidance on how to use this schema, please
        # see: https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `addressValue`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypePostalAddress]
        attr_accessor :address_value
      
        # Boolean value. Can be used for entities with binary values, or for checkboxes.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeDate]
        attr_accessor :date_value
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `datetimeValue`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeDateTime]
        attr_accessor :datetime_value
      
        # Float value.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # Integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeMoney]
        attr_accessor :money_value
      
        # Optional. An optional field to store a normalized string. For some entity
        # types, one of respective `structured_value` fields may also be populated. Also
        # not all the types of `structured_value` will be normalized. For example, some
        # processors may not generate `float` or `integer` normalized text by default.
        # Below are sample formats mapped to structured values. - Money/Currency type (`
        # money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in
        # the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO
        # 8601 text format.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_value = args[:address_value] if args.key?(:address_value)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @money_value = args[:money_value] if args.key?(:money_value)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Relationship between Entities.
      class GoogleCloudDocumentaiV1DocumentEntityRelation
        include Google::Apis::Core::Hashable
      
        # Object entity id.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Relationship description.
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        # Subject entity id.
        # Corresponds to the JSON property `subjectId`
        # @return [String]
        attr_accessor :subject_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @relation = args[:relation] if args.key?(:relation)
          @subject_id = args[:subject_id] if args.key?(:subject_id)
        end
      end
      
      # A page in a Document.
      class GoogleCloudDocumentaiV1DocumentPage
        include Google::Apis::Core::Hashable
      
        # A list of visually detected text blocks on the page. A block has a set of
        # lines (collected into paragraphs) that have a common line-spacing and
        # orientation.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageBlock>]
        attr_accessor :blocks
      
        # A list of detected barcodes.
        # Corresponds to the JSON property `detectedBarcodes`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedBarcode>]
        attr_accessor :detected_barcodes
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Dimension for the page.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDimension]
        attr_accessor :dimension
      
        # A list of visually detected form fields on the page.
        # Corresponds to the JSON property `formFields`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageFormField>]
        attr_accessor :form_fields
      
        # Rendered image contents for this page.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageImage]
        attr_accessor :image
      
        # Image quality scores for the page image.
        # Corresponds to the JSON property `imageQualityScores`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageImageQualityScores]
        attr_accessor :image_quality_scores
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # A list of visually detected text lines on the page. A collection of tokens
        # that a human would perceive as a line.
        # Corresponds to the JSON property `lines`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLine>]
        attr_accessor :lines
      
        # 1-based index for current Page in a parent Document. Useful when a page is
        # taken out of a Document for individual processing.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        # A list of visually detected text paragraphs on the page. A collection of lines
        # that a human would perceive as a paragraph.
        # Corresponds to the JSON property `paragraphs`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageParagraph>]
        attr_accessor :paragraphs
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        # A list of visually detected symbols on the page.
        # Corresponds to the JSON property `symbols`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageSymbol>]
        attr_accessor :symbols
      
        # A list of visually detected tables on the page.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageTable>]
        attr_accessor :tables
      
        # A list of visually detected tokens on the page.
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageToken>]
        attr_accessor :tokens
      
        # Transformation matrices that were applied to the original document image to
        # produce Page.image.
        # Corresponds to the JSON property `transforms`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageMatrix>]
        attr_accessor :transforms
      
        # A list of detected non-text visual elements e.g. checkbox, signature etc. on
        # the page.
        # Corresponds to the JSON property `visualElements`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageVisualElement>]
        attr_accessor :visual_elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
          @detected_barcodes = args[:detected_barcodes] if args.key?(:detected_barcodes)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @dimension = args[:dimension] if args.key?(:dimension)
          @form_fields = args[:form_fields] if args.key?(:form_fields)
          @image = args[:image] if args.key?(:image)
          @image_quality_scores = args[:image_quality_scores] if args.key?(:image_quality_scores)
          @layout = args[:layout] if args.key?(:layout)
          @lines = args[:lines] if args.key?(:lines)
          @page_number = args[:page_number] if args.key?(:page_number)
          @paragraphs = args[:paragraphs] if args.key?(:paragraphs)
          @provenance = args[:provenance] if args.key?(:provenance)
          @symbols = args[:symbols] if args.key?(:symbols)
          @tables = args[:tables] if args.key?(:tables)
          @tokens = args[:tokens] if args.key?(:tokens)
          @transforms = args[:transforms] if args.key?(:transforms)
          @visual_elements = args[:visual_elements] if args.key?(:visual_elements)
        end
      end
      
      # Referencing the visual context of the entity in the Document.pages. Page
      # anchors can be cross-page, consist of multiple bounding polygons and
      # optionally reference specific layout element types.
      class GoogleCloudDocumentaiV1DocumentPageAnchor
        include Google::Apis::Core::Hashable
      
        # One or more references to visual page elements
        # Corresponds to the JSON property `pageRefs`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>]
        attr_accessor :page_refs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_refs = args[:page_refs] if args.key?(:page_refs)
        end
      end
      
      # Represents a weak reference to a page element within a document.
      class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Optional. Deprecated. Use PageRef.bounding_poly instead.
        # Corresponds to the JSON property `layoutId`
        # @return [String]
        attr_accessor :layout_id
      
        # Optional. The type of the layout element that is being referenced if any.
        # Corresponds to the JSON property `layoutType`
        # @return [String]
        attr_accessor :layout_type
      
        # Required. Index into the Document.pages element, for example using `Document.
        # pages` to locate the related page element. This field is skipped when its
        # value is the default `0`. See https://developers.google.com/protocol-buffers/
        # docs/proto3#json.
        # Corresponds to the JSON property `page`
        # @return [Fixnum]
        attr_accessor :page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @layout_id = args[:layout_id] if args.key?(:layout_id)
          @layout_type = args[:layout_type] if args.key?(:layout_type)
          @page = args[:page] if args.key?(:page)
        end
      end
      
      # A block has a set of lines (collected into paragraphs) that have a common line-
      # spacing and orientation.
      class GoogleCloudDocumentaiV1DocumentPageBlock
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A detected barcode.
      class GoogleCloudDocumentaiV1DocumentPageDetectedBarcode
        include Google::Apis::Core::Hashable
      
        # Encodes the detailed information of a barcode.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1Barcode]
        attr_accessor :barcode
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @barcode = args[:barcode] if args.key?(:barcode)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # Detected language for a structural component.
      class GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
        include Google::Apis::Core::Hashable
      
        # Confidence of detected language. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The [BCP-47 language code](https://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier), such as `en-US` or `sr-Latn`.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Dimension for the page.
      class GoogleCloudDocumentaiV1DocumentPageDimension
        include Google::Apis::Core::Hashable
      
        # Page height.
        # Corresponds to the JSON property `height`
        # @return [Float]
        attr_accessor :height
      
        # Dimension unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Page width.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @unit = args[:unit] if args.key?(:unit)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # A form field detected on the page.
      class GoogleCloudDocumentaiV1DocumentPageFormField
        include Google::Apis::Core::Hashable
      
        # Created for Labeling UI to export key text. If corrections were made to the
        # text identified by the `field_name.text_anchor`, this field will contain the
        # correction.
        # Corresponds to the JSON property `correctedKeyText`
        # @return [String]
        attr_accessor :corrected_key_text
      
        # Created for Labeling UI to export value text. If corrections were made to the
        # text identified by the `field_value.text_anchor`, this field will contain the
        # correction.
        # Corresponds to the JSON property `correctedValueText`
        # @return [String]
        attr_accessor :corrected_value_text
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldName`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :field_name
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldValue`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :field_value
      
        # A list of detected languages for name together with confidence.
        # Corresponds to the JSON property `nameDetectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :name_detected_languages
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        # A list of detected languages for value together with confidence.
        # Corresponds to the JSON property `valueDetectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :value_detected_languages
      
        # If the value is non-textual, this field represents the type. Current valid
        # values are: - blank (this indicates the `field_value` is normal text) - `
        # unfilled_checkbox` - `filled_checkbox`
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corrected_key_text = args[:corrected_key_text] if args.key?(:corrected_key_text)
          @corrected_value_text = args[:corrected_value_text] if args.key?(:corrected_value_text)
          @field_name = args[:field_name] if args.key?(:field_name)
          @field_value = args[:field_value] if args.key?(:field_value)
          @name_detected_languages = args[:name_detected_languages] if args.key?(:name_detected_languages)
          @provenance = args[:provenance] if args.key?(:provenance)
          @value_detected_languages = args[:value_detected_languages] if args.key?(:value_detected_languages)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Rendered image contents for this page.
      class GoogleCloudDocumentaiV1DocumentPageImage
        include Google::Apis::Core::Hashable
      
        # Raw byte content of the image.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # Height of the image in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Encoding [media type (MIME type)](https://www.iana.org/assignments/media-types/
        # media-types.xhtml) for the image.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Width of the image in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @height = args[:height] if args.key?(:height)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Image quality scores for the page image.
      class GoogleCloudDocumentaiV1DocumentPageImageQualityScores
        include Google::Apis::Core::Hashable
      
        # A list of detected defects.
        # Corresponds to the JSON property `detectedDefects`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>]
        attr_accessor :detected_defects
      
        # The overall quality score. Range `[0, 1]` where `1` is perfect quality.
        # Corresponds to the JSON property `qualityScore`
        # @return [Float]
        attr_accessor :quality_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_defects = args[:detected_defects] if args.key?(:detected_defects)
          @quality_score = args[:quality_score] if args.key?(:quality_score)
        end
      end
      
      # Image Quality Defects
      class GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
        include Google::Apis::Core::Hashable
      
        # Confidence of detected defect. Range `[0, 1]` where `1` indicates strong
        # confidence that the defect exists.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Name of the defect type. Supported values are: - `quality/defect_blurry` - `
        # quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `
        # quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/
        # defect_text_cutoff` - `quality/defect_glare`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Visual element describing a layout unit on a page.
      class GoogleCloudDocumentaiV1DocumentPageLayout
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Confidence of the current Layout within context of the object this layout is
        # for. e.g. confidence can be for a single token, a table, a visual element, etc.
        # depending on context. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Detected orientation for the Layout.
        # Corresponds to the JSON property `orientation`
        # @return [String]
        attr_accessor :orientation
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @orientation = args[:orientation] if args.key?(:orientation)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # A collection of tokens that a human would perceive as a line. Does not cross
      # column boundaries, can be horizontal, vertical, etc.
      class GoogleCloudDocumentaiV1DocumentPageLine
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # Representation for transformation matrix, intended to be compatible and used
      # with OpenCV format for image manipulation.
      class GoogleCloudDocumentaiV1DocumentPageMatrix
        include Google::Apis::Core::Hashable
      
        # Number of columns in the matrix.
        # Corresponds to the JSON property `cols`
        # @return [Fixnum]
        attr_accessor :cols
      
        # The matrix data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Number of rows in the matrix.
        # Corresponds to the JSON property `rows`
        # @return [Fixnum]
        attr_accessor :rows
      
        # This encodes information about what data type the matrix uses. For example, 0 (
        # CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data
        # types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/
        # group__core__hal__interface.html
        # Corresponds to the JSON property `type`
        # @return [Fixnum]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cols = args[:cols] if args.key?(:cols)
          @data = args[:data] if args.key?(:data)
          @rows = args[:rows] if args.key?(:rows)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A collection of lines that a human would perceive as a paragraph.
      class GoogleCloudDocumentaiV1DocumentPageParagraph
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A detected symbol.
      class GoogleCloudDocumentaiV1DocumentPageSymbol
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A table representation similar to HTML table structure.
      class GoogleCloudDocumentaiV1DocumentPageTable
        include Google::Apis::Core::Hashable
      
        # Body rows of the table.
        # Corresponds to the JSON property `bodyRows`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageTableTableRow>]
        attr_accessor :body_rows
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Header rows of the table.
        # Corresponds to the JSON property `headerRows`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageTableTableRow>]
        attr_accessor :header_rows
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_rows = args[:body_rows] if args.key?(:body_rows)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A cell representation inside the table.
      class GoogleCloudDocumentaiV1DocumentPageTableTableCell
        include Google::Apis::Core::Hashable
      
        # How many columns this cell spans.
        # Corresponds to the JSON property `colSpan`
        # @return [Fixnum]
        attr_accessor :col_span
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # How many rows this cell spans.
        # Corresponds to the JSON property `rowSpan`
        # @return [Fixnum]
        attr_accessor :row_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @col_span = args[:col_span] if args.key?(:col_span)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @row_span = args[:row_span] if args.key?(:row_span)
        end
      end
      
      # A row of table cells.
      class GoogleCloudDocumentaiV1DocumentPageTableTableRow
        include Google::Apis::Core::Hashable
      
        # Cells that make up this row.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageTableTableCell>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # A detected token.
      class GoogleCloudDocumentaiV1DocumentPageToken
        include Google::Apis::Core::Hashable
      
        # Detected break at the end of a Token.
        # Corresponds to the JSON property `detectedBreak`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak]
        attr_accessor :detected_break
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        # Font and other text style attributes.
        # Corresponds to the JSON property `styleInfo`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo]
        attr_accessor :style_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_break = args[:detected_break] if args.key?(:detected_break)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
          @style_info = args[:style_info] if args.key?(:style_info)
        end
      end
      
      # Detected break at the end of a Token.
      class GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
        include Google::Apis::Core::Hashable
      
        # Detected break type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Font and other text style attributes.
      class GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to and from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't have
        # information about the absolute color space that should be used to interpret
        # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most `
        # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeColor]
        attr_accessor :background_color
      
        # Whether the text is bold (equivalent to font_weight is at least `700`).
        # Corresponds to the JSON property `bold`
        # @return [Boolean]
        attr_accessor :bold
        alias_method :bold?, :bold
      
        # Font size in points (`1` point is `¹⁄₇₂` inches).
        # Corresponds to the JSON property `fontSize`
        # @return [Fixnum]
        attr_accessor :font_size
      
        # Name or style of the font.
        # Corresponds to the JSON property `fontType`
        # @return [String]
        attr_accessor :font_type
      
        # TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `
        # 400`, bold is `700`.
        # Corresponds to the JSON property `fontWeight`
        # @return [Fixnum]
        attr_accessor :font_weight
      
        # Whether the text is handwritten.
        # Corresponds to the JSON property `handwritten`
        # @return [Boolean]
        attr_accessor :handwritten
        alias_method :handwritten?, :handwritten
      
        # Whether the text is italic.
        # Corresponds to the JSON property `italic`
        # @return [Boolean]
        attr_accessor :italic
        alias_method :italic?, :italic
      
        # Letter spacing in points.
        # Corresponds to the JSON property `letterSpacing`
        # @return [Float]
        attr_accessor :letter_spacing
      
        # Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
        # Corresponds to the JSON property `pixelFontSize`
        # @return [Float]
        attr_accessor :pixel_font_size
      
        # Whether the text is in small caps. This feature is not supported yet.
        # Corresponds to the JSON property `smallcaps`
        # @return [Boolean]
        attr_accessor :smallcaps
        alias_method :smallcaps?, :smallcaps
      
        # Whether the text is strikethrough. This feature is not supported yet.
        # Corresponds to the JSON property `strikeout`
        # @return [Boolean]
        attr_accessor :strikeout
        alias_method :strikeout?, :strikeout
      
        # Whether the text is a subscript. This feature is not supported yet.
        # Corresponds to the JSON property `subscript`
        # @return [Boolean]
        attr_accessor :subscript
        alias_method :subscript?, :subscript
      
        # Whether the text is a superscript. This feature is not supported yet.
        # Corresponds to the JSON property `superscript`
        # @return [Boolean]
        attr_accessor :superscript
        alias_method :superscript?, :superscript
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to and from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't have
        # information about the absolute color space that should be used to interpret
        # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most `
        # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `textColor`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeColor]
        attr_accessor :text_color
      
        # Whether the text is underlined.
        # Corresponds to the JSON property `underlined`
        # @return [Boolean]
        attr_accessor :underlined
        alias_method :underlined?, :underlined
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @bold = args[:bold] if args.key?(:bold)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_type = args[:font_type] if args.key?(:font_type)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @handwritten = args[:handwritten] if args.key?(:handwritten)
          @italic = args[:italic] if args.key?(:italic)
          @letter_spacing = args[:letter_spacing] if args.key?(:letter_spacing)
          @pixel_font_size = args[:pixel_font_size] if args.key?(:pixel_font_size)
          @smallcaps = args[:smallcaps] if args.key?(:smallcaps)
          @strikeout = args[:strikeout] if args.key?(:strikeout)
          @subscript = args[:subscript] if args.key?(:subscript)
          @superscript = args[:superscript] if args.key?(:superscript)
          @text_color = args[:text_color] if args.key?(:text_color)
          @underlined = args[:underlined] if args.key?(:underlined)
        end
      end
      
      # Detected non-text visual elements e.g. checkbox, signature etc. on the page.
      class GoogleCloudDocumentaiV1DocumentPageVisualElement
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Type of the VisualElement.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Structure to identify provenance relationships between annotations in
      # different revisions.
      class GoogleCloudDocumentaiV1DocumentProvenance
        include Google::Apis::Core::Hashable
      
        # The Id of this operation. Needs to be unique within the scope of the revision.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # References to the original elements that are replaced.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenanceParent>]
        attr_accessor :parents
      
        # The index of the revision that produced this element.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # The type of provenance operation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @parents = args[:parents] if args.key?(:parents)
          @revision = args[:revision] if args.key?(:revision)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The parent element the current element is based on. Used for referencing/
      # aligning, removal and replacement operations.
      class GoogleCloudDocumentaiV1DocumentProvenanceParent
        include Google::Apis::Core::Hashable
      
        # The id of the parent provenance.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The index of the parent item in the corresponding item list (eg. list of
        # entities, properties within entities, etc.) in the parent revision.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The index of the index into current revision's parent_ids list.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @index = args[:index] if args.key?(:index)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # Contains past or forward revisions of this document.
      class GoogleCloudDocumentaiV1DocumentRevision
        include Google::Apis::Core::Hashable
      
        # If the change was made by a person specify the name or id of that person.
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # The time that the revision was created, internally generated by doc proto
        # storage at the time of create.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human Review information of the document.
        # Corresponds to the JSON property `humanReview`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentRevisionHumanReview]
        attr_accessor :human_review
      
        # Id of the revision, internally generated by doc proto storage. Unique within
        # the context of the document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The revisions that this revision is based on. This can include one or more
        # parent (when documents are merged.) This field represents the index into the `
        # revisions` field.
        # Corresponds to the JSON property `parent`
        # @return [Array<Fixnum>]
        attr_accessor :parent
      
        # The revisions that this revision is based on. Must include all the ids that
        # have anything to do with this revision - eg. there are `provenance.parent.
        # revision` fields that index into this field.
        # Corresponds to the JSON property `parentIds`
        # @return [Array<String>]
        attr_accessor :parent_ids
      
        # If the annotation was made by processor identify the processor by its resource
        # name.
        # Corresponds to the JSON property `processor`
        # @return [String]
        attr_accessor :processor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @create_time = args[:create_time] if args.key?(:create_time)
          @human_review = args[:human_review] if args.key?(:human_review)
          @id = args[:id] if args.key?(:id)
          @parent = args[:parent] if args.key?(:parent)
          @parent_ids = args[:parent_ids] if args.key?(:parent_ids)
          @processor = args[:processor] if args.key?(:processor)
        end
      end
      
      # Human Review information of the document.
      class GoogleCloudDocumentaiV1DocumentRevisionHumanReview
        include Google::Apis::Core::Hashable
      
        # Human review state. e.g. `requested`, `succeeded`, `rejected`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the rejection reason when the state is `rejected`.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
        end
      end
      
      # For a large document, sharding may be performed to produce several document
      # shards. Each document shard contains this field to detail which shard it is.
      class GoogleCloudDocumentaiV1DocumentShardInfo
        include Google::Apis::Core::Hashable
      
        # Total number of shards.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # The 0-based index of this shard.
        # Corresponds to the JSON property `shardIndex`
        # @return [Fixnum]
        attr_accessor :shard_index
      
        # The index of the first character in Document.text in the overall document
        # global text.
        # Corresponds to the JSON property `textOffset`
        # @return [Fixnum]
        attr_accessor :text_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @shard_index = args[:shard_index] if args.key?(:shard_index)
          @text_offset = args[:text_offset] if args.key?(:text_offset)
        end
      end
      
      # Annotation for common text style attributes. This adheres to CSS conventions
      # as much as possible.
      class GoogleCloudDocumentaiV1DocumentStyle
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to and from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't have
        # information about the absolute color space that should be used to interpret
        # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most `
        # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeColor]
        attr_accessor :background_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to and from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't have
        # information about the absolute color space that should be used to interpret
        # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most `
        # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeColor]
        attr_accessor :color
      
        # Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/
        # cssref/pr_font_font-family.asp
        # Corresponds to the JSON property `fontFamily`
        # @return [String]
        attr_accessor :font_family
      
        # Font size with unit.
        # Corresponds to the JSON property `fontSize`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentStyleFontSize]
        attr_accessor :font_size
      
        # [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible
        # values are `normal`, `bold`, `bolder`, and `lighter`.
        # Corresponds to the JSON property `fontWeight`
        # @return [String]
        attr_accessor :font_weight
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp)
        # . Follows CSS standard.
        # Corresponds to the JSON property `textDecoration`
        # @return [String]
        attr_accessor :text_decoration
      
        # [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp).
        # Possible values are `normal`, `italic`, and `oblique`.
        # Corresponds to the JSON property `textStyle`
        # @return [String]
        attr_accessor :text_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @color = args[:color] if args.key?(:color)
          @font_family = args[:font_family] if args.key?(:font_family)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @text_decoration = args[:text_decoration] if args.key?(:text_decoration)
          @text_style = args[:text_style] if args.key?(:text_style)
        end
      end
      
      # Font size with unit.
      class GoogleCloudDocumentaiV1DocumentStyleFontSize
        include Google::Apis::Core::Hashable
      
        # Font size for the text.
        # Corresponds to the JSON property `size`
        # @return [Float]
        attr_accessor :size
      
        # Unit for the font size. Follows CSS naming (such as `in`, `px`, and `pt`).
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size = args[:size] if args.key?(:size)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Text reference indexing into the Document.text.
      class GoogleCloudDocumentaiV1DocumentTextAnchor
        include Google::Apis::Core::Hashable
      
        # Contains the content of the text span so that users do not have to look it up
        # in the text_segments. It is always populated for formFields.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The text segments from the Document.text.
        # Corresponds to the JSON property `textSegments`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>]
        attr_accessor :text_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @text_segments = args[:text_segments] if args.key?(:text_segments)
        end
      end
      
      # A text segment in the Document.text. The indices may be out of bounds which
      # indicate that the text extends into another document shard for large sharded
      # documents. See ShardInfo.text_offset
      class GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
        include Google::Apis::Core::Hashable
      
        # TextSegment half open end UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # TextSegment start UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # This message is used for text changes aka. OCR corrections.
      class GoogleCloudDocumentaiV1DocumentTextChange
        include Google::Apis::Core::Hashable
      
        # The text that replaces the text identified in the `text_anchor`.
        # Corresponds to the JSON property `changedText`
        # @return [String]
        attr_accessor :changed_text
      
        # The history of this annotation.
        # Corresponds to the JSON property `provenance`
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentProvenance>]
        attr_accessor :provenance
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::ContentwarehouseV1::GoogleCloudDocumentaiV1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_text = args[:changed_text] if args.key?(:changed_text)
          @provenance = args[:provenance] if args.key?(:provenance)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the normalized vertex
      # coordinates are relative to the original image and range from 0 to 1.
      class GoogleCloudDocumentaiV1NormalizedVertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Y coordinate (starts from the top of the image).
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the vertex coordinates are
      # in the same scale as the original image.
      class GoogleCloudDocumentaiV1Vertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # Y coordinate (starts from the top of the image).
        # Corresponds to the JSON property `y`
        # @return [Fixnum]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
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
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleIamV1AuditLogConfig>]
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
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeExpr]
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
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleIamV1AuditConfig>]
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
        # @return [Array<Google::Apis::ContentwarehouseV1::GoogleIamV1Binding>]
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
        # @return [Google::Apis::ContentwarehouseV1::GoogleRpcStatus]
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to and from color representations in various
      # languages over compactness. For example, the fields of this representation can
      # be trivially provided to the constructor of `java.awt.Color` in Java; it can
      # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
      # method in iOS; and, with just a little work, it can be easily formatted into a
      # CSS `rgba()` string in JavaScript. This reference page doesn't have
      # information about the absolute color space that should be used to interpret
      # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
      # applications should assume the sRGB color space. When color equality needs to
      # be decided, implementations, unless documented otherwise, treat two colors as
      # equal if all their red, green, blue, and alpha values each differ by at most `
      # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
      # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
      # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
      # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
      # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
      # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
      # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
      # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
      # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
      # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
      # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
      # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
      # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
      # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
      # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
      # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
      # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
      # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
      # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
      # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
      # autorelease]; return result; ` // ... Example (JavaScript): // ... var
      # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
      # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
      # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
      # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
      # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
      # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
      # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
      # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
      # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
      # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
      # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
      # / ...
      class GoogleTypeColor
        include Google::Apis::Core::Hashable
      
        # The fraction of this color that should be applied to the pixel. That is, the
        # final pixel color is defined by the equation: `pixel color = alpha * (this
        # color) + (1.0 - alpha) * (background color)` This means that a value of 1.0
        # corresponds to a solid color, whereas a value of 0.0 corresponds to a
        # completely transparent color. This uses a wrapper message rather than a simple
        # float scalar so that it is possible to distinguish between a default value and
        # the value being unset. If omitted, this color object is rendered as a solid
        # color (as if the alpha value had been explicitly given a value of 1.0).
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        # The amount of blue in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The amount of green in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The amount of red in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpha = args[:alpha] if args.key?(:alpha)
          @blue = args[:blue] if args.key?(:blue)
          @green = args[:green] if args.key?(:green)
          @red = args[:red] if args.key?(:red)
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
      class GoogleTypeDate
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
      
      # Represents civil time (or occasionally physical time). This type can represent
      # a civil time in one of a few possible ways: * When utc_offset is set and
      # time_zone is unset: a civil time on a calendar day with a particular offset
      # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
      # calendar day in a particular time zone. * When neither time_zone nor
      # utc_offset is set: a civil time on a calendar day in local time. The date is
      # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
      # the DateTime is considered not to have a specific year, month, or day
      # respectively. This type may also be used to represent a physical time if all
      # the date and time fields are set and either case of the `time_offset` oneof is
      # set. Consider using `Timestamp` message for physical time instead. If your use
      # case also would like to store the user's timezone, that can be done in another
      # field. This type is more flexible than some applications may want. Make sure
      # to document and validate your application's limitations.
      class GoogleTypeDateTime
        include Google::Apis::Core::Hashable
      
        # Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        # or 0 if specifying a datetime without a day.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        # 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        # like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        # without a month.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        # defaults to 0.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        # defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::ContentwarehouseV1::GoogleTypeTimeZone]
        attr_accessor :time_zone
      
        # UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        # example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        # without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @month = args[:month] if args.key?(:month)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @year = args[:year] if args.key?(:year)
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
      class GoogleTypeExpr
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
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class GoogleTypeInterval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents an amount of money with its currency type.
      class GoogleTypeMoney
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Represents a postal address, e.g. for postal delivery or payments addresses.
      # Given a postal address, a postal service can deliver items to a premise, P.O.
      # Box or similar. It is not intended to model geographical locations (roads,
      # towns, mountains). In typical usage an address would be created via user input
      # or from importing existing data, depending on the type of process. Advice on
      # address input / editing: - Use an internationalization-ready address widget
      # such as https://github.com/google/libaddressinput) - Users should not be
      # presented with UI elements for input or editing of fields outside countries
      # where that field is used. For more guidance on how to use this schema, please
      # see: https://support.google.com/business/answer/6397478
      class GoogleTypePostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in address_lines do not have type information and may sometimes contain
        # multiple values in a single field (e.g. "Austin, TX"), it is important that
        # the line order is clear. The order of address lines should be "envelope order"
        # for the country/region of the address. In places where this can vary (e.g.
        # Japan), address_language is used to make it explicit (e.g. "ja" for large-to-
        # small ordering and "ja-Latn" or "en" for small-to-large). This way, the most
        # specific line of an address can be selected based on the language. The minimum
        # permitted structural representation of an address consists of a region_code
        # with all remaining information placed in the address_lines. It would be
        # possible to format such an address very approximately without geocoding, but
        # no semantic reasoning could be made about any of the address components until
        # it was at least partially resolved. Creating an address only containing a
        # region_code and address_lines, and then geocoding is the recommended way to
        # handle completely unstructured addresses (as opposed to guessing which parts
        # of the address should be localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. Specifically, for Spain this is the province and
        # not the autonomous community (e.g. "Barcelona" and not "Catalonia"). Many
        # countries don't use an administrative area in postal addresses. E.g. in
        # Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # This is often the UI language of the input form or is expected to match one of
        # the languages used in the address' country/region, or their transliterated
        # equivalents. This can affect formatting in certain countries, but is not
        # critical to the correctness of the data and will never affect any validation
        # or other non-formatting related operations. If this value is not known, it
        # should be omitted (rather than specifying a possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address. Examples:
        # US city, IT comune, UK post town. In regions of the world where localities are
        # not well defined or do not fit into this structure well, leave locality empty
        # and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (e.g. state/zip validation in the U.
        # S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address. This field may, under certain
        # circumstances, contain multiline information. For example, it might contain "
        # care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This is never
        # inferred and it is up to the user to ensure the value is correct. See https://
        # cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/
        # territory_information.html for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision. All new revisions **must** be backward compatible with
        # old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used in most
        # regions. Where it is used, the value is either a string like "CEDEX",
        # optionally followed by a number (e.g. "CEDEX 7"), or just a number alone,
        # representing the "sector code" (Jamaica), "delivery area indicator" (Malawi)
        # or "post office indicator" (e.g. Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be neighborhoods,
        # boroughs, districts.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class GoogleTypeTimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
    end
  end
end
