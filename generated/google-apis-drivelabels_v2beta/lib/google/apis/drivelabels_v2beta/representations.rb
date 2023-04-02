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
    module DrivelabelsV2beta
      
      class GoogleAppsDriveLabelsV2betaBadgeColors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaBadgeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDateLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaDisableLabelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaEnableLabelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldDateOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldDisplayHints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldIntegerOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldListOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldLongTextOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldTextOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaFieldUserOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaIntegerLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabelDisplayHints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabelLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabelLock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabelLockCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabelPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabelProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLifecycle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaListLabelLocksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaListLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaListLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLockStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaLongTextLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaPublishLabelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaSelectionLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaTextLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaUserCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaUserLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaWriteControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeColor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsDriveLabelsV2betaBadgeColors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor', class: Google::Apis::DrivelabelsV2beta::GoogleTypeColor, decorator: Google::Apis::DrivelabelsV2beta::GoogleTypeColor::Representation
      
          property :foreground_color, as: 'foregroundColor', class: Google::Apis::DrivelabelsV2beta::GoogleTypeColor, decorator: Google::Apis::DrivelabelsV2beta::GoogleTypeColor::Representation
      
          property :solo_color, as: 'soloColor', class: Google::Apis::DrivelabelsV2beta::GoogleTypeColor, decorator: Google::Apis::DrivelabelsV2beta::GoogleTypeColor::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaBadgeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color', class: Google::Apis::DrivelabelsV2beta::GoogleTypeColor, decorator: Google::Apis::DrivelabelsV2beta::GoogleTypeColor::Representation
      
          property :priority_override, :numeric_string => true, as: 'priorityOverride'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest::Representation
      
          property :use_admin_access, as: 'useAdminAccess'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest::Representation
      
          property :use_admin_access, as: 'useAdminAccess'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelPermission, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelPermission::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDateLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, as: 'maxValue', class: Google::Apis::DrivelabelsV2beta::GoogleTypeDate, decorator: Google::Apis::DrivelabelsV2beta::GoogleTypeDate::Representation
      
          property :min_value, as: 'minValue', class: Google::Apis::DrivelabelsV2beta::GoogleTypeDate, decorator: Google::Apis::DrivelabelsV2beta::GoogleTypeDate::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :use_admin_access, as: 'useAdminAccess'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          collection :requests, as: 'requests', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest::Representation
      
          property :use_admin_access, as: 'useAdminAccess'
          property :view, as: 'view'
          property :write_control, as: 'writeControl', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaWriteControl, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaWriteControl::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaField, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaField::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :choice, as: 'choice', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice::Representation
      
          property :field_id, as: 'fieldId'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_id, as: 'fieldId'
          property :id, as: 'id'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_policy, as: 'disabledPolicy', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy::Representation
      
          property :id, as: 'id'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_policy, as: 'disabledPolicy', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy::Representation
      
          property :field_id, as: 'fieldId'
          property :id, as: 'id'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_id, as: 'fieldId'
          property :id, as: 'id'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_field, as: 'createField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest::Representation
      
          property :create_selection_choice, as: 'createSelectionChoice', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest::Representation
      
          property :delete_field, as: 'deleteField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest::Representation
      
          property :delete_selection_choice, as: 'deleteSelectionChoice', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest::Representation
      
          property :disable_field, as: 'disableField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest::Representation
      
          property :disable_selection_choice, as: 'disableSelectionChoice', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest::Representation
      
          property :enable_field, as: 'enableField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest::Representation
      
          property :enable_selection_choice, as: 'enableSelectionChoice', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest::Representation
      
          property :update_field, as: 'updateField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest::Representation
      
          property :update_field_type, as: 'updateFieldType', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest::Representation
      
          property :update_label, as: 'updateLabel', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest::Representation
      
          property :update_selection_choice_properties, as: 'updateSelectionChoiceProperties', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :properties, as: 'properties', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldProperties, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldProperties::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_options, as: 'dateOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldDateOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldDateOptions::Representation
      
          property :id, as: 'id'
          property :integer_options, as: 'integerOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldIntegerOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldIntegerOptions::Representation
      
          property :long_text_options, as: 'longTextOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldLongTextOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldLongTextOptions::Representation
      
          property :selection_options, as: 'selectionOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptions::Representation
      
          property :text_options, as: 'textOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldTextOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldTextOptions::Representation
      
          property :update_mask, as: 'updateMask'
          property :user_options, as: 'userOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldUserOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldUserOptions::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :properties, as: 'properties', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelProperties, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelProperties::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_id, as: 'fieldId'
          property :id, as: 'id'
          property :properties, as: 'properties', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse::Representation
      
          property :updated_label, as: 'updatedLabel', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabel, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabel::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :priority, as: 'priority'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_id, as: 'fieldId'
          property :id, as: 'id'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_field, as: 'createField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse::Representation
      
          property :create_selection_choice, as: 'createSelectionChoice', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse::Representation
      
          property :delete_field, as: 'deleteField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse::Representation
      
          property :delete_selection_choice, as: 'deleteSelectionChoice', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse::Representation
      
          property :disable_field, as: 'disableField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse::Representation
      
          property :disable_selection_choice, as: 'disableSelectionChoice', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse::Representation
      
          property :enable_field, as: 'enableField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse::Representation
      
          property :enable_selection_choice, as: 'enableSelectionChoice', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse::Representation
      
          property :update_field, as: 'updateField', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse::Representation
      
          property :update_field_type, as: 'updateFieldType', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse::Representation
      
          property :update_label, as: 'updateLabel', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse::Representation
      
          property :update_selection_choice_properties, as: 'updateSelectionChoiceProperties', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority, as: 'priority'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority, as: 'priority'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaDisableLabelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_policy, as: 'disabledPolicy', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy::Representation
      
          property :language_code, as: 'languageCode'
          property :update_mask, as: 'updateMask'
          property :use_admin_access, as: 'useAdminAccess'
          property :write_control, as: 'writeControl', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaWriteControl, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaWriteControl::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaEnableLabelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :use_admin_access, as: 'useAdminAccess'
          property :write_control, as: 'writeControl', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaWriteControl, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaWriteControl::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_capabilities, as: 'appliedCapabilities', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :date_options, as: 'dateOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldDateOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldDateOptions::Representation
      
          property :disable_time, as: 'disableTime'
          property :disabler, as: 'disabler', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :display_hints, as: 'displayHints', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldDisplayHints, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldDisplayHints::Representation
      
          property :id, as: 'id'
          property :integer_options, as: 'integerOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldIntegerOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldIntegerOptions::Representation
      
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycle, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycle::Representation
      
          property :lock_status, as: 'lockStatus', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLockStatus, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLockStatus::Representation
      
          property :properties, as: 'properties', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldProperties, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldProperties::Representation
      
          property :publisher, as: 'publisher', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :query_key, as: 'queryKey'
          property :schema_capabilities, as: 'schemaCapabilities', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities::Representation
      
          property :selection_options, as: 'selectionOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptions::Representation
      
          property :text_options, as: 'textOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldTextOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldTextOptions::Representation
      
          property :update_time, as: 'updateTime'
          property :updater, as: 'updater', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :user_options, as: 'userOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldUserOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldUserOptions::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_read, as: 'canRead'
          property :can_search, as: 'canSearch'
          property :can_write, as: 'canWrite'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldDateOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_format, as: 'dateFormat'
          property :date_format_type, as: 'dateFormatType'
          property :max_value, as: 'maxValue', class: Google::Apis::DrivelabelsV2beta::GoogleTypeDate, decorator: Google::Apis::DrivelabelsV2beta::GoogleTypeDate::Representation
      
          property :min_value, as: 'minValue', class: Google::Apis::DrivelabelsV2beta::GoogleTypeDate, decorator: Google::Apis::DrivelabelsV2beta::GoogleTypeDate::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldDisplayHints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :hidden_in_search, as: 'hiddenInSearch'
          property :required, as: 'required'
          property :shown_in_apply, as: 'shownInApply'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldIntegerOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, :numeric_string => true, as: 'maxValue'
          property :min_value, :numeric_string => true, as: 'minValue'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_limits, as: 'dateLimits', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDateLimits, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaDateLimits::Representation
      
          property :integer_limits, as: 'integerLimits', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaIntegerLimits, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaIntegerLimits::Representation
      
          property :long_text_limits, as: 'longTextLimits', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLongTextLimits, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLongTextLimits::Representation
      
          property :max_description_length, as: 'maxDescriptionLength'
          property :max_display_name_length, as: 'maxDisplayNameLength'
          property :max_id_length, as: 'maxIdLength'
          property :selection_limits, as: 'selectionLimits', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaSelectionLimits, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaSelectionLimits::Representation
      
          property :text_limits, as: 'textLimits', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaTextLimits, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaTextLimits::Representation
      
          property :user_limits, as: 'userLimits', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserLimits, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserLimits::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldListOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_entries, as: 'maxEntries'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldLongTextOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_length, as: 'maxLength'
          property :min_length, as: 'minLength'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :insert_before_field, as: 'insertBeforeField'
          property :required, as: 'required'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_disable, as: 'canDisable'
          property :can_enable, as: 'canEnable'
          property :can_update, as: 'canUpdate'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :choices, as: 'choices', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice::Representation
      
          property :list_options, as: 'listOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldListOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldListOptions::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_capabilities, as: 'appliedCapabilities', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :disable_time, as: 'disableTime'
          property :disabler, as: 'disabler', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :display_hints, as: 'displayHints', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints::Representation
      
          property :id, as: 'id'
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycle, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycle::Representation
      
          property :lock_status, as: 'lockStatus', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLockStatus, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLockStatus::Representation
      
          property :properties, as: 'properties', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties::Representation
      
          property :publish_time, as: 'publishTime'
          property :publisher, as: 'publisher', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :schema_capabilities, as: 'schemaCapabilities', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities::Representation
      
          property :update_time, as: 'updateTime'
          property :updater, as: 'updater', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_read, as: 'canRead'
          property :can_search, as: 'canSearch'
          property :can_select, as: 'canSelect'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :badge_colors, as: 'badgeColors', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaBadgeColors, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaBadgeColors::Representation
      
          property :badge_priority, :numeric_string => true, as: 'badgePriority'
          property :dark_badge_colors, as: 'darkBadgeColors', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaBadgeColors, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaBadgeColors::Representation
      
          property :disabled, as: 'disabled'
          property :hidden_in_search, as: 'hiddenInSearch'
          property :shown_in_apply, as: 'shownInApply'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :badge_config, as: 'badgeConfig', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaBadgeConfig, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaBadgeConfig::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :insert_before_choice, as: 'insertBeforeChoice'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_disable, as: 'canDisable'
          property :can_enable, as: 'canEnable'
          property :can_update, as: 'canUpdate'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldTextOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_length, as: 'maxLength'
          property :min_length, as: 'minLength'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaFieldUserOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :list_options, as: 'listOptions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldListOptions, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldListOptions::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaIntegerLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, :numeric_string => true, as: 'maxValue'
          property :min_value, :numeric_string => true, as: 'minValue'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :applied_capabilities, as: 'appliedCapabilities', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities::Representation
      
          property :applied_label_policy, as: 'appliedLabelPolicy', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :customer, as: 'customer'
          property :disable_time, as: 'disableTime'
          property :disabler, as: 'disabler', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :display_hints, as: 'displayHints', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelDisplayHints, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelDisplayHints::Representation
      
          collection :fields, as: 'fields', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaField, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaField::Representation
      
          property :id, as: 'id'
          property :label_type, as: 'labelType'
          property :learn_more_uri, as: 'learnMoreUri'
          property :lifecycle, as: 'lifecycle', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycle, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycle::Representation
      
          property :lock_status, as: 'lockStatus', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLockStatus, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLockStatus::Representation
      
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelProperties, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelProperties::Representation
      
          property :publish_time, as: 'publishTime'
          property :publisher, as: 'publisher', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_creator, as: 'revisionCreator', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :revision_id, as: 'revisionId'
          property :schema_capabilities, as: 'schemaCapabilities', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_apply, as: 'canApply'
          property :can_read, as: 'canRead'
          property :can_remove, as: 'canRemove'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copy_mode, as: 'copyMode'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabelDisplayHints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :hidden_in_search, as: 'hiddenInSearch'
          property :priority, :numeric_string => true, as: 'priority'
          property :shown_in_apply, as: 'shownInApply'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabelLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_limits, as: 'fieldLimits', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldLimits, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaFieldLimits::Representation
      
          property :max_deleted_fields, as: 'maxDeletedFields'
          property :max_description_length, as: 'maxDescriptionLength'
          property :max_draft_revisions, as: 'maxDraftRevisions'
          property :max_fields, as: 'maxFields'
          property :max_title_length, as: 'maxTitleLength'
          property :name, as: 'name'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabelLock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capabilities, as: 'capabilities', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelLockCapabilities, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelLockCapabilities::Representation
      
          property :choice_id, as: 'choiceId'
          property :create_time, as: 'createTime'
          property :creator, as: 'creator', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaUserInfo::Representation
      
          property :delete_time, as: 'deleteTime'
          property :field_id, as: 'fieldId'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabelLockCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_view_policy, as: 'canViewPolicy'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabelPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :email, as: 'email'
          property :group, as: 'group'
          property :name, as: 'name'
          property :person, as: 'person'
          property :role, as: 'role'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabelProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :title, as: 'title'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_disable, as: 'canDisable'
          property :can_enable, as: 'canEnable'
          property :can_update, as: 'canUpdate'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLifecycle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_policy, as: 'disabledPolicy', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy::Representation
      
          property :has_unpublished_changes, as: 'hasUnpublishedChanges'
          property :state, as: 'state'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hide_in_search, as: 'hideInSearch'
          property :show_in_apply, as: 'showInApply'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaListLabelLocksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_locks, as: 'labelLocks', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelLock, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelLock::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_permissions, as: 'labelPermissions', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelPermission, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelPermission::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaListLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabel, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabel::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaListLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_entries, as: 'maxEntries'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLockStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locked, as: 'locked'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaLongTextLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_length, as: 'maxLength'
          property :min_length, as: 'minLength'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaPublishLabelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :use_admin_access, as: 'useAdminAccess'
          property :write_control, as: 'writeControl', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaWriteControl, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaWriteControl::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaSelectionLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :list_limits, as: 'listLimits', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaListLimits, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaListLimits::Representation
      
          property :max_choices, as: 'maxChoices'
          property :max_deleted_choices, as: 'maxDeletedChoices'
          property :max_display_name_length, as: 'maxDisplayNameLength'
          property :max_id_length, as: 'maxIdLength'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaTextLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_length, as: 'maxLength'
          property :min_length, as: 'minLength'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copy_mode, as: 'copyMode'
          property :language_code, as: 'languageCode'
          property :use_admin_access, as: 'useAdminAccess'
          property :view, as: 'view'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_permission, as: 'labelPermission', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelPermission, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaLabelPermission::Representation
      
          property :parent, as: 'parent'
          property :use_admin_access, as: 'useAdminAccess'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaUserCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_access_label_manager, as: 'canAccessLabelManager'
          property :can_administrate_labels, as: 'canAdministrateLabels'
          property :can_create_admin_labels, as: 'canCreateAdminLabels'
          property :can_create_shared_labels, as: 'canCreateSharedLabels'
          property :name, as: 'name'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :person, as: 'person'
        end
      end
      
      class GoogleAppsDriveLabelsV2betaUserLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :list_limits, as: 'listLimits', class: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaListLimits, decorator: Google::Apis::DrivelabelsV2beta::GoogleAppsDriveLabelsV2betaListLimits::Representation
      
        end
      end
      
      class GoogleAppsDriveLabelsV2betaWriteControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :required_revision_id, as: 'requiredRevisionId'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleTypeColor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
    end
  end
end
