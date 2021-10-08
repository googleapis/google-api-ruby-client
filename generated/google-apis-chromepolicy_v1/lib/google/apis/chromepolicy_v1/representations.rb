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
      
      class GoogleChromePolicyV1AdditionalTargetKeyName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1InheritOrgUnitPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1ListPolicySchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1ModifyOrgUnitPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1PolicySchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1PolicySchemaFieldDependencies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1PolicySchemaFieldDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1PolicySchemaNoticeDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1PolicyTargetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1PolicyValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1ResolveRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1ResolveResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1ResolvedPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1UploadPolicyFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1UploadPolicyFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Proto2DescriptorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Proto2EnumDescriptorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Proto2EnumValueDescriptorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Proto2FieldDescriptorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Proto2FileDescriptorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Proto2OneofDescriptorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChromePolicyV1AdditionalTargetKeyName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :key_description, as: 'keyDescription'
        end
      end
      
      class GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1InheritOrgUnitPolicyRequest, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1InheritOrgUnitPolicyRequest::Representation
      
        end
      end
      
      class GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ModifyOrgUnitPolicyRequest, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ModifyOrgUnitPolicyRequest::Representation
      
        end
      end
      
      class GoogleChromePolicyV1InheritOrgUnitPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_schema, as: 'policySchema'
          property :policy_target_key, as: 'policyTargetKey', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey::Representation
      
        end
      end
      
      class GoogleChromePolicyV1ListPolicySchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :policy_schemas, as: 'policySchemas', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchema, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchema::Representation
      
        end
      end
      
      class GoogleChromePolicyV1ModifyOrgUnitPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_target_key, as: 'policyTargetKey', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey::Representation
      
          property :policy_value, as: 'policyValue', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyValue, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyValue::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleChromePolicyV1PolicySchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access_restrictions, as: 'accessRestrictions'
          collection :additional_target_key_names, as: 'additionalTargetKeyNames', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1AdditionalTargetKeyName, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1AdditionalTargetKeyName::Representation
      
          property :definition, as: 'definition', class: Google::Apis::ChromepolicyV1::Proto2FileDescriptorProto, decorator: Google::Apis::ChromepolicyV1::Proto2FileDescriptorProto::Representation
      
          collection :field_descriptions, as: 'fieldDescriptions', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldDescription, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldDescription::Representation
      
          property :name, as: 'name'
          collection :notices, as: 'notices', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaNoticeDescription, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaNoticeDescription::Representation
      
          property :policy_description, as: 'policyDescription'
          property :schema_name, as: 'schemaName'
          property :support_uri, as: 'supportUri'
          collection :valid_target_resources, as: 'validTargetResources'
        end
      end
      
      class GoogleChromePolicyV1PolicySchemaFieldDependencies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_field, as: 'sourceField'
          property :source_field_value, as: 'sourceFieldValue'
        end
      end
      
      class GoogleChromePolicyV1PolicySchemaFieldDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :field, as: 'field'
          collection :field_dependencies, as: 'fieldDependencies', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldDependencies, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldDependencies::Representation
      
          property :input_constraint, as: 'inputConstraint'
          collection :known_value_descriptions, as: 'knownValueDescriptions', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription::Representation
      
          collection :nested_field_descriptions, as: 'nestedFieldDescriptions', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldDescription, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchemaFieldDescription::Representation
      
        end
      end
      
      class GoogleChromePolicyV1PolicySchemaFieldKnownValueDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :value, as: 'value'
        end
      end
      
      class GoogleChromePolicyV1PolicySchemaNoticeDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledgement_required, as: 'acknowledgementRequired'
          property :field, as: 'field'
          property :notice_message, as: 'noticeMessage'
          property :notice_value, as: 'noticeValue'
        end
      end
      
      class GoogleChromePolicyV1PolicyTargetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_target_keys, as: 'additionalTargetKeys'
          property :target_resource, as: 'targetResource'
        end
      end
      
      class GoogleChromePolicyV1PolicyValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_schema, as: 'policySchema'
          hash :value, as: 'value'
        end
      end
      
      class GoogleChromePolicyV1ResolveRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :policy_schema_filter, as: 'policySchemaFilter'
          property :policy_target_key, as: 'policyTargetKey', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey::Representation
      
        end
      end
      
      class GoogleChromePolicyV1ResolveResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resolved_policies, as: 'resolvedPolicies', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ResolvedPolicy, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ResolvedPolicy::Representation
      
        end
      end
      
      class GoogleChromePolicyV1ResolvedPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_key, as: 'sourceKey', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey::Representation
      
          property :target_key, as: 'targetKey', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyTargetKey::Representation
      
          property :value, as: 'value', class: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyValue, decorator: Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicyValue::Representation
      
        end
      end
      
      class GoogleChromePolicyV1UploadPolicyFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_field, as: 'policyField'
        end
      end
      
      class GoogleChromePolicyV1UploadPolicyFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :download_uri, as: 'downloadUri'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Proto2DescriptorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enum_type, as: 'enumType', class: Google::Apis::ChromepolicyV1::Proto2EnumDescriptorProto, decorator: Google::Apis::ChromepolicyV1::Proto2EnumDescriptorProto::Representation
      
          collection :field, as: 'field', class: Google::Apis::ChromepolicyV1::Proto2FieldDescriptorProto, decorator: Google::Apis::ChromepolicyV1::Proto2FieldDescriptorProto::Representation
      
          property :name, as: 'name'
          collection :nested_type, as: 'nestedType', class: Google::Apis::ChromepolicyV1::Proto2DescriptorProto, decorator: Google::Apis::ChromepolicyV1::Proto2DescriptorProto::Representation
      
          collection :oneof_decl, as: 'oneofDecl', class: Google::Apis::ChromepolicyV1::Proto2OneofDescriptorProto, decorator: Google::Apis::ChromepolicyV1::Proto2OneofDescriptorProto::Representation
      
        end
      end
      
      class Proto2EnumDescriptorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :value, as: 'value', class: Google::Apis::ChromepolicyV1::Proto2EnumValueDescriptorProto, decorator: Google::Apis::ChromepolicyV1::Proto2EnumValueDescriptorProto::Representation
      
        end
      end
      
      class Proto2EnumValueDescriptorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :number, as: 'number'
        end
      end
      
      class Proto2FieldDescriptorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          property :json_name, as: 'jsonName'
          property :label, as: 'label'
          property :name, as: 'name'
          property :number, as: 'number'
          property :oneof_index, as: 'oneofIndex'
          property :proto3_optional, as: 'proto3Optional'
          property :type, as: 'type'
          property :type_name, as: 'typeName'
        end
      end
      
      class Proto2FileDescriptorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enum_type, as: 'enumType', class: Google::Apis::ChromepolicyV1::Proto2EnumDescriptorProto, decorator: Google::Apis::ChromepolicyV1::Proto2EnumDescriptorProto::Representation
      
          collection :message_type, as: 'messageType', class: Google::Apis::ChromepolicyV1::Proto2DescriptorProto, decorator: Google::Apis::ChromepolicyV1::Proto2DescriptorProto::Representation
      
          property :name, as: 'name'
          property :package, as: 'package'
          property :syntax, as: 'syntax'
        end
      end
      
      class Proto2OneofDescriptorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
    end
  end
end
