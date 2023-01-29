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
      
      # A generic alert for abusive user activity occurring with a customer.
      class AbuseDetected
        include Google::Apis::Core::Hashable
      
        # EntityList stores entities in a format that can be translated to a table in
        # the Alert Center UI.
        # Corresponds to the JSON property `additionalDetails`
        # @return [Google::Apis::AlertcenterV1beta1::EntityList]
        attr_accessor :additional_details
      
        # Displayed after Customer abuse detected - `alert_descriptor`. If missing,
        # alert name will be displayed as Customer abuse detected.
        # Corresponds to the JSON property `alertDescriptor`
        # @return [String]
        attr_accessor :alert_descriptor
      
        # Customizable text to display in the next steps section of the alert. Will be
        # parsed as HTML to allow new paragraphs and hyperlinks.
        # Corresponds to the JSON property `nextSteps`
        # @return [String]
        attr_accessor :next_steps
      
        # Product that the abuse is originating from.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # Unique identifier of each alert that is onboarded.
        # Corresponds to the JSON property `subAlertId`
        # @return [String]
        attr_accessor :sub_alert_id
      
        # Customizable text to display in the summary section of the alert. Will be
        # parsed as HTML to allow new paragraphs and hyperlinks.
        # Corresponds to the JSON property `summary`
        # @return [String]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_details = args[:additional_details] if args.key?(:additional_details)
          @alert_descriptor = args[:alert_descriptor] if args.key?(:alert_descriptor)
          @next_steps = args[:next_steps] if args.key?(:next_steps)
          @product = args[:product] if args.key?(:product)
          @sub_alert_id = args[:sub_alert_id] if args.key?(:sub_alert_id)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # Details about why an account is receiving an account suspension warning.
      class AccountSuspensionDetails
        include Google::Apis::Core::Hashable
      
        # The reason why this account is receiving an account suspension warning.
        # Corresponds to the JSON property `abuseReason`
        # @return [String]
        attr_accessor :abuse_reason
      
        # The name of the product being abused. This is restricted to only the following
        # values: "Gmail" "Google Workspace" "Payments" "Voice" "YouTube" "Other"
        # Corresponds to the JSON property `productName`
        # @return [String]
        attr_accessor :product_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abuse_reason = args[:abuse_reason] if args.key?(:abuse_reason)
          @product_name = args[:product_name] if args.key?(:product_name)
        end
      end
      
      # A warning that the customer's account is about to be suspended.
      class AccountSuspensionWarning
        include Google::Apis::Core::Hashable
      
        # The amount of time remaining to appeal an imminent suspension. After this
        # window has elapsed, the account will be suspended. Only populated if the
        # account suspension is in WARNING state.
        # Corresponds to the JSON property `appealWindow`
        # @return [String]
        attr_accessor :appeal_window
      
        # Account suspension warning state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Details about why an account is being suspended.
        # Corresponds to the JSON property `suspensionDetails`
        # @return [Array<Google::Apis::AlertcenterV1beta1::AccountSuspensionDetails>]
        attr_accessor :suspension_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @appeal_window = args[:appeal_window] if args.key?(:appeal_window)
          @state = args[:state] if args.key?(:state)
          @suspension_details = args[:suspension_details] if args.key?(:suspension_details)
        end
      end
      
      # Alerts for user account warning events.
      class AccountWarning
        include Google::Apis::Core::Hashable
      
        # Required. The email of the user that this event belongs to.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The details of the login action.
        # Corresponds to the JSON property `loginDetails`
        # @return [Google::Apis::AlertcenterV1beta1::LoginDetails]
        attr_accessor :login_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @login_details = args[:login_details] if args.key?(:login_details)
        end
      end
      
      # Metadata related to the action.
      class ActionInfo
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Alerts from Google Workspace Security Center rules service configured by an
      # admin.
      class ActivityRule
        include Google::Apis::Core::Hashable
      
        # List of action names associated with the rule threshold.
        # Corresponds to the JSON property `actionNames`
        # @return [Array<String>]
        attr_accessor :action_names
      
        # Rule create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Description of the rule.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Alert display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Rule name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Query that is used to get the data from the associated source.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # List of alert IDs superseded by this alert. It is used to indicate that this
        # alert is essentially extension of superseded alerts and we found the
        # relationship after creating these alerts.
        # Corresponds to the JSON property `supersededAlerts`
        # @return [Array<String>]
        attr_accessor :superseded_alerts
      
        # Alert ID superseding this alert. It is used to indicate that superseding alert
        # is essentially extension of this alert and we found the relationship after
        # creating both alerts.
        # Corresponds to the JSON property `supersedingAlert`
        # @return [String]
        attr_accessor :superseding_alert
      
        # Alert threshold is for example “COUNT > 5”.
        # Corresponds to the JSON property `threshold`
        # @return [String]
        attr_accessor :threshold
      
        # The trigger sources for this rule. * GMAIL_EVENTS * DEVICE_EVENTS *
        # USER_EVENTS
        # Corresponds to the JSON property `triggerSource`
        # @return [String]
        attr_accessor :trigger_source
      
        # The timestamp of the last update to the rule.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Rule window size. Possible values are 1 hour or 24 hours.
        # Corresponds to the JSON property `windowSize`
        # @return [String]
        attr_accessor :window_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_names = args[:action_names] if args.key?(:action_names)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @query = args[:query] if args.key?(:query)
          @superseded_alerts = args[:superseded_alerts] if args.key?(:superseded_alerts)
          @superseding_alert = args[:superseding_alert] if args.key?(:superseding_alert)
          @threshold = args[:threshold] if args.key?(:threshold)
          @trigger_source = args[:trigger_source] if args.key?(:trigger_source)
          @update_time = args[:update_time] if args.key?(:update_time)
          @window_size = args[:window_size] if args.key?(:window_size)
        end
      end
      
      # An alert affecting a customer.
      class Alert
        include Google::Apis::Core::Hashable
      
        # Output only. The unique identifier for the alert.
        # Corresponds to the JSON property `alertId`
        # @return [String]
        attr_accessor :alert_id
      
        # Output only. The time this alert was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The unique identifier of the Google Workspace account of the
        # customer.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Optional. The data associated with this alert, for example google.apps.
        # alertcenter.type.DeviceCompromised.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        # Output only. `True` if this alert is marked for deletion.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Optional. The time the event that caused this alert ceased being active. If
        # provided, the end time must not be earlier than the start time. If not
        # provided, it indicates an ongoing alert.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of an alert from overwriting each other. It is
        # strongly suggested that systems make use of the `etag` in the read-modify-
        # write cycle to perform alert updates in order to avoid race conditions: An `
        # etag` is returned in the response which contains alerts, and systems are
        # expected to put that etag in the request to update alert to ensure that their
        # change will be applied to the same version of the alert. If no `etag` is
        # provided in the call to update alert, then the existing alert is overwritten
        # blindly.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # An alert metadata.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::AlertcenterV1beta1::AlertMetadata]
        attr_accessor :metadata
      
        # Output only. An optional [Security Investigation Tool](https://support.google.
        # com/a/answer/7575955) query for this alert.
        # Corresponds to the JSON property `securityInvestigationToolLink`
        # @return [String]
        attr_accessor :security_investigation_tool_link
      
        # Required. A unique identifier for the system that reported the alert. This is
        # output only after alert is created. Supported sources are any of the following:
        # * Google Operations * Mobile device management * Gmail phishing * Data Loss
        # Prevention * Domain wide takeout * State sponsored attack * Google identity *
        # Apps outage
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Required. The time the event that caused this alert was started or detected.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. The type of the alert. This is output only after alert is created.
        # For a list of available alert types see [Google Workspace Alert types](https://
        # developers.google.com/admin-sdk/alertcenter/reference/alert-types).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The time this alert was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_id = args[:alert_id] if args.key?(:alert_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @data = args[:data] if args.key?(:data)
          @deleted = args[:deleted] if args.key?(:deleted)
          @end_time = args[:end_time] if args.key?(:end_time)
          @etag = args[:etag] if args.key?(:etag)
          @metadata = args[:metadata] if args.key?(:metadata)
          @security_investigation_tool_link = args[:security_investigation_tool_link] if args.key?(:security_investigation_tool_link)
          @source = args[:source] if args.key?(:source)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A customer feedback about an alert.
      class AlertFeedback
        include Google::Apis::Core::Hashable
      
        # Output only. The alert identifier.
        # Corresponds to the JSON property `alertId`
        # @return [String]
        attr_accessor :alert_id
      
        # Output only. The time this feedback was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The unique identifier of the Google Workspace account of the
        # customer.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Output only. The email of the user that provided the feedback.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Output only. The unique identifier for the feedback.
        # Corresponds to the JSON property `feedbackId`
        # @return [String]
        attr_accessor :feedback_id
      
        # Required. The type of the feedback.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_id = args[:alert_id] if args.key?(:alert_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @email = args[:email] if args.key?(:email)
          @feedback_id = args[:feedback_id] if args.key?(:feedback_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An alert metadata.
      class AlertMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The alert identifier.
        # Corresponds to the JSON property `alertId`
        # @return [String]
        attr_accessor :alert_id
      
        # The email address of the user assigned to the alert.
        # Corresponds to the JSON property `assignee`
        # @return [String]
        attr_accessor :assignee
      
        # Output only. The unique identifier of the Google Workspace account of the
        # customer.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Optional. `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of an alert metadata from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the read-
        # modify-write cycle to perform metadata updates in order to avoid race
        # conditions: An `etag` is returned in the response which contains alert
        # metadata, and systems are expected to put that etag in the request to update
        # alert metadata to ensure that their change will be applied to the same version
        # of the alert metadata. If no `etag` is provided in the call to update alert
        # metadata, then the existing alert metadata is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The severity value of the alert. Alert Center will set this field at alert
        # creation time, default's to an empty string when it could not be determined.
        # The supported values for update actions on this field are the following: *
        # HIGH * MEDIUM * LOW
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The current status of the alert. The supported values are the following: *
        # NOT_STARTED * IN_PROGRESS * CLOSED
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. The time this metadata was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_id = args[:alert_id] if args.key?(:alert_id)
          @assignee = args[:assignee] if args.key?(:assignee)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @etag = args[:etag] if args.key?(:etag)
          @severity = args[:severity] if args.key?(:severity)
          @status = args[:status] if args.key?(:status)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The explanation message associated with ApnsCertificationExpiring and
      # ApnsCertificationExpired alerts.
      class ApnsCertificateExpirationInfo
        include Google::Apis::Core::Hashable
      
        # The Apple ID used for the certificate may be blank if admins didn't enter it.
        # Corresponds to the JSON property `appleId`
        # @return [String]
        attr_accessor :apple_id
      
        # The expiration date of the APNS Certificate.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # The UID for the certificate.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apple_id = args[:apple_id] if args.key?(:apple_id)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Alerts from App Maker to notify admins to set up default SQL instance.
      class AppMakerSqlSetupNotification
        include Google::Apis::Core::Hashable
      
        # List of applications with requests for default SQL set up.
        # Corresponds to the JSON property `requestInfo`
        # @return [Array<Google::Apis::AlertcenterV1beta1::RequestInfo>]
        attr_accessor :request_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_info = args[:request_info] if args.key?(:request_info)
        end
      end
      
      # Alerts from AppSettingsChanged bucket Rules configured by Admin which contain
      # the below rules. Calendar settings changed Drive settings changed Email
      # settings changed Mobile settings changed
      class AppSettingsChanged
        include Google::Apis::Core::Hashable
      
        # Any other associated alert details, for example, AlertConfiguration.
        # Corresponds to the JSON property `alertDetails`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :alert_details
      
        # Rule name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_details = args[:alert_details] if args.key?(:alert_details)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An outage incident reported for a Google Workspace service.
      class AppsOutage
        include Google::Apis::Core::Hashable
      
        # Link to the outage event in Google Workspace Status Dashboard
        # Corresponds to the JSON property `dashboardUri`
        # @return [String]
        attr_accessor :dashboard_uri
      
        # Incident tracking ID.
        # Corresponds to the JSON property `incidentTrackingId`
        # @return [String]
        attr_accessor :incident_tracking_id
      
        # New alert tracking numbers.
        # Corresponds to the JSON property `mergeInfo`
        # @return [Google::Apis::AlertcenterV1beta1::MergeInfo]
        attr_accessor :merge_info
      
        # Timestamp by which the next update is expected to arrive.
        # Corresponds to the JSON property `nextUpdateTime`
        # @return [String]
        attr_accessor :next_update_time
      
        # List of products impacted by the outage.
        # Corresponds to the JSON property `products`
        # @return [Array<String>]
        attr_accessor :products
      
        # Timestamp when the outage is expected to be resolved, or has confirmed
        # resolution. Provided only when known.
        # Corresponds to the JSON property `resolutionTime`
        # @return [String]
        attr_accessor :resolution_time
      
        # Current outage status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dashboard_uri = args[:dashboard_uri] if args.key?(:dashboard_uri)
          @incident_tracking_id = args[:incident_tracking_id] if args.key?(:incident_tracking_id)
          @merge_info = args[:merge_info] if args.key?(:merge_info)
          @next_update_time = args[:next_update_time] if args.key?(:next_update_time)
          @products = args[:products] if args.key?(:products)
          @resolution_time = args[:resolution_time] if args.key?(:resolution_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Attachment with application-specific information about an alert.
      class Attachment
        include Google::Apis::Core::Hashable
      
        # A representation of a CSV file attachment, as a list of column headers and a
        # list of data rows.
        # Corresponds to the JSON property `csv`
        # @return [Google::Apis::AlertcenterV1beta1::Csv]
        attr_accessor :csv
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv = args[:csv] if args.key?(:csv)
        end
      end
      
      # Alert for setting the domain or IP that malicious email comes from as
      # whitelisted domain or IP in Gmail advanced settings.
      class BadWhitelist
        include Google::Apis::Core::Hashable
      
        # Domain ID of Gmail phishing alerts.
        # Corresponds to the JSON property `domainId`
        # @return [Google::Apis::AlertcenterV1beta1::DomainId]
        attr_accessor :domain_id
      
        # Entity whose actions triggered a Gmail phishing alert.
        # Corresponds to the JSON property `maliciousEntity`
        # @return [Google::Apis::AlertcenterV1beta1::MaliciousEntity]
        attr_accessor :malicious_entity
      
        # The list of messages contained by this alert.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::AlertcenterV1beta1::GmailMessageInfo>]
        attr_accessor :messages
      
        # The source IP address of the malicious email, for example, `127.0.0.1`.
        # Corresponds to the JSON property `sourceIp`
        # @return [String]
        attr_accessor :source_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_id = args[:domain_id] if args.key?(:domain_id)
          @malicious_entity = args[:malicious_entity] if args.key?(:malicious_entity)
          @messages = args[:messages] if args.key?(:messages)
          @source_ip = args[:source_ip] if args.key?(:source_ip)
        end
      end
      
      # A request to perform batch delete on alerts.
      class BatchDeleteAlertsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The list of alert IDs to delete.
        # Corresponds to the JSON property `alertId`
        # @return [Array<String>]
        attr_accessor :alert_id
      
        # Optional. The unique identifier of the Google Workspace account of the
        # customer the alerts are associated with. The `customer_id` must have the
        # initial "C" stripped (for example, `046psxkn`). Inferred from the caller
        # identity if not provided. [Find your customer ID](https://support.google.com/
        # cloudidentity/answer/10070793).
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_id = args[:alert_id] if args.key?(:alert_id)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
        end
      end
      
      # Response to batch delete operation on alerts.
      class BatchDeleteAlertsResponse
        include Google::Apis::Core::Hashable
      
        # The status details for each failed `alert_id`.
        # Corresponds to the JSON property `failedAlertStatus`
        # @return [Hash<String,Google::Apis::AlertcenterV1beta1::Status>]
        attr_accessor :failed_alert_status
      
        # The successful list of alert IDs.
        # Corresponds to the JSON property `successAlertIds`
        # @return [Array<String>]
        attr_accessor :success_alert_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_alert_status = args[:failed_alert_status] if args.key?(:failed_alert_status)
          @success_alert_ids = args[:success_alert_ids] if args.key?(:success_alert_ids)
        end
      end
      
      # A request to perform batch undelete on alerts.
      class BatchUndeleteAlertsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The list of alert IDs to undelete.
        # Corresponds to the JSON property `alertId`
        # @return [Array<String>]
        attr_accessor :alert_id
      
        # Optional. The unique identifier of the Google Workspace account of the
        # customer the alerts are associated with. The `customer_id` must have the
        # initial "C" stripped (for example, `046psxkn`). Inferred from the caller
        # identity if not provided. [Find your customer ID](https://support.google.com/
        # cloudidentity/answer/10070793).
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_id = args[:alert_id] if args.key?(:alert_id)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
        end
      end
      
      # Response to batch undelete operation on alerts.
      class BatchUndeleteAlertsResponse
        include Google::Apis::Core::Hashable
      
        # The status details for each failed `alert_id`.
        # Corresponds to the JSON property `failedAlertStatus`
        # @return [Hash<String,Google::Apis::AlertcenterV1beta1::Status>]
        attr_accessor :failed_alert_status
      
        # The successful list of alert IDs.
        # Corresponds to the JSON property `successAlertIds`
        # @return [Array<String>]
        attr_accessor :success_alert_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_alert_status = args[:failed_alert_status] if args.key?(:failed_alert_status)
          @success_alert_ids = args[:success_alert_ids] if args.key?(:success_alert_ids)
        end
      end
      
      # A reference to a Cloud Pubsub topic. To register for notifications, the owner
      # of the topic must grant `alerts-api-push-notifications@system.gserviceaccount.
      # com` the `projects.topics.publish` permission.
      class CloudPubsubTopic
        include Google::Apis::Core::Hashable
      
        # Optional. The format of the payload that would be sent. If not specified the
        # format will be JSON.
        # Corresponds to the JSON property `payloadFormat`
        # @return [String]
        attr_accessor :payload_format
      
        # The `name` field of a Cloud Pubsub [Topic] (https://cloud.google.com/pubsub/
        # docs/reference/rest/v1/projects.topics#Topic).
        # Corresponds to the JSON property `topicName`
        # @return [String]
        attr_accessor :topic_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload_format = args[:payload_format] if args.key?(:payload_format)
          @topic_name = args[:topic_name] if args.key?(:topic_name)
        end
      end
      
      # A representation of a CSV file attachment, as a list of column headers and a
      # list of data rows.
      class Csv
        include Google::Apis::Core::Hashable
      
        # The list of data rows in a CSV file, as string arrays rather than as a single
        # comma-separated string.
        # Corresponds to the JSON property `dataRows`
        # @return [Array<Google::Apis::AlertcenterV1beta1::CsvRow>]
        attr_accessor :data_rows
      
        # The list of headers for data columns in a CSV file.
        # Corresponds to the JSON property `headers`
        # @return [Array<String>]
        attr_accessor :headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_rows = args[:data_rows] if args.key?(:data_rows)
          @headers = args[:headers] if args.key?(:headers)
        end
      end
      
      # A representation of a single data row in a CSV file.
      class CsvRow
        include Google::Apis::Core::Hashable
      
        # The data entries in a CSV file row, as a string array rather than a single
        # comma-separated string.
        # Corresponds to the JSON property `entries`
        # @return [Array<String>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A mobile device compromised alert. Derived from audit logs.
      class DeviceCompromised
        include Google::Apis::Core::Hashable
      
        # The email of the user this alert was created for.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Required. The list of security events.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::AlertcenterV1beta1::DeviceCompromisedSecurityDetail>]
        attr_accessor :events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @events = args[:events] if args.key?(:events)
        end
      end
      
      # Detailed information of a single MDM device compromised event.
      class DeviceCompromisedSecurityDetail
        include Google::Apis::Core::Hashable
      
        # The device compromised state. Possible values are "`Compromised`" or "`Not
        # Compromised`".
        # Corresponds to the JSON property `deviceCompromisedState`
        # @return [String]
        attr_accessor :device_compromised_state
      
        # Required. The device ID.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # The model of the device.
        # Corresponds to the JSON property `deviceModel`
        # @return [String]
        attr_accessor :device_model
      
        # The type of the device.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Required for iOS, empty for others.
        # Corresponds to the JSON property `iosVendorId`
        # @return [String]
        attr_accessor :ios_vendor_id
      
        # The device resource ID.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The serial number of the device.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_compromised_state = args[:device_compromised_state] if args.key?(:device_compromised_state)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_model = args[:device_model] if args.key?(:device_model)
          @device_type = args[:device_type] if args.key?(:device_type)
          @ios_vendor_id = args[:ios_vendor_id] if args.key?(:ios_vendor_id)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # Alerts that get triggered on violations of Data Loss Prevention (DLP) rules.
      class DlpRuleViolation
        include Google::Apis::Core::Hashable
      
        # Common alert information about violated rules that are configured by Google
        # Workspace administrators.
        # Corresponds to the JSON property `ruleViolationInfo`
        # @return [Google::Apis::AlertcenterV1beta1::RuleViolationInfo]
        attr_accessor :rule_violation_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule_violation_info = args[:rule_violation_info] if args.key?(:rule_violation_info)
        end
      end
      
      # Domain ID of Gmail phishing alerts.
      class DomainId
        include Google::Apis::Core::Hashable
      
        # The primary domain for the customer.
        # Corresponds to the JSON property `customerPrimaryDomain`
        # @return [String]
        attr_accessor :customer_primary_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_primary_domain = args[:customer_primary_domain] if args.key?(:customer_primary_domain)
        end
      end
      
      # A takeout operation for the entire domain was initiated by an admin. Derived
      # from audit logs.
      class DomainWideTakeoutInitiated
        include Google::Apis::Core::Hashable
      
        # The email of the admin who initiated the takeout.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The takeout request ID.
        # Corresponds to the JSON property `takeoutRequestId`
        # @return [String]
        attr_accessor :takeout_request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @takeout_request_id = args[:takeout_request_id] if args.key?(:takeout_request_id)
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
      
      # Individual entity affected by, or related to, an alert.
      class Entity
        include Google::Apis::Core::Hashable
      
        # Link to a Security Investigation Tool search based on this entity, if
        # available.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # Human-readable name of this entity, such as an email address, file ID, or
        # device name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Extra values beyond name. The order of values should align with headers in
        # EntityList.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link = args[:link] if args.key?(:link)
          @name = args[:name] if args.key?(:name)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # EntityList stores entities in a format that can be translated to a table in
      # the Alert Center UI.
      class EntityList
        include Google::Apis::Core::Hashable
      
        # List of entities affected by the alert.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::AlertcenterV1beta1::Entity>]
        attr_accessor :entities
      
        # Headers of the values in entities. If no value is defined in Entity, this
        # field should be empty.
        # Corresponds to the JSON property `headers`
        # @return [Array<String>]
        attr_accessor :headers
      
        # Name of the key detail used to display this entity list.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @headers = args[:headers] if args.key?(:headers)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Details of a message in phishing spike alert.
      class GmailMessageInfo
        include Google::Apis::Core::Hashable
      
        # The `SHA256` hash of email's attachment and all MIME parts.
        # Corresponds to the JSON property `attachmentsSha256Hash`
        # @return [Array<String>]
        attr_accessor :attachments_sha256_hash
      
        # The date of the event related to this email.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        # The hash of the message body text.
        # Corresponds to the JSON property `md5HashMessageBody`
        # @return [String]
        attr_accessor :md5_hash_message_body
      
        # The MD5 Hash of email's subject (only available for reported emails).
        # Corresponds to the JSON property `md5HashSubject`
        # @return [String]
        attr_accessor :md5_hash_subject
      
        # The snippet of the message body text (only available for reported emails).
        # Corresponds to the JSON property `messageBodySnippet`
        # @return [String]
        attr_accessor :message_body_snippet
      
        # The message ID.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        # The recipient of this email.
        # Corresponds to the JSON property `recipient`
        # @return [String]
        attr_accessor :recipient
      
        # The email subject text (only available for reported emails).
        # Corresponds to the JSON property `subjectText`
        # @return [String]
        attr_accessor :subject_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments_sha256_hash = args[:attachments_sha256_hash] if args.key?(:attachments_sha256_hash)
          @date = args[:date] if args.key?(:date)
          @md5_hash_message_body = args[:md5_hash_message_body] if args.key?(:md5_hash_message_body)
          @md5_hash_subject = args[:md5_hash_subject] if args.key?(:md5_hash_subject)
          @message_body_snippet = args[:message_body_snippet] if args.key?(:message_body_snippet)
          @message_id = args[:message_id] if args.key?(:message_id)
          @recipient = args[:recipient] if args.key?(:recipient)
          @subject_text = args[:subject_text] if args.key?(:subject_text)
        end
      end
      
      # An incident reported by Google Operations for a Google Workspace application.
      class GoogleOperations
        include Google::Apis::Core::Hashable
      
        # The list of emails which correspond to the users directly affected by the
        # incident.
        # Corresponds to the JSON property `affectedUserEmails`
        # @return [Array<String>]
        attr_accessor :affected_user_emails
      
        # Attachment with application-specific information about an alert.
        # Corresponds to the JSON property `attachmentData`
        # @return [Google::Apis::AlertcenterV1beta1::Attachment]
        attr_accessor :attachment_data
      
        # A detailed, freeform incident description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Customer domain for email template personalization.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # A header to display above the incident message. Typically used to attach a
        # localized notice on the timeline for followup comms translations.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # A one-line incident description.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_user_emails = args[:affected_user_emails] if args.key?(:affected_user_emails)
          @attachment_data = args[:attachment_data] if args.key?(:attachment_data)
          @description = args[:description] if args.key?(:description)
          @domain = args[:domain] if args.key?(:domain)
          @header = args[:header] if args.key?(:header)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Response message for an alert feedback listing request.
      class ListAlertFeedbackResponse
        include Google::Apis::Core::Hashable
      
        # The list of alert feedback. Feedback entries for each alert are ordered by
        # creation time descending.
        # Corresponds to the JSON property `feedback`
        # @return [Array<Google::Apis::AlertcenterV1beta1::AlertFeedback>]
        attr_accessor :feedback
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback = args[:feedback] if args.key?(:feedback)
        end
      end
      
      # Response message for an alert listing request.
      class ListAlertsResponse
        include Google::Apis::Core::Hashable
      
        # The list of alerts.
        # Corresponds to the JSON property `alerts`
        # @return [Array<Google::Apis::AlertcenterV1beta1::Alert>]
        attr_accessor :alerts
      
        # The token for the next page. If not empty, indicates that there may be more
        # alerts that match the listing request; this value can be used in a subsequent
        # ListAlertsRequest to get alerts continuing from last result of the current
        # list call.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alerts = args[:alerts] if args.key?(:alerts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The details of the login action.
      class LoginDetails
        include Google::Apis::Core::Hashable
      
        # Optional. The human-readable IP address (for example, `11.22.33.44`) that is
        # associated with the warning event.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Optional. The successful login time that is associated with the warning event.
        # This isn't present for blocked login attempts.
        # Corresponds to the JSON property `loginTime`
        # @return [String]
        attr_accessor :login_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @login_time = args[:login_time] if args.key?(:login_time)
        end
      end
      
      # Proto for all phishing alerts with common payload. Supported types are any of
      # the following: * User reported phishing * User reported spam spike *
      # Suspicious message reported * Phishing reclassification * Malware
      # reclassification * Gmail potential employee spoofing
      class MailPhishing
        include Google::Apis::Core::Hashable
      
        # Domain ID of Gmail phishing alerts.
        # Corresponds to the JSON property `domainId`
        # @return [Google::Apis::AlertcenterV1beta1::DomainId]
        attr_accessor :domain_id
      
        # If `true`, the email originated from within the organization.
        # Corresponds to the JSON property `isInternal`
        # @return [Boolean]
        attr_accessor :is_internal
        alias_method :is_internal?, :is_internal
      
        # Entity whose actions triggered a Gmail phishing alert.
        # Corresponds to the JSON property `maliciousEntity`
        # @return [Google::Apis::AlertcenterV1beta1::MaliciousEntity]
        attr_accessor :malicious_entity
      
        # The list of messages contained by this alert.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::AlertcenterV1beta1::GmailMessageInfo>]
        attr_accessor :messages
      
        # System actions on the messages.
        # Corresponds to the JSON property `systemActionType`
        # @return [String]
        attr_accessor :system_action_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_id = args[:domain_id] if args.key?(:domain_id)
          @is_internal = args[:is_internal] if args.key?(:is_internal)
          @malicious_entity = args[:malicious_entity] if args.key?(:malicious_entity)
          @messages = args[:messages] if args.key?(:messages)
          @system_action_type = args[:system_action_type] if args.key?(:system_action_type)
        end
      end
      
      # Entity whose actions triggered a Gmail phishing alert.
      class MaliciousEntity
        include Google::Apis::Core::Hashable
      
        # The header from display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A user.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::AlertcenterV1beta1::User]
        attr_accessor :entity
      
        # The sender email address.
        # Corresponds to the JSON property `fromHeader`
        # @return [String]
        attr_accessor :from_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity = args[:entity] if args.key?(:entity)
          @from_header = args[:from_header] if args.key?(:from_header)
        end
      end
      
      # Alert Created by the MSA team for communications necessary for continued use
      # of Google Workspace Products.
      class MandatoryServiceAnnouncement
        include Google::Apis::Core::Hashable
      
        # Detailed, freeform text describing the announcement
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # One line summary of the announcement
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Proto that contains match information from the condition part of the rule.
      class MatchInfo
        include Google::Apis::Core::Hashable
      
        # Detector provided by Google.
        # Corresponds to the JSON property `predefinedDetector`
        # @return [Google::Apis::AlertcenterV1beta1::PredefinedDetectorInfo]
        attr_accessor :predefined_detector
      
        # Detector defined by administrators.
        # Corresponds to the JSON property `userDefinedDetector`
        # @return [Google::Apis::AlertcenterV1beta1::UserDefinedDetectorInfo]
        attr_accessor :user_defined_detector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @predefined_detector = args[:predefined_detector] if args.key?(:predefined_detector)
          @user_defined_detector = args[:user_defined_detector] if args.key?(:user_defined_detector)
        end
      end
      
      # New alert tracking numbers.
      class MergeInfo
        include Google::Apis::Core::Hashable
      
        # Optional. New alert ID. Reference the [google.apps.alertcenter.Alert] with
        # this ID for the current state.
        # Corresponds to the JSON property `newAlertId`
        # @return [String]
        attr_accessor :new_alert_id
      
        # The new tracking ID from the parent incident.
        # Corresponds to the JSON property `newIncidentTrackingId`
        # @return [String]
        attr_accessor :new_incident_tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_alert_id = args[:new_alert_id] if args.key?(:new_alert_id)
          @new_incident_tracking_id = args[:new_incident_tracking_id] if args.key?(:new_incident_tracking_id)
        end
      end
      
      # Settings for callback notifications. For more details see [Google Workspace
      # Alert Notification](https://developers.google.com/admin-sdk/alertcenter/guides/
      # notifications).
      class Notification
        include Google::Apis::Core::Hashable
      
        # A reference to a Cloud Pubsub topic. To register for notifications, the owner
        # of the topic must grant `alerts-api-push-notifications@system.gserviceaccount.
        # com` the `projects.topics.publish` permission.
        # Corresponds to the JSON property `cloudPubsubTopic`
        # @return [Google::Apis::AlertcenterV1beta1::CloudPubsubTopic]
        attr_accessor :cloud_pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_pubsub_topic = args[:cloud_pubsub_topic] if args.key?(:cloud_pubsub_topic)
        end
      end
      
      # Alert for a spike in user reported phishing. *Warning*: This type has been
      # deprecated. Use [MailPhishing](/admin-sdk/alertcenter/reference/rest/v1beta1/
      # MailPhishing) instead.
      class PhishingSpike
        include Google::Apis::Core::Hashable
      
        # Domain ID of Gmail phishing alerts.
        # Corresponds to the JSON property `domainId`
        # @return [Google::Apis::AlertcenterV1beta1::DomainId]
        attr_accessor :domain_id
      
        # If `true`, the email originated from within the organization.
        # Corresponds to the JSON property `isInternal`
        # @return [Boolean]
        attr_accessor :is_internal
        alias_method :is_internal?, :is_internal
      
        # Entity whose actions triggered a Gmail phishing alert.
        # Corresponds to the JSON property `maliciousEntity`
        # @return [Google::Apis::AlertcenterV1beta1::MaliciousEntity]
        attr_accessor :malicious_entity
      
        # The list of messages contained by this alert.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::AlertcenterV1beta1::GmailMessageInfo>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_id = args[:domain_id] if args.key?(:domain_id)
          @is_internal = args[:is_internal] if args.key?(:is_internal)
          @malicious_entity = args[:malicious_entity] if args.key?(:malicious_entity)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # Detector provided by Google.
      class PredefinedDetectorInfo
        include Google::Apis::Core::Hashable
      
        # Name that uniquely identifies the detector.
        # Corresponds to the JSON property `detectorName`
        # @return [String]
        attr_accessor :detector_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detector_name = args[:detector_name] if args.key?(:detector_name)
        end
      end
      
      # Event occurred when primary admin changed in customer's account. The event are
      # being received from insight forwarder
      class PrimaryAdminChangedEvent
        include Google::Apis::Core::Hashable
      
        # domain in which actioned occurred
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Email of person who was the primary admin before the action
        # Corresponds to the JSON property `previousAdminEmail`
        # @return [String]
        attr_accessor :previous_admin_email
      
        # Email of person who is the primary admin after the action
        # Corresponds to the JSON property `updatedAdminEmail`
        # @return [String]
        attr_accessor :updated_admin_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @previous_admin_email = args[:previous_admin_email] if args.key?(:previous_admin_email)
          @updated_admin_email = args[:updated_admin_email] if args.key?(:updated_admin_email)
        end
      end
      
      # Alerts from Reporting Rules configured by Admin.
      class ReportingRule
        include Google::Apis::Core::Hashable
      
        # Any other associated alert details, for example, AlertConfiguration.
        # Corresponds to the JSON property `alertDetails`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :alert_details
      
        # Rule name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Alert Rule query Sample Query query ` condition ` filter `
        # expected_application_id: 777491262838 expected_event_name: "
        # indexable_content_change" filter_op: IN ` ` conjunction_operator: OR `
        # Corresponds to the JSON property `query`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_details = args[:alert_details] if args.key?(:alert_details)
          @name = args[:name] if args.key?(:name)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Requests for one application that needs default SQL setup.
      class RequestInfo
        include Google::Apis::Core::Hashable
      
        # List of app developers who triggered notifications for above application.
        # Corresponds to the JSON property `appDeveloperEmail`
        # @return [Array<String>]
        attr_accessor :app_developer_email
      
        # Required. The application that requires the SQL setup.
        # Corresponds to the JSON property `appKey`
        # @return [String]
        attr_accessor :app_key
      
        # Required. Number of requests sent for this application to set up default SQL
        # instance.
        # Corresponds to the JSON property `numberOfRequests`
        # @return [Fixnum]
        attr_accessor :number_of_requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_developer_email = args[:app_developer_email] if args.key?(:app_developer_email)
          @app_key = args[:app_key] if args.key?(:app_key)
          @number_of_requests = args[:number_of_requests] if args.key?(:number_of_requests)
        end
      end
      
      # Proto that contains resource information.
      class ResourceInfo
        include Google::Apis::Core::Hashable
      
        # Drive file ID.
        # Corresponds to the JSON property `documentId`
        # @return [String]
        attr_accessor :document_id
      
        # Title of the resource, for example email subject, or document title.
        # Corresponds to the JSON property `resourceTitle`
        # @return [String]
        attr_accessor :resource_title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @resource_title = args[:resource_title] if args.key?(:resource_title)
        end
      end
      
      # Proto that contains rule information.
      class RuleInfo
        include Google::Apis::Core::Hashable
      
        # User provided name of the rule.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name that uniquely identifies the rule.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Common alert information about violated rules that are configured by Google
      # Workspace administrators.
      class RuleViolationInfo
        include Google::Apis::Core::Hashable
      
        # Source of the data.
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # List of matches that were found in the resource content.
        # Corresponds to the JSON property `matchInfo`
        # @return [Array<Google::Apis::AlertcenterV1beta1::MatchInfo>]
        attr_accessor :match_info
      
        # Resource recipients. For Drive, they are grantees that the Drive file was
        # shared with at the time of rule triggering. Valid values include user emails,
        # group emails, domains, or 'anyone' if the file was publicly accessible. If the
        # file was private the recipients list will be empty. For Gmail, they are emails
        # of the users or groups that the Gmail message was sent to.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Proto that contains resource information.
        # Corresponds to the JSON property `resourceInfo`
        # @return [Google::Apis::AlertcenterV1beta1::ResourceInfo]
        attr_accessor :resource_info
      
        # Proto that contains rule information.
        # Corresponds to the JSON property `ruleInfo`
        # @return [Google::Apis::AlertcenterV1beta1::RuleInfo]
        attr_accessor :rule_info
      
        # Actions suppressed due to other actions with higher priority.
        # Corresponds to the JSON property `suppressedActionTypes`
        # @return [Array<String>]
        attr_accessor :suppressed_action_types
      
        # Trigger of the rule.
        # Corresponds to the JSON property `trigger`
        # @return [String]
        attr_accessor :trigger
      
        # Metadata related to the triggered actions.
        # Corresponds to the JSON property `triggeredActionInfo`
        # @return [Array<Google::Apis::AlertcenterV1beta1::ActionInfo>]
        attr_accessor :triggered_action_info
      
        # Actions applied as a consequence of the rule being triggered.
        # Corresponds to the JSON property `triggeredActionTypes`
        # @return [Array<String>]
        attr_accessor :triggered_action_types
      
        # Email of the user who caused the violation. Value could be empty if not
        # applicable, for example, a violation found by drive continuous scan.
        # Corresponds to the JSON property `triggeringUserEmail`
        # @return [String]
        attr_accessor :triggering_user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source = args[:data_source] if args.key?(:data_source)
          @match_info = args[:match_info] if args.key?(:match_info)
          @recipients = args[:recipients] if args.key?(:recipients)
          @resource_info = args[:resource_info] if args.key?(:resource_info)
          @rule_info = args[:rule_info] if args.key?(:rule_info)
          @suppressed_action_types = args[:suppressed_action_types] if args.key?(:suppressed_action_types)
          @trigger = args[:trigger] if args.key?(:trigger)
          @triggered_action_info = args[:triggered_action_info] if args.key?(:triggered_action_info)
          @triggered_action_types = args[:triggered_action_types] if args.key?(:triggered_action_types)
          @triggering_user_email = args[:triggering_user_email] if args.key?(:triggering_user_email)
        end
      end
      
      # Event occurred when SSO Profile created in customer's account. The event are
      # being received from insight forwarder
      class SsoProfileCreatedEvent
        include Google::Apis::Core::Hashable
      
        # sso profile name which got created
        # Corresponds to the JSON property `inboundSsoProfileName`
        # @return [String]
        attr_accessor :inbound_sso_profile_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inbound_sso_profile_name = args[:inbound_sso_profile_name] if args.key?(:inbound_sso_profile_name)
        end
      end
      
      # Event occurred when SSO Profile deleted in customer's account. The event are
      # being received from insight forwarder
      class SsoProfileDeletedEvent
        include Google::Apis::Core::Hashable
      
        # sso profile name which got deleted
        # Corresponds to the JSON property `inboundSsoProfileName`
        # @return [String]
        attr_accessor :inbound_sso_profile_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inbound_sso_profile_name = args[:inbound_sso_profile_name] if args.key?(:inbound_sso_profile_name)
        end
      end
      
      # Event occurred when SSO Profile updated in customer's account. The event are
      # being received from insight forwarder
      class SsoProfileUpdatedEvent
        include Google::Apis::Core::Hashable
      
        # changes made to sso profile
        # Corresponds to the JSON property `inboundSsoProfileChanges`
        # @return [String]
        attr_accessor :inbound_sso_profile_changes
      
        # sso profile name which got updated
        # Corresponds to the JSON property `inboundSsoProfileName`
        # @return [String]
        attr_accessor :inbound_sso_profile_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inbound_sso_profile_changes = args[:inbound_sso_profile_changes] if args.key?(:inbound_sso_profile_changes)
          @inbound_sso_profile_name = args[:inbound_sso_profile_name] if args.key?(:inbound_sso_profile_name)
        end
      end
      
      # Alert that is triggered when Sensitive Admin Action occur in customer account.
      class SensitiveAdminAction
        include Google::Apis::Core::Hashable
      
        # Email of person who performed the action
        # Corresponds to the JSON property `actorEmail`
        # @return [String]
        attr_accessor :actor_email
      
        # The time at which event occurred
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Event occurred when primary admin changed in customer's account. The event are
        # being received from insight forwarder
        # Corresponds to the JSON property `primaryAdminChangedEvent`
        # @return [Google::Apis::AlertcenterV1beta1::PrimaryAdminChangedEvent]
        attr_accessor :primary_admin_changed_event
      
        # Event occurred when SSO Profile created in customer's account. The event are
        # being received from insight forwarder
        # Corresponds to the JSON property `ssoProfileCreatedEvent`
        # @return [Google::Apis::AlertcenterV1beta1::SsoProfileCreatedEvent]
        attr_accessor :sso_profile_created_event
      
        # Event occurred when SSO Profile deleted in customer's account. The event are
        # being received from insight forwarder
        # Corresponds to the JSON property `ssoProfileDeletedEvent`
        # @return [Google::Apis::AlertcenterV1beta1::SsoProfileDeletedEvent]
        attr_accessor :sso_profile_deleted_event
      
        # Event occurred when SSO Profile updated in customer's account. The event are
        # being received from insight forwarder
        # Corresponds to the JSON property `ssoProfileUpdatedEvent`
        # @return [Google::Apis::AlertcenterV1beta1::SsoProfileUpdatedEvent]
        attr_accessor :sso_profile_updated_event
      
        # Event occurred when password was reset for super admin in customer's account.
        # The event are being received from insight forwarder
        # Corresponds to the JSON property `superAdminPasswordResetEvent`
        # @return [Google::Apis::AlertcenterV1beta1::SuperAdminPasswordResetEvent]
        attr_accessor :super_admin_password_reset_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor_email = args[:actor_email] if args.key?(:actor_email)
          @event_time = args[:event_time] if args.key?(:event_time)
          @primary_admin_changed_event = args[:primary_admin_changed_event] if args.key?(:primary_admin_changed_event)
          @sso_profile_created_event = args[:sso_profile_created_event] if args.key?(:sso_profile_created_event)
          @sso_profile_deleted_event = args[:sso_profile_deleted_event] if args.key?(:sso_profile_deleted_event)
          @sso_profile_updated_event = args[:sso_profile_updated_event] if args.key?(:sso_profile_updated_event)
          @super_admin_password_reset_event = args[:super_admin_password_reset_event] if args.key?(:super_admin_password_reset_event)
        end
      end
      
      # Customer-level settings.
      class Settings
        include Google::Apis::Core::Hashable
      
        # The list of notifications.
        # Corresponds to the JSON property `notifications`
        # @return [Array<Google::Apis::AlertcenterV1beta1::Notification>]
        attr_accessor :notifications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notifications = args[:notifications] if args.key?(:notifications)
        end
      end
      
      # A state-sponsored attack alert. Derived from audit logs.
      class StateSponsoredAttack
        include Google::Apis::Core::Hashable
      
        # The email of the user this incident was created for.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
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
      
      # Event occurred when password was reset for super admin in customer's account.
      # The event are being received from insight forwarder
      class SuperAdminPasswordResetEvent
        include Google::Apis::Core::Hashable
      
        # email of person whose password was reset
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # A mobile suspicious activity alert. Derived from audit logs.
      class SuspiciousActivity
        include Google::Apis::Core::Hashable
      
        # The email of the user this alert was created for.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Required. The list of security events.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::AlertcenterV1beta1::SuspiciousActivitySecurityDetail>]
        attr_accessor :events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @events = args[:events] if args.key?(:events)
        end
      end
      
      # Detailed information of a single MDM suspicious activity event.
      class SuspiciousActivitySecurityDetail
        include Google::Apis::Core::Hashable
      
        # Required. The device ID.
        # Corresponds to the JSON property `deviceId`
        # @return [String]
        attr_accessor :device_id
      
        # The model of the device.
        # Corresponds to the JSON property `deviceModel`
        # @return [String]
        attr_accessor :device_model
      
        # The device property which was changed.
        # Corresponds to the JSON property `deviceProperty`
        # @return [String]
        attr_accessor :device_property
      
        # The type of the device.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # Required for iOS, empty for others.
        # Corresponds to the JSON property `iosVendorId`
        # @return [String]
        attr_accessor :ios_vendor_id
      
        # The new value of the device property after the change.
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # The old value of the device property before the change.
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # The device resource ID.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The serial number of the device.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_id = args[:device_id] if args.key?(:device_id)
          @device_model = args[:device_model] if args.key?(:device_model)
          @device_property = args[:device_property] if args.key?(:device_property)
          @device_type = args[:device_type] if args.key?(:device_type)
          @ios_vendor_id = args[:ios_vendor_id] if args.key?(:ios_vendor_id)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
        end
      end
      
      # Details for an invalid transfer or forward.
      class TransferError
        include Google::Apis::Core::Hashable
      
        # User's email address. This may be unavailable if the entity was deleted.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Type of entity being transferred to. For ring group members, this should
        # always be USER.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Ring group or auto attendant ID. Not set for users.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Reason for the error.
        # Corresponds to the JSON property `invalidReason`
        # @return [String]
        attr_accessor :invalid_reason
      
        # User's full name, or the ring group / auto attendant name. This may be
        # unavailable if the entity was deleted.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @id = args[:id] if args.key?(:id)
          @invalid_reason = args[:invalid_reason] if args.key?(:invalid_reason)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Error related to transferring or forwarding a phone call.
      class TransferMisconfiguration
        include Google::Apis::Core::Hashable
      
        # Details for each invalid transfer or forward.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::AlertcenterV1beta1::TransferError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # A request to undelete a specific alert that was marked for deletion.
      class UndeleteAlertRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The unique identifier of the Google Workspace account of the
        # customer the alert is associated with. The `customer_id` must have the initial
        # "C" stripped (for example, `046psxkn`). Inferred from the caller identity if
        # not provided. [Find your customer ID](https://support.google.com/cloudidentity/
        # answer/10070793).
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
        end
      end
      
      # A user.
      class User
        include Google::Apis::Core::Hashable
      
        # Display name of the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Email address of the user.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @email_address = args[:email_address] if args.key?(:email_address)
        end
      end
      
      # Alerts from UserChanges bucket Rules for predefined rules which contain the
      # below rules. Suspended user made active New user Added User suspended (by
      # admin) User granted admin privileges User admin privileges revoked User
      # deleted Users password changed
      class UserChanges
        include Google::Apis::Core::Hashable
      
        # Rule name
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
      
      # Detector defined by administrators.
      class UserDefinedDetectorInfo
        include Google::Apis::Core::Hashable
      
        # Display name of the detector.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name that uniquely identifies the detector.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # An alert triggered when Google Voice configuration becomes invalid, generally
      # due to an external entity being modified or deleted.
      class VoiceMisconfiguration
        include Google::Apis::Core::Hashable
      
        # Name of the entity whose configuration is now invalid.
        # Corresponds to the JSON property `entityName`
        # @return [String]
        attr_accessor :entity_name
      
        # Type of the entity whose configuration is now invalid.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Link that the admin can follow to fix the issue.
        # Corresponds to the JSON property `fixUri`
        # @return [String]
        attr_accessor :fix_uri
      
        # Error related to transferring or forwarding a phone call.
        # Corresponds to the JSON property `membersMisconfiguration`
        # @return [Google::Apis::AlertcenterV1beta1::TransferMisconfiguration]
        attr_accessor :members_misconfiguration
      
        # Error related to transferring or forwarding a phone call.
        # Corresponds to the JSON property `transferMisconfiguration`
        # @return [Google::Apis::AlertcenterV1beta1::TransferMisconfiguration]
        attr_accessor :transfer_misconfiguration
      
        # Issue(s) with sending to voicemail.
        # Corresponds to the JSON property `voicemailMisconfiguration`
        # @return [Google::Apis::AlertcenterV1beta1::VoicemailMisconfiguration]
        attr_accessor :voicemail_misconfiguration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_name = args[:entity_name] if args.key?(:entity_name)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @fix_uri = args[:fix_uri] if args.key?(:fix_uri)
          @members_misconfiguration = args[:members_misconfiguration] if args.key?(:members_misconfiguration)
          @transfer_misconfiguration = args[:transfer_misconfiguration] if args.key?(:transfer_misconfiguration)
          @voicemail_misconfiguration = args[:voicemail_misconfiguration] if args.key?(:voicemail_misconfiguration)
        end
      end
      
      # Issue(s) with sending to voicemail.
      class VoicemailMisconfiguration
        include Google::Apis::Core::Hashable
      
        # Issue(s) with voicemail recipients.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::AlertcenterV1beta1::VoicemailRecipientError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # Issue(s) with a voicemail recipient.
      class VoicemailRecipientError
        include Google::Apis::Core::Hashable
      
        # Email address of the invalid recipient. This may be unavailable if the
        # recipient was deleted.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Reason for the error.
        # Corresponds to the JSON property `invalidReason`
        # @return [String]
        attr_accessor :invalid_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @invalid_reason = args[:invalid_reason] if args.key?(:invalid_reason)
        end
      end
    end
  end
end
