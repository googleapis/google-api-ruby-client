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
      
      class AbuseDetected
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountSuspensionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountSuspensionWarning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccountWarning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivityRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Alert
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlertFeedback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AlertMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApnsCertificateExpirationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppMakerSqlSetupNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppSettingsChanged
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppsOutage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BadWhitelist
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteAlertsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteAlertsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUndeleteAlertsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUndeleteAlertsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudPubsubTopic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Csv
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CsvRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceCompromised
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceCompromisedSecurityDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DlpRuleViolation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DomainWideTakeoutInitiated
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GmailMessageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleOperations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAlertFeedbackResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAlertsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoginDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MailPhishing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaliciousEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MandatoryServiceAnnouncement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MergeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Notification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhishingSpike
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PredefinedDetectorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrimaryAdminChangedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportingRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuleInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuleViolationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SsoProfileCreatedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SsoProfileDeletedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SsoProfileUpdatedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SensitiveAdminAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StateSponsoredAttack
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuperAdminPasswordResetEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspiciousActivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SuspiciousActivitySecurityDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransferMisconfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UndeleteAlertRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserChanges
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserDefinedDetectorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoiceMisconfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoicemailMisconfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VoicemailRecipientError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbuseDetected
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_details, as: 'additionalDetails', class: Google::Apis::AlertcenterV1beta1::EntityList, decorator: Google::Apis::AlertcenterV1beta1::EntityList::Representation
      
          property :product, as: 'product'
          property :sub_alert_id, as: 'subAlertId'
          property :variation_type, as: 'variationType'
        end
      end
      
      class AccountSuspensionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abuse_reason, as: 'abuseReason'
          property :product_name, as: 'productName'
        end
      end
      
      class AccountSuspensionWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :appeal_window, as: 'appealWindow'
          property :state, as: 'state'
          collection :suspension_details, as: 'suspensionDetails', class: Google::Apis::AlertcenterV1beta1::AccountSuspensionDetails, decorator: Google::Apis::AlertcenterV1beta1::AccountSuspensionDetails::Representation
      
        end
      end
      
      class AccountWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :login_details, as: 'loginDetails', class: Google::Apis::AlertcenterV1beta1::LoginDetails, decorator: Google::Apis::AlertcenterV1beta1::LoginDetails::Representation
      
        end
      end
      
      class ActionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ActivityRule
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
      
      class Alert
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :create_time, as: 'createTime'
          property :customer_id, as: 'customerId'
          hash :data, as: 'data'
          property :deleted, as: 'deleted'
          property :end_time, as: 'endTime'
          property :etag, as: 'etag'
          property :metadata, as: 'metadata', class: Google::Apis::AlertcenterV1beta1::AlertMetadata, decorator: Google::Apis::AlertcenterV1beta1::AlertMetadata::Representation
      
          property :security_investigation_tool_link, as: 'securityInvestigationToolLink'
          property :source, as: 'source'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class AlertFeedback
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
      
      class AlertMetadata
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
      
      class ApnsCertificateExpirationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apple_id, as: 'appleId'
          property :expiration_time, as: 'expirationTime'
          property :uid, as: 'uid'
        end
      end
      
      class AppMakerSqlSetupNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :request_info, as: 'requestInfo', class: Google::Apis::AlertcenterV1beta1::RequestInfo, decorator: Google::Apis::AlertcenterV1beta1::RequestInfo::Representation
      
        end
      end
      
      class AppSettingsChanged
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_details, :base64 => true, as: 'alertDetails'
          property :name, as: 'name'
        end
      end
      
      class AppsOutage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dashboard_uri, as: 'dashboardUri'
          property :incident_tracking_id, as: 'incidentTrackingId'
          property :merge_info, as: 'mergeInfo', class: Google::Apis::AlertcenterV1beta1::MergeInfo, decorator: Google::Apis::AlertcenterV1beta1::MergeInfo::Representation
      
          property :next_update_time, as: 'nextUpdateTime'
          collection :products, as: 'products'
          property :resolution_time, as: 'resolutionTime'
          property :status, as: 'status'
        end
      end
      
      class Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv, as: 'csv', class: Google::Apis::AlertcenterV1beta1::Csv, decorator: Google::Apis::AlertcenterV1beta1::Csv::Representation
      
        end
      end
      
      class BadWhitelist
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_id, as: 'domainId', class: Google::Apis::AlertcenterV1beta1::DomainId, decorator: Google::Apis::AlertcenterV1beta1::DomainId::Representation
      
          property :malicious_entity, as: 'maliciousEntity', class: Google::Apis::AlertcenterV1beta1::MaliciousEntity, decorator: Google::Apis::AlertcenterV1beta1::MaliciousEntity::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::AlertcenterV1beta1::GmailMessageInfo, decorator: Google::Apis::AlertcenterV1beta1::GmailMessageInfo::Representation
      
          property :source_ip, as: 'sourceIp'
        end
      end
      
      class BatchDeleteAlertsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_id, as: 'alertId'
          property :customer_id, as: 'customerId'
        end
      end
      
      class BatchDeleteAlertsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :failed_alert_status, as: 'failedAlertStatus', class: Google::Apis::AlertcenterV1beta1::Status, decorator: Google::Apis::AlertcenterV1beta1::Status::Representation
      
          collection :success_alert_ids, as: 'successAlertIds'
        end
      end
      
      class BatchUndeleteAlertsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_id, as: 'alertId'
          property :customer_id, as: 'customerId'
        end
      end
      
      class BatchUndeleteAlertsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :failed_alert_status, as: 'failedAlertStatus', class: Google::Apis::AlertcenterV1beta1::Status, decorator: Google::Apis::AlertcenterV1beta1::Status::Representation
      
          collection :success_alert_ids, as: 'successAlertIds'
        end
      end
      
      class CloudPubsubTopic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload_format, as: 'payloadFormat'
          property :topic_name, as: 'topicName'
        end
      end
      
      class Csv
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_rows, as: 'dataRows', class: Google::Apis::AlertcenterV1beta1::CsvRow, decorator: Google::Apis::AlertcenterV1beta1::CsvRow::Representation
      
          collection :headers, as: 'headers'
        end
      end
      
      class CsvRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries'
        end
      end
      
      class DeviceCompromised
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :events, as: 'events', class: Google::Apis::AlertcenterV1beta1::DeviceCompromisedSecurityDetail, decorator: Google::Apis::AlertcenterV1beta1::DeviceCompromisedSecurityDetail::Representation
      
        end
      end
      
      class DeviceCompromisedSecurityDetail
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
      
      class DlpRuleViolation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rule_violation_info, as: 'ruleViolationInfo', class: Google::Apis::AlertcenterV1beta1::RuleViolationInfo, decorator: Google::Apis::AlertcenterV1beta1::RuleViolationInfo::Representation
      
        end
      end
      
      class DomainId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_primary_domain, as: 'customerPrimaryDomain'
        end
      end
      
      class DomainWideTakeoutInitiated
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :takeout_request_id, as: 'takeoutRequestId'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :link, as: 'link'
          property :name, as: 'name'
          collection :values, as: 'values'
        end
      end
      
      class EntityList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::AlertcenterV1beta1::Entity, decorator: Google::Apis::AlertcenterV1beta1::Entity::Representation
      
          collection :headers, as: 'headers'
          property :name, as: 'name'
        end
      end
      
      class GmailMessageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments_sha256_hash, as: 'attachmentsSha256Hash'
          property :date, as: 'date'
          property :md5_hash_message_body, as: 'md5HashMessageBody'
          property :md5_hash_subject, as: 'md5HashSubject'
          property :message_body_snippet, as: 'messageBodySnippet'
          property :message_id, as: 'messageId'
          property :recipient, as: 'recipient'
          property :sent_time, as: 'sentTime'
          property :subject_text, as: 'subjectText'
        end
      end
      
      class GoogleOperations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :affected_user_emails, as: 'affectedUserEmails'
          property :attachment_data, as: 'attachmentData', class: Google::Apis::AlertcenterV1beta1::Attachment, decorator: Google::Apis::AlertcenterV1beta1::Attachment::Representation
      
          property :description, as: 'description'
          property :domain, as: 'domain'
          property :header, as: 'header'
          property :title, as: 'title'
        end
      end
      
      class ListAlertFeedbackResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feedback, as: 'feedback', class: Google::Apis::AlertcenterV1beta1::AlertFeedback, decorator: Google::Apis::AlertcenterV1beta1::AlertFeedback::Representation
      
        end
      end
      
      class ListAlertsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alerts, as: 'alerts', class: Google::Apis::AlertcenterV1beta1::Alert, decorator: Google::Apis::AlertcenterV1beta1::Alert::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LoginDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_address, as: 'ipAddress'
          property :login_time, as: 'loginTime'
        end
      end
      
      class MailPhishing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_id, as: 'domainId', class: Google::Apis::AlertcenterV1beta1::DomainId, decorator: Google::Apis::AlertcenterV1beta1::DomainId::Representation
      
          property :is_internal, as: 'isInternal'
          property :malicious_entity, as: 'maliciousEntity', class: Google::Apis::AlertcenterV1beta1::MaliciousEntity, decorator: Google::Apis::AlertcenterV1beta1::MaliciousEntity::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::AlertcenterV1beta1::GmailMessageInfo, decorator: Google::Apis::AlertcenterV1beta1::GmailMessageInfo::Representation
      
          property :system_action_type, as: 'systemActionType'
        end
      end
      
      class MaliciousEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :entity, as: 'entity', class: Google::Apis::AlertcenterV1beta1::User, decorator: Google::Apis::AlertcenterV1beta1::User::Representation
      
          property :from_header, as: 'fromHeader'
        end
      end
      
      class MandatoryServiceAnnouncement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :title, as: 'title'
        end
      end
      
      class MatchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predefined_detector, as: 'predefinedDetector', class: Google::Apis::AlertcenterV1beta1::PredefinedDetectorInfo, decorator: Google::Apis::AlertcenterV1beta1::PredefinedDetectorInfo::Representation
      
          property :user_defined_detector, as: 'userDefinedDetector', class: Google::Apis::AlertcenterV1beta1::UserDefinedDetectorInfo, decorator: Google::Apis::AlertcenterV1beta1::UserDefinedDetectorInfo::Representation
      
        end
      end
      
      class MergeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_alert_id, as: 'newAlertId'
          property :new_incident_tracking_id, as: 'newIncidentTrackingId'
        end
      end
      
      class Notification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_pubsub_topic, as: 'cloudPubsubTopic', class: Google::Apis::AlertcenterV1beta1::CloudPubsubTopic, decorator: Google::Apis::AlertcenterV1beta1::CloudPubsubTopic::Representation
      
        end
      end
      
      class PhishingSpike
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain_id, as: 'domainId', class: Google::Apis::AlertcenterV1beta1::DomainId, decorator: Google::Apis::AlertcenterV1beta1::DomainId::Representation
      
          property :is_internal, as: 'isInternal'
          property :malicious_entity, as: 'maliciousEntity', class: Google::Apis::AlertcenterV1beta1::MaliciousEntity, decorator: Google::Apis::AlertcenterV1beta1::MaliciousEntity::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::AlertcenterV1beta1::GmailMessageInfo, decorator: Google::Apis::AlertcenterV1beta1::GmailMessageInfo::Representation
      
        end
      end
      
      class PredefinedDetectorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detector_name, as: 'detectorName'
        end
      end
      
      class PrimaryAdminChangedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :previous_admin_email, as: 'previousAdminEmail'
          property :updated_admin_email, as: 'updatedAdminEmail'
        end
      end
      
      class ReportingRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_details, :base64 => true, as: 'alertDetails'
          property :name, as: 'name'
          property :query, :base64 => true, as: 'query'
        end
      end
      
      class RequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :app_developer_email, as: 'appDeveloperEmail'
          property :app_key, as: 'appKey'
          property :number_of_requests, :numeric_string => true, as: 'numberOfRequests'
        end
      end
      
      class ResourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
          property :resource_title, as: 'resourceTitle'
        end
      end
      
      class RuleInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class RuleViolationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_source, as: 'dataSource'
          collection :match_info, as: 'matchInfo', class: Google::Apis::AlertcenterV1beta1::MatchInfo, decorator: Google::Apis::AlertcenterV1beta1::MatchInfo::Representation
      
          collection :recipients, as: 'recipients'
          property :resource_info, as: 'resourceInfo', class: Google::Apis::AlertcenterV1beta1::ResourceInfo, decorator: Google::Apis::AlertcenterV1beta1::ResourceInfo::Representation
      
          property :rule_info, as: 'ruleInfo', class: Google::Apis::AlertcenterV1beta1::RuleInfo, decorator: Google::Apis::AlertcenterV1beta1::RuleInfo::Representation
      
          collection :suppressed_action_types, as: 'suppressedActionTypes'
          property :trigger, as: 'trigger'
          collection :triggered_action_info, as: 'triggeredActionInfo', class: Google::Apis::AlertcenterV1beta1::ActionInfo, decorator: Google::Apis::AlertcenterV1beta1::ActionInfo::Representation
      
          collection :triggered_action_types, as: 'triggeredActionTypes'
          property :triggering_user_email, as: 'triggeringUserEmail'
        end
      end
      
      class SsoProfileCreatedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inbound_sso_profile_name, as: 'inboundSsoProfileName'
        end
      end
      
      class SsoProfileDeletedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inbound_sso_profile_name, as: 'inboundSsoProfileName'
        end
      end
      
      class SsoProfileUpdatedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inbound_sso_profile_changes, as: 'inboundSsoProfileChanges'
          property :inbound_sso_profile_name, as: 'inboundSsoProfileName'
        end
      end
      
      class SensitiveAdminAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor_email, as: 'actorEmail'
          property :event_time, as: 'eventTime'
          property :primary_admin_changed_event, as: 'primaryAdminChangedEvent', class: Google::Apis::AlertcenterV1beta1::PrimaryAdminChangedEvent, decorator: Google::Apis::AlertcenterV1beta1::PrimaryAdminChangedEvent::Representation
      
          property :sso_profile_created_event, as: 'ssoProfileCreatedEvent', class: Google::Apis::AlertcenterV1beta1::SsoProfileCreatedEvent, decorator: Google::Apis::AlertcenterV1beta1::SsoProfileCreatedEvent::Representation
      
          property :sso_profile_deleted_event, as: 'ssoProfileDeletedEvent', class: Google::Apis::AlertcenterV1beta1::SsoProfileDeletedEvent, decorator: Google::Apis::AlertcenterV1beta1::SsoProfileDeletedEvent::Representation
      
          property :sso_profile_updated_event, as: 'ssoProfileUpdatedEvent', class: Google::Apis::AlertcenterV1beta1::SsoProfileUpdatedEvent, decorator: Google::Apis::AlertcenterV1beta1::SsoProfileUpdatedEvent::Representation
      
          property :super_admin_password_reset_event, as: 'superAdminPasswordResetEvent', class: Google::Apis::AlertcenterV1beta1::SuperAdminPasswordResetEvent, decorator: Google::Apis::AlertcenterV1beta1::SuperAdminPasswordResetEvent::Representation
      
        end
      end
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :notifications, as: 'notifications', class: Google::Apis::AlertcenterV1beta1::Notification, decorator: Google::Apis::AlertcenterV1beta1::Notification::Representation
      
        end
      end
      
      class StateSponsoredAttack
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class SuperAdminPasswordResetEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_email, as: 'userEmail'
        end
      end
      
      class SuspiciousActivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          collection :events, as: 'events', class: Google::Apis::AlertcenterV1beta1::SuspiciousActivitySecurityDetail, decorator: Google::Apis::AlertcenterV1beta1::SuspiciousActivitySecurityDetail::Representation
      
        end
      end
      
      class SuspiciousActivitySecurityDetail
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
      
      class TransferError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :entity_type, as: 'entityType'
          property :id, as: 'id'
          property :invalid_reason, as: 'invalidReason'
          property :name, as: 'name'
        end
      end
      
      class TransferMisconfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::AlertcenterV1beta1::TransferError, decorator: Google::Apis::AlertcenterV1beta1::TransferError::Representation
      
        end
      end
      
      class UndeleteAlertRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_id, as: 'customerId'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email_address, as: 'emailAddress'
        end
      end
      
      class UserChanges
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class UserDefinedDetectorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class VoiceMisconfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_name, as: 'entityName'
          property :entity_type, as: 'entityType'
          property :fix_uri, as: 'fixUri'
          property :members_misconfiguration, as: 'membersMisconfiguration', class: Google::Apis::AlertcenterV1beta1::TransferMisconfiguration, decorator: Google::Apis::AlertcenterV1beta1::TransferMisconfiguration::Representation
      
          property :transfer_misconfiguration, as: 'transferMisconfiguration', class: Google::Apis::AlertcenterV1beta1::TransferMisconfiguration, decorator: Google::Apis::AlertcenterV1beta1::TransferMisconfiguration::Representation
      
          property :voicemail_misconfiguration, as: 'voicemailMisconfiguration', class: Google::Apis::AlertcenterV1beta1::VoicemailMisconfiguration, decorator: Google::Apis::AlertcenterV1beta1::VoicemailMisconfiguration::Representation
      
        end
      end
      
      class VoicemailMisconfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::AlertcenterV1beta1::VoicemailRecipientError, decorator: Google::Apis::AlertcenterV1beta1::VoicemailRecipientError::Representation
      
        end
      end
      
      class VoicemailRecipientError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :invalid_reason, as: 'invalidReason'
        end
      end
    end
  end
end
