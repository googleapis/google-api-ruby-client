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
    module AlertcenterV1beta1
      
      class GoogleAppsAlertcenterTypeAccountWarning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeAccountWarningLoginDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeActivityRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeAppMakerSqlSetupNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeAppMakerSqlSetupNotificationRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeAttachmentCsv
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeAttachmentCsvCsvRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeBadWhitelist
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeDeviceCompromised
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeDlpRuleViolation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeDomainId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeGmailMessageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeGoogleOperations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeMailPhishing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeMaliciousEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypePhishingSpike
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeStateSponsoredAttack
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeSuspiciousActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1Alert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1AlertFeedback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1AlertMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1ListAlertsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1SettingsNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterV1beta1UndeleteAlertRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsAlertcenterTypeAccountWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :login_details, as: 'loginDetails', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAccountWarningLoginDetails, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAccountWarningLoginDetails::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterTypeAccountWarningLoginDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :login_time, as: 'loginTime'
        end
      end
      
      class GoogleAppsAlertcenterTypeActivityRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :action_names, as: 'actionNames'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :query, as: 'query'
          collection :superseded_alerts, as: 'supersededAlerts'
          property :superseding_alert, as: 'supersedingAlert'
          property :threshold, as: 'threshold'
          property :trigger_source, as: 'triggerSource'
          property :update_time, as: 'updateTime'
          property :window_size, as: 'windowSize'
        end
      end
      
      class GoogleAppsAlertcenterTypeAppMakerSqlSetupNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :request_info, as: 'requestInfo', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAppMakerSqlSetupNotificationRequestInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAppMakerSqlSetupNotificationRequestInfo::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterTypeAppMakerSqlSetupNotificationRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_developer_email, as: 'appDeveloperEmail'
          property :app_key, as: 'appKey'
          property :number_of_requests, :numeric_string => true, as: 'numberOfRequests'
        end
      end
      
      class GoogleAppsAlertcenterTypeAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv, as: 'csv', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAttachmentCsv, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAttachmentCsv::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterTypeAttachmentCsv
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_rows, as: 'dataRows', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAttachmentCsvCsvRow, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAttachmentCsvCsvRow::Representation
      
          collection :headers, as: 'headers'
        end
      end
      
      class GoogleAppsAlertcenterTypeAttachmentCsvCsvRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries'
        end
      end
      
      class GoogleAppsAlertcenterTypeBadWhitelist
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_id, as: 'domainId', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeDomainId, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeDomainId::Representation
      
          property :malicious_entity, as: 'maliciousEntity', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeMaliciousEntity, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeMaliciousEntity::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeGmailMessageInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeGmailMessageInfo::Representation
      
          property :source_ip, as: 'sourceIp'
        end
      end
      
      class GoogleAppsAlertcenterTypeDeviceCompromised
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :events, as: 'events', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterTypeDeviceCompromisedDeviceCompromisedSecurityDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_compromised_state, as: 'deviceCompromisedState'
          property :device_id, as: 'deviceId'
          property :device_model, as: 'deviceModel'
          property :device_type, as: 'deviceType'
          property :ios_vendor_id, as: 'iosVendorId'
          property :resource_id, as: 'resourceId'
          property :serial_number, as: 'serialNumber'
        end
      end
      
      class GoogleAppsAlertcenterTypeDlpRuleViolation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rule_violation_info, as: 'ruleViolationInfo', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfo::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterTypeDomainId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_primary_domain, as: 'customerPrimaryDomain'
        end
      end
      
      class GoogleAppsAlertcenterTypeDomainWideTakeoutInitiated
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :takeout_request_id, as: 'takeoutRequestId'
        end
      end
      
      class GoogleAppsAlertcenterTypeGmailMessageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments_sha256_hash, as: 'attachmentsSha256Hash'
          property :date, as: 'date'
          property :md5_hash_message_body, as: 'md5HashMessageBody'
          property :md5_hash_subject, as: 'md5HashSubject'
          property :message_body_snippet, as: 'messageBodySnippet'
          property :message_id, as: 'messageId'
          property :recipient, as: 'recipient'
          property :subject_text, as: 'subjectText'
        end
      end
      
      class GoogleAppsAlertcenterTypeGoogleOperations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :affected_user_emails, as: 'affectedUserEmails'
          property :attachment_data, as: 'attachmentData', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAttachment, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeAttachment::Representation
      
          property :description, as: 'description'
          property :header, as: 'header'
          property :title, as: 'title'
        end
      end
      
      class GoogleAppsAlertcenterTypeMailPhishing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_id, as: 'domainId', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeDomainId, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeDomainId::Representation
      
          property :is_internal, as: 'isInternal'
          property :malicious_entity, as: 'maliciousEntity', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeMaliciousEntity, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeMaliciousEntity::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeGmailMessageInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeGmailMessageInfo::Representation
      
          property :system_action_type, as: 'systemActionType'
        end
      end
      
      class GoogleAppsAlertcenterTypeMaliciousEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :entity, as: 'entity', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeUser, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeUser::Representation
      
          property :from_header, as: 'fromHeader'
        end
      end
      
      class GoogleAppsAlertcenterTypePhishingSpike
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_id, as: 'domainId', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeDomainId, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeDomainId::Representation
      
          property :is_internal, as: 'isInternal'
          property :malicious_entity, as: 'maliciousEntity', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeMaliciousEntity, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeMaliciousEntity::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeGmailMessageInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeGmailMessageInfo::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source, as: 'dataSource'
          collection :match_info, as: 'matchInfo', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo::Representation
      
          collection :recipients, as: 'recipients'
          property :resource_info, as: 'resourceInfo', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo::Representation
      
          property :rule_info, as: 'ruleInfo', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo::Representation
      
          collection :suppressed_action_types, as: 'suppressedActionTypes'
          property :trigger, as: 'trigger'
          collection :triggered_action_info, as: 'triggeredActionInfo', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo::Representation
      
          collection :triggered_action_types, as: 'triggeredActionTypes'
          property :triggering_user_email, as: 'triggeringUserEmail'
        end
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoActionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predefined_detector, as: 'predefinedDetector', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo::Representation
      
          property :user_defined_detector, as: 'userDefinedDetector', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoPredefinedDetectorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detector_name, as: 'detectorName'
        end
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoMatchInfoUserDefinedDetectorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
          property :resource_title, as: 'resourceTitle'
        end
      end
      
      class GoogleAppsAlertcenterTypeRuleViolationInfoRuleInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleAppsAlertcenterTypeStateSponsoredAttack
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class GoogleAppsAlertcenterTypeSuspiciousActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :events, as: 'events', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterTypeSuspiciousActivitySuspiciousActivitySecurityDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_id, as: 'deviceId'
          property :device_model, as: 'deviceModel'
          property :device_property, as: 'deviceProperty'
          property :device_type, as: 'deviceType'
          property :ios_vendor_id, as: 'iosVendorId'
          property :new_value, as: 'newValue'
          property :old_value, as: 'oldValue'
          property :resource_id, as: 'resourceId'
          property :serial_number, as: 'serialNumber'
        end
      end
      
      class GoogleAppsAlertcenterTypeUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email_address, as: 'emailAddress'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1Alert
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :create_time, as: 'createTime'
          property :customer_id, as: 'customerId'
          hash :data, as: 'data'
          property :deleted, as: 'deleted'
          property :end_time, as: 'endTime'
          property :etag, as: 'etag'
          property :metadata, as: 'metadata', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1AlertMetadata, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1AlertMetadata::Representation
      
          property :security_investigation_tool_link, as: 'securityInvestigationToolLink'
          property :source, as: 'source'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1AlertFeedback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :create_time, as: 'createTime'
          property :customer_id, as: 'customerId'
          property :email, as: 'email'
          property :feedback_id, as: 'feedbackId'
          property :type, as: 'type'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1AlertMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :assignee, as: 'assignee'
          property :customer_id, as: 'customerId'
          property :etag, as: 'etag'
          property :severity, as: 'severity'
          property :status, as: 'status'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1BatchDeleteAlertsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_id, as: 'alertId'
          property :customer_id, as: 'customerId'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1BatchDeleteAlertsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :failed_alert_status, as: 'failedAlertStatus', class: Google::Apis::AlertcenterV1beta1::GoogleRpcStatus, decorator: Google::Apis::AlertcenterV1beta1::GoogleRpcStatus::Representation
      
          collection :success_alert_ids, as: 'successAlertIds'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_id, as: 'alertId'
          property :customer_id, as: 'customerId'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1BatchUndeleteAlertsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :failed_alert_status, as: 'failedAlertStatus', class: Google::Apis::AlertcenterV1beta1::GoogleRpcStatus, decorator: Google::Apis::AlertcenterV1beta1::GoogleRpcStatus::Representation
      
          collection :success_alert_ids, as: 'successAlertIds'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1ListAlertFeedbackResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feedback, as: 'feedback', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1AlertFeedback, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1AlertFeedback::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterV1beta1ListAlertsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alerts, as: 'alerts', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1Alert, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1Alert::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :notifications, as: 'notifications', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1SettingsNotification, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1SettingsNotification::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterV1beta1SettingsNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_pubsub_topic, as: 'cloudPubsubTopic', class: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic, decorator: Google::Apis::AlertcenterV1beta1::GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic::Representation
      
        end
      end
      
      class GoogleAppsAlertcenterV1beta1SettingsNotificationCloudPubsubTopic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload_format, as: 'payloadFormat'
          property :topic_name, as: 'topicName'
        end
      end
      
      class GoogleAppsAlertcenterV1beta1UndeleteAlertRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_id, as: 'customerId'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
