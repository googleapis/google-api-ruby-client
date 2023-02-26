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
    module ChromepolicyV1
      
      # 
      class ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle
        include Google::Apis::Core::Hashable
      
        # In the event that this policy was deprecated in favor of another policy, the
        # fully qualified namespace(s) of the new policies as they will show in
        # PolicyAPI.
        # Corresponds to the JSON property `deprecatedInFavorOf`
        # @return [Array<String>]
        attr_accessor :deprecated_in_favor_of
      
        # Description about current life cycle.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endSupport`
        # @return [Google::Apis::ChromepolicyV1::GoogleTypeDate]
        attr_accessor :end_support
      
        # Indicate current life cycle stage of the policy API.
        # Corresponds to the JSON property `policyApiLifecycleStage`
        # @return [String]
        attr_accessor :policy_api_lifecycle_stage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deprecated_in_favor_of = args[:deprecated_in_favor_of] if args.key?(:deprecated_in_favor_of)
          @description = args[:description] if args.key?(:description)
          @end_support = args[:end_support] if args.key?(:end_support)
          @policy_api_lifecycle_stage = args[:policy_api_lifecycle_stage] if args.key?(:policy_api_lifecycle_stage)
        end
      end
      
      # Additional key names that will be used to identify the target of the policy
      # value.
      class GoogleChromePolicyVersionsV1AdditionalTargetKeyName
        include Google::Apis::Core::Hashable
      
        # Key name.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Key description.
        # Corresponds to the JSON property `keyDescription`
        # @return [String]
        attr_accessor :key_description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @key_description = args[:key_description] if args.key?(:key_description)
        end
      end
      
      # Request message for specifying that multiple policy values will be deleted.
      class GoogleChromePolicyVersionsV1BatchDeleteGroupPoliciesRequest
        include Google::Apis::Core::Hashable
      
        # List of policies that will be deleted as defined by the `requests`. All
        # requests in the list must follow these restrictions: 1. All schemas in the
        # list must have the same root namespace. 2. All `policyTargetKey.targetResource`
        # values must point to a group resource. 3. All `policyTargetKey` values must
        # have the same `app_id` key name in the `additionalTargetKeys`. 4. No two
        # modification requests can reference the same `policySchema` + `
        # policyTargetKey` pair.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Request message for specifying that multiple policy values inherit their value
      # from their parents.
      class GoogleChromePolicyVersionsV1BatchInheritOrgUnitPoliciesRequest
        include Google::Apis::Core::Hashable
      
        # List of policies that have to inherit their values as defined by the `requests`
        # . All requests in the list must follow these restrictions: 1. All schemas in
        # the list must have the same root namespace. 2. All `policyTargetKey.
        # targetResource` values must point to an org unit resource. 3. All `
        # policyTargetKey` values must have the same key names in the `
        # additionalTargetKeys`. This also means if one of the targets has an empty `
        # additionalTargetKeys` map, all of the targets must have an empty `
        # additionalTargetKeys` map. 4. No two modification requests can reference the
        # same `policySchema` + ` policyTargetKey` pair.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Request message for modifying multiple policy values for a specific group-
      # based target.
      class GoogleChromePolicyVersionsV1BatchModifyGroupPoliciesRequest
        include Google::Apis::Core::Hashable
      
        # List of policies to modify as defined by the `requests`. All requests in the
        # list must follow these restrictions: 1. All schemas in the list must have the
        # same root namespace. 2. All `policyTargetKey.targetResource` values must point
        # to a group resource. 3. All `policyTargetKey` values must have the same `
        # app_id` key name in the `additionalTargetKeys`. 4. No two modification
        # requests can reference the same `policySchema` + ` policyTargetKey` pair.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Request message for modifying multiple policy values for a specific target.
      class GoogleChromePolicyVersionsV1BatchModifyOrgUnitPoliciesRequest
        include Google::Apis::Core::Hashable
      
        # List of policies to modify as defined by the `requests`. All requests in the
        # list must follow these restrictions: 1. All schemas in the list must have the
        # same root namespace. 2. All `policyTargetKey.targetResource` values must point
        # to an org unit resource. 3. All `policyTargetKey` values must have the same
        # key names in the ` additionalTargetKeys`. This also means if one of the
        # targets has an empty `additionalTargetKeys` map, all of the targets must have
        # an empty `additionalTargetKeys` map. 4. No two modification requests can
        # reference the same `policySchema` + ` policyTargetKey` pair.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Error information for removing of a specific certificate on a specific target.
      # A reference to a certificate.
      class GoogleChromePolicyVersionsV1CertificateReference
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the referencing network.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. The obfuscated id of the org unit the referencing network is in.
        # Corresponds to the JSON property `orgUnitId`
        # @return [String]
        attr_accessor :org_unit_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @org_unit_id = args[:org_unit_id] if args.key?(:org_unit_id)
        end
      end
      
      # Request object for creating a certificate.
      class GoogleChromePolicyVersionsV1DefineCertificateRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The optional name of the certificate. If not specified, the
        # certificate issuer will be used as the name.
        # Corresponds to the JSON property `ceritificateName`
        # @return [String]
        attr_accessor :ceritificate_name
      
        # Required. The raw contents of the .PEM, .CRT, or .CER file.
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # Optional. Certificate settings within the chrome.networks.certificates
        # namespace.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1NetworkSetting>]
        attr_accessor :settings
      
        # Required. The target resource on which this certificate is applied. The
        # following resources are supported: * Organizational Unit ("orgunits/`
        # orgunit_id`")
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ceritificate_name = args[:ceritificate_name] if args.key?(:ceritificate_name)
          @certificate = args[:certificate] if args.key?(:certificate)
          @settings = args[:settings] if args.key?(:settings)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
        end
      end
      
      # Response object for creating a certificate.
      class GoogleChromePolicyVersionsV1DefineCertificateResponse
        include Google::Apis::Core::Hashable
      
        # The guid of the certificate created by the action.
        # Corresponds to the JSON property `networkId`
        # @return [String]
        attr_accessor :network_id
      
        # the affiliated settings of the certificate (NOT IMPLEMENTED)
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1NetworkSetting>]
        attr_accessor :settings
      
        # the resource at which the certificate is defined.
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_id = args[:network_id] if args.key?(:network_id)
          @settings = args[:settings] if args.key?(:settings)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
        end
      end
      
      # Request object for creating a new network.
      class GoogleChromePolicyVersionsV1DefineNetworkRequest
        include Google::Apis::Core::Hashable
      
        # Required. Name of the new created network.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Detailed network settings.
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1NetworkSetting>]
        attr_accessor :settings
      
        # Required. The target resource on which this new network will be defined. The
        # following resources are supported: * Organizational Unit ("orgunits/`
        # orgunit_id`")
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @settings = args[:settings] if args.key?(:settings)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
        end
      end
      
      # Response object for creating a network.
      class GoogleChromePolicyVersionsV1DefineNetworkResponse
        include Google::Apis::Core::Hashable
      
        # Network ID of the new created network.
        # Corresponds to the JSON property `networkId`
        # @return [String]
        attr_accessor :network_id
      
        # Detailed network settings of the new created network
        # Corresponds to the JSON property `settings`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1NetworkSetting>]
        attr_accessor :settings
      
        # The target resource on which this new network will be defined. The following
        # resources are supported: * Organizational Unit ("orgunits/`orgunit_id`")
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_id = args[:network_id] if args.key?(:network_id)
          @settings = args[:settings] if args.key?(:settings)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
        end
      end
      
      # Request parameters for deleting the policy value of a specific group target.
      class GoogleChromePolicyVersionsV1DeleteGroupPolicyRequest
        include Google::Apis::Core::Hashable
      
        # The fully qualified name of the policy schema that is being inherited.
        # Corresponds to the JSON property `policySchema`
        # @return [String]
        attr_accessor :policy_schema
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_schema = args[:policy_schema] if args.key?(:policy_schema)
          @policy_target_key = args[:policy_target_key] if args.key?(:policy_target_key)
        end
      end
      
      # Information about any range constraints.
      class GoogleChromePolicyVersionsV1FieldConstraints
        include Google::Apis::Core::Hashable
      
        # A constraint on upper and/or lower bounds, with at least one being set.
        # Corresponds to the JSON property `numericRangeConstraint`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1NumericRangeConstraint]
        attr_accessor :numeric_range_constraint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @numeric_range_constraint = args[:numeric_range_constraint] if args.key?(:numeric_range_constraint)
        end
      end
      
      # Request parameters for inheriting policy value of a specific org unit target
      # from the policy value of its parent org unit.
      class GoogleChromePolicyVersionsV1InheritOrgUnitPolicyRequest
        include Google::Apis::Core::Hashable
      
        # The fully qualified name of the policy schema that is being inherited.
        # Corresponds to the JSON property `policySchema`
        # @return [String]
        attr_accessor :policy_schema
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_schema = args[:policy_schema] if args.key?(:policy_schema)
          @policy_target_key = args[:policy_target_key] if args.key?(:policy_target_key)
        end
      end
      
      # Request message for listing the group priority ordering of an app.
      class GoogleChromePolicyVersionsV1ListGroupPriorityOrderingRequest
        include Google::Apis::Core::Hashable
      
        # Required. The namespace of the policy type for the request.
        # Corresponds to the JSON property `policyNamespace`
        # @return [String]
        attr_accessor :policy_namespace
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_namespace = args[:policy_namespace] if args.key?(:policy_namespace)
          @policy_target_key = args[:policy_target_key] if args.key?(:policy_target_key)
        end
      end
      
      # Response message for listing the group priority ordering of an app.
      class GoogleChromePolicyVersionsV1ListGroupPriorityOrderingResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The group IDs, in priority ordering.
        # Corresponds to the JSON property `groupIds`
        # @return [Array<String>]
        attr_accessor :group_ids
      
        # Output only. The namespace of the policy type of the group IDs.
        # Corresponds to the JSON property `policyNamespace`
        # @return [String]
        attr_accessor :policy_namespace
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_ids = args[:group_ids] if args.key?(:group_ids)
          @policy_namespace = args[:policy_namespace] if args.key?(:policy_namespace)
          @policy_target_key = args[:policy_target_key] if args.key?(:policy_target_key)
        end
      end
      
      # Response message for listing policy schemas that match a filter.
      class GoogleChromePolicyVersionsV1ListPolicySchemasResponse
        include Google::Apis::Core::Hashable
      
        # The page token used to get the next page of policy schemas.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of policy schemas that match the query.
        # Corresponds to the JSON property `policySchemas`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicySchema>]
        attr_accessor :policy_schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @policy_schemas = args[:policy_schemas] if args.key?(:policy_schemas)
        end
      end
      
      # Request parameters for modifying a policy value for a specific group target.
      class GoogleChromePolicyVersionsV1ModifyGroupPolicyRequest
        include Google::Apis::Core::Hashable
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        # A particular value for a policy managed by the service.
        # Corresponds to the JSON property `policyValue`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyValue]
        attr_accessor :policy_value
      
        # Required. Policy fields to update. Only fields in this mask will be updated;
        # other fields in `policy_value` will be ignored (even if they have values). If
        # a field is in this list it must have a value in 'policy_value'.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_target_key = args[:policy_target_key] if args.key?(:policy_target_key)
          @policy_value = args[:policy_value] if args.key?(:policy_value)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request parameters for modifying a policy value for a specific org unit target.
      class GoogleChromePolicyVersionsV1ModifyOrgUnitPolicyRequest
        include Google::Apis::Core::Hashable
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        # A particular value for a policy managed by the service.
        # Corresponds to the JSON property `policyValue`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyValue]
        attr_accessor :policy_value
      
        # Required. Policy fields to update. Only fields in this mask will be updated;
        # other fields in `policy_value` will be ignored (even if they have values). If
        # a field is in this list it must have a value in 'policy_value'.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_target_key = args[:policy_target_key] if args.key?(:policy_target_key)
          @policy_value = args[:policy_value] if args.key?(:policy_value)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # A network setting contains network configurations.
      class GoogleChromePolicyVersionsV1NetworkSetting
        include Google::Apis::Core::Hashable
      
        # The fully qualified name of the network setting.
        # Corresponds to the JSON property `policySchema`
        # @return [String]
        attr_accessor :policy_schema
      
        # The value of the network setting.
        # Corresponds to the JSON property `value`
        # @return [Hash<String,Object>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_schema = args[:policy_schema] if args.key?(:policy_schema)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A constraint on upper and/or lower bounds, with at least one being set.
      class GoogleChromePolicyVersionsV1NumericRangeConstraint
        include Google::Apis::Core::Hashable
      
        # Maximum value.
        # Corresponds to the JSON property `maximum`
        # @return [Fixnum]
        attr_accessor :maximum
      
        # Minimum value.
        # Corresponds to the JSON property `minimum`
        # @return [Fixnum]
        attr_accessor :minimum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maximum = args[:maximum] if args.key?(:maximum)
          @minimum = args[:minimum] if args.key?(:minimum)
        end
      end
      
      # Error information for a modification request of a specific policy on a
      # specific target.
      class GoogleChromePolicyVersionsV1PolicyModificationError
        include Google::Apis::Core::Hashable
      
        # Output only. The non-field errors related to the modification.
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # Output only. The error messages related to the modification.
        # Corresponds to the JSON property `fieldErrors`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyModificationFieldError>]
        attr_accessor :field_errors
      
        # Output only. The specific policy schema modification that had an error.
        # Corresponds to the JSON property `policySchema`
        # @return [String]
        attr_accessor :policy_schema
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @field_errors = args[:field_errors] if args.key?(:field_errors)
          @policy_schema = args[:policy_schema] if args.key?(:policy_schema)
          @policy_target_key = args[:policy_target_key] if args.key?(:policy_target_key)
        end
      end
      
      # Details of the errors encountered during a policy modification request. This
      # message will be returned as part of the details of a google.rpc.Status
      # returned to the user when there is an error in their request.
      class GoogleChromePolicyVersionsV1PolicyModificationErrorDetails
        include Google::Apis::Core::Hashable
      
        # Output only. List of specific policy modifications errors that may have
        # occurred during a modifying request.
        # Corresponds to the JSON property `modificationErrors`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyModificationError>]
        attr_accessor :modification_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modification_errors = args[:modification_errors] if args.key?(:modification_errors)
        end
      end
      
      # Error information for a modification request of a specific field on a specific
      # policy.
      class GoogleChromePolicyVersionsV1PolicyModificationFieldError
        include Google::Apis::Core::Hashable
      
        # Output only. The error message related to the field.
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # Output only. The name of the field with the error.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Resource representing a policy schema.
      class GoogleChromePolicyVersionsV1PolicySchema
        include Google::Apis::Core::Hashable
      
        # Output only. Specific access restrictions related to this policy.
        # Corresponds to the JSON property `accessRestrictions`
        # @return [Array<String>]
        attr_accessor :access_restrictions
      
        # Output only. Additional key names that will be used to identify the target of
        # the policy value. When specifying a `policyTargetKey`, each of the additional
        # keys specified here will have to be included in the `additionalTargetKeys` map.
        # Corresponds to the JSON property `additionalTargetKeyNames`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1AdditionalTargetKeyName>]
        attr_accessor :additional_target_key_names
      
        # Title of the category in which a setting belongs.
        # Corresponds to the JSON property `categoryTitle`
        # @return [String]
        attr_accessor :category_title
      
        # Describes a complete .proto file.
        # Corresponds to the JSON property `definition`
        # @return [Google::Apis::ChromepolicyV1::Proto2FileDescriptorProto]
        attr_accessor :definition
      
        # Output only. Detailed description of each field that is part of the schema.
        # Corresponds to the JSON property `fieldDescriptions`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicySchemaFieldDescription>]
        attr_accessor :field_descriptions
      
        # Format: name=customers/`customer`/policySchemas/`schema_namespace`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Special notice messages related to setting certain values in
        # certain fields in the schema.
        # Corresponds to the JSON property `notices`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription>]
        attr_accessor :notices
      
        # Output only. Current lifecycle information.
        # Corresponds to the JSON property `policyApiLifecycle`
        # @return [Google::Apis::ChromepolicyV1::ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle]
        attr_accessor :policy_api_lifecycle
      
        # Deprecated field because of typo.
        # Corresponds to the JSON property `policyApiLifeycle`
        # @return [Google::Apis::ChromepolicyV1::ChromeCrosDpanelAutosettingsProtoPolicyApiLifecycle]
        attr_accessor :policy_api_lifeycle
      
        # Output only. Description about the policy schema for user consumption.
        # Corresponds to the JSON property `policyDescription`
        # @return [String]
        attr_accessor :policy_description
      
        # Output only. The fully qualified name of the policy schema. This value is used
        # to fill the field `policy_schema` in PolicyValue when calling
        # BatchInheritOrgUnitPolicies BatchModifyOrgUnitPolicies
        # BatchModifyGroupPolicies or BatchDeleteGroupPolicies.
        # Corresponds to the JSON property `schemaName`
        # @return [String]
        attr_accessor :schema_name
      
        # Output only. URI to related support article for this schema.
        # Corresponds to the JSON property `supportUri`
        # @return [String]
        attr_accessor :support_uri
      
        # Output only. Information about applicable target resources for the policy.
        # Corresponds to the JSON property `validTargetResources`
        # @return [Array<String>]
        attr_accessor :valid_target_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_restrictions = args[:access_restrictions] if args.key?(:access_restrictions)
          @additional_target_key_names = args[:additional_target_key_names] if args.key?(:additional_target_key_names)
          @category_title = args[:category_title] if args.key?(:category_title)
          @definition = args[:definition] if args.key?(:definition)
          @field_descriptions = args[:field_descriptions] if args.key?(:field_descriptions)
          @name = args[:name] if args.key?(:name)
          @notices = args[:notices] if args.key?(:notices)
          @policy_api_lifecycle = args[:policy_api_lifecycle] if args.key?(:policy_api_lifecycle)
          @policy_api_lifeycle = args[:policy_api_lifeycle] if args.key?(:policy_api_lifeycle)
          @policy_description = args[:policy_description] if args.key?(:policy_description)
          @schema_name = args[:schema_name] if args.key?(:schema_name)
          @support_uri = args[:support_uri] if args.key?(:support_uri)
          @valid_target_resources = args[:valid_target_resources] if args.key?(:valid_target_resources)
        end
      end
      
      # The field and the value it must have for another field to be allowed to be set.
      class GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies
        include Google::Apis::Core::Hashable
      
        # The source field which this field depends on.
        # Corresponds to the JSON property `sourceField`
        # @return [String]
        attr_accessor :source_field
      
        # The value which the source field must have for this field to be allowed to be
        # set.
        # Corresponds to the JSON property `sourceFieldValue`
        # @return [String]
        attr_accessor :source_field_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_field = args[:source_field] if args.key?(:source_field)
          @source_field_value = args[:source_field_value] if args.key?(:source_field_value)
        end
      end
      
      # Provides detailed information for a particular field that is part of a
      # PolicySchema.
      class GoogleChromePolicyVersionsV1PolicySchemaFieldDescription
        include Google::Apis::Core::Hashable
      
        # Output only. Client default if the policy is unset.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # Deprecated. Use name and field_description instead. The description for the
        # field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The name of the field for associated with this description.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Information about any range constraints.
        # Corresponds to the JSON property `fieldConstraints`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1FieldConstraints]
        attr_accessor :field_constraints
      
        # Output only. Provides a list of fields and values. At least one of the fields
        # must have the corresponding value in order for this field to be allowed to be
        # set.
        # Corresponds to the JSON property `fieldDependencies`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicySchemaFieldDependencies>]
        attr_accessor :field_dependencies
      
        # Output only. The description of the field.
        # Corresponds to the JSON property `fieldDescription`
        # @return [String]
        attr_accessor :field_description
      
        # Output only. Any input constraints associated on the values for the field.
        # Corresponds to the JSON property `inputConstraint`
        # @return [String]
        attr_accessor :input_constraint
      
        # Output only. If the field has a set of known values, this field will provide a
        # description for these values.
        # Corresponds to the JSON property `knownValueDescriptions`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription>]
        attr_accessor :known_value_descriptions
      
        # Output only. The name of the field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Provides the description of the fields nested in this field, if
        # the field is a message type that defines multiple fields.
        # Corresponds to the JSON property `nestedFieldDescriptions`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicySchemaFieldDescription>]
        attr_accessor :nested_field_descriptions
      
        # Output only. Provides a list of fields that are required to be set if this
        # field has a certain value.
        # Corresponds to the JSON property `requiredItems`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicySchemaRequiredItems>]
        attr_accessor :required_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @field = args[:field] if args.key?(:field)
          @field_constraints = args[:field_constraints] if args.key?(:field_constraints)
          @field_dependencies = args[:field_dependencies] if args.key?(:field_dependencies)
          @field_description = args[:field_description] if args.key?(:field_description)
          @input_constraint = args[:input_constraint] if args.key?(:input_constraint)
          @known_value_descriptions = args[:known_value_descriptions] if args.key?(:known_value_descriptions)
          @name = args[:name] if args.key?(:name)
          @nested_field_descriptions = args[:nested_field_descriptions] if args.key?(:nested_field_descriptions)
          @required_items = args[:required_items] if args.key?(:required_items)
        end
      end
      
      # Provides detailed information about a known value that is allowed for a
      # particular field in a PolicySchema.
      class GoogleChromePolicyVersionsV1PolicySchemaFieldKnownValueDescription
        include Google::Apis::Core::Hashable
      
        # Output only. Additional description for this value.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The string represenstation of the value that can be set for the
        # field.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Provides special notice messages related to a particular value in a field that
      # is part of a PolicySchema.
      class GoogleChromePolicyVersionsV1PolicySchemaNoticeDescription
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the user needs to acknowledge the notice message before
        # the value can be set.
        # Corresponds to the JSON property `acknowledgementRequired`
        # @return [Boolean]
        attr_accessor :acknowledgement_required
        alias_method :acknowledgement_required?, :acknowledgement_required
      
        # Output only. The field name associated with the notice.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Output only. The notice message associate with the value of the field.
        # Corresponds to the JSON property `noticeMessage`
        # @return [String]
        attr_accessor :notice_message
      
        # Output only. The value of the field that has a notice. When setting the field
        # to this value, the user may be required to acknowledge the notice message in
        # order for the value to be set.
        # Corresponds to the JSON property `noticeValue`
        # @return [String]
        attr_accessor :notice_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledgement_required = args[:acknowledgement_required] if args.key?(:acknowledgement_required)
          @field = args[:field] if args.key?(:field)
          @notice_message = args[:notice_message] if args.key?(:notice_message)
          @notice_value = args[:notice_value] if args.key?(:notice_value)
        end
      end
      
      # The fields that will become required based on the value of this field.
      class GoogleChromePolicyVersionsV1PolicySchemaRequiredItems
        include Google::Apis::Core::Hashable
      
        # The value(s) of the field that provoke required field enforcement. An empty
        # field_conditions implies that any value assigned to this field will provoke
        # required field enforcement.
        # Corresponds to the JSON property `fieldConditions`
        # @return [Array<String>]
        attr_accessor :field_conditions
      
        # The fields that are required as a consequence of the field conditions.
        # Corresponds to the JSON property `requiredFields`
        # @return [Array<String>]
        attr_accessor :required_fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_conditions = args[:field_conditions] if args.key?(:field_conditions)
          @required_fields = args[:required_fields] if args.key?(:required_fields)
        end
      end
      
      # The key used to identify the target on which the policy will be applied.
      class GoogleChromePolicyVersionsV1PolicyTargetKey
        include Google::Apis::Core::Hashable
      
        # Map containing the additional target key name and value pairs used to further
        # identify the target of the policy.
        # Corresponds to the JSON property `additionalTargetKeys`
        # @return [Hash<String,String>]
        attr_accessor :additional_target_keys
      
        # The target resource on which this policy is applied. The following resources
        # are supported: * Organizational Unit ("orgunits/`orgunit_id`") * Group ("
        # groups/`group_id`")
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_target_keys = args[:additional_target_keys] if args.key?(:additional_target_keys)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
        end
      end
      
      # A particular value for a policy managed by the service.
      class GoogleChromePolicyVersionsV1PolicyValue
        include Google::Apis::Core::Hashable
      
        # The fully qualified name of the policy schema associated with this policy.
        # Corresponds to the JSON property `policySchema`
        # @return [String]
        attr_accessor :policy_schema
      
        # The value of the policy that is compatible with the schema that it is
        # associated with.
        # Corresponds to the JSON property `value`
        # @return [Hash<String,Object>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_schema = args[:policy_schema] if args.key?(:policy_schema)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Details of the errors encountered during a remove certificate request. This
      # message will be returned as part of the details of a google.rpc.Status
      # returned to the user when there is an error in their request.
      class GoogleChromePolicyVersionsV1RemoveCertificateErrorDetails
        include Google::Apis::Core::Hashable
      
        # Output only. If the certificate was not removed, a list of references to the
        # certificate that prevented it from being removed. Only unreferenced
        # certificates can be removed.
        # Corresponds to the JSON property `certificateReferences`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1CertificateReference>]
        attr_accessor :certificate_references
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_references = args[:certificate_references] if args.key?(:certificate_references)
        end
      end
      
      # Request object for removing a certificate.
      class GoogleChromePolicyVersionsV1RemoveCertificateRequest
        include Google::Apis::Core::Hashable
      
        # Required. The GUID of the certificate to remove.
        # Corresponds to the JSON property `networkId`
        # @return [String]
        attr_accessor :network_id
      
        # Required. The target resource on which this certificate will be removed. The
        # following resources are supported: * Organizational Unit ("orgunits/`
        # orgunit_id`")
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_id = args[:network_id] if args.key?(:network_id)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
        end
      end
      
      # Response object for removing a certificate.
      class GoogleChromePolicyVersionsV1RemoveCertificateResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request object for removing a network
      class GoogleChromePolicyVersionsV1RemoveNetworkRequest
        include Google::Apis::Core::Hashable
      
        # Required. The GUID of the network to remove.
        # Corresponds to the JSON property `networkId`
        # @return [String]
        attr_accessor :network_id
      
        # Required. The target resource on which this network will be removed. The
        # following resources are supported: * Organizational Unit ("orgunits/`
        # orgunit_id`")
        # Corresponds to the JSON property `targetResource`
        # @return [String]
        attr_accessor :target_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_id = args[:network_id] if args.key?(:network_id)
          @target_resource = args[:target_resource] if args.key?(:target_resource)
        end
      end
      
      # Response object for removing a network.
      class GoogleChromePolicyVersionsV1RemoveNetworkResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for getting the resolved policy value for a specific target.
      class GoogleChromePolicyVersionsV1ResolveRequest
        include Google::Apis::Core::Hashable
      
        # The maximum number of policies to return, defaults to 100 and has a maximum of
        # 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The page token used to retrieve a specific page of the request.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The schema filter to apply to the resolve request. Specify a schema name to
        # view a particular schema, for example: chrome.users.ShowLogoutButton Wildcards
        # are supported, but only in the leaf portion of the schema name. Wildcards
        # cannot be used in namespace directly. Please read https://developers.google.
        # com/chrome/policy/guides/policy-schemas for details on schema namespaces. For
        # example: Valid: "chrome.users.*", "chrome.users.apps.*", "chrome.printers.*"
        # Invalid: "*", "*.users", "chrome.*", "chrome.*.apps.*"
        # Corresponds to the JSON property `policySchemaFilter`
        # @return [String]
        attr_accessor :policy_schema_filter
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @policy_schema_filter = args[:policy_schema_filter] if args.key?(:policy_schema_filter)
          @policy_target_key = args[:policy_target_key] if args.key?(:policy_target_key)
        end
      end
      
      # Response message for getting the resolved policy value for a specific target.
      class GoogleChromePolicyVersionsV1ResolveResponse
        include Google::Apis::Core::Hashable
      
        # The page token used to get the next set of resolved policies found by the
        # request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of resolved policies found by the resolve request.
        # Corresponds to the JSON property `resolvedPolicies`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1ResolvedPolicy>]
        attr_accessor :resolved_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resolved_policies = args[:resolved_policies] if args.key?(:resolved_policies)
        end
      end
      
      # The resolved value of a policy for a given target.
      class GoogleChromePolicyVersionsV1ResolvedPolicy
        include Google::Apis::Core::Hashable
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `addedSourceKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :added_source_key
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `sourceKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :source_key
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `targetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :target_key
      
        # A particular value for a policy managed by the service.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @added_source_key = args[:added_source_key] if args.key?(:added_source_key)
          @source_key = args[:source_key] if args.key?(:source_key)
          @target_key = args[:target_key] if args.key?(:target_key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request message for updating the group priority ordering of an app.
      class GoogleChromePolicyVersionsV1UpdateGroupPriorityOrderingRequest
        include Google::Apis::Core::Hashable
      
        # Required. The group IDs, in desired priority ordering.
        # Corresponds to the JSON property `groupIds`
        # @return [Array<String>]
        attr_accessor :group_ids
      
        # Required. The namespace of the policy type for the request.
        # Corresponds to the JSON property `policyNamespace`
        # @return [String]
        attr_accessor :policy_namespace
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyVersionsV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_ids = args[:group_ids] if args.key?(:group_ids)
          @policy_namespace = args[:policy_namespace] if args.key?(:policy_namespace)
          @policy_target_key = args[:policy_target_key] if args.key?(:policy_target_key)
        end
      end
      
      # Request message for uploading a file for a policy.
      class GoogleChromePolicyVersionsV1UploadPolicyFileRequest
        include Google::Apis::Core::Hashable
      
        # Required. The fully qualified policy schema and field name this file is
        # uploaded for. This information will be used to validate the content type of
        # the file.
        # Corresponds to the JSON property `policyField`
        # @return [String]
        attr_accessor :policy_field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy_field = args[:policy_field] if args.key?(:policy_field)
        end
      end
      
      # Response message for downloading an uploaded file.
      class GoogleChromePolicyVersionsV1UploadPolicyFileResponse
        include Google::Apis::Core::Hashable
      
        # The uri for end user to download the file.
        # Corresponds to the JSON property `downloadUri`
        # @return [String]
        attr_accessor :download_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @download_uri = args[:download_uri] if args.key?(:download_uri)
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
      
      # Describes a message type.
      class Proto2DescriptorProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enumType`
        # @return [Array<Google::Apis::ChromepolicyV1::Proto2EnumDescriptorProto>]
        attr_accessor :enum_type
      
        # 
        # Corresponds to the JSON property `field`
        # @return [Array<Google::Apis::ChromepolicyV1::Proto2FieldDescriptorProto>]
        attr_accessor :field
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `nestedType`
        # @return [Array<Google::Apis::ChromepolicyV1::Proto2DescriptorProto>]
        attr_accessor :nested_type
      
        # 
        # Corresponds to the JSON property `oneofDecl`
        # @return [Array<Google::Apis::ChromepolicyV1::Proto2OneofDescriptorProto>]
        attr_accessor :oneof_decl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enum_type = args[:enum_type] if args.key?(:enum_type)
          @field = args[:field] if args.key?(:field)
          @name = args[:name] if args.key?(:name)
          @nested_type = args[:nested_type] if args.key?(:nested_type)
          @oneof_decl = args[:oneof_decl] if args.key?(:oneof_decl)
        end
      end
      
      # Describes an enum type.
      class Proto2EnumDescriptorProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Array<Google::Apis::ChromepolicyV1::Proto2EnumValueDescriptorProto>]
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
      
      # Describes a value within an enum.
      class Proto2EnumValueDescriptorProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @number = args[:number] if args.key?(:number)
        end
      end
      
      # Describes a field within a message.
      class Proto2FieldDescriptorProto
        include Google::Apis::Core::Hashable
      
        # For numeric types, contains the original text representation of the value. For
        # booleans, "true" or "false". For strings, contains the default text contents (
        # not escaped in any way). For bytes, contains the C escaped value. All bytes >=
        # 128 are escaped.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # JSON name of this field. The value is set by protocol compiler. If the user
        # has set a "json_name" option on this field, that option's value will be used.
        # Otherwise, it's deduced from the field's name by converting it to camelCase.
        # Corresponds to the JSON property `jsonName`
        # @return [String]
        attr_accessor :json_name
      
        # 
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # If set, gives the index of a oneof in the containing type's oneof_decl list.
        # This field is a member of that oneof.
        # Corresponds to the JSON property `oneofIndex`
        # @return [Fixnum]
        attr_accessor :oneof_index
      
        # If true, this is a proto3 "optional". When a proto3 field is optional, it
        # tracks presence regardless of field type. When proto3_optional is true, this
        # field must be belong to a oneof to signal to old proto3 clients that presence
        # is tracked for this field. This oneof is known as a "synthetic" oneof, and
        # this field must be its sole member (each proto3 optional field gets its own
        # synthetic oneof). Synthetic oneofs exist in the descriptor only, and do not
        # generate any API. Synthetic oneofs must be ordered after all "real" oneofs.
        # For message fields, proto3_optional doesn't create any semantic change, since
        # non-repeated message fields always track presence. However it still indicates
        # the semantic detail of whether the user wrote "optional" or not. This can be
        # useful for round-tripping the .proto file. For consistency we give message
        # fields a synthetic oneof also, even though it is not required to track
        # presence. This is especially important because the parser can't tell if a
        # field is a message or an enum, so it must always create a synthetic oneof.
        # Proto2 optional fields do not set this flag, because they already indicate
        # optional with `LABEL_OPTIONAL`.
        # Corresponds to the JSON property `proto3Optional`
        # @return [Boolean]
        attr_accessor :proto3_optional
        alias_method :proto3_optional?, :proto3_optional
      
        # If type_name is set, this need not be set. If both this and type_name are set,
        # this must be one of TYPE_ENUM, TYPE_MESSAGE or TYPE_GROUP.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # For message and enum types, this is the name of the type. If the name starts
        # with a '.', it is fully-qualified. Otherwise, C++-like scoping rules are used
        # to find the type (i.e. first the nested types within this message are searched,
        # then within the parent, on up to the root namespace).
        # Corresponds to the JSON property `typeName`
        # @return [String]
        attr_accessor :type_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @json_name = args[:json_name] if args.key?(:json_name)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @number = args[:number] if args.key?(:number)
          @oneof_index = args[:oneof_index] if args.key?(:oneof_index)
          @proto3_optional = args[:proto3_optional] if args.key?(:proto3_optional)
          @type = args[:type] if args.key?(:type)
          @type_name = args[:type_name] if args.key?(:type_name)
        end
      end
      
      # Describes a complete .proto file.
      class Proto2FileDescriptorProto
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enumType`
        # @return [Array<Google::Apis::ChromepolicyV1::Proto2EnumDescriptorProto>]
        attr_accessor :enum_type
      
        # All top-level definitions in this file.
        # Corresponds to the JSON property `messageType`
        # @return [Array<Google::Apis::ChromepolicyV1::Proto2DescriptorProto>]
        attr_accessor :message_type
      
        # file name, relative to root of source tree
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # e.g. "foo", "foo.bar", etc.
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # The syntax of the proto file. The supported values are "proto2", "proto3", and
        # "editions". If `edition` is present, this value must be "editions".
        # Corresponds to the JSON property `syntax`
        # @return [String]
        attr_accessor :syntax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enum_type = args[:enum_type] if args.key?(:enum_type)
          @message_type = args[:message_type] if args.key?(:message_type)
          @name = args[:name] if args.key?(:name)
          @package = args[:package] if args.key?(:package)
          @syntax = args[:syntax] if args.key?(:syntax)
        end
      end
      
      # Describes a oneof.
      class Proto2OneofDescriptorProto
        include Google::Apis::Core::Hashable
      
        # 
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
    end
  end
end
