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
      
      # Additional key names that will be used to identify the target of the policy
      # value.
      class GoogleChromePolicyV1AdditionalTargetKeyName
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
      
      # Request message for specifying that multiple policy values inherit their value
      # from their parents.
      class GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest
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
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1InheritOrgUnitPolicyRequest>]
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
      class GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest
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
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ModifyOrgUnitPolicyRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Request parameters for inheriting policy value of a specific org unit target
      # from the policy value of its parent org unit.
      class GoogleChromePolicyV1InheritOrgUnitPolicyRequest
        include Google::Apis::Core::Hashable
      
        # The fully qualified name of the policy schema that is being inherited.
        # Corresponds to the JSON property `policySchema`
        # @return [String]
        attr_accessor :policy_schema
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey]
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
      
      # Response message for listing policy schemas that match a filter.
      class GoogleChromePolicyV1ListPolicySchemasResponse
        include Google::Apis::Core::Hashable
      
        # The page token used to get the next page of policy schemas.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of policy schemas that match the query.
        # Corresponds to the JSON property `policySchemas`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchema>]
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
      
      # Request parameters for modifying a policy value for a specific org unit target.
      class GoogleChromePolicyV1ModifyOrgUnitPolicyRequest
        include Google::Apis::Core::Hashable
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey]
        attr_accessor :policy_target_key
      
        # A particular value for a policy managed by the service.
        # Corresponds to the JSON property `policyValue`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyValue]
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
      
      # Resource representing a policy schema. Next ID: 10
      class GoogleChromePolicyV1PolicySchema
        include Google::Apis::Core::Hashable
      
        # Output only. Specific access restrictions related to this policy.
        # Corresponds to the JSON property `accessRestrictions`
        # @return [Array<String>]
        attr_accessor :access_restrictions
      
        # Output only. Additional key names that will be used to identify the target of
        # the policy value. When specifying a `policyTargetKey`, each of the additional
        # keys specified here will have to be included in the `additionalTargetKeys` map.
        # Corresponds to the JSON property `additionalTargetKeyNames`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1AdditionalTargetKeyName>]
        attr_accessor :additional_target_key_names
      
        # Describes a complete .proto file.
        # Corresponds to the JSON property `definition`
        # @return [Google::Apis::ChromepolicyV1::Proto2FileDescriptorProto]
        attr_accessor :definition
      
        # Output only. Detailed description of each field that is part of the schema.
        # Corresponds to the JSON property `fieldDescriptions`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldDescription>]
        attr_accessor :field_descriptions
      
        # Format: name=customers/`customer`/policySchemas/`schema_namespace`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Special notice messages related to setting certain values in
        # certain fields in the schema.
        # Corresponds to the JSON property `notices`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaNoticeDescription>]
        attr_accessor :notices
      
        # Output only. Description about the policy schema for user consumption.
        # Corresponds to the JSON property `policyDescription`
        # @return [String]
        attr_accessor :policy_description
      
        # Output only. The full qualified name of the policy schema. This value is used
        # to fill the field `policy_schema` in PolicyValue when calling
        # BatchInheritOrgUnitPolicies or BatchModifyOrgUnitPolicies.
        # Corresponds to the JSON property `schemaName`
        # @return [String]
        attr_accessor :schema_name
      
        # Output only. URI to related support article for this schema.
        # Corresponds to the JSON property `supportUri`
        # @return [String]
        attr_accessor :support_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_restrictions = args[:access_restrictions] if args.key?(:access_restrictions)
          @additional_target_key_names = args[:additional_target_key_names] if args.key?(:additional_target_key_names)
          @definition = args[:definition] if args.key?(:definition)
          @field_descriptions = args[:field_descriptions] if args.key?(:field_descriptions)
          @name = args[:name] if args.key?(:name)
          @notices = args[:notices] if args.key?(:notices)
          @policy_description = args[:policy_description] if args.key?(:policy_description)
          @schema_name = args[:schema_name] if args.key?(:schema_name)
          @support_uri = args[:support_uri] if args.key?(:support_uri)
        end
      end
      
      # The field and the value it must have for another field to be allowed to be set.
      class GoogleChromePolicyV1PolicySchemaFieldDependencies
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
      class GoogleChromePolicyV1PolicySchemaFieldDescription
        include Google::Apis::Core::Hashable
      
        # Output only. The description for the field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The name of the field for associated with this description.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Output only. Provides a list of fields and the values they must have for this
        # field to be allowed to be set.
        # Corresponds to the JSON property `fieldDependencies`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldDependencies>]
        attr_accessor :field_dependencies
      
        # Output only. Any input constraints associated on the values for the field.
        # Corresponds to the JSON property `inputConstraint`
        # @return [String]
        attr_accessor :input_constraint
      
        # Output only. If the field has a set of known values, this field will provide a
        # description for these values.
        # Corresponds to the JSON property `knownValueDescriptions`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription>]
        attr_accessor :known_value_descriptions
      
        # Output only. Provides the description of the fields nested in this field, if
        # the field is a message type that defines multiple fields.
        # Corresponds to the JSON property `nestedFieldDescriptions`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldDescription>]
        attr_accessor :nested_field_descriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @field = args[:field] if args.key?(:field)
          @field_dependencies = args[:field_dependencies] if args.key?(:field_dependencies)
          @input_constraint = args[:input_constraint] if args.key?(:input_constraint)
          @known_value_descriptions = args[:known_value_descriptions] if args.key?(:known_value_descriptions)
          @nested_field_descriptions = args[:nested_field_descriptions] if args.key?(:nested_field_descriptions)
        end
      end
      
      # Provides detailed information about a known value that is allowed for a
      # particular field in a PolicySchema.
      class GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
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
      class GoogleChromePolicyV1PolicySchemaNoticeDescription
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
      
      # The key used to identify the target on which the policy will be applied.
      class GoogleChromePolicyV1PolicyTargetKey
        include Google::Apis::Core::Hashable
      
        # Map containing the additional target key name and value pairs used to further
        # identify the target of the policy.
        # Corresponds to the JSON property `additionalTargetKeys`
        # @return [Hash<String,String>]
        attr_accessor :additional_target_keys
      
        # The target resource on which this policy is applied. The following resources
        # are supported: * Organizational Unit ("orgunits/`orgunit_id`")
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
      class GoogleChromePolicyV1PolicyValue
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
      
      # Request message for getting the resolved policy value for a specific target.
      class GoogleChromePolicyV1ResolveRequest
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
        # com/chrome/chrome-management/guides/policyapi for details on schema namepsaces.
        # For example: Valid: "chrome.users.*", "chrome.users.apps.*", "chrome.printers.
        # *" Invalid: "*", "*.users", "chrome.*", "chrome.*.apps.*"
        # Corresponds to the JSON property `policySchemaFilter`
        # @return [String]
        attr_accessor :policy_schema_filter
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `policyTargetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey]
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
      class GoogleChromePolicyV1ResolveResponse
        include Google::Apis::Core::Hashable
      
        # The page token used to get the next set of resolved policies found by the
        # request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of resolved policies found by the resolve request.
        # Corresponds to the JSON property `resolvedPolicies`
        # @return [Array<Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ResolvedPolicy>]
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
      class GoogleChromePolicyV1ResolvedPolicy
        include Google::Apis::Core::Hashable
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `sourceKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey]
        attr_accessor :source_key
      
        # The key used to identify the target on which the policy will be applied.
        # Corresponds to the JSON property `targetKey`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey]
        attr_accessor :target_key
      
        # A particular value for a policy managed by the service.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_key = args[:source_key] if args.key?(:source_key)
          @target_key = args[:target_key] if args.key?(:target_key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request message for uploading a file for a policy. Next ID: 5
      class GoogleChromePolicyV1UploadPolicyFileRequest
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
      
      # Response message for downloading an uploaded file. Next ID: 2
      class GoogleChromePolicyV1UploadPolicyFileResponse
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
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
        # The syntax of the proto file. The supported values are "proto2" and "proto3".
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
