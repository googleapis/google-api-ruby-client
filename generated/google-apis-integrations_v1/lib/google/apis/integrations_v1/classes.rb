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
    module IntegrationsV1
      
      # Registered ids for errors, as "oneof" enums. Each task or logical grouping of
      # tasks may share the same enum.
      class CrmlogErrorCode
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `commonErrorCode`
        # @return [String]
        attr_accessor :common_error_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_error_code = args[:common_error_code] if args.key?(:common_error_code)
        end
      end
      
      # 
      class EnterpriseCrmEventbusAuthconfigAuthConfigTaskParam
        include Google::Apis::Core::Hashable
      
        # Defines the credential types to be supported as Task may restrict specific
        # types to use, e.g. Cloud SQL Task will use username/password type only.
        # Corresponds to the JSON property `allowedCredentialTypes`
        # @return [Array<String>]
        attr_accessor :allowed_credential_types
      
        # 
        # Corresponds to the JSON property `allowedServiceAccountInContext`
        # @return [Boolean]
        attr_accessor :allowed_service_account_in_context
        alias_method :allowed_service_account_in_context?, :allowed_service_account_in_context
      
        # UUID of the AuthConfig.
        # Corresponds to the JSON property `authConfigId`
        # @return [String]
        attr_accessor :auth_config_id
      
        # A space-delimited list of requested scope permissions.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # 
        # Corresponds to the JSON property `useServiceAccountInContext`
        # @return [Boolean]
        attr_accessor :use_service_account_in_context
        alias_method :use_service_account_in_context?, :use_service_account_in_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_credential_types = args[:allowed_credential_types] if args.key?(:allowed_credential_types)
          @allowed_service_account_in_context = args[:allowed_service_account_in_context] if args.key?(:allowed_service_account_in_context)
          @auth_config_id = args[:auth_config_id] if args.key?(:auth_config_id)
          @scope = args[:scope] if args.key?(:scope)
          @use_service_account_in_context = args[:use_service_account_in_context] if args.key?(:use_service_account_in_context)
        end
      end
      
      # Email address along with optional name and tokens. These tokens will be
      # substituted for the variables in the form of [`var_name`], where var_name
      # could be any string of no more than 32 bytes.
      class EnterpriseCrmEventbusProtoAddress
        include Google::Apis::Core::Hashable
      
        # Required.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoToken>]
        attr_accessor :tokens
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @name = args[:name] if args.key?(:name)
          @tokens = args[:tokens] if args.key?(:tokens)
        end
      end
      
      # Attributes are additional options that can be associated with each event
      # property. For more information, see
      class EnterpriseCrmEventbusProtoAttributes
        include Google::Apis::Core::Hashable
      
        # Things like URL, Email, Currency, Timestamp (rather than string, int64...)
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Used for define type for values. Currently supported value types include int,
        # string, double, array, and any proto message.
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoValueType]
        attr_accessor :default_value
      
        # Required for event execution. The validation will be done by the event bus
        # when the event is triggered.
        # Corresponds to the JSON property `isRequired`
        # @return [Boolean]
        attr_accessor :is_required
        alias_method :is_required?, :is_required
      
        # Used to indicate if a ParameterEntry should be converted to ParamIndexes for
        # ST-Spanner full-text search. DEPRECATED: use searchable.
        # Corresponds to the JSON property `isSearchable`
        # @return [Boolean]
        attr_accessor :is_searchable
        alias_method :is_searchable?, :is_searchable
      
        # The LogSettings define the logging attributes for an event property. These
        # attributes are used to map the property to the parameter in the log proto.
        # Also used to define scrubbing/truncation behavior and PII information.
        # Corresponds to the JSON property `logSettings`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoLogSettings]
        attr_accessor :log_settings
      
        # True if this workflow parameter should be masked in the logs
        # Corresponds to the JSON property `masked`
        # @return [Boolean]
        attr_accessor :masked
        alias_method :masked?, :masked
      
        # Used to indicate if the ParameterEntry is a read only field or not.
        # Corresponds to the JSON property `readOnly`
        # @return [Boolean]
        attr_accessor :read_only
        alias_method :read_only?, :read_only
      
        # 
        # Corresponds to the JSON property `searchable`
        # @return [String]
        attr_accessor :searchable
      
        # List of tasks that can view this property, if empty then all.
        # Corresponds to the JSON property `taskVisibility`
        # @return [Array<String>]
        attr_accessor :task_visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @is_required = args[:is_required] if args.key?(:is_required)
          @is_searchable = args[:is_searchable] if args.key?(:is_searchable)
          @log_settings = args[:log_settings] if args.key?(:log_settings)
          @masked = args[:masked] if args.key?(:masked)
          @read_only = args[:read_only] if args.key?(:read_only)
          @searchable = args[:searchable] if args.key?(:searchable)
          @task_visibility = args[:task_visibility] if args.key?(:task_visibility)
        end
      end
      
      # List of error enums for alerts.
      class EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enumStrings`
        # @return [Array<String>]
        attr_accessor :enum_strings
      
        # 
        # Corresponds to the JSON property `filterType`
        # @return [String]
        attr_accessor :filter_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enum_strings = args[:enum_strings] if args.key?(:enum_strings)
          @filter_type = args[:filter_type] if args.key?(:filter_type)
        end
      end
      
      # The threshold value of the metric, above or below which the alert should be
      # triggered. See EventAlertConfig or TaskAlertConfig for the different alert
      # metric types in each case. For the *RATE metrics, one or both of these fields
      # may be set. Zero is the default value and can be left at that. For *
      # PERCENTILE_DURATION metrics, one or both of these fields may be set, and also,
      # the duration threshold value should be specified in the threshold_duration_ms
      # member below. For *AVERAGE_DURATION metrics, these fields should not be set at
      # all. A different member, threshold_duration_ms, must be set in the
      # EventAlertConfig or the TaskAlertConfig.
      class EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `absolute`
        # @return [Fixnum]
        attr_accessor :absolute
      
        # 
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @absolute = args[:absolute] if args.key?(:absolute)
          @percentage = args[:percentage] if args.key?(:percentage)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoBaseFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoBaseValue
        include Google::Apis::Core::Hashable
      
        # Start with a function that does not build on existing values. Eg. CurrentTime,
        # Min, Max, Exists, etc.
        # Corresponds to the JSON property `baseFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoFunction]
        attr_accessor :base_function
      
        # LINT.IfChange To support various types of parameter values. Next available id:
        # 14
        # Corresponds to the JSON property `literalValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterValueType]
        attr_accessor :literal_value
      
        # Start with a reference value to dereference.
        # Corresponds to the JSON property `referenceValue`
        # @return [String]
        attr_accessor :reference_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_function = args[:base_function] if args.key?(:base_function)
          @literal_value = args[:literal_value] if args.key?(:literal_value)
          @reference_value = args[:reference_value] if args.key?(:reference_value)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoBooleanArrayFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoBooleanFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoBooleanParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValues`
        # @return [Array<Boolean>]
        attr_accessor :boolean_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_values = args[:boolean_values] if args.key?(:boolean_values)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoBuganizerNotification
        include Google::Apis::Core::Hashable
      
        # Whom to assign the new bug. Optional.
        # Corresponds to the JSON property `assigneeEmailAddress`
        # @return [String]
        attr_accessor :assignee_email_address
      
        # ID of the buganizer component within which to create a new issue. Required.
        # Corresponds to the JSON property `componentId`
        # @return [Fixnum]
        attr_accessor :component_id
      
        # ID of the buganizer template to use. Optional.
        # Corresponds to the JSON property `templateId`
        # @return [Fixnum]
        attr_accessor :template_id
      
        # Title of the issue to be created. Required.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee_email_address = args[:assignee_email_address] if args.key?(:assignee_email_address)
          @component_id = args[:component_id] if args.key?(:component_id)
          @template_id = args[:template_id] if args.key?(:template_id)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoCloudKmsConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The id of GCP project where the KMS key is stored. If not provided,
        # assume the key is stored in the same GCP project defined in Client (tag 14).
        # Corresponds to the JSON property `gcpProjectId`
        # @return [String]
        attr_accessor :gcp_project_id
      
        # A Cloud KMS key is a named object containing one or more key versions, along
        # with metadata for the key. A key exists on exactly one key ring tied to a
        # specific location.
        # Corresponds to the JSON property `keyName`
        # @return [String]
        attr_accessor :key_name
      
        # A key ring organizes keys in a specific Google Cloud location and allows you
        # to manage access control on groups of keys. A key ring's name does not need to
        # be unique across a Google Cloud project, but must be unique within a given
        # location.
        # Corresponds to the JSON property `keyRingName`
        # @return [String]
        attr_accessor :key_ring_name
      
        # Optional. Each version of a key contains key material used for encryption or
        # signing. A key's version is represented by an integer, starting at 1. To
        # decrypt data or verify a signature, you must use the same key version that was
        # used to encrypt or sign the data.
        # Corresponds to the JSON property `keyVersionName`
        # @return [String]
        attr_accessor :key_version_name
      
        # Location name of the key ring, e.g. "us-west1".
        # Corresponds to the JSON property `locationName`
        # @return [String]
        attr_accessor :location_name
      
        # Optional. The service account used for authentication of this KMS key. If this
        # is not provided, the service account in Client.clientSource will be used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_project_id = args[:gcp_project_id] if args.key?(:gcp_project_id)
          @key_name = args[:key_name] if args.key?(:key_name)
          @key_ring_name = args[:key_ring_name] if args.key?(:key_ring_name)
          @key_version_name = args[:key_version_name] if args.key?(:key_version_name)
          @location_name = args[:location_name] if args.key?(:location_name)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Cloud Logging details, selected by the user for the integration version (
      # workflow). This message field will be also used in ExecutionInfo, to indicate
      # the CloudLoggingDetails config at the time of workflow (integration version)
      # execution, since this field value can be changed for an unpublished workflow.
      class EnterpriseCrmEventbusProtoCloudLoggingDetails
        include Google::Apis::Core::Hashable
      
        # Severity selected by the customer for the logs to be sent to Cloud Logging,
        # for the integration version getting executed.
        # Corresponds to the JSON property `cloudLoggingSeverity`
        # @return [String]
        attr_accessor :cloud_logging_severity
      
        # Status of whether Cloud Logging is enabled or not for the integration version
        # getting executed.
        # Corresponds to the JSON property `enableCloudLogging`
        # @return [Boolean]
        attr_accessor :enable_cloud_logging
        alias_method :enable_cloud_logging?, :enable_cloud_logging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_logging_severity = args[:cloud_logging_severity] if args.key?(:cloud_logging_severity)
          @enable_cloud_logging = args[:enable_cloud_logging] if args.key?(:enable_cloud_logging)
        end
      end
      
      # Cloud Scheduler Trigger configuration
      class EnterpriseCrmEventbusProtoCloudSchedulerConfig
        include Google::Apis::Core::Hashable
      
        # Required. The cron tab of cloud scheduler trigger.
        # Corresponds to the JSON property `cronTab`
        # @return [String]
        attr_accessor :cron_tab
      
        # Optional. When the job was deleted from Pantheon UI, error_message will be
        # populated when Get/List integrations
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Required. The location where associated cloud scheduler job will be created
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Required. Service account used by Cloud Scheduler to trigger the integration
        # at scheduled time
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cron_tab = args[:cron_tab] if args.key?(:cron_tab)
          @error_message = args[:error_message] if args.key?(:error_message)
          @location = args[:location] if args.key?(:location)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
        end
      end
      
      # This message recursively combines constituent conditions using logical AND.
      class EnterpriseCrmEventbusProtoCombinedCondition
        include Google::Apis::Core::Hashable
      
        # A set of individual constituent conditions.
        # Corresponds to the JSON property `conditions`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoCondition>]
        attr_accessor :conditions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditions = args[:conditions] if args.key?(:conditions)
        end
      end
      
      # Condition that uses `operator` to evaluate the key against the value.
      class EnterpriseCrmEventbusProtoCondition
        include Google::Apis::Core::Hashable
      
        # Key that's evaluated against the `value`. Please note the data type of the
        # runtime value associated with the key should match the data type of `value`,
        # else an IllegalArgumentException is thrown.
        # Corresponds to the JSON property `eventPropertyKey`
        # @return [String]
        attr_accessor :event_property_key
      
        # Operator used to evaluate the condition. Please note that an operator with an
        # inappropriate key/value operand will result in IllegalArgumentException, e.g.
        # CONTAINS with boolean key/value pair.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Used for define type for values. Currently supported value types include int,
        # string, double, array, and any proto message.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoValueType]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_property_key = args[:event_property_key] if args.key?(:event_property_key)
          @operator = args[:operator] if args.key?(:operator)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Contains the combined condition calculation results.
      class EnterpriseCrmEventbusProtoConditionResult
        include Google::Apis::Core::Hashable
      
        # the current task number.
        # Corresponds to the JSON property `currentTaskNumber`
        # @return [String]
        attr_accessor :current_task_number
      
        # the next task number.
        # Corresponds to the JSON property `nextTaskNumber`
        # @return [String]
        attr_accessor :next_task_number
      
        # the result comes out after evaluate the combined condition. True if there's no
        # combined condition specified.
        # Corresponds to the JSON property `result`
        # @return [Boolean]
        attr_accessor :result
        alias_method :result?, :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_task_number = args[:current_task_number] if args.key?(:current_task_number)
          @next_task_number = args[:next_task_number] if args.key?(:next_task_number)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoConditionalFailurePolicies
        include Google::Apis::Core::Hashable
      
        # Policy that defines the task retry logic and failure type. If no FailurePolicy
        # is defined for a task, all its dependent tasks will not be executed (i.e, a `
        # retry_strategy` of NONE will be applied).
        # Corresponds to the JSON property `defaultFailurePolicy`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoFailurePolicy]
        attr_accessor :default_failure_policy
      
        # The list of failure policies that will be applied to the task in order.
        # Corresponds to the JSON property `failurePolicies`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoFailurePolicy>]
        attr_accessor :failure_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_failure_policy = args[:default_failure_policy] if args.key?(:default_failure_policy)
          @failure_policies = args[:failure_policies] if args.key?(:failure_policies)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoConnectorsConnection
        include Google::Apis::Core::Hashable
      
        # Connection name Format: projects/`project`/locations/`location`/connections/`
        # connection`
        # Corresponds to the JSON property `connectionName`
        # @return [String]
        attr_accessor :connection_name
      
        # Connector version Format: projects/`project`/locations/`location`/providers/`
        # provider`/connectors/`connector`/versions/`version`
        # Corresponds to the JSON property `connectorVersion`
        # @return [String]
        attr_accessor :connector_version
      
        # The name of the Hostname of the Service Directory service with TLS if used.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Service name Format: projects/`project`/locations/`location`/namespaces/`
        # namespace`/services/`service`
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_name = args[:connection_name] if args.key?(:connection_name)
          @connector_version = args[:connector_version] if args.key?(:connector_version)
          @host = args[:host] if args.key?(:host)
          @service_name = args[:service_name] if args.key?(:service_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoConnectorsGenericConnectorTaskConfig
        include Google::Apis::Core::Hashable
      
        # User-selected connection.
        # Corresponds to the JSON property `connection`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoConnectorsConnection]
        attr_accessor :connection
      
        # Operation to perform using the configured connection.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection = args[:connection] if args.key?(:connection)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Represents two-dimensional positions.
      class EnterpriseCrmEventbusProtoCoordinate
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # 
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
      
      # 
      class EnterpriseCrmEventbusProtoCustomSuspensionRequest
        include Google::Apis::Core::Hashable
      
        # LINT.IfChange Use this request to post all workflows associated with a given
        # trigger id. Next available id: 13
        # Corresponds to the JSON property `postToQueueWithTriggerIdRequest`
        # @return [Google::Apis::IntegrationsV1::GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest]
        attr_accessor :post_to_queue_with_trigger_id_request
      
        # In the fired event, set the SuspensionInfo message as the value for this key.
        # Corresponds to the JSON property `suspensionInfoEventParameterKey`
        # @return [String]
        attr_accessor :suspension_info_event_parameter_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @post_to_queue_with_trigger_id_request = args[:post_to_queue_with_trigger_id_request] if args.key?(:post_to_queue_with_trigger_id_request)
          @suspension_info_event_parameter_key = args[:suspension_info_event_parameter_key] if args.key?(:suspension_info_event_parameter_key)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoDoubleArray
        include Google::Apis::Core::Hashable
      
        # 
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
      
      # 
      class EnterpriseCrmEventbusProtoDoubleArrayFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoDoubleFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoDoubleParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `doubleValues`
        # @return [Array<Float>]
        attr_accessor :double_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_values = args[:double_values] if args.key?(:double_values)
        end
      end
      
      # An error, warning, or information message associated with a workflow.
      class EnterpriseCrmEventbusProtoErrorDetail
        include Google::Apis::Core::Hashable
      
        # Registered ids for errors, as "oneof" enums. Each task or logical grouping of
        # tasks may share the same enum.
        # Corresponds to the JSON property `errorCode`
        # @return [Google::Apis::IntegrationsV1::CrmlogErrorCode]
        attr_accessor :error_code
      
        # The full text of the error message, including any parameters that were thrown
        # along with the exception.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The severity of the error: ERROR|WARN|INFO.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The task try-number, in which, the error occurred. If zero, the error happened
        # at the event level.
        # Corresponds to the JSON property `taskNumber`
        # @return [Fixnum]
        attr_accessor :task_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_message = args[:error_message] if args.key?(:error_message)
          @severity = args[:severity] if args.key?(:severity)
          @task_number = args[:task_number] if args.key?(:task_number)
        end
      end
      
      # LINT.IfChange This message is used for storing key value pair properties for
      # each Event / Task in the EventBus.
      class EnterpriseCrmEventbusProtoEventBusProperties
        include Google::Apis::Core::Hashable
      
        # An unordered list of property entries.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoPropertyEntry>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Contains the details of the execution info of this event: this includes the
      # tasks execution details plus the event execution statistics. Next available id:
      # 12
      class EnterpriseCrmEventbusProtoEventExecutionDetails
        include Google::Apis::Core::Hashable
      
        # If the execution is manually canceled, this field will contain the reason for
        # cancellation.
        # Corresponds to the JSON property `cancelReason`
        # @return [String]
        attr_accessor :cancel_reason
      
        # 
        # Corresponds to the JSON property `eventAttemptStats`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>]
        attr_accessor :event_attempt_stats
      
        # 
        # Corresponds to the JSON property `eventExecutionSnapshot`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventExecutionSnapshot>]
        attr_accessor :event_execution_snapshot
      
        # Total size of all event_execution_snapshots for an execution
        # Corresponds to the JSON property `eventExecutionSnapshotsSize`
        # @return [Fixnum]
        attr_accessor :event_execution_snapshots_size
      
        # 
        # Corresponds to the JSON property `eventExecutionState`
        # @return [String]
        attr_accessor :event_execution_state
      
        # Indicates the number of times the execution has restarted from the beginning.
        # Corresponds to the JSON property `eventRetriesFromBeginningCount`
        # @return [Fixnum]
        attr_accessor :event_retries_from_beginning_count
      
        # The log file path (aka. cns address) for this event.
        # Corresponds to the JSON property `logFilePath`
        # @return [String]
        attr_accessor :log_file_path
      
        # The network address (aka. bns address) that indicates where the event executor
        # is running.
        # Corresponds to the JSON property `networkAddress`
        # @return [String]
        attr_accessor :network_address
      
        # Next scheduled execution time in case the execution status was RETRY_ON_HOLD.
        # Corresponds to the JSON property `nextExecutionTime`
        # @return [Fixnum]
        attr_accessor :next_execution_time
      
        # Used internally and shouldn't be exposed to users. A counter for the cron job
        # to record how many times this event is in in_process state but don't have a
        # lock consecutively/
        # Corresponds to the JSON property `ryeLockUnheldCount`
        # @return [Fixnum]
        attr_accessor :rye_lock_unheld_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_reason = args[:cancel_reason] if args.key?(:cancel_reason)
          @event_attempt_stats = args[:event_attempt_stats] if args.key?(:event_attempt_stats)
          @event_execution_snapshot = args[:event_execution_snapshot] if args.key?(:event_execution_snapshot)
          @event_execution_snapshots_size = args[:event_execution_snapshots_size] if args.key?(:event_execution_snapshots_size)
          @event_execution_state = args[:event_execution_state] if args.key?(:event_execution_state)
          @event_retries_from_beginning_count = args[:event_retries_from_beginning_count] if args.key?(:event_retries_from_beginning_count)
          @log_file_path = args[:log_file_path] if args.key?(:log_file_path)
          @network_address = args[:network_address] if args.key?(:network_address)
          @next_execution_time = args[:next_execution_time] if args.key?(:next_execution_time)
          @rye_lock_unheld_count = args[:rye_lock_unheld_count] if args.key?(:rye_lock_unheld_count)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats
        include Google::Apis::Core::Hashable
      
        # The end time of the event execution for current attempt.
        # Corresponds to the JSON property `endTime`
        # @return [Fixnum]
        attr_accessor :end_time
      
        # The start time of the event execution for current attempt. This could be in
        # the future if it's been scheduled.
        # Corresponds to the JSON property `startTime`
        # @return [Fixnum]
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
      
      # Contains the snapshot of the event execution for a given checkpoint. Next
      # available id: 15
      class EnterpriseCrmEventbusProtoEventExecutionSnapshot
        include Google::Apis::Core::Hashable
      
        # Indicates "right after which checkpoint task's execution" this snapshot is
        # taken.
        # Corresponds to the JSON property `checkpointTaskNumber`
        # @return [String]
        attr_accessor :checkpoint_task_number
      
        # Client that the execution snapshot is associated to.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # All of the computed conditions that been calculated.
        # Corresponds to the JSON property `conditionResults`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoConditionResult>]
        attr_accessor :condition_results
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `diffParams`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventParameters]
        attr_accessor :diff_params
      
        # Points to the event execution info this snapshot belongs to.
        # Corresponds to the JSON property `eventExecutionInfoId`
        # @return [String]
        attr_accessor :event_execution_info_id
      
        # Auto-generated. Used as primary key for EventExecutionSnapshots table.
        # Corresponds to the JSON property `eventExecutionSnapshotId`
        # @return [String]
        attr_accessor :event_execution_snapshot_id
      
        # 
        # Corresponds to the JSON property `eventExecutionSnapshotMetadata`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata]
        attr_accessor :event_execution_snapshot_metadata
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `eventParams`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventParameters]
        attr_accessor :event_params
      
        # indicate whether snapshot exceeded maximum size before clean up
        # Corresponds to the JSON property `exceedMaxSize`
        # @return [Boolean]
        attr_accessor :exceed_max_size
        alias_method :exceed_max_size?, :exceed_max_size
      
        # Indicates when this snapshot is taken.
        # Corresponds to the JSON property `snapshotTime`
        # @return [Fixnum]
        attr_accessor :snapshot_time
      
        # All of the task execution details at the given point of time.
        # Corresponds to the JSON property `taskExecutionDetails`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTaskExecutionDetails>]
        attr_accessor :task_execution_details
      
        # The task name associated with this snapshot. Could be empty.
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        # Name of the workflow this event execution snapshot belongs to.
        # Corresponds to the JSON property `workflowName`
        # @return [String]
        attr_accessor :workflow_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checkpoint_task_number = args[:checkpoint_task_number] if args.key?(:checkpoint_task_number)
          @client_id = args[:client_id] if args.key?(:client_id)
          @condition_results = args[:condition_results] if args.key?(:condition_results)
          @diff_params = args[:diff_params] if args.key?(:diff_params)
          @event_execution_info_id = args[:event_execution_info_id] if args.key?(:event_execution_info_id)
          @event_execution_snapshot_id = args[:event_execution_snapshot_id] if args.key?(:event_execution_snapshot_id)
          @event_execution_snapshot_metadata = args[:event_execution_snapshot_metadata] if args.key?(:event_execution_snapshot_metadata)
          @event_params = args[:event_params] if args.key?(:event_params)
          @exceed_max_size = args[:exceed_max_size] if args.key?(:exceed_max_size)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
          @task_execution_details = args[:task_execution_details] if args.key?(:task_execution_details)
          @task_name = args[:task_name] if args.key?(:task_name)
          @workflow_name = args[:workflow_name] if args.key?(:workflow_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata
        include Google::Apis::Core::Hashable
      
        # Ancestor iteration number for the task(it will only be non-empty if the task
        # is under 'private workflow')
        # Corresponds to the JSON property `ancestorIterationNumbers`
        # @return [Array<String>]
        attr_accessor :ancestor_iteration_numbers
      
        # Ancestor task number for the task(it will only be non-empty if the task is
        # under 'private workflow')
        # Corresponds to the JSON property `ancestorTaskNumbers`
        # @return [Array<String>]
        attr_accessor :ancestor_task_numbers
      
        # the event attempt number this snapshot belongs to.
        # Corresponds to the JSON property `eventAttemptNum`
        # @return [Fixnum]
        attr_accessor :event_attempt_num
      
        # The direct integration which the event execution snapshots belongs to
        # Corresponds to the JSON property `integrationName`
        # @return [String]
        attr_accessor :integration_name
      
        # the task attempt number this snapshot belongs to. Could be empty.
        # Corresponds to the JSON property `taskAttemptNum`
        # @return [Fixnum]
        attr_accessor :task_attempt_num
      
        # the task label associated with this snapshot. Could be empty.
        # Corresponds to the JSON property `taskLabel`
        # @return [String]
        attr_accessor :task_label
      
        # the task name associated with this snapshot. Could be empty.
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        # The task number associated with this snapshot. Could be empty.
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestor_iteration_numbers = args[:ancestor_iteration_numbers] if args.key?(:ancestor_iteration_numbers)
          @ancestor_task_numbers = args[:ancestor_task_numbers] if args.key?(:ancestor_task_numbers)
          @event_attempt_num = args[:event_attempt_num] if args.key?(:event_attempt_num)
          @integration_name = args[:integration_name] if args.key?(:integration_name)
          @task_attempt_num = args[:task_attempt_num] if args.key?(:task_attempt_num)
          @task_label = args[:task_label] if args.key?(:task_label)
          @task_name = args[:task_name] if args.key?(:task_name)
          @task_number = args[:task_number] if args.key?(:task_number)
        end
      end
      
      # LINT.IfChange This message is used for processing and persisting (when
      # applicable) key value pair parameters for each event in the event bus. Please
      # see
      class EnterpriseCrmEventbusProtoEventParameters
        include Google::Apis::Core::Hashable
      
        # Parameters are a part of Event and can be used to communicate between
        # different tasks that are part of the same integration execution.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterEntry>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Message that helps aggregate all sub-executions triggered by one execution and
      # keeps track of child-parent relationships.
      class EnterpriseCrmEventbusProtoExecutionTraceInfo
        include Google::Apis::Core::Hashable
      
        # Parent event execution info id that triggers the current execution through
        # SubWorkflowExecutorTask.
        # Corresponds to the JSON property `parentEventExecutionInfoId`
        # @return [String]
        attr_accessor :parent_event_execution_info_id
      
        # Used to aggregate ExecutionTraceInfo.
        # Corresponds to the JSON property `traceId`
        # @return [String]
        attr_accessor :trace_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent_event_execution_info_id = args[:parent_event_execution_info_id] if args.key?(:parent_event_execution_info_id)
          @trace_id = args[:trace_id] if args.key?(:trace_id)
        end
      end
      
      # Represents external traffic type and id.
      class EnterpriseCrmEventbusProtoExternalTraffic
        include Google::Apis::Core::Hashable
      
        # Indicates the client enables internal IP feature, this is applicable for
        # internal clients only.
        # Corresponds to the JSON property `enableInternalIp`
        # @return [Boolean]
        attr_accessor :enable_internal_ip
        alias_method :enable_internal_ip?, :enable_internal_ip
      
        # User’s GCP project id the traffic is referring to.
        # Corresponds to the JSON property `gcpProjectId`
        # @return [String]
        attr_accessor :gcp_project_id
      
        # User’s GCP project number the traffic is referring to.
        # Corresponds to the JSON property `gcpProjectNumber`
        # @return [String]
        attr_accessor :gcp_project_number
      
        # Location for the user's request.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Enqueue the execution request due to quota issue
        # Corresponds to the JSON property `retryRequestForQuota`
        # @return [Boolean]
        attr_accessor :retry_request_for_quota
        alias_method :retry_request_for_quota?, :retry_request_for_quota
      
        # 
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_internal_ip = args[:enable_internal_ip] if args.key?(:enable_internal_ip)
          @gcp_project_id = args[:gcp_project_id] if args.key?(:gcp_project_id)
          @gcp_project_number = args[:gcp_project_number] if args.key?(:gcp_project_number)
          @location = args[:location] if args.key?(:location)
          @retry_request_for_quota = args[:retry_request_for_quota] if args.key?(:retry_request_for_quota)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Policy that defines the task retry logic and failure type. If no FailurePolicy
      # is defined for a task, all its dependent tasks will not be executed (i.e, a `
      # retry_strategy` of NONE will be applied).
      class EnterpriseCrmEventbusProtoFailurePolicy
        include Google::Apis::Core::Hashable
      
        # Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/
        # RESTART_WORKFLOW_WITH_BACKOFF. Defines the initial interval for backoff.
        # Corresponds to the JSON property `intervalInSeconds`
        # @return [Fixnum]
        attr_accessor :interval_in_seconds
      
        # Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/
        # RESTART_WORKFLOW_WITH_BACKOFF. Defines the number of times the task will be
        # retried if failed.
        # Corresponds to the JSON property `maxNumRetries`
        # @return [Fixnum]
        attr_accessor :max_num_retries
      
        # Optional. The retry condition that will be evaluated for this failure policy
        # with the corresponding retry strategy.
        # Corresponds to the JSON property `retryCondition`
        # @return [String]
        attr_accessor :retry_condition
      
        # Defines what happens to the task upon failure.
        # Corresponds to the JSON property `retryStrategy`
        # @return [String]
        attr_accessor :retry_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval_in_seconds = args[:interval_in_seconds] if args.key?(:interval_in_seconds)
          @max_num_retries = args[:max_num_retries] if args.key?(:max_num_retries)
          @retry_condition = args[:retry_condition] if args.key?(:retry_condition)
          @retry_strategy = args[:retry_strategy] if args.key?(:retry_strategy)
        end
      end
      
      # Information about the value and type of the field.
      class EnterpriseCrmEventbusProtoField
        include Google::Apis::Core::Hashable
      
        # By default, if the cardinality is unspecified the field is considered required
        # while mapping.
        # Corresponds to the JSON property `cardinality`
        # @return [String]
        attr_accessor :cardinality
      
        # LINT.IfChange To support various types of parameter values. Next available id:
        # 14
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterValueType]
        attr_accessor :default_value
      
        # Specifies the data type of the field.
        # Corresponds to the JSON property `fieldType`
        # @return [String]
        attr_accessor :field_type
      
        # Optional. The fully qualified proto name (e.g. enterprise.crm.storage.Account).
        # Required for output field of type PROTO_VALUE or PROTO_ARRAY. For e.g., if
        # input field_type is BYTES and output field_type is PROTO_VALUE, then fully
        # qualified proto type url should be provided to parse the input bytes. If
        # field_type is *_ARRAY, then all the converted protos are of the same type.
        # Corresponds to the JSON property `protoDefPath`
        # @return [String]
        attr_accessor :proto_def_path
      
        # This holds the reference key of the workflow or task parameter. 1. Any
        # workflow parameter, for e.g. $workflowParam1$. 2. Any task input or output
        # parameter, for e.g. $task1_param1$. 3. Any workflow or task parameters with
        # subfield references, for e.g., $task1_param1.employee.id$
        # Corresponds to the JSON property `referenceKey`
        # @return [String]
        attr_accessor :reference_key
      
        # This is the transform expression to fetch the input field value. for e.g. $
        # param1$.CONCAT('test'). Keep points - 1. Only input field can have a transform
        # expression. 2. If a transform expression is provided, reference_key will be
        # ignored. 3. If no value is returned after evaluation of transform expression,
        # default_value can be mapped if provided. 4. The field_type should be the type
        # of the final object returned after the transform expression is evaluated.
        # Scrubs the transform expression before logging as value provided by user so
        # may or may not contain PII or SPII data.
        # Corresponds to the JSON property `transformExpression`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTransformExpression]
        attr_accessor :transform_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cardinality = args[:cardinality] if args.key?(:cardinality)
          @default_value = args[:default_value] if args.key?(:default_value)
          @field_type = args[:field_type] if args.key?(:field_type)
          @proto_def_path = args[:proto_def_path] if args.key?(:proto_def_path)
          @reference_key = args[:reference_key] if args.key?(:reference_key)
          @transform_expression = args[:transform_expression] if args.key?(:transform_expression)
        end
      end
      
      # Field Mapping Config to map multiple output fields values from input fields
      # values.
      class EnterpriseCrmEventbusProtoFieldMappingConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `mappedFields`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoMappedField>]
        attr_accessor :mapped_fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mapped_fields = args[:mapped_fields] if args.key?(:mapped_fields)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoFunction
        include Google::Apis::Core::Hashable
      
        # The name of the function to perform.
        # Corresponds to the JSON property `functionType`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoFunctionType]
        attr_accessor :function_type
      
        # List of parameters required for the transformation.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTransformExpression>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_type = args[:function_type] if args.key?(:function_type)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoFunctionType
        include Google::Apis::Core::Hashable
      
        # LINT.IfChange
        # Corresponds to the JSON property `baseFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBaseFunction]
        attr_accessor :base_function
      
        # 
        # Corresponds to the JSON property `booleanArrayFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBooleanArrayFunction]
        attr_accessor :boolean_array_function
      
        # 
        # Corresponds to the JSON property `booleanFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBooleanFunction]
        attr_accessor :boolean_function
      
        # 
        # Corresponds to the JSON property `doubleArrayFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoDoubleArrayFunction]
        attr_accessor :double_array_function
      
        # 
        # Corresponds to the JSON property `doubleFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoDoubleFunction]
        attr_accessor :double_function
      
        # 
        # Corresponds to the JSON property `intArrayFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoIntArrayFunction]
        attr_accessor :int_array_function
      
        # 
        # Corresponds to the JSON property `intFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoIntFunction]
        attr_accessor :int_function
      
        # 
        # Corresponds to the JSON property `jsonFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoJsonFunction]
        attr_accessor :json_function
      
        # 
        # Corresponds to the JSON property `protoArrayFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoProtoArrayFunction]
        attr_accessor :proto_array_function
      
        # 
        # Corresponds to the JSON property `protoFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoProtoFunction]
        attr_accessor :proto_function
      
        # 
        # Corresponds to the JSON property `stringArrayFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoStringArrayFunction]
        attr_accessor :string_array_function
      
        # 
        # Corresponds to the JSON property `stringFunction`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoStringFunction]
        attr_accessor :string_function
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_function = args[:base_function] if args.key?(:base_function)
          @boolean_array_function = args[:boolean_array_function] if args.key?(:boolean_array_function)
          @boolean_function = args[:boolean_function] if args.key?(:boolean_function)
          @double_array_function = args[:double_array_function] if args.key?(:double_array_function)
          @double_function = args[:double_function] if args.key?(:double_function)
          @int_array_function = args[:int_array_function] if args.key?(:int_array_function)
          @int_function = args[:int_function] if args.key?(:int_function)
          @json_function = args[:json_function] if args.key?(:json_function)
          @proto_array_function = args[:proto_array_function] if args.key?(:proto_array_function)
          @proto_function = args[:proto_function] if args.key?(:proto_function)
          @string_array_function = args[:string_array_function] if args.key?(:string_array_function)
          @string_function = args[:string_function] if args.key?(:string_function)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoIntArray
        include Google::Apis::Core::Hashable
      
        # 
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
      
      # 
      class EnterpriseCrmEventbusProtoIntArrayFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoIntFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoIntParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intValues`
        # @return [Array<Fixnum>]
        attr_accessor :int_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @int_values = args[:int_values] if args.key?(:int_values)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoJsonFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # The LogSettings define the logging attributes for an event property. These
      # attributes are used to map the property to the parameter in the log proto.
      # Also used to define scrubbing/truncation behavior and PII information.
      class EnterpriseCrmEventbusProtoLogSettings
        include Google::Apis::Core::Hashable
      
        # The name of corresponding logging field of the event property. If omitted,
        # assumes the same name as the event property key.
        # Corresponds to the JSON property `logFieldName`
        # @return [String]
        attr_accessor :log_field_name
      
        # 
        # Corresponds to the JSON property `seedPeriod`
        # @return [String]
        attr_accessor :seed_period
      
        # 
        # Corresponds to the JSON property `seedScope`
        # @return [String]
        attr_accessor :seed_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_field_name = args[:log_field_name] if args.key?(:log_field_name)
          @seed_period = args[:seed_period] if args.key?(:seed_period)
          @seed_scope = args[:seed_scope] if args.key?(:seed_scope)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoLoopMetadata
        include Google::Apis::Core::Hashable
      
        # Starting from 1, not 0.
        # Corresponds to the JSON property `currentIterationCount`
        # @return [Fixnum]
        attr_accessor :current_iteration_count
      
        # Needs to be set by the loop impl class before each iteration. The abstract
        # loop class will append the request and response to it. Eg. The foreach Loop
        # will clean up and set it as the current iteration element at the start of each
        # loop. The post request and response will be appended to the value once they
        # are available.
        # Corresponds to the JSON property `currentIterationDetail`
        # @return [String]
        attr_accessor :current_iteration_detail
      
        # Add the error message when loops fail.
        # Corresponds to the JSON property `errorMsg`
        # @return [String]
        attr_accessor :error_msg
      
        # Indicates where in the loop logic did it error out.
        # Corresponds to the JSON property `failureLocation`
        # @return [String]
        attr_accessor :failure_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_iteration_count = args[:current_iteration_count] if args.key?(:current_iteration_count)
          @current_iteration_detail = args[:current_iteration_detail] if args.key?(:current_iteration_detail)
          @error_msg = args[:error_msg] if args.key?(:error_msg)
          @failure_location = args[:failure_location] if args.key?(:failure_location)
        end
      end
      
      # Mapped field is a pair of input field and output field.
      class EnterpriseCrmEventbusProtoMappedField
        include Google::Apis::Core::Hashable
      
        # Information about the value and type of the field.
        # Corresponds to the JSON property `inputField`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoField]
        attr_accessor :input_field
      
        # Information about the value and type of the field.
        # Corresponds to the JSON property `outputField`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoField]
        attr_accessor :output_field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_field = args[:input_field] if args.key?(:input_field)
          @output_field = args[:output_field] if args.key?(:output_field)
        end
      end
      
      # The task that is next in line to be executed, if the condition specified
      # evaluated to true.
      class EnterpriseCrmEventbusProtoNextTask
        include Google::Apis::Core::Hashable
      
        # Combined condition for this task to become an eligible next task. Each of
        # these combined_conditions are joined with logical OR. DEPRECATED: use `
        # condition`
        # Corresponds to the JSON property `combinedConditions`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoCombinedCondition>]
        attr_accessor :combined_conditions
      
        # Standard filter expression for this task to become an eligible next task.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # User-provided description intended to give more business context about the
        # next task edge or condition.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-provided label that is attached to this edge in the UI.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # ID of the next task.
        # Corresponds to the JSON property `taskConfigId`
        # @return [String]
        attr_accessor :task_config_id
      
        # Task number of the next task.
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combined_conditions = args[:combined_conditions] if args.key?(:combined_conditions)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @label = args[:label] if args.key?(:label)
          @task_config_id = args[:task_config_id] if args.key?(:task_config_id)
          @task_number = args[:task_number] if args.key?(:task_number)
        end
      end
      
      # The teardown task that is next in line to be executed. We support only
      # sequential execution of teardown tasks (i.e. no branching).
      class EnterpriseCrmEventbusProtoNextTeardownTask
        include Google::Apis::Core::Hashable
      
        # Required. Name of the next teardown task.
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
      
      # Represents a node identifier (type + id). Next highest id: 3
      class EnterpriseCrmEventbusProtoNodeIdentifier
        include Google::Apis::Core::Hashable
      
        # Configuration of the edge.
        # Corresponds to the JSON property `elementIdentifier`
        # @return [String]
        attr_accessor :element_identifier
      
        # Destination node where the edge ends. It can only be a task config.
        # Corresponds to the JSON property `elementType`
        # @return [String]
        attr_accessor :element_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @element_identifier = args[:element_identifier] if args.key?(:element_identifier)
          @element_type = args[:element_type] if args.key?(:element_type)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoNotification
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buganizerNotification`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBuganizerNotification]
        attr_accessor :buganizer_notification
      
        # Email address along with optional name and tokens. These tokens will be
        # substituted for the variables in the form of [`var_name`], where var_name
        # could be any string of no more than 32 bytes.
        # Corresponds to the JSON property `emailAddress`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoAddress]
        attr_accessor :email_address
      
        # 
        # Corresponds to the JSON property `escalatorQueue`
        # @return [String]
        attr_accessor :escalator_queue
      
        # 
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        # If the out-of-the-box email/pubsub notifications are not suitable and custom
        # logic is required, fire a workflow containing all info needed to notify users
        # to resume execution.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoCustomSuspensionRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buganizer_notification = args[:buganizer_notification] if args.key?(:buganizer_notification)
          @email_address = args[:email_address] if args.key?(:email_address)
          @escalator_queue = args[:escalator_queue] if args.key?(:escalator_queue)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoParamSpecEntryConfig
        include Google::Apis::Core::Hashable
      
        # A short phrase to describe what this parameter contains.
        # Corresponds to the JSON property `descriptivePhrase`
        # @return [String]
        attr_accessor :descriptive_phrase
      
        # Detailed help text for this parameter containing information not provided
        # elsewhere. For example, instructions on how to migrate from a deprecated
        # parameter.
        # Corresponds to the JSON property `helpText`
        # @return [String]
        attr_accessor :help_text
      
        # Whether the default value is hidden in the UI.
        # Corresponds to the JSON property `hideDefaultValue`
        # @return [Boolean]
        attr_accessor :hide_default_value
        alias_method :hide_default_value?, :hide_default_value
      
        # 
        # Corresponds to the JSON property `inputDisplayOption`
        # @return [String]
        attr_accessor :input_display_option
      
        # Whether this field is hidden in the UI.
        # Corresponds to the JSON property `isHidden`
        # @return [Boolean]
        attr_accessor :is_hidden
        alias_method :is_hidden?, :is_hidden
      
        # A user-friendly label for the parameter.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # 
        # Corresponds to the JSON property `parameterNameOption`
        # @return [String]
        attr_accessor :parameter_name_option
      
        # A user-friendly label for subSection under which the parameter will be
        # displayed.
        # Corresponds to the JSON property `subSectionLabel`
        # @return [String]
        attr_accessor :sub_section_label
      
        # Placeholder text which will appear in the UI input form for this parameter.
        # Corresponds to the JSON property `uiPlaceholderText`
        # @return [String]
        attr_accessor :ui_placeholder_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @descriptive_phrase = args[:descriptive_phrase] if args.key?(:descriptive_phrase)
          @help_text = args[:help_text] if args.key?(:help_text)
          @hide_default_value = args[:hide_default_value] if args.key?(:hide_default_value)
          @input_display_option = args[:input_display_option] if args.key?(:input_display_option)
          @is_hidden = args[:is_hidden] if args.key?(:is_hidden)
          @label = args[:label] if args.key?(:label)
          @parameter_name_option = args[:parameter_name_option] if args.key?(:parameter_name_option)
          @sub_section_label = args[:sub_section_label] if args.key?(:sub_section_label)
          @ui_placeholder_text = args[:ui_placeholder_text] if args.key?(:ui_placeholder_text)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition
        include Google::Apis::Core::Hashable
      
        # The fully-qualified proto name. This message, for example, would be "
        # enterprise.crm.eventbus.proto.ParamSpecEntry.ProtoDefinition".
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # Path to the proto file that contains the message type's definition.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_name = args[:full_name] if args.key?(:full_name)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoParamSpecEntryValidationRule
        include Google::Apis::Core::Hashable
      
        # Range used to validate doubles and floats.
        # Corresponds to the JSON property `doubleRange`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange]
        attr_accessor :double_range
      
        # Range used to validate longs and ints.
        # Corresponds to the JSON property `intRange`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange]
        attr_accessor :int_range
      
        # Rule used to validate strings.
        # Corresponds to the JSON property `stringRegex`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex]
        attr_accessor :string_regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_range = args[:double_range] if args.key?(:double_range)
          @int_range = args[:int_range] if args.key?(:int_range)
          @string_regex = args[:string_regex] if args.key?(:string_regex)
        end
      end
      
      # Range used to validate doubles and floats.
      class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange
        include Google::Apis::Core::Hashable
      
        # The inclusive maximum of the acceptable range.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # The inclusive minimum of the acceptable range.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # Range used to validate longs and ints.
      class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange
        include Google::Apis::Core::Hashable
      
        # The inclusive maximum of the acceptable range.
        # Corresponds to the JSON property `max`
        # @return [Fixnum]
        attr_accessor :max
      
        # The inclusive minimum of the acceptable range.
        # Corresponds to the JSON property `min`
        # @return [Fixnum]
        attr_accessor :min
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
        end
      end
      
      # Rule used to validate strings.
      class EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex
        include Google::Apis::Core::Hashable
      
        # Whether the regex matcher is applied exclusively (if true, matching values
        # will be rejected).
        # Corresponds to the JSON property `exclusive`
        # @return [Boolean]
        attr_accessor :exclusive
        alias_method :exclusive?, :exclusive
      
        # The regex applied to the input value(s).
        # Corresponds to the JSON property `regex`
        # @return [String]
        attr_accessor :regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusive = args[:exclusive] if args.key?(:exclusive)
          @regex = args[:regex] if args.key?(:regex)
        end
      end
      
      # Key-value pair of EventBus parameters.
      class EnterpriseCrmEventbusProtoParameterEntry
        include Google::Apis::Core::Hashable
      
        # Key is used to retrieve the corresponding parameter value. This should be
        # unique for a given fired event. These parameters must be predefined in the
        # integration definition.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # True if this parameter should be masked in the logs
        # Corresponds to the JSON property `masked`
        # @return [Boolean]
        attr_accessor :masked
        alias_method :masked?, :masked
      
        # LINT.IfChange To support various types of parameter values. Next available id:
        # 14
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterValueType]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @masked = args[:masked] if args.key?(:masked)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A generic multi-map that holds key value pairs. They keys and values can be of
      # any type, unless specified.
      class EnterpriseCrmEventbusProtoParameterMap
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterMapEntry>]
        attr_accessor :entries
      
        # Option to specify key value type for all entries of the map. If provided then
        # field types for all entries must conform to this.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # 
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @key_type = args[:key_type] if args.key?(:key_type)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Entry is a pair of key and value.
      class EnterpriseCrmEventbusProtoParameterMapEntry
        include Google::Apis::Core::Hashable
      
        # Field represents either the key or value in an entry.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterMapField]
        attr_accessor :key
      
        # Field represents either the key or value in an entry.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterMapField]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Field represents either the key or value in an entry.
      class EnterpriseCrmEventbusProtoParameterMapField
        include Google::Apis::Core::Hashable
      
        # LINT.IfChange To support various types of parameter values. Next available id:
        # 14
        # Corresponds to the JSON property `literalValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterValueType]
        attr_accessor :literal_value
      
        # Referencing one of the WF variables.
        # Corresponds to the JSON property `referenceKey`
        # @return [String]
        attr_accessor :reference_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @literal_value = args[:literal_value] if args.key?(:literal_value)
          @reference_key = args[:reference_key] if args.key?(:reference_key)
        end
      end
      
      # LINT.IfChange To support various types of parameter values. Next available id:
      # 14
      class EnterpriseCrmEventbusProtoParameterValueType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBooleanParameterArray]
        attr_accessor :boolean_array
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # 
        # Corresponds to the JSON property `doubleArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoDoubleParameterArray]
        attr_accessor :double_array
      
        # 
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # 
        # Corresponds to the JSON property `intArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoIntParameterArray]
        attr_accessor :int_array
      
        # 
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # 
        # Corresponds to the JSON property `protoArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoProtoParameterArray]
        attr_accessor :proto_array
      
        # 
        # Corresponds to the JSON property `protoValue`
        # @return [Hash<String,Object>]
        attr_accessor :proto_value
      
        # 
        # Corresponds to the JSON property `serializedObjectValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoSerializedObjectParameter]
        attr_accessor :serialized_object_value
      
        # 
        # Corresponds to the JSON property `stringArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoStringParameterArray]
        attr_accessor :string_array
      
        # 
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_array = args[:boolean_array] if args.key?(:boolean_array)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @double_array = args[:double_array] if args.key?(:double_array)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int_array = args[:int_array] if args.key?(:int_array)
          @int_value = args[:int_value] if args.key?(:int_value)
          @proto_array = args[:proto_array] if args.key?(:proto_array)
          @proto_value = args[:proto_value] if args.key?(:proto_value)
          @serialized_object_value = args[:serialized_object_value] if args.key?(:serialized_object_value)
          @string_array = args[:string_array] if args.key?(:string_array)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Key-value pair of EventBus property.
      class EnterpriseCrmEventbusProtoPropertyEntry
        include Google::Apis::Core::Hashable
      
        # Key is used to retrieve the corresponding property value. This should be
        # unique for a given fired event. The Tasks should be aware of the keys used
        # while firing the events for them to be able to retrieve the values.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Used for define type for values. Currently supported value types include int,
        # string, double, array, and any proto message.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoValueType]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoProtoArrayFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoProtoFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoProtoParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `protoValues`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :proto_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proto_values = args[:proto_values] if args.key?(:proto_values)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoScatterResponse
        include Google::Apis::Core::Hashable
      
        # The error message of the failure if applicable.
        # Corresponds to the JSON property `errorMsg`
        # @return [String]
        attr_accessor :error_msg
      
        # The execution ids of each Subworkflow fired by this scatter.
        # Corresponds to the JSON property `executionIds`
        # @return [Array<String>]
        attr_accessor :execution_ids
      
        # If execution is sync, this is true if the execution passed and false if it
        # failed. If the execution is async, this is true if the WF was fired off
        # successfully, and false if it failed to execute. The success or failure of the
        # subworkflows executed are not captured.
        # Corresponds to the JSON property `isSuccessful`
        # @return [Boolean]
        attr_accessor :is_successful
        alias_method :is_successful?, :is_successful
      
        # A list of all the response parameters in the aggregtorMap stored with the
        # remapped key.
        # Corresponds to the JSON property `responseParams`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterEntry>]
        attr_accessor :response_params
      
        # LINT.IfChange To support various types of parameter values. Next available id:
        # 14
        # Corresponds to the JSON property `scatterElement`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParameterValueType]
        attr_accessor :scatter_element
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_msg = args[:error_msg] if args.key?(:error_msg)
          @execution_ids = args[:execution_ids] if args.key?(:execution_ids)
          @is_successful = args[:is_successful] if args.key?(:is_successful)
          @response_params = args[:response_params] if args.key?(:response_params)
          @scatter_element = args[:scatter_element] if args.key?(:scatter_element)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoSerializedObjectParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `objectValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :object_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_value = args[:object_value] if args.key?(:object_value)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoStringArray
        include Google::Apis::Core::Hashable
      
        # 
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
      
      # 
      class EnterpriseCrmEventbusProtoStringArrayFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoStringFunction
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoStringParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stringValues`
        # @return [Array<String>]
        attr_accessor :string_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @string_values = args[:string_values] if args.key?(:string_values)
        end
      end
      
      # Policy that dictates the behavior for the task after it completes successfully.
      class EnterpriseCrmEventbusProtoSuccessPolicy
        include Google::Apis::Core::Hashable
      
        # State to which the execution snapshot status will be set if the task succeeds.
        # Corresponds to the JSON property `finalState`
        # @return [String]
        attr_accessor :final_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @final_state = args[:final_state] if args.key?(:final_state)
        end
      end
      
      # LINT.IfChange
      class EnterpriseCrmEventbusProtoSuspensionAuthPermissions
        include Google::Apis::Core::Hashable
      
        # Represents a Gaia identity for a person or service account.
        # Corresponds to the JSON property `gaiaIdentity`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity]
        attr_accessor :gaia_identity
      
        # 
        # Corresponds to the JSON property `googleGroup`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity]
        attr_accessor :google_group
      
        # 
        # Corresponds to the JSON property `loasRole`
        # @return [String]
        attr_accessor :loas_role
      
        # 
        # Corresponds to the JSON property `mdbGroup`
        # @return [String]
        attr_accessor :mdb_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gaia_identity = args[:gaia_identity] if args.key?(:gaia_identity)
          @google_group = args[:google_group] if args.key?(:google_group)
          @loas_role = args[:loas_role] if args.key?(:loas_role)
          @mdb_group = args[:mdb_group] if args.key?(:mdb_group)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # 
        # Corresponds to the JSON property `gaiaId`
        # @return [Fixnum]
        attr_accessor :gaia_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
          @gaia_id = args[:gaia_id] if args.key?(:gaia_id)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoSuspensionConfig
        include Google::Apis::Core::Hashable
      
        # Optional information to provide recipients of the suspension in addition to
        # the resolution URL, typically containing relevant parameter values from the
        # originating workflow.
        # Corresponds to the JSON property `customMessage`
        # @return [String]
        attr_accessor :custom_message
      
        # 
        # Corresponds to the JSON property `notifications`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoNotification>]
        attr_accessor :notifications
      
        # Indicates the next steps when no external actions happen on the suspension.
        # Corresponds to the JSON property `suspensionExpiration`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoSuspensionExpiration]
        attr_accessor :suspension_expiration
      
        # Identities able to resolve this suspension.
        # Corresponds to the JSON property `whoMayResolve`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoSuspensionAuthPermissions>]
        attr_accessor :who_may_resolve
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_message = args[:custom_message] if args.key?(:custom_message)
          @notifications = args[:notifications] if args.key?(:notifications)
          @suspension_expiration = args[:suspension_expiration] if args.key?(:suspension_expiration)
          @who_may_resolve = args[:who_may_resolve] if args.key?(:who_may_resolve)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoSuspensionExpiration
        include Google::Apis::Core::Hashable
      
        # Milliseconds after which the suspension expires, if no action taken.
        # Corresponds to the JSON property `expireAfterMs`
        # @return [Fixnum]
        attr_accessor :expire_after_ms
      
        # Whether the suspension will be REJECTED or LIFTED upon expiration. REJECTED is
        # the default behavior.
        # Corresponds to the JSON property `liftWhenExpired`
        # @return [Boolean]
        attr_accessor :lift_when_expired
        alias_method :lift_when_expired?, :lift_when_expired
      
        # Milliseconds after which the previous suspension action reminder, if any, is
        # sent using the selected notification option, for a suspension which is still
        # PENDING_UNSPECIFIED.
        # Corresponds to the JSON property `remindAfterMs`
        # @return [Fixnum]
        attr_accessor :remind_after_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_after_ms = args[:expire_after_ms] if args.key?(:expire_after_ms)
          @lift_when_expired = args[:lift_when_expired] if args.key?(:lift_when_expired)
          @remind_after_ms = args[:remind_after_ms] if args.key?(:remind_after_ms)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoSuspensionResolutionInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audit`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit]
        attr_accessor :audit
      
        # The event data user sends as request.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # KMS info, used by cmek/gmek integration
        # Corresponds to the JSON property `cloudKmsConfig`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoCloudKmsConfig]
        attr_accessor :cloud_kms_config
      
        # Auto-generated.
        # Corresponds to the JSON property `createdTimestamp`
        # @return [String]
        attr_accessor :created_timestamp
      
        # Encrypted SuspensionResolutionInfo
        # Corresponds to the JSON property `encryptedSuspensionResolutionInfo`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encrypted_suspension_resolution_info
      
        # Required. ID of the associated execution.
        # Corresponds to the JSON property `eventExecutionInfoId`
        # @return [String]
        attr_accessor :event_execution_info_id
      
        # Represents external traffic type and id.
        # Corresponds to the JSON property `externalTraffic`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoExternalTraffic]
        attr_accessor :external_traffic
      
        # Auto-generated.
        # Corresponds to the JSON property `lastModifiedTimestamp`
        # @return [String]
        attr_accessor :last_modified_timestamp
      
        # Which Google product the suspension belongs to. If not set, the suspension
        # belongs to Integration Platform by default.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `suspensionConfig`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoSuspensionConfig]
        attr_accessor :suspension_config
      
        # Primary key for the SuspensionResolutionInfoTable.
        # Corresponds to the JSON property `suspensionId`
        # @return [String]
        attr_accessor :suspension_id
      
        # Required. Task number of the associated SuspensionTask.
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        # Required. The name of the originating workflow.
        # Corresponds to the JSON property `workflowName`
        # @return [String]
        attr_accessor :workflow_name
      
        # Wrapped dek
        # Corresponds to the JSON property `wrappedDek`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :wrapped_dek
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit = args[:audit] if args.key?(:audit)
          @client_id = args[:client_id] if args.key?(:client_id)
          @cloud_kms_config = args[:cloud_kms_config] if args.key?(:cloud_kms_config)
          @created_timestamp = args[:created_timestamp] if args.key?(:created_timestamp)
          @encrypted_suspension_resolution_info = args[:encrypted_suspension_resolution_info] if args.key?(:encrypted_suspension_resolution_info)
          @event_execution_info_id = args[:event_execution_info_id] if args.key?(:event_execution_info_id)
          @external_traffic = args[:external_traffic] if args.key?(:external_traffic)
          @last_modified_timestamp = args[:last_modified_timestamp] if args.key?(:last_modified_timestamp)
          @product = args[:product] if args.key?(:product)
          @status = args[:status] if args.key?(:status)
          @suspension_config = args[:suspension_config] if args.key?(:suspension_config)
          @suspension_id = args[:suspension_id] if args.key?(:suspension_id)
          @task_number = args[:task_number] if args.key?(:task_number)
          @workflow_name = args[:workflow_name] if args.key?(:workflow_name)
          @wrapped_dek = args[:wrapped_dek] if args.key?(:wrapped_dek)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resolvedBy`
        # @return [String]
        attr_accessor :resolved_by
      
        # 
        # Corresponds to the JSON property `resolvedByCpi`
        # @return [String]
        attr_accessor :resolved_by_cpi
      
        # 
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resolved_by = args[:resolved_by] if args.key?(:resolved_by)
          @resolved_by_cpi = args[:resolved_by_cpi] if args.key?(:resolved_by_cpi)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # Message to be used to configure alerting in the `@code TaskConfig` protos for
      # tasks in an event.
      class EnterpriseCrmEventbusProtoTaskAlertConfig
        include Google::Apis::Core::Hashable
      
        # The period over which the metric value should be aggregated and evaluated.
        # Format is , where integer should be a positive integer and unit should be one
        # of (s,m,h,d,w) meaning (second, minute, hour, day, week).
        # Corresponds to the JSON property `aggregationPeriod`
        # @return [String]
        attr_accessor :aggregation_period
      
        # Set to false by default. When set to true, the metrics are not aggregated or
        # pushed to Monarch for this workflow alert.
        # Corresponds to the JSON property `alertDisabled`
        # @return [Boolean]
        attr_accessor :alert_disabled
        alias_method :alert_disabled?, :alert_disabled
      
        # A name to identify this alert. This will be displayed in the alert subject. If
        # set, this name should be unique in within the scope of the containing workflow.
        # Corresponds to the JSON property `alertName`
        # @return [String]
        attr_accessor :alert_name
      
        # Client associated with this alert configuration. Must be a client enabled in
        # one of the containing workflow's triggers.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Should be specified only for TASK_AVERAGE_DURATION and
        # TASK_PERCENTILE_DURATION metrics. This member should be used to specify what
        # duration value the metrics should exceed for the alert to trigger.
        # Corresponds to the JSON property `durationThresholdMs`
        # @return [Fixnum]
        attr_accessor :duration_threshold_ms
      
        # List of error enums for alerts.
        # Corresponds to the JSON property `errorEnumList`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList]
        attr_accessor :error_enum_list
      
        # 
        # Corresponds to the JSON property `metricType`
        # @return [String]
        attr_accessor :metric_type
      
        # For how many contiguous aggregation periods should the expected min or max be
        # violated for the alert to be fired.
        # Corresponds to the JSON property `numAggregationPeriods`
        # @return [Fixnum]
        attr_accessor :num_aggregation_periods
      
        # Only count final task attempts, not retries.
        # Corresponds to the JSON property `onlyFinalAttempt`
        # @return [Boolean]
        attr_accessor :only_final_attempt
        alias_method :only_final_attempt?, :only_final_attempt
      
        # Link to a playbook for resolving the issue that triggered this alert.
        # Corresponds to the JSON property `playbookUrl`
        # @return [String]
        attr_accessor :playbook_url
      
        # The threshold type for which this alert is being configured. If value falls
        # below expected_min or exceeds expected_max, an alert will be fired.
        # Corresponds to the JSON property `thresholdType`
        # @return [String]
        attr_accessor :threshold_type
      
        # The threshold value of the metric, above or below which the alert should be
        # triggered. See EventAlertConfig or TaskAlertConfig for the different alert
        # metric types in each case. For the *RATE metrics, one or both of these fields
        # may be set. Zero is the default value and can be left at that. For *
        # PERCENTILE_DURATION metrics, one or both of these fields may be set, and also,
        # the duration threshold value should be specified in the threshold_duration_ms
        # member below. For *AVERAGE_DURATION metrics, these fields should not be set at
        # all. A different member, threshold_duration_ms, must be set in the
        # EventAlertConfig or the TaskAlertConfig.
        # Corresponds to the JSON property `thresholdValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue]
        attr_accessor :threshold_value
      
        # List of error enums for alerts.
        # Corresponds to the JSON property `warningEnumList`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList]
        attr_accessor :warning_enum_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_period = args[:aggregation_period] if args.key?(:aggregation_period)
          @alert_disabled = args[:alert_disabled] if args.key?(:alert_disabled)
          @alert_name = args[:alert_name] if args.key?(:alert_name)
          @client_id = args[:client_id] if args.key?(:client_id)
          @duration_threshold_ms = args[:duration_threshold_ms] if args.key?(:duration_threshold_ms)
          @error_enum_list = args[:error_enum_list] if args.key?(:error_enum_list)
          @metric_type = args[:metric_type] if args.key?(:metric_type)
          @num_aggregation_periods = args[:num_aggregation_periods] if args.key?(:num_aggregation_periods)
          @only_final_attempt = args[:only_final_attempt] if args.key?(:only_final_attempt)
          @playbook_url = args[:playbook_url] if args.key?(:playbook_url)
          @threshold_type = args[:threshold_type] if args.key?(:threshold_type)
          @threshold_value = args[:threshold_value] if args.key?(:threshold_value)
          @warning_enum_list = args[:warning_enum_list] if args.key?(:warning_enum_list)
        end
      end
      
      # Contains the details of the execution of this task. Next available id: 11
      class EnterpriseCrmEventbusProtoTaskExecutionDetails
        include Google::Apis::Core::Hashable
      
        # Indicates whether the task was skipped on failure. Only relevant if the task
        # is in SKIPPED state.
        # Corresponds to the JSON property `skippedOnFailure`
        # @return [Boolean]
        attr_accessor :skipped_on_failure
        alias_method :skipped_on_failure?, :skipped_on_failure
      
        # 
        # Corresponds to the JSON property `taskAttemptStats`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats>]
        attr_accessor :task_attempt_stats
      
        # 
        # Corresponds to the JSON property `taskExecutionState`
        # @return [String]
        attr_accessor :task_execution_state
      
        # Pointer to the task config it used for execution.
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @skipped_on_failure = args[:skipped_on_failure] if args.key?(:skipped_on_failure)
          @task_attempt_stats = args[:task_attempt_stats] if args.key?(:task_attempt_stats)
          @task_execution_state = args[:task_execution_state] if args.key?(:task_execution_state)
          @task_number = args[:task_number] if args.key?(:task_number)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats
        include Google::Apis::Core::Hashable
      
        # The end time of the task execution for current attempt.
        # Corresponds to the JSON property `endTime`
        # @return [Fixnum]
        attr_accessor :end_time
      
        # The start time of the task execution for current attempt. This could be in the
        # future if it's been scheduled.
        # Corresponds to the JSON property `startTime`
        # @return [Fixnum]
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
      
      # TaskMetadata are attributes that are associated to every common Task we have.
      class EnterpriseCrmEventbusProtoTaskMetadata
        include Google::Apis::Core::Hashable
      
        # The new task name to replace the current task if it is deprecated. Otherwise,
        # it is the same as the current task name.
        # Corresponds to the JSON property `activeTaskName`
        # @return [String]
        attr_accessor :active_task_name
      
        # 
        # Corresponds to the JSON property `admins`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTaskMetadataAdmin>]
        attr_accessor :admins
      
        # 
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The Code Search link to the Task Java file.
        # Corresponds to the JSON property `codeSearchLink`
        # @return [String]
        attr_accessor :code_search_link
      
        # Controls whether JSON workflow parameters are validated against provided
        # schemas before and/or after this task's execution.
        # Corresponds to the JSON property `defaultJsonValidationOption`
        # @return [String]
        attr_accessor :default_json_validation_option
      
        # Contains the initial configuration of the task with default values set. For
        # now, The string should be compatible to an ASCII-proto format.
        # Corresponds to the JSON property `defaultSpec`
        # @return [String]
        attr_accessor :default_spec
      
        # In a few sentences, describe the purpose and usage of the task.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The string name to show on the task list on the Workflow editor screen. This
        # should be a very short, one to two words name for the task. (e.g. "Send Mail")
        # Corresponds to the JSON property `descriptiveName`
        # @return [String]
        attr_accessor :descriptive_name
      
        # Snippet of markdown documentation to embed in the RHP for this task.
        # Corresponds to the JSON property `docMarkdown`
        # @return [String]
        attr_accessor :doc_markdown
      
        # 
        # Corresponds to the JSON property `externalCategory`
        # @return [String]
        attr_accessor :external_category
      
        # Sequence with which the task in specific category to be displayed in task
        # discovery panel for external users.
        # Corresponds to the JSON property `externalCategorySequence`
        # @return [Fixnum]
        attr_accessor :external_category_sequence
      
        # External-facing documention embedded in the RHP for this task.
        # Corresponds to the JSON property `externalDocHtml`
        # @return [String]
        attr_accessor :external_doc_html
      
        # Doc link for external-facing documentation (separate from g3doc).
        # Corresponds to the JSON property `externalDocLink`
        # @return [String]
        attr_accessor :external_doc_link
      
        # DEPRECATED: Use external_doc_html.
        # Corresponds to the JSON property `externalDocMarkdown`
        # @return [String]
        attr_accessor :external_doc_markdown
      
        # URL to the associated G3 Doc for the task if available
        # Corresponds to the JSON property `g3DocLink`
        # @return [String]
        attr_accessor :g3_doc_link
      
        # URL to gstatic image icon for this task. This icon shows up on the task list
        # panel along with the task name in the Workflow Editor screen. Use the 24p, 2x,
        # gray color icon image format.
        # Corresponds to the JSON property `iconLink`
        # @return [String]
        attr_accessor :icon_link
      
        # The deprecation status of the current task. Default value is false;
        # Corresponds to the JSON property `isDeprecated`
        # @return [Boolean]
        attr_accessor :is_deprecated
        alias_method :is_deprecated?, :is_deprecated
      
        # The actual class name or the annotated name of the task. Task Author should
        # initialize this field with value from the getName() method of the Task class.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # External-facing documention for standalone IP in pantheon embedded in the RHP
        # for this task. Non null only if different from external_doc_html
        # Corresponds to the JSON property `standaloneExternalDocHtml`
        # @return [String]
        attr_accessor :standalone_external_doc_html
      
        # Allows author to indicate if the task is ready to use or not. If not set, then
        # it will default to INACTIVE.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `system`
        # @return [String]
        attr_accessor :system
      
        # A set of tags that pertain to a particular task. This can be used to improve
        # the searchability of tasks with several names ("REST Caller" vs. "Call REST
        # Endpoint") or to help users find tasks based on related words.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_task_name = args[:active_task_name] if args.key?(:active_task_name)
          @admins = args[:admins] if args.key?(:admins)
          @category = args[:category] if args.key?(:category)
          @code_search_link = args[:code_search_link] if args.key?(:code_search_link)
          @default_json_validation_option = args[:default_json_validation_option] if args.key?(:default_json_validation_option)
          @default_spec = args[:default_spec] if args.key?(:default_spec)
          @description = args[:description] if args.key?(:description)
          @descriptive_name = args[:descriptive_name] if args.key?(:descriptive_name)
          @doc_markdown = args[:doc_markdown] if args.key?(:doc_markdown)
          @external_category = args[:external_category] if args.key?(:external_category)
          @external_category_sequence = args[:external_category_sequence] if args.key?(:external_category_sequence)
          @external_doc_html = args[:external_doc_html] if args.key?(:external_doc_html)
          @external_doc_link = args[:external_doc_link] if args.key?(:external_doc_link)
          @external_doc_markdown = args[:external_doc_markdown] if args.key?(:external_doc_markdown)
          @g3_doc_link = args[:g3_doc_link] if args.key?(:g3_doc_link)
          @icon_link = args[:icon_link] if args.key?(:icon_link)
          @is_deprecated = args[:is_deprecated] if args.key?(:is_deprecated)
          @name = args[:name] if args.key?(:name)
          @standalone_external_doc_html = args[:standalone_external_doc_html] if args.key?(:standalone_external_doc_html)
          @status = args[:status] if args.key?(:status)
          @system = args[:system] if args.key?(:system)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Admins are owners of a Task, and have all permissions on a particular task
      # identified by the task name. By default, Eventbus periodically scans all task
      # metadata and syncs (adds) any new admins defined here to Zanzibar.
      class EnterpriseCrmEventbusProtoTaskMetadataAdmin
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `googleGroupEmail`
        # @return [String]
        attr_accessor :google_group_email
      
        # 
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_group_email = args[:google_group_email] if args.key?(:google_group_email)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # Task authors would use this type to configure the UI for a particular task by
      # specifying what UI config modules should be included to compose the UI. Learn
      # more about config module framework:
      class EnterpriseCrmEventbusProtoTaskUiConfig
        include Google::Apis::Core::Hashable
      
        # Configurations of included config modules.
        # Corresponds to the JSON property `taskUiModuleConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTaskUiModuleConfig>]
        attr_accessor :task_ui_module_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @task_ui_module_configs = args[:task_ui_module_configs] if args.key?(:task_ui_module_configs)
        end
      end
      
      # Task author would use this type to configure a config module.
      class EnterpriseCrmEventbusProtoTaskUiModuleConfig
        include Google::Apis::Core::Hashable
      
        # ID of the config module.
        # Corresponds to the JSON property `moduleId`
        # @return [String]
        attr_accessor :module_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @module_id = args[:module_id] if args.key?(:module_id)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoTeardown
        include Google::Apis::Core::Hashable
      
        # Required.
        # Corresponds to the JSON property `teardownTaskConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTeardownTaskConfig>]
        attr_accessor :teardown_task_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @teardown_task_configs = args[:teardown_task_configs] if args.key?(:teardown_task_configs)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoTeardownTaskConfig
        include Google::Apis::Core::Hashable
      
        # The creator's email address.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # Required. Unique identifier of the teardown task within this Config. We use
        # this field as the identifier to find next teardown tasks.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The teardown task that is next in line to be executed. We support only
        # sequential execution of teardown tasks (i.e. no branching).
        # Corresponds to the JSON property `nextTeardownTask`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoNextTeardownTask]
        attr_accessor :next_teardown_task
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventParameters]
        attr_accessor :parameters
      
        # LINT.IfChange This message is used for storing key value pair properties for
        # each Event / Task in the EventBus.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventBusProperties]
        attr_accessor :properties
      
        # Required. Implementation class name.
        # Corresponds to the JSON property `teardownTaskImplementationClassName`
        # @return [String]
        attr_accessor :teardown_task_implementation_class_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @name = args[:name] if args.key?(:name)
          @next_teardown_task = args[:next_teardown_task] if args.key?(:next_teardown_task)
          @parameters = args[:parameters] if args.key?(:parameters)
          @properties = args[:properties] if args.key?(:properties)
          @teardown_task_implementation_class_name = args[:teardown_task_implementation_class_name] if args.key?(:teardown_task_implementation_class_name)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoToken
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
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
      
      # 
      class EnterpriseCrmEventbusProtoTransformExpression
        include Google::Apis::Core::Hashable
      
        # Initial value upon which to perform transformations.
        # Corresponds to the JSON property `initialValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBaseValue]
        attr_accessor :initial_value
      
        # Transformations to be applied sequentially.
        # Corresponds to the JSON property `transformationFunctions`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoFunction>]
        attr_accessor :transformation_functions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @initial_value = args[:initial_value] if args.key?(:initial_value)
          @transformation_functions = args[:transformation_functions] if args.key?(:transformation_functions)
        end
      end
      
      # 
      class EnterpriseCrmEventbusProtoTriggerCriteria
        include Google::Apis::Core::Hashable
      
        # Required. Standard filter expression, when true the workflow will be executed.
        # If there's no trigger_criteria_task_implementation_class_name specified, the
        # condition will be validated directly.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventParameters]
        attr_accessor :parameters
      
        # Optional. Implementation class name. The class should implement the “TypedTask”
        # interface.
        # Corresponds to the JSON property `triggerCriteriaTaskImplementationClassName`
        # @return [String]
        attr_accessor :trigger_criteria_task_implementation_class_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @parameters = args[:parameters] if args.key?(:parameters)
          @trigger_criteria_task_implementation_class_name = args[:trigger_criteria_task_implementation_class_name] if args.key?(:trigger_criteria_task_implementation_class_name)
        end
      end
      
      # Used for define type for values. Currently supported value types include int,
      # string, double, array, and any proto message.
      class EnterpriseCrmEventbusProtoValueType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # 
        # Corresponds to the JSON property `doubleArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoDoubleArray]
        attr_accessor :double_array
      
        # 
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # 
        # Corresponds to the JSON property `intArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoIntArray]
        attr_accessor :int_array
      
        # 
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # 
        # Corresponds to the JSON property `protoValue`
        # @return [Hash<String,Object>]
        attr_accessor :proto_value
      
        # 
        # Corresponds to the JSON property `stringArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoStringArray]
        attr_accessor :string_array
      
        # 
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @double_array = args[:double_array] if args.key?(:double_array)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int_array = args[:int_array] if args.key?(:int_array)
          @int_value = args[:int_value] if args.key?(:int_value)
          @proto_value = args[:proto_value] if args.key?(:proto_value)
          @string_array = args[:string_array] if args.key?(:string_array)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Message to be used to configure custom alerting in the `@code EventConfig`
      # protos for an event.
      class EnterpriseCrmEventbusProtoWorkflowAlertConfig
        include Google::Apis::Core::Hashable
      
        # For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24
        # hours.
        # Corresponds to the JSON property `aggregationPeriod`
        # @return [String]
        attr_accessor :aggregation_period
      
        # Set to false by default. When set to true, the metrics are not aggregated or
        # pushed to Monarch for this workflow alert.
        # Corresponds to the JSON property `alertDisabled`
        # @return [Boolean]
        attr_accessor :alert_disabled
        alias_method :alert_disabled?, :alert_disabled
      
        # A name to identify this alert. This will be displayed in the alert subject. If
        # set, this name should be unique within the scope of the workflow.
        # Corresponds to the JSON property `alertName`
        # @return [String]
        attr_accessor :alert_name
      
        # Client associated with this alert configuration.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION
        # metrics. This member should be used to specify what duration value the metrics
        # should exceed for the alert to trigger.
        # Corresponds to the JSON property `durationThresholdMs`
        # @return [Fixnum]
        attr_accessor :duration_threshold_ms
      
        # List of error enums for alerts.
        # Corresponds to the JSON property `errorEnumList`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList]
        attr_accessor :error_enum_list
      
        # 
        # Corresponds to the JSON property `metricType`
        # @return [String]
        attr_accessor :metric_type
      
        # For how many contiguous aggregation periods should the expected min or max be
        # violated for the alert to be fired.
        # Corresponds to the JSON property `numAggregationPeriods`
        # @return [Fixnum]
        attr_accessor :num_aggregation_periods
      
        # For either events or tasks, depending on the type of alert, count only final
        # attempts, not retries.
        # Corresponds to the JSON property `onlyFinalAttempt`
        # @return [Boolean]
        attr_accessor :only_final_attempt
        alias_method :only_final_attempt?, :only_final_attempt
      
        # Link to a playbook for resolving the issue that triggered this alert.
        # Corresponds to the JSON property `playbookUrl`
        # @return [String]
        attr_accessor :playbook_url
      
        # The threshold type, whether lower(expected_min) or upper(expected_max), for
        # which this alert is being configured. If value falls below expected_min or
        # exceeds expected_max, an alert will be fired.
        # Corresponds to the JSON property `thresholdType`
        # @return [String]
        attr_accessor :threshold_type
      
        # The threshold value of the metric, above or below which the alert should be
        # triggered. See EventAlertConfig or TaskAlertConfig for the different alert
        # metric types in each case. For the *RATE metrics, one or both of these fields
        # may be set. Zero is the default value and can be left at that. For *
        # PERCENTILE_DURATION metrics, one or both of these fields may be set, and also,
        # the duration threshold value should be specified in the threshold_duration_ms
        # member below. For *AVERAGE_DURATION metrics, these fields should not be set at
        # all. A different member, threshold_duration_ms, must be set in the
        # EventAlertConfig or the TaskAlertConfig.
        # Corresponds to the JSON property `thresholdValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue]
        attr_accessor :threshold_value
      
        # List of error enums for alerts.
        # Corresponds to the JSON property `warningEnumList`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList]
        attr_accessor :warning_enum_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_period = args[:aggregation_period] if args.key?(:aggregation_period)
          @alert_disabled = args[:alert_disabled] if args.key?(:alert_disabled)
          @alert_name = args[:alert_name] if args.key?(:alert_name)
          @client_id = args[:client_id] if args.key?(:client_id)
          @duration_threshold_ms = args[:duration_threshold_ms] if args.key?(:duration_threshold_ms)
          @error_enum_list = args[:error_enum_list] if args.key?(:error_enum_list)
          @metric_type = args[:metric_type] if args.key?(:metric_type)
          @num_aggregation_periods = args[:num_aggregation_periods] if args.key?(:num_aggregation_periods)
          @only_final_attempt = args[:only_final_attempt] if args.key?(:only_final_attempt)
          @playbook_url = args[:playbook_url] if args.key?(:playbook_url)
          @threshold_type = args[:threshold_type] if args.key?(:threshold_type)
          @threshold_value = args[:threshold_value] if args.key?(:threshold_value)
          @warning_enum_list = args[:warning_enum_list] if args.key?(:warning_enum_list)
        end
      end
      
      # Stats for the requested dimensions: QPS, duration, and error/warning rate
      class EnterpriseCrmEventbusStats
        include Google::Apis::Core::Hashable
      
        # Dimensions that these stats have been aggregated on.
        # Corresponds to the JSON property `dimensions`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusStatsDimensions]
        attr_accessor :dimensions
      
        # Average duration in seconds.
        # Corresponds to the JSON property `durationInSeconds`
        # @return [Float]
        attr_accessor :duration_in_seconds
      
        # Average error rate.
        # Corresponds to the JSON property `errorRate`
        # @return [Float]
        attr_accessor :error_rate
      
        # Queries per second.
        # Corresponds to the JSON property `qps`
        # @return [Float]
        attr_accessor :qps
      
        # Average warning rate.
        # Corresponds to the JSON property `warningRate`
        # @return [Float]
        attr_accessor :warning_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @duration_in_seconds = args[:duration_in_seconds] if args.key?(:duration_in_seconds)
          @error_rate = args[:error_rate] if args.key?(:error_rate)
          @qps = args[:qps] if args.key?(:qps)
          @warning_rate = args[:warning_rate] if args.key?(:warning_rate)
        end
      end
      
      # 
      class EnterpriseCrmEventbusStatsDimensions
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Whether to include or exclude the enums matching the regex.
        # Corresponds to the JSON property `enumFilterType`
        # @return [String]
        attr_accessor :enum_filter_type
      
        # 
        # Corresponds to the JSON property `errorEnumString`
        # @return [String]
        attr_accessor :error_enum_string
      
        # 
        # Corresponds to the JSON property `retryAttempt`
        # @return [String]
        attr_accessor :retry_attempt
      
        # 
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        # 
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        # Stats have been or will be aggregated on set fields for any semantically-
        # meaningful combination.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # 
        # Corresponds to the JSON property `warningEnumString`
        # @return [String]
        attr_accessor :warning_enum_string
      
        # 
        # Corresponds to the JSON property `workflowId`
        # @return [String]
        attr_accessor :workflow_id
      
        # 
        # Corresponds to the JSON property `workflowName`
        # @return [String]
        attr_accessor :workflow_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @enum_filter_type = args[:enum_filter_type] if args.key?(:enum_filter_type)
          @error_enum_string = args[:error_enum_string] if args.key?(:error_enum_string)
          @retry_attempt = args[:retry_attempt] if args.key?(:retry_attempt)
          @task_name = args[:task_name] if args.key?(:task_name)
          @task_number = args[:task_number] if args.key?(:task_number)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @warning_enum_string = args[:warning_enum_string] if args.key?(:warning_enum_string)
          @workflow_id = args[:workflow_id] if args.key?(:workflow_id)
          @workflow_name = args[:workflow_name] if args.key?(:workflow_name)
        end
      end
      
      # 
      class EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValues`
        # @return [Array<Boolean>]
        attr_accessor :boolean_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_values = args[:boolean_values] if args.key?(:boolean_values)
        end
      end
      
      # 
      class EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `doubleValues`
        # @return [Array<Float>]
        attr_accessor :double_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_values = args[:double_values] if args.key?(:double_values)
        end
      end
      
      # Contains the details of the execution info of this event: this includes the
      # tasks execution details plus the event execution statistics. Next available id:
      # 12
      class EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails
        include Google::Apis::Core::Hashable
      
        # If the execution is manually canceled, this field will contain the reason for
        # cancellation.
        # Corresponds to the JSON property `cancelReason`
        # @return [String]
        attr_accessor :cancel_reason
      
        # 
        # Corresponds to the JSON property `eventAttemptStats`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>]
        attr_accessor :event_attempt_stats
      
        # After snapshot migration, this field will no longer be populated, but old
        # execution snapshots will still be accessible.
        # Corresponds to the JSON property `eventExecutionSnapshot`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot>]
        attr_accessor :event_execution_snapshot
      
        # Total size of all event_execution_snapshots for an execution
        # Corresponds to the JSON property `eventExecutionSnapshotsSize`
        # @return [Fixnum]
        attr_accessor :event_execution_snapshots_size
      
        # The execution state of this event.
        # Corresponds to the JSON property `eventExecutionState`
        # @return [String]
        attr_accessor :event_execution_state
      
        # Indicates the number of times the execution has restarted from the beginning.
        # Corresponds to the JSON property `eventRetriesFromBeginningCount`
        # @return [Fixnum]
        attr_accessor :event_retries_from_beginning_count
      
        # The log file path (aka. cns address) for this event.
        # Corresponds to the JSON property `logFilePath`
        # @return [String]
        attr_accessor :log_file_path
      
        # The network address (aka. bns address) that indicates where the event executor
        # is running.
        # Corresponds to the JSON property `networkAddress`
        # @return [String]
        attr_accessor :network_address
      
        # Next scheduled execution time in case the execution status was RETRY_ON_HOLD.
        # Corresponds to the JSON property `nextExecutionTime`
        # @return [Fixnum]
        attr_accessor :next_execution_time
      
        # Used internally and shouldn't be exposed to users. A counter for the cron job
        # to record how many times this event is in in_process state but don't have a
        # lock consecutively/
        # Corresponds to the JSON property `ryeLockUnheldCount`
        # @return [Fixnum]
        attr_accessor :rye_lock_unheld_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_reason = args[:cancel_reason] if args.key?(:cancel_reason)
          @event_attempt_stats = args[:event_attempt_stats] if args.key?(:event_attempt_stats)
          @event_execution_snapshot = args[:event_execution_snapshot] if args.key?(:event_execution_snapshot)
          @event_execution_snapshots_size = args[:event_execution_snapshots_size] if args.key?(:event_execution_snapshots_size)
          @event_execution_state = args[:event_execution_state] if args.key?(:event_execution_state)
          @event_retries_from_beginning_count = args[:event_retries_from_beginning_count] if args.key?(:event_retries_from_beginning_count)
          @log_file_path = args[:log_file_path] if args.key?(:log_file_path)
          @network_address = args[:network_address] if args.key?(:network_address)
          @next_execution_time = args[:next_execution_time] if args.key?(:next_execution_time)
          @rye_lock_unheld_count = args[:rye_lock_unheld_count] if args.key?(:rye_lock_unheld_count)
        end
      end
      
      # Contains all the execution details for a workflow instance. Next available id:
      # 27
      class EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo
        include Google::Apis::Core::Hashable
      
        # The event data user sends as request.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Cloud Logging details, selected by the user for the integration version (
        # workflow). This message field will be also used in ExecutionInfo, to indicate
        # the CloudLoggingDetails config at the time of workflow (integration version)
        # execution, since this field value can be changed for an unpublished workflow.
        # Corresponds to the JSON property `cloudLoggingDetails`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoCloudLoggingDetails]
        attr_accessor :cloud_logging_details
      
        # Auto-generated.
        # Corresponds to the JSON property `createTime`
        # @return [Fixnum]
        attr_accessor :create_time
      
        # Registered ids for errors, as "oneof" enums. Each task or logical grouping of
        # tasks may share the same enum.
        # Corresponds to the JSON property `errorCode`
        # @return [Google::Apis::IntegrationsV1::CrmlogErrorCode]
        attr_accessor :error_code
      
        # Errors, warnings, and informationals associated with the workflow/task. The
        # order in which the errors were added by the workflow/task is maintained.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoErrorDetail>]
        attr_accessor :errors
      
        # Contains the details of the execution info of this event: this includes the
        # tasks execution details plus the event execution statistics. Next available id:
        # 12
        # Corresponds to the JSON property `eventExecutionDetails`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails]
        attr_accessor :event_execution_details
      
        # Auto-generated primary key.
        # Corresponds to the JSON property `eventExecutionInfoId`
        # @return [String]
        attr_accessor :event_execution_info_id
      
        # Message that helps aggregate all sub-executions triggered by one execution and
        # keeps track of child-parent relationships.
        # Corresponds to the JSON property `executionTraceInfo`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoExecutionTraceInfo]
        attr_accessor :execution_trace_info
      
        # User-defined label that annotates the executed integration version.
        # Corresponds to the JSON property `integrationVersionUserLabel`
        # @return [String]
        attr_accessor :integration_version_user_label
      
        # Auto-generated.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [Fixnum]
        attr_accessor :last_modified_time
      
        # The ways user posts this event.
        # Corresponds to the JSON property `postMethod`
        # @return [String]
        attr_accessor :post_method
      
        # Which Google product the execution_info belongs to. If not set, the
        # execution_info belongs to Integration Platform by default.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # Contains the details of the execution info: this includes the replay reason
        # and replay tree connecting executions in a parent-child relationship
        # Corresponds to the JSON property `replayInfo`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo]
        attr_accessor :replay_info
      
        # Optional. This is used to de-dup incoming request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `requestParams`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventParameters]
        attr_accessor :request_params
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `responseParams`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventParameters]
        attr_accessor :response_params
      
        # Workflow snapshot number.
        # Corresponds to the JSON property `snapshotNumber`
        # @return [Fixnum]
        attr_accessor :snapshot_number
      
        # Tenant this event is created. Used to reschedule the event to correct tenant.
        # Corresponds to the JSON property `tenant`
        # @return [String]
        attr_accessor :tenant
      
        # The trigger id of the workflow trigger config. If both trigger_id and
        # client_id is present, the workflow is executed from the start tasks provided
        # by the matching trigger config otherwise it is executed from the default start
        # tasks.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # Required. Pointer to the workflow it is executing.
        # Corresponds to the JSON property `workflowId`
        # @return [String]
        attr_accessor :workflow_id
      
        # Name of the workflow.
        # Corresponds to the JSON property `workflowName`
        # @return [String]
        attr_accessor :workflow_name
      
        # Time interval in seconds to schedule retry of workflow in manifold when
        # workflow is already running
        # Corresponds to the JSON property `workflowRetryBackoffIntervalSeconds`
        # @return [Fixnum]
        attr_accessor :workflow_retry_backoff_interval_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @cloud_logging_details = args[:cloud_logging_details] if args.key?(:cloud_logging_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error_code = args[:error_code] if args.key?(:error_code)
          @errors = args[:errors] if args.key?(:errors)
          @event_execution_details = args[:event_execution_details] if args.key?(:event_execution_details)
          @event_execution_info_id = args[:event_execution_info_id] if args.key?(:event_execution_info_id)
          @execution_trace_info = args[:execution_trace_info] if args.key?(:execution_trace_info)
          @integration_version_user_label = args[:integration_version_user_label] if args.key?(:integration_version_user_label)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @post_method = args[:post_method] if args.key?(:post_method)
          @product = args[:product] if args.key?(:product)
          @replay_info = args[:replay_info] if args.key?(:replay_info)
          @request_id = args[:request_id] if args.key?(:request_id)
          @request_params = args[:request_params] if args.key?(:request_params)
          @response_params = args[:response_params] if args.key?(:response_params)
          @snapshot_number = args[:snapshot_number] if args.key?(:snapshot_number)
          @tenant = args[:tenant] if args.key?(:tenant)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @workflow_id = args[:workflow_id] if args.key?(:workflow_id)
          @workflow_name = args[:workflow_name] if args.key?(:workflow_name)
          @workflow_retry_backoff_interval_seconds = args[:workflow_retry_backoff_interval_seconds] if args.key?(:workflow_retry_backoff_interval_seconds)
        end
      end
      
      # Contains the details of the execution info: this includes the replay reason
      # and replay tree connecting executions in a parent-child relationship
      class EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo
        include Google::Apis::Core::Hashable
      
        # If this execution is a replay of another execution, then this field contains
        # the original execution id.
        # Corresponds to the JSON property `originalExecutionInfoId`
        # @return [String]
        attr_accessor :original_execution_info_id
      
        # Replay mode for the execution
        # Corresponds to the JSON property `replayMode`
        # @return [String]
        attr_accessor :replay_mode
      
        # reason for replay
        # Corresponds to the JSON property `replayReason`
        # @return [String]
        attr_accessor :replay_reason
      
        # If this execution has been replayed, then this field contains the execution
        # ids of the replayed executions.
        # Corresponds to the JSON property `replayedExecutionInfoIds`
        # @return [Array<String>]
        attr_accessor :replayed_execution_info_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_execution_info_id = args[:original_execution_info_id] if args.key?(:original_execution_info_id)
          @replay_mode = args[:replay_mode] if args.key?(:replay_mode)
          @replay_reason = args[:replay_reason] if args.key?(:replay_reason)
          @replayed_execution_info_ids = args[:replayed_execution_info_ids] if args.key?(:replayed_execution_info_ids)
        end
      end
      
      # 
      class EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot
        include Google::Apis::Core::Hashable
      
        # Indicates "right after which checkpoint task's execution" this snapshot is
        # taken.
        # Corresponds to the JSON property `checkpointTaskNumber`
        # @return [String]
        attr_accessor :checkpoint_task_number
      
        # All of the computed conditions that been calculated.
        # Corresponds to the JSON property `conditionResults`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoConditionResult>]
        attr_accessor :condition_results
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `diffParams`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventParameters]
        attr_accessor :diff_params
      
        # Points to the event execution info this snapshot belongs to.
        # Corresponds to the JSON property `eventExecutionInfoId`
        # @return [String]
        attr_accessor :event_execution_info_id
      
        # Auto-generated. Used as primary key for EventExecutionSnapshots table.
        # Corresponds to the JSON property `eventExecutionSnapshotId`
        # @return [String]
        attr_accessor :event_execution_snapshot_id
      
        # 
        # Corresponds to the JSON property `eventExecutionSnapshotMetadata`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata]
        attr_accessor :event_execution_snapshot_metadata
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `eventParams`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventParameters]
        attr_accessor :event_params
      
        # Indicates when this snapshot is taken.
        # Corresponds to the JSON property `snapshotTime`
        # @return [Fixnum]
        attr_accessor :snapshot_time
      
        # All of the task execution details at the given point of time.
        # Corresponds to the JSON property `taskExecutionDetails`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTaskExecutionDetails>]
        attr_accessor :task_execution_details
      
        # The task name associated with this snapshot. Could be empty.
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checkpoint_task_number = args[:checkpoint_task_number] if args.key?(:checkpoint_task_number)
          @condition_results = args[:condition_results] if args.key?(:condition_results)
          @diff_params = args[:diff_params] if args.key?(:diff_params)
          @event_execution_info_id = args[:event_execution_info_id] if args.key?(:event_execution_info_id)
          @event_execution_snapshot_id = args[:event_execution_snapshot_id] if args.key?(:event_execution_snapshot_id)
          @event_execution_snapshot_metadata = args[:event_execution_snapshot_metadata] if args.key?(:event_execution_snapshot_metadata)
          @event_params = args[:event_params] if args.key?(:event_params)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
          @task_execution_details = args[:task_execution_details] if args.key?(:task_execution_details)
          @task_name = args[:task_name] if args.key?(:task_name)
        end
      end
      
      # LINT.IfChange This message is used for processing and persisting (when
      # applicable) key value pair parameters for each event in the event bus. Please
      # see
      class EnterpriseCrmFrontendsEventbusProtoEventParameters
        include Google::Apis::Core::Hashable
      
        # Parameters are a part of Event and can be used to communicate between
        # different tasks that are part of the same workflow execution.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterEntry>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # 
      class EnterpriseCrmFrontendsEventbusProtoIntParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `intValues`
        # @return [Array<Fixnum>]
        attr_accessor :int_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @int_values = args[:int_values] if args.key?(:int_values)
        end
      end
      
      # Key-value pair of EventBus task parameters. Next id: 13
      class EnterpriseCrmFrontendsEventbusProtoParamSpecEntry
        include Google::Apis::Core::Hashable
      
        # The FQCN of the Java object this represents. A string, for example, would be "
        # java.lang.String". If this is "java.lang.Object", the parameter can be of any
        # type.
        # Corresponds to the JSON property `className`
        # @return [String]
        attr_accessor :class_name
      
        # If it is a collection of objects, this would be the FCQN of every individual
        # element in the collection. If this is "java.lang.Object", the parameter is a
        # collection of any type.
        # Corresponds to the JSON property `collectionElementClassName`
        # @return [String]
        attr_accessor :collection_element_class_name
      
        # Optional fields, such as help text and other useful info.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParamSpecEntryConfig]
        attr_accessor :config
      
        # The data type of the parameter.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # To support various types of parameter values. Next available id: 14
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterValueType]
        attr_accessor :default_value
      
        # If set, this entry is deprecated, so further use of this parameter should be
        # prohibited.
        # Corresponds to the JSON property `isDeprecated`
        # @return [Boolean]
        attr_accessor :is_deprecated
        alias_method :is_deprecated?, :is_deprecated
      
        # 
        # Corresponds to the JSON property `isOutput`
        # @return [Boolean]
        attr_accessor :is_output
        alias_method :is_output?, :is_output
      
        # If the data_type is JSON_VALUE, then this will define its schema.
        # Corresponds to the JSON property `jsonSchema`
        # @return [String]
        attr_accessor :json_schema
      
        # Key is used to retrieve the corresponding parameter value. This should be
        # unique for a given task. These parameters must be predefined in the workflow
        # definition.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Populated if this represents a proto or proto array.
        # Corresponds to the JSON property `protoDef`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition]
        attr_accessor :proto_def
      
        # If set, the user must provide an input value for this parameter.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # Rule used to validate inputs (individual values and collection elements) for
        # this parameter.
        # Corresponds to the JSON property `validationRule`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoParamSpecEntryValidationRule]
        attr_accessor :validation_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @class_name = args[:class_name] if args.key?(:class_name)
          @collection_element_class_name = args[:collection_element_class_name] if args.key?(:collection_element_class_name)
          @config = args[:config] if args.key?(:config)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @is_deprecated = args[:is_deprecated] if args.key?(:is_deprecated)
          @is_output = args[:is_output] if args.key?(:is_output)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @key = args[:key] if args.key?(:key)
          @proto_def = args[:proto_def] if args.key?(:proto_def)
          @required = args[:required] if args.key?(:required)
          @validation_rule = args[:validation_rule] if args.key?(:validation_rule)
        end
      end
      
      # 
      class EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Key-value pair of EventBus parameters.
      class EnterpriseCrmFrontendsEventbusProtoParameterEntry
        include Google::Apis::Core::Hashable
      
        # Explicitly getting the type of the parameter.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Key is used to retrieve the corresponding parameter value. This should be
        # unique for a given fired event. These parameters must be predefined in the
        # workflow definition.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # True if this parameter should be masked in the logs
        # Corresponds to the JSON property `masked`
        # @return [Boolean]
        attr_accessor :masked
        alias_method :masked?, :masked
      
        # To support various types of parameter values. Next available id: 14
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterValueType]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @key = args[:key] if args.key?(:key)
          @masked = args[:masked] if args.key?(:masked)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A generic multi-map that holds key value pairs. They keys and values can be of
      # any type, unless specified.
      class EnterpriseCrmFrontendsEventbusProtoParameterMap
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterMapEntry>]
        attr_accessor :entries
      
        # Option to specify key value type for all entries of the map. If provided then
        # field types for all entries must conform to this.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # 
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @key_type = args[:key_type] if args.key?(:key_type)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Entry is a pair of key and value.
      class EnterpriseCrmFrontendsEventbusProtoParameterMapEntry
        include Google::Apis::Core::Hashable
      
        # Field represents either the key or value in an entry.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterMapField]
        attr_accessor :key
      
        # Field represents either the key or value in an entry.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterMapField]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Field represents either the key or value in an entry.
      class EnterpriseCrmFrontendsEventbusProtoParameterMapField
        include Google::Apis::Core::Hashable
      
        # To support various types of parameter values. Next available id: 14
        # Corresponds to the JSON property `literalValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterValueType]
        attr_accessor :literal_value
      
        # Referencing one of the WF variables.
        # Corresponds to the JSON property `referenceKey`
        # @return [String]
        attr_accessor :reference_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @literal_value = args[:literal_value] if args.key?(:literal_value)
          @reference_key = args[:reference_key] if args.key?(:reference_key)
        end
      end
      
      # To support various types of parameter values. Next available id: 14
      class EnterpriseCrmFrontendsEventbusProtoParameterValueType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray]
        attr_accessor :boolean_array
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # 
        # Corresponds to the JSON property `doubleArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray]
        attr_accessor :double_array
      
        # 
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # 
        # Corresponds to the JSON property `intArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoIntParameterArray]
        attr_accessor :int_array
      
        # 
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # 
        # Corresponds to the JSON property `jsonValue`
        # @return [String]
        attr_accessor :json_value
      
        # 
        # Corresponds to the JSON property `protoArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoProtoParameterArray]
        attr_accessor :proto_array
      
        # 
        # Corresponds to the JSON property `protoValue`
        # @return [Hash<String,Object>]
        attr_accessor :proto_value
      
        # 
        # Corresponds to the JSON property `serializedObjectValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter]
        attr_accessor :serialized_object_value
      
        # 
        # Corresponds to the JSON property `stringArray`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoStringParameterArray]
        attr_accessor :string_array
      
        # 
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_array = args[:boolean_array] if args.key?(:boolean_array)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @double_array = args[:double_array] if args.key?(:double_array)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int_array = args[:int_array] if args.key?(:int_array)
          @int_value = args[:int_value] if args.key?(:int_value)
          @json_value = args[:json_value] if args.key?(:json_value)
          @proto_array = args[:proto_array] if args.key?(:proto_array)
          @proto_value = args[:proto_value] if args.key?(:proto_value)
          @serialized_object_value = args[:serialized_object_value] if args.key?(:serialized_object_value)
          @string_array = args[:string_array] if args.key?(:string_array)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # 
      class EnterpriseCrmFrontendsEventbusProtoProtoParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `protoValues`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :proto_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proto_values = args[:proto_values] if args.key?(:proto_values)
        end
      end
      
      # Next available id: 4
      class EnterpriseCrmFrontendsEventbusProtoRollbackStrategy
        include Google::Apis::Core::Hashable
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventParameters]
        attr_accessor :parameters
      
        # Required. This is the name of the task that needs to be executed upon rollback
        # of this task.
        # Corresponds to the JSON property `rollbackTaskImplementationClassName`
        # @return [String]
        attr_accessor :rollback_task_implementation_class_name
      
        # Required. These are the tasks numbers of the tasks whose `rollback_strategy.
        # rollback_task_implementation_class_name` needs to be executed upon failure of
        # this task.
        # Corresponds to the JSON property `taskNumbersToRollback`
        # @return [Array<String>]
        attr_accessor :task_numbers_to_rollback
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
          @rollback_task_implementation_class_name = args[:rollback_task_implementation_class_name] if args.key?(:rollback_task_implementation_class_name)
          @task_numbers_to_rollback = args[:task_numbers_to_rollback] if args.key?(:task_numbers_to_rollback)
        end
      end
      
      # 
      class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `objectValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :object_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_value = args[:object_value] if args.key?(:object_value)
        end
      end
      
      # 
      class EnterpriseCrmFrontendsEventbusProtoStringParameterArray
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `stringValues`
        # @return [Array<String>]
        attr_accessor :string_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @string_values = args[:string_values] if args.key?(:string_values)
        end
      end
      
      # The task configuration details. This is not the implementation of Task. There
      # might be multiple TaskConfigs for the same Task.
      class EnterpriseCrmFrontendsEventbusProtoTaskConfig
        include Google::Apis::Core::Hashable
      
        # Alert configurations on error rate, warning rate, number of runs, durations,
        # etc.
        # Corresponds to the JSON property `alertConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTaskAlertConfig>]
        attr_accessor :alert_configs
      
        # Optional. Determines the number of times the task will be retried on failure
        # and with what retry strategy. This is applicable for synchronous calls to
        # Eventbus alone (Post).
        # Corresponds to the JSON property `conditionalFailurePolicies`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoConditionalFailurePolicies]
        attr_accessor :conditional_failure_policies
      
        # Auto-generated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The creator's email address. Auto-generated from the user's email.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # User-provided description intended to give more business context about the
        # task.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If this config contains a TypedTask, allow validation to succeed if an input
        # is read from the output of another TypedTask whose output type is declared as
        # a superclass of the requested input type. For instance, if the previous task
        # declares an output of type Message, any task with this flag enabled will pass
        # validation when attempting to read any proto Message type from the resultant
        # Event parameter.
        # Corresponds to the JSON property `disableStrictTypeValidation`
        # @return [Boolean]
        attr_accessor :disable_strict_type_validation
        alias_method :disable_strict_type_validation?, :disable_strict_type_validation
      
        # Optional Error catcher id of the error catch flow which will be executed when
        # execution error happens in the task
        # Corresponds to the JSON property `errorCatcherId`
        # @return [String]
        attr_accessor :error_catcher_id
      
        # 
        # Corresponds to the JSON property `externalTaskType`
        # @return [String]
        attr_accessor :external_task_type
      
        # Policy that defines the task retry logic and failure type. If no FailurePolicy
        # is defined for a task, all its dependent tasks will not be executed (i.e, a `
        # retry_strategy` of NONE will be applied).
        # Corresponds to the JSON property `failurePolicy`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoFailurePolicy]
        attr_accessor :failure_policy
      
        # The number of edges leading into this TaskConfig.
        # Corresponds to the JSON property `incomingEdgeCount`
        # @return [Fixnum]
        attr_accessor :incoming_edge_count
      
        # If set, overrides the option configured in the Task implementation class.
        # Corresponds to the JSON property `jsonValidationOption`
        # @return [String]
        attr_accessor :json_validation_option
      
        # User-provided label that is attached to this TaskConfig in the UI.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Auto-generated.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # The set of tasks that are next in line to be executed as per the execution
        # graph defined for the parent event, specified by `event_config_id`. Each of
        # these next tasks are executed only if the condition associated with them
        # evaluates to true.
        # Corresponds to the JSON property `nextTasks`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoNextTask>]
        attr_accessor :next_tasks
      
        # The policy dictating the execution of the next set of tasks for the current
        # task.
        # Corresponds to the JSON property `nextTasksExecutionPolicy`
        # @return [String]
        attr_accessor :next_tasks_execution_policy
      
        # The customized parameters the user can pass to this task.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterEntry>]
        attr_accessor :parameters
      
        # Represents two-dimensional positions.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoCoordinate]
        attr_accessor :position
      
        # Optional. Standard filter expression evaluated before execution. Independent
        # of other conditions and tasks. Can be used to enable rollout. e.g. "rollout(5)"
        # will only allow 5% of incoming traffic to task.
        # Corresponds to the JSON property `precondition`
        # @return [String]
        attr_accessor :precondition
      
        # Optional. User-provided label that is attached to precondition in the UI.
        # Corresponds to the JSON property `preconditionLabel`
        # @return [String]
        attr_accessor :precondition_label
      
        # Next available id: 4
        # Corresponds to the JSON property `rollbackStrategy`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoRollbackStrategy]
        attr_accessor :rollback_strategy
      
        # Policy that dictates the behavior for the task after it completes successfully.
        # Corresponds to the JSON property `successPolicy`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoSuccessPolicy]
        attr_accessor :success_policy
      
        # Policy that defines the task retry logic and failure type. If no FailurePolicy
        # is defined for a task, all its dependent tasks will not be executed (i.e, a `
        # retry_strategy` of NONE will be applied).
        # Corresponds to the JSON property `synchronousCallFailurePolicy`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoFailurePolicy]
        attr_accessor :synchronous_call_failure_policy
      
        # Contains a task's metadata and associated information. Next available id: 7
        # Corresponds to the JSON property `taskEntity`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoTaskEntity]
        attr_accessor :task_entity
      
        # The policy dictating the execution strategy of this task.
        # Corresponds to the JSON property `taskExecutionStrategy`
        # @return [String]
        attr_accessor :task_execution_strategy
      
        # The name for the task.
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        # REQUIRED: the identifier of this task within its parent event config,
        # specified by the client. This should be unique among all the tasks belong to
        # the same event config. We use this field as the identifier to find next tasks (
        # via field `next_tasks.task_number`).
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        # A string template that allows user to configure task parameters (with either
        # literal default values or tokens which will be resolved at execution time) for
        # the task. It will eventually replace the old "parameters" field.
        # Corresponds to the JSON property `taskSpec`
        # @return [String]
        attr_accessor :task_spec
      
        # Used to define task-template name if task is of type task-template
        # Corresponds to the JSON property `taskTemplateName`
        # @return [String]
        attr_accessor :task_template_name
      
        # Defines the type of the task
        # Corresponds to the JSON property `taskType`
        # @return [String]
        attr_accessor :task_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_configs = args[:alert_configs] if args.key?(:alert_configs)
          @conditional_failure_policies = args[:conditional_failure_policies] if args.key?(:conditional_failure_policies)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @description = args[:description] if args.key?(:description)
          @disable_strict_type_validation = args[:disable_strict_type_validation] if args.key?(:disable_strict_type_validation)
          @error_catcher_id = args[:error_catcher_id] if args.key?(:error_catcher_id)
          @external_task_type = args[:external_task_type] if args.key?(:external_task_type)
          @failure_policy = args[:failure_policy] if args.key?(:failure_policy)
          @incoming_edge_count = args[:incoming_edge_count] if args.key?(:incoming_edge_count)
          @json_validation_option = args[:json_validation_option] if args.key?(:json_validation_option)
          @label = args[:label] if args.key?(:label)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @next_tasks = args[:next_tasks] if args.key?(:next_tasks)
          @next_tasks_execution_policy = args[:next_tasks_execution_policy] if args.key?(:next_tasks_execution_policy)
          @parameters = args[:parameters] if args.key?(:parameters)
          @position = args[:position] if args.key?(:position)
          @precondition = args[:precondition] if args.key?(:precondition)
          @precondition_label = args[:precondition_label] if args.key?(:precondition_label)
          @rollback_strategy = args[:rollback_strategy] if args.key?(:rollback_strategy)
          @success_policy = args[:success_policy] if args.key?(:success_policy)
          @synchronous_call_failure_policy = args[:synchronous_call_failure_policy] if args.key?(:synchronous_call_failure_policy)
          @task_entity = args[:task_entity] if args.key?(:task_entity)
          @task_execution_strategy = args[:task_execution_strategy] if args.key?(:task_execution_strategy)
          @task_name = args[:task_name] if args.key?(:task_name)
          @task_number = args[:task_number] if args.key?(:task_number)
          @task_spec = args[:task_spec] if args.key?(:task_spec)
          @task_template_name = args[:task_template_name] if args.key?(:task_template_name)
          @task_type = args[:task_type] if args.key?(:task_type)
        end
      end
      
      # Contains a task's metadata and associated information. Next available id: 7
      class EnterpriseCrmFrontendsEventbusProtoTaskEntity
        include Google::Apis::Core::Hashable
      
        # True if the task has conflict with vpcsc
        # Corresponds to the JSON property `disabledForVpcSc`
        # @return [Boolean]
        attr_accessor :disabled_for_vpc_sc
        alias_method :disabled_for_vpc_sc?, :disabled_for_vpc_sc
      
        # TaskMetadata are attributes that are associated to every common Task we have.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTaskMetadata]
        attr_accessor :metadata
      
        # Declarations for inputs/outputs for a TypedTask. This is also associated with
        # the METADATA mask.
        # Corresponds to the JSON property `paramSpecs`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage]
        attr_accessor :param_specs
      
        # Stats for the requested dimensions: QPS, duration, and error/warning rate
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusStats]
        attr_accessor :stats
      
        # Defines the type of the task
        # Corresponds to the JSON property `taskType`
        # @return [String]
        attr_accessor :task_type
      
        # Task authors would use this type to configure the UI for a particular task by
        # specifying what UI config modules should be included to compose the UI. Learn
        # more about config module framework:
        # Corresponds to the JSON property `uiConfig`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTaskUiConfig]
        attr_accessor :ui_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled_for_vpc_sc = args[:disabled_for_vpc_sc] if args.key?(:disabled_for_vpc_sc)
          @metadata = args[:metadata] if args.key?(:metadata)
          @param_specs = args[:param_specs] if args.key?(:param_specs)
          @stats = args[:stats] if args.key?(:stats)
          @task_type = args[:task_type] if args.key?(:task_type)
          @ui_config = args[:ui_config] if args.key?(:ui_config)
        end
      end
      
      # Configuration detail of a trigger. Next available id: 22
      class EnterpriseCrmFrontendsEventbusProtoTriggerConfig
        include Google::Apis::Core::Hashable
      
        # An alert threshold configuration for the [trigger + client + workflow] tuple.
        # If these values are not specified in the trigger config, default values will
        # be populated by the system. Note that there must be exactly one alert
        # threshold configured per [client + trigger + workflow] when published.
        # Corresponds to the JSON property `alertConfig`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoWorkflowAlertConfig>]
        attr_accessor :alert_config
      
        # Cloud Scheduler Trigger configuration
        # Corresponds to the JSON property `cloudSchedulerConfig`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoCloudSchedulerConfig]
        attr_accessor :cloud_scheduler_config
      
        # User-provided description intended to give more business context about the
        # task.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The list of client ids which are enabled to execute the workflow
        # using this trigger. In other words, these clients have the workflow execution
        # privledges for this trigger. For API trigger, the client id in the incoming
        # request is validated against the list of enabled clients. For non-API triggers,
        # one workflow execution is triggered on behalf of each enabled client.
        # Corresponds to the JSON property `enabledClients`
        # @return [Array<String>]
        attr_accessor :enabled_clients
      
        # Optional Error catcher id of the error catch flow which will be executed when
        # execution error happens in the task
        # Corresponds to the JSON property `errorCatcherId`
        # @return [String]
        attr_accessor :error_catcher_id
      
        # Variables names mapped to api trigger.
        # Corresponds to the JSON property `inputVariables`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables]
        attr_accessor :input_variables
      
        # The user created label for a particular trigger.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Dictates how next tasks will be executed.
        # Corresponds to the JSON property `nextTasksExecutionPolicy`
        # @return [String]
        attr_accessor :next_tasks_execution_policy
      
        # Variables names mapped to api trigger.
        # Corresponds to the JSON property `outputVariables`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables]
        attr_accessor :output_variables
      
        # Optional. If set to true, any upcoming requests for this trigger config will
        # be paused and the executions will be resumed later when the flag is reset. The
        # workflow to which this trigger config belongs has to be in ACTIVE status for
        # the executions to be paused or resumed.
        # Corresponds to the JSON property `pauseWorkflowExecutions`
        # @return [Boolean]
        attr_accessor :pause_workflow_executions
        alias_method :pause_workflow_executions?, :pause_workflow_executions
      
        # Represents two-dimensional positions.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoCoordinate]
        attr_accessor :position
      
        # Configurable properties of the trigger, not to be confused with workflow
        # parameters. E.g. "name" is a property for API triggers and "subscription" is a
        # property for Cloud Pubsub triggers.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Set of tasks numbers from where the workflow execution is started by this
        # trigger. If this is empty, then workflow is executed with default start tasks.
        # In the list of start tasks, none of two tasks can have direct ancestor-
        # descendant relationships (i.e. in a same workflow execution graph).
        # Corresponds to the JSON property `startTasks`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoNextTask>]
        attr_accessor :start_tasks
      
        # Optional. When set, Eventbus will run the task specified in the
        # trigger_criteria and validate the result using the trigger_criteria.condition,
        # and only execute the workflow when result is true.
        # Corresponds to the JSON property `triggerCriteria`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTriggerCriteria]
        attr_accessor :trigger_criteria
      
        # The backend trigger ID.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # Optional. Name of the trigger This is added to identify the type of trigger.
        # This is avoid the logic on triggerId to identify the trigger_type and push the
        # same to monitoring.
        # Corresponds to the JSON property `triggerName`
        # @return [String]
        attr_accessor :trigger_name
      
        # Required. A number to uniquely identify each trigger config within the
        # workflow on UI.
        # Corresponds to the JSON property `triggerNumber`
        # @return [String]
        attr_accessor :trigger_number
      
        # 
        # Corresponds to the JSON property `triggerType`
        # @return [String]
        attr_accessor :trigger_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_config = args[:alert_config] if args.key?(:alert_config)
          @cloud_scheduler_config = args[:cloud_scheduler_config] if args.key?(:cloud_scheduler_config)
          @description = args[:description] if args.key?(:description)
          @enabled_clients = args[:enabled_clients] if args.key?(:enabled_clients)
          @error_catcher_id = args[:error_catcher_id] if args.key?(:error_catcher_id)
          @input_variables = args[:input_variables] if args.key?(:input_variables)
          @label = args[:label] if args.key?(:label)
          @next_tasks_execution_policy = args[:next_tasks_execution_policy] if args.key?(:next_tasks_execution_policy)
          @output_variables = args[:output_variables] if args.key?(:output_variables)
          @pause_workflow_executions = args[:pause_workflow_executions] if args.key?(:pause_workflow_executions)
          @position = args[:position] if args.key?(:position)
          @properties = args[:properties] if args.key?(:properties)
          @start_tasks = args[:start_tasks] if args.key?(:start_tasks)
          @trigger_criteria = args[:trigger_criteria] if args.key?(:trigger_criteria)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @trigger_name = args[:trigger_name] if args.key?(:trigger_name)
          @trigger_number = args[:trigger_number] if args.key?(:trigger_number)
          @trigger_type = args[:trigger_type] if args.key?(:trigger_type)
        end
      end
      
      # Variables names mapped to api trigger.
      class EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables
        include Google::Apis::Core::Hashable
      
        # Optional. List of variable names.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # 
      class EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry
        include Google::Apis::Core::Hashable
      
        # Attributes are additional options that can be associated with each event
        # property. For more information, see
        # Corresponds to the JSON property `attributes`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoAttributes]
        attr_accessor :attributes
      
        # Child parameters nested within this parameter. This field only applies to
        # protobuf parameters
        # Corresponds to the JSON property `children`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>]
        attr_accessor :children
      
        # Indicates whether this variable contains large data and need to be uploaded to
        # Cloud Storage.
        # Corresponds to the JSON property `containsLargeData`
        # @return [Boolean]
        attr_accessor :contains_large_data
        alias_method :contains_large_data?, :contains_large_data
      
        # The data type of the parameter.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # To support various types of parameter values. Next available id: 14
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterValueType]
        attr_accessor :default_value
      
        # Optional. The description about the parameter
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Specifies the input/output type for the parameter.
        # Corresponds to the JSON property `inOutType`
        # @return [String]
        attr_accessor :in_out_type
      
        # Whether this parameter is a transient parameter.
        # Corresponds to the JSON property `isTransient`
        # @return [Boolean]
        attr_accessor :is_transient
        alias_method :is_transient?, :is_transient
      
        # This schema will be used to validate runtime JSON-typed values of this
        # parameter.
        # Corresponds to the JSON property `jsonSchema`
        # @return [String]
        attr_accessor :json_schema
      
        # Key is used to retrieve the corresponding parameter value. This should be
        # unique for a given fired event. These parameters must be predefined in the
        # workflow definition.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The name (without prefix) to be displayed in the UI for this parameter. E.g.
        # if the key is "foo.bar.myName", then the name would be "myName".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a node identifier (type + id). Next highest id: 3
        # Corresponds to the JSON property `producedBy`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoNodeIdentifier]
        attr_accessor :produced_by
      
        # 
        # Corresponds to the JSON property `producer`
        # @return [String]
        attr_accessor :producer
      
        # The name of the protobuf type if the parameter has a protobuf data type.
        # Corresponds to the JSON property `protoDefName`
        # @return [String]
        attr_accessor :proto_def_name
      
        # If the data type is of type proto or proto array, this field needs to be
        # populated with the fully qualified proto name. This message, for example,
        # would be "enterprise.crm.frontends.eventbus.proto.WorkflowParameterEntry".
        # Corresponds to the JSON property `protoDefPath`
        # @return [String]
        attr_accessor :proto_def_path
      
        # 
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @children = args[:children] if args.key?(:children)
          @contains_large_data = args[:contains_large_data] if args.key?(:contains_large_data)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @in_out_type = args[:in_out_type] if args.key?(:in_out_type)
          @is_transient = args[:is_transient] if args.key?(:is_transient)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @key = args[:key] if args.key?(:key)
          @name = args[:name] if args.key?(:name)
          @produced_by = args[:produced_by] if args.key?(:produced_by)
          @producer = args[:producer] if args.key?(:producer)
          @proto_def_name = args[:proto_def_name] if args.key?(:proto_def_name)
          @proto_def_path = args[:proto_def_path] if args.key?(:proto_def_path)
          @required = args[:required] if args.key?(:required)
        end
      end
      
      # LINT.IfChange This is the frontend version of WorkflowParameters. It's exactly
      # like the backend version except that instead of flattening protobuf parameters
      # and treating every field and subfield of a protobuf parameter as a separate
      # parameter, the fields/subfields of a protobuf parameter will be nested as "
      # children" (see 'children' field below) parameters of the parent parameter.
      # Please refer to enterprise/crm/eventbus/proto/workflow_parameters.proto for
      # more information about WorkflowParameters.
      class EnterpriseCrmFrontendsEventbusProtoWorkflowParameters
        include Google::Apis::Core::Hashable
      
        # Parameters are a part of Event and can be used to communiticate between
        # different tasks that are part of the same workflow execution.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # AuthConfig defines details of a authentication type.
      class GoogleCloudConnectorsV1AuthConfig
        include Google::Apis::Core::Hashable
      
        # Optional. List containing additional auth configs.
        # Corresponds to the JSON property `additionalVariables`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1ConfigVariable>]
        attr_accessor :additional_variables
      
        # Optional. Identifier key for auth config
        # Corresponds to the JSON property `authKey`
        # @return [String]
        attr_accessor :auth_key
      
        # Optional. The type of authentication configured.
        # Corresponds to the JSON property `authType`
        # @return [String]
        attr_accessor :auth_type
      
        # Parameters to support Oauth 2.0 Auth Code Grant Authentication. See https://
        # www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
        # Corresponds to the JSON property `oauth2AuthCodeFlow`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow]
        attr_accessor :oauth2_auth_code_flow
      
        # Parameters to support Oauth 2.0 Auth Code Grant Authentication using Google
        # Provided OAuth Client. See https://tools.ietf.org/html/rfc6749#section-1.3.1
        # for more details.
        # Corresponds to the JSON property `oauth2AuthCodeFlowGoogleManaged`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged]
        attr_accessor :oauth2_auth_code_flow_google_managed
      
        # Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See
        # https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
        # Corresponds to the JSON property `oauth2ClientCredentials`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials]
        attr_accessor :oauth2_client_credentials
      
        # Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization
        # Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more
        # details.
        # Corresponds to the JSON property `oauth2JwtBearer`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer]
        attr_accessor :oauth2_jwt_bearer
      
        # Parameters to support Ssh public key Authentication.
        # Corresponds to the JSON property `sshPublicKey`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfigSshPublicKey]
        attr_accessor :ssh_public_key
      
        # Parameters to support Username and Password Authentication.
        # Corresponds to the JSON property `userPassword`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfigUserPassword]
        attr_accessor :user_password
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_variables = args[:additional_variables] if args.key?(:additional_variables)
          @auth_key = args[:auth_key] if args.key?(:auth_key)
          @auth_type = args[:auth_type] if args.key?(:auth_type)
          @oauth2_auth_code_flow = args[:oauth2_auth_code_flow] if args.key?(:oauth2_auth_code_flow)
          @oauth2_auth_code_flow_google_managed = args[:oauth2_auth_code_flow_google_managed] if args.key?(:oauth2_auth_code_flow_google_managed)
          @oauth2_client_credentials = args[:oauth2_client_credentials] if args.key?(:oauth2_client_credentials)
          @oauth2_jwt_bearer = args[:oauth2_jwt_bearer] if args.key?(:oauth2_jwt_bearer)
          @ssh_public_key = args[:ssh_public_key] if args.key?(:ssh_public_key)
          @user_password = args[:user_password] if args.key?(:user_password)
        end
      end
      
      # Parameters to support Oauth 2.0 Auth Code Grant Authentication. See https://
      # www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
      class GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow
        include Google::Apis::Core::Hashable
      
        # Optional. Authorization code to be exchanged for access and refresh tokens.
        # Corresponds to the JSON property `authCode`
        # @return [String]
        attr_accessor :auth_code
      
        # Optional. Auth URL for Authorization Code Flow
        # Corresponds to the JSON property `authUri`
        # @return [String]
        attr_accessor :auth_uri
      
        # Optional. Client ID for user-provided OAuth app.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientSecret`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :client_secret
      
        # Optional. Whether to enable PKCE when the user performs the auth code flow.
        # Corresponds to the JSON property `enablePkce`
        # @return [Boolean]
        attr_accessor :enable_pkce
        alias_method :enable_pkce?, :enable_pkce
      
        # Optional. PKCE verifier to be used during the auth code exchange.
        # Corresponds to the JSON property `pkceVerifier`
        # @return [String]
        attr_accessor :pkce_verifier
      
        # Optional. Redirect URI to be provided during the auth code exchange.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        # Optional. Scopes the connection will request when the user performs the auth
        # code flow.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_code = args[:auth_code] if args.key?(:auth_code)
          @auth_uri = args[:auth_uri] if args.key?(:auth_uri)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @enable_pkce = args[:enable_pkce] if args.key?(:enable_pkce)
          @pkce_verifier = args[:pkce_verifier] if args.key?(:pkce_verifier)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # Parameters to support Oauth 2.0 Auth Code Grant Authentication using Google
      # Provided OAuth Client. See https://tools.ietf.org/html/rfc6749#section-1.3.1
      # for more details.
      class GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged
        include Google::Apis::Core::Hashable
      
        # Optional. Authorization code to be exchanged for access and refresh tokens.
        # Corresponds to the JSON property `authCode`
        # @return [String]
        attr_accessor :auth_code
      
        # Optional. Redirect URI to be provided during the auth code exchange.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        # Required. Scopes the connection will request when the user performs the auth
        # code flow.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_code = args[:auth_code] if args.key?(:auth_code)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See
      # https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
      class GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials
        include Google::Apis::Core::Hashable
      
        # Optional. The client identifier.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientSecret`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :client_secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
        end
      end
      
      # Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization
      # Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more
      # details.
      class GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer
        include Google::Apis::Core::Hashable
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientKey`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :client_key
      
        # JWT claims used for the jwt-bearer authorization grant.
        # Corresponds to the JSON property `jwtClaims`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims]
        attr_accessor :jwt_claims
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_key = args[:client_key] if args.key?(:client_key)
          @jwt_claims = args[:jwt_claims] if args.key?(:jwt_claims)
        end
      end
      
      # JWT claims used for the jwt-bearer authorization grant.
      class GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims
        include Google::Apis::Core::Hashable
      
        # Optional. Value for the "aud" claim.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # Optional. Value for the "iss" claim.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # Optional. Value for the "sub" claim.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @issuer = args[:issuer] if args.key?(:issuer)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # Parameters to support Ssh public key Authentication.
      class GoogleCloudConnectorsV1AuthConfigSshPublicKey
        include Google::Apis::Core::Hashable
      
        # Optional. Format of SSH Client cert.
        # Corresponds to the JSON property `certType`
        # @return [String]
        attr_accessor :cert_type
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `sshClientCert`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :ssh_client_cert
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `sshClientCertPass`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :ssh_client_cert_pass
      
        # Optional. The user account used to authenticate.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_type = args[:cert_type] if args.key?(:cert_type)
          @ssh_client_cert = args[:ssh_client_cert] if args.key?(:ssh_client_cert)
          @ssh_client_cert_pass = args[:ssh_client_cert_pass] if args.key?(:ssh_client_cert_pass)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Parameters to support Username and Password Authentication.
      class GoogleCloudConnectorsV1AuthConfigUserPassword
        include Google::Apis::Core::Hashable
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `password`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :password
      
        # Optional. Username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Billing config for the connection.
      class GoogleCloudConnectorsV1BillingConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Billing category for the connector.
        # Corresponds to the JSON property `billingCategory`
        # @return [String]
        attr_accessor :billing_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_category = args[:billing_category] if args.key?(:billing_category)
        end
      end
      
      # ConfigVariable represents a configuration variable present in a Connection. or
      # AuthConfig.
      class GoogleCloudConnectorsV1ConfigVariable
        include Google::Apis::Core::Hashable
      
        # Value is a bool.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Encryption Key value.
        # Corresponds to the JSON property `encryptionKeyValue`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1EncryptionKey]
        attr_accessor :encryption_key_value
      
        # Value is an integer
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Optional. Key of the config variable.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `secretValue`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :secret_value
      
        # Value is a string.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @encryption_key_value = args[:encryption_key_value] if args.key?(:encryption_key_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @key = args[:key] if args.key?(:key)
          @secret_value = args[:secret_value] if args.key?(:secret_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Connection represents an instance of connector.
      class GoogleCloudConnectorsV1Connection
        include Google::Apis::Core::Hashable
      
        # Optional. Async operations enabled for the connection. If Async Operations is
        # enabled, Connection allows the customers to initiate async long running
        # operations using the actions API.
        # Corresponds to the JSON property `asyncOperationsEnabled`
        # @return [Boolean]
        attr_accessor :async_operations_enabled
        alias_method :async_operations_enabled?, :async_operations_enabled
      
        # AuthConfig defines details of a authentication type.
        # Corresponds to the JSON property `authConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfig]
        attr_accessor :auth_config
      
        # Optional. Auth override enabled for the connection. If Auth Override is
        # enabled, Connection allows the backend service auth to be overridden in the
        # entities/actions API.
        # Corresponds to the JSON property `authOverrideEnabled`
        # @return [Boolean]
        attr_accessor :auth_override_enabled
        alias_method :auth_override_enabled?, :auth_override_enabled
      
        # Billing config for the connection.
        # Corresponds to the JSON property `billingConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1BillingConfig]
        attr_accessor :billing_config
      
        # Optional. Configuration for configuring the connection with an external system.
        # Corresponds to the JSON property `configVariables`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1ConfigVariable>]
        attr_accessor :config_variables
      
        # Output only. Connection revision. This field is only updated when the
        # connection is created or updated by User.
        # Corresponds to the JSON property `connectionRevision`
        # @return [Fixnum]
        attr_accessor :connection_revision
      
        # Required. Connector version on which the connection is created. The format is:
        # projects/*/locations/*/providers/*/connectors/*/versions/* Only global
        # location is supported for ConnectorVersion resource.
        # Corresponds to the JSON property `connectorVersion`
        # @return [String]
        attr_accessor :connector_version
      
        # This configuration provides infra configs like rate limit threshold which need
        # to be configurable for every connector version
        # Corresponds to the JSON property `connectorVersionInfraConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1ConnectorVersionInfraConfig]
        attr_accessor :connector_version_infra_config
      
        # Output only. Flag to mark the version indicating the launch stage.
        # Corresponds to the JSON property `connectorVersionLaunchStage`
        # @return [String]
        attr_accessor :connector_version_launch_stage
      
        # Output only. Created time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Configuration of the Connector's destination. Only accepted for
        # Connectors that accepts user defined destination(s).
        # Corresponds to the JSON property `destinationConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1DestinationConfig>]
        attr_accessor :destination_configs
      
        # Output only. GCR location where the envoy image is stored. formatted like: gcr.
        # io/`bucketName`/`imageName`
        # Corresponds to the JSON property `envoyImageLocation`
        # @return [String]
        attr_accessor :envoy_image_location
      
        # AuthConfig defines details of a authentication type.
        # Corresponds to the JSON property `euaOauthAuthConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfig]
        attr_accessor :eua_oauth_auth_config
      
        # Eventing Configuration of a connection next: 19
        # Corresponds to the JSON property `eventingConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1EventingConfig]
        attr_accessor :eventing_config
      
        # Optional. Eventing enablement type. Will be nil if eventing is not enabled.
        # Corresponds to the JSON property `eventingEnablementType`
        # @return [String]
        attr_accessor :eventing_enablement_type
      
        # Eventing runtime data has the details related to eventing managed by the
        # system.
        # Corresponds to the JSON property `eventingRuntimeData`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1EventingRuntimeData]
        attr_accessor :eventing_runtime_data
      
        # Optional. Fallback on admin credentials for the connection. If this both
        # auth_override_enabled and fallback_on_admin_credentials are set to true, the
        # connection will use the admin credentials if the dynamic auth header is not
        # present during auth override.
        # Corresponds to the JSON property `fallbackOnAdminCredentials`
        # @return [Boolean]
        attr_accessor :fallback_on_admin_credentials
        alias_method :fallback_on_admin_credentials?, :fallback_on_admin_credentials
      
        # Output only. The name of the Hostname of the Service Directory service with
        # TLS.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Output only. GCR location where the runtime image is stored. formatted like:
        # gcr.io/`bucketName`/`imageName`
        # Corresponds to the JSON property `imageLocation`
        # @return [String]
        attr_accessor :image_location
      
        # Output only. Is trusted tester program enabled for the project.
        # Corresponds to the JSON property `isTrustedTester`
        # @return [Boolean]
        attr_accessor :is_trusted_tester
        alias_method :is_trusted_tester?, :is_trusted_tester
      
        # Optional. Resource labels to represent user-provided metadata. Refer to cloud
        # documentation on labels for more details. https://cloud.google.com/compute/
        # docs/labeling-resources
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Determines whether or no a connection is locked. If locked, a reason must be
        # specified.
        # Corresponds to the JSON property `lockConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1LockConfig]
        attr_accessor :lock_config
      
        # Log configuration for the connection.
        # Corresponds to the JSON property `logConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1LogConfig]
        attr_accessor :log_config
      
        # Output only. Resource name of the Connection. Format: projects/`project`/
        # locations/`location`/connections/`connection`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Node configuration for the connection.
        # Corresponds to the JSON property `nodeConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1NodeConfig]
        attr_accessor :node_config
      
        # Optional. Service account needed for runtime plane to access Google Cloud
        # resources.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. The name of the Service Directory service name. Used for Private
        # Harpoon to resolve the ILB address. e.g. "projects/cloud-connectors-e2e-
        # testing/locations/us-central1/namespaces/istio-system/services/istio-
        # ingressgateway-connectors"
        # Corresponds to the JSON property `serviceDirectory`
        # @return [String]
        attr_accessor :service_directory
      
        # SSL Configuration of a connection
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1SslConfig]
        attr_accessor :ssl_config
      
        # ConnectionStatus indicates the state of the connection.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1ConnectionStatus]
        attr_accessor :status
      
        # Output only. This subscription type enum states the subscription type of the
        # project.
        # Corresponds to the JSON property `subscriptionType`
        # @return [String]
        attr_accessor :subscription_type
      
        # Optional. Suspended indicates if a user has suspended a connection or not.
        # Corresponds to the JSON property `suspended`
        # @return [Boolean]
        attr_accessor :suspended
        alias_method :suspended?, :suspended
      
        # Output only. The name of the Service Directory service with TLS.
        # Corresponds to the JSON property `tlsServiceDirectory`
        # @return [String]
        attr_accessor :tls_service_directory
      
        # Optional. Traffic shaping configuration for the connection.
        # Corresponds to the JSON property `trafficShapingConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1TrafficShapingConfig>]
        attr_accessor :traffic_shaping_configs
      
        # Output only. Updated time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @async_operations_enabled = args[:async_operations_enabled] if args.key?(:async_operations_enabled)
          @auth_config = args[:auth_config] if args.key?(:auth_config)
          @auth_override_enabled = args[:auth_override_enabled] if args.key?(:auth_override_enabled)
          @billing_config = args[:billing_config] if args.key?(:billing_config)
          @config_variables = args[:config_variables] if args.key?(:config_variables)
          @connection_revision = args[:connection_revision] if args.key?(:connection_revision)
          @connector_version = args[:connector_version] if args.key?(:connector_version)
          @connector_version_infra_config = args[:connector_version_infra_config] if args.key?(:connector_version_infra_config)
          @connector_version_launch_stage = args[:connector_version_launch_stage] if args.key?(:connector_version_launch_stage)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination_configs = args[:destination_configs] if args.key?(:destination_configs)
          @envoy_image_location = args[:envoy_image_location] if args.key?(:envoy_image_location)
          @eua_oauth_auth_config = args[:eua_oauth_auth_config] if args.key?(:eua_oauth_auth_config)
          @eventing_config = args[:eventing_config] if args.key?(:eventing_config)
          @eventing_enablement_type = args[:eventing_enablement_type] if args.key?(:eventing_enablement_type)
          @eventing_runtime_data = args[:eventing_runtime_data] if args.key?(:eventing_runtime_data)
          @fallback_on_admin_credentials = args[:fallback_on_admin_credentials] if args.key?(:fallback_on_admin_credentials)
          @host = args[:host] if args.key?(:host)
          @image_location = args[:image_location] if args.key?(:image_location)
          @is_trusted_tester = args[:is_trusted_tester] if args.key?(:is_trusted_tester)
          @labels = args[:labels] if args.key?(:labels)
          @lock_config = args[:lock_config] if args.key?(:lock_config)
          @log_config = args[:log_config] if args.key?(:log_config)
          @name = args[:name] if args.key?(:name)
          @node_config = args[:node_config] if args.key?(:node_config)
          @service_account = args[:service_account] if args.key?(:service_account)
          @service_directory = args[:service_directory] if args.key?(:service_directory)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
          @status = args[:status] if args.key?(:status)
          @subscription_type = args[:subscription_type] if args.key?(:subscription_type)
          @suspended = args[:suspended] if args.key?(:suspended)
          @tls_service_directory = args[:tls_service_directory] if args.key?(:tls_service_directory)
          @traffic_shaping_configs = args[:traffic_shaping_configs] if args.key?(:traffic_shaping_configs)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # ConnectionStatus indicates the state of the connection.
      class GoogleCloudConnectorsV1ConnectionStatus
        include Google::Apis::Core::Hashable
      
        # Description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # State.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Status provides detailed information for the state.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # This configuration provides infra configs like rate limit threshold which need
      # to be configurable for every connector version
      class GoogleCloudConnectorsV1ConnectorVersionInfraConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The window used for ratelimiting runtime requests to connections.
        # Corresponds to the JSON property `connectionRatelimitWindowSeconds`
        # @return [Fixnum]
        attr_accessor :connection_ratelimit_window_seconds
      
        # Output only. Indicates whether connector is deployed on GKE/CloudRun
        # Corresponds to the JSON property `deploymentModel`
        # @return [String]
        attr_accessor :deployment_model
      
        # Output only. Status of the deployment model migration.
        # Corresponds to the JSON property `deploymentModelMigrationState`
        # @return [String]
        attr_accessor :deployment_model_migration_state
      
        # Autoscaling config for connector deployment system metrics.
        # Corresponds to the JSON property `hpaConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1HpaConfig]
        attr_accessor :hpa_config
      
        # Output only. Max QPS supported for internal requests originating from Connd.
        # Corresponds to the JSON property `internalclientRatelimitThreshold`
        # @return [Fixnum]
        attr_accessor :internalclient_ratelimit_threshold
      
        # Output only. Max instance request concurrency.
        # Corresponds to the JSON property `maxInstanceRequestConcurrency`
        # @return [Fixnum]
        attr_accessor :max_instance_request_concurrency
      
        # Output only. Max QPS supported by the connector version before throttling of
        # requests.
        # Corresponds to the JSON property `ratelimitThreshold`
        # @return [Fixnum]
        attr_accessor :ratelimit_threshold
      
        # Resource limits defined for connection pods of a given connector type.
        # Corresponds to the JSON property `resourceLimits`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1ResourceLimits]
        attr_accessor :resource_limits
      
        # Resource requests defined for connection pods of a given connector type.
        # Corresponds to the JSON property `resourceRequests`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1ResourceRequests]
        attr_accessor :resource_requests
      
        # Output only. The name of shared connector deployment.
        # Corresponds to the JSON property `sharedDeployment`
        # @return [String]
        attr_accessor :shared_deployment
      
        # Output only. Status of the TLS migration.
        # Corresponds to the JSON property `tlsMigrationState`
        # @return [String]
        attr_accessor :tls_migration_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_ratelimit_window_seconds = args[:connection_ratelimit_window_seconds] if args.key?(:connection_ratelimit_window_seconds)
          @deployment_model = args[:deployment_model] if args.key?(:deployment_model)
          @deployment_model_migration_state = args[:deployment_model_migration_state] if args.key?(:deployment_model_migration_state)
          @hpa_config = args[:hpa_config] if args.key?(:hpa_config)
          @internalclient_ratelimit_threshold = args[:internalclient_ratelimit_threshold] if args.key?(:internalclient_ratelimit_threshold)
          @max_instance_request_concurrency = args[:max_instance_request_concurrency] if args.key?(:max_instance_request_concurrency)
          @ratelimit_threshold = args[:ratelimit_threshold] if args.key?(:ratelimit_threshold)
          @resource_limits = args[:resource_limits] if args.key?(:resource_limits)
          @resource_requests = args[:resource_requests] if args.key?(:resource_requests)
          @shared_deployment = args[:shared_deployment] if args.key?(:shared_deployment)
          @tls_migration_state = args[:tls_migration_state] if args.key?(:tls_migration_state)
        end
      end
      
      # 
      class GoogleCloudConnectorsV1Destination
        include Google::Apis::Core::Hashable
      
        # For publicly routable host.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The port is the target port number that is accepted by the destination.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # PSC service attachments. Format: projects/*/regions/*/serviceAttachments/*
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @port = args[:port] if args.key?(:port)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
        end
      end
      
      # Define the Connectors target endpoint.
      class GoogleCloudConnectorsV1DestinationConfig
        include Google::Apis::Core::Hashable
      
        # The destinations for the key.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Destination>]
        attr_accessor :destinations
      
        # The key is the destination identifier that is supported by the Connector.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destinations = args[:destinations] if args.key?(:destinations)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Encryption Key value.
      class GoogleCloudConnectorsV1EncryptionKey
        include Google::Apis::Core::Hashable
      
        # Optional. The [KMS key name] with which the content of the Operation is
        # encrypted. The expected format: `projects/*/locations/*/keyRings/*/cryptoKeys/*
        # `. Will be empty string if google managed.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Data enrichment configuration.
      class GoogleCloudConnectorsV1EnrichmentConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Append ACL to the event.
        # Corresponds to the JSON property `appendAcl`
        # @return [Boolean]
        attr_accessor :append_acl
        alias_method :append_acl?, :append_acl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @append_acl = args[:append_acl] if args.key?(:append_acl)
        end
      end
      
      # Eventing Configuration of a connection next: 19
      class GoogleCloudConnectorsV1EventingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Additional eventing related field values
        # Corresponds to the JSON property `additionalVariables`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1ConfigVariable>]
        attr_accessor :additional_variables
      
        # AuthConfig defines details of a authentication type.
        # Corresponds to the JSON property `authConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfig]
        attr_accessor :auth_config
      
        # Dead Letter configuration details provided by the user.
        # Corresponds to the JSON property `deadLetterConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1EventingConfigDeadLetterConfig]
        attr_accessor :dead_letter_config
      
        # Data enrichment configuration.
        # Corresponds to the JSON property `enrichmentConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1EnrichmentConfig]
        attr_accessor :enrichment_config
      
        # Optional. Enrichment Enabled.
        # Corresponds to the JSON property `enrichmentEnabled`
        # @return [Boolean]
        attr_accessor :enrichment_enabled
        alias_method :enrichment_enabled?, :enrichment_enabled
      
        # Optional. Ingress endpoint of the event listener. This is used only when
        # private connectivity is enabled.
        # Corresponds to the JSON property `eventsListenerIngressEndpoint`
        # @return [String]
        attr_accessor :events_listener_ingress_endpoint
      
        # AuthConfig defines details of a authentication type.
        # Corresponds to the JSON property `listenerAuthConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1AuthConfig]
        attr_accessor :listener_auth_config
      
        # Optional. List of projects to be allowlisted for the service attachment
        # created in the tenant project for eventing ingress.
        # Corresponds to the JSON property `privateConnectivityAllowlistedProjects`
        # @return [Array<String>]
        attr_accessor :private_connectivity_allowlisted_projects
      
        # Optional. Private Connectivity Enabled.
        # Corresponds to the JSON property `privateConnectivityEnabled`
        # @return [Boolean]
        attr_accessor :private_connectivity_enabled
        alias_method :private_connectivity_enabled?, :private_connectivity_enabled
      
        # Define the Connectors target endpoint.
        # Corresponds to the JSON property `proxyDestinationConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1DestinationConfig]
        attr_accessor :proxy_destination_config
      
        # Define the Connectors target endpoint.
        # Corresponds to the JSON property `registrationDestinationConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1DestinationConfig]
        attr_accessor :registration_destination_config
      
        # SSL Configuration of a connection
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1SslConfig]
        attr_accessor :ssl_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_variables = args[:additional_variables] if args.key?(:additional_variables)
          @auth_config = args[:auth_config] if args.key?(:auth_config)
          @dead_letter_config = args[:dead_letter_config] if args.key?(:dead_letter_config)
          @enrichment_config = args[:enrichment_config] if args.key?(:enrichment_config)
          @enrichment_enabled = args[:enrichment_enabled] if args.key?(:enrichment_enabled)
          @events_listener_ingress_endpoint = args[:events_listener_ingress_endpoint] if args.key?(:events_listener_ingress_endpoint)
          @listener_auth_config = args[:listener_auth_config] if args.key?(:listener_auth_config)
          @private_connectivity_allowlisted_projects = args[:private_connectivity_allowlisted_projects] if args.key?(:private_connectivity_allowlisted_projects)
          @private_connectivity_enabled = args[:private_connectivity_enabled] if args.key?(:private_connectivity_enabled)
          @proxy_destination_config = args[:proxy_destination_config] if args.key?(:proxy_destination_config)
          @registration_destination_config = args[:registration_destination_config] if args.key?(:registration_destination_config)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
        end
      end
      
      # Dead Letter configuration details provided by the user.
      class GoogleCloudConnectorsV1EventingConfigDeadLetterConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Project which has the topic given.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Optional. Topic to push events which couldn't be processed.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Eventing runtime data has the details related to eventing managed by the
      # system.
      class GoogleCloudConnectorsV1EventingRuntimeData
        include Google::Apis::Core::Hashable
      
        # Output only. Events listener endpoint. The value will populated after
        # provisioning the events listener.
        # Corresponds to the JSON property `eventsListenerEndpoint`
        # @return [String]
        attr_accessor :events_listener_endpoint
      
        # Output only. Events listener PSC Service attachment. The value will be
        # populated after provisioning the events listener with private connectivity
        # enabled.
        # Corresponds to the JSON property `eventsListenerPscSa`
        # @return [String]
        attr_accessor :events_listener_psc_sa
      
        # EventingStatus indicates the state of eventing.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1EventingStatus]
        attr_accessor :status
      
        # WebhookData has details of webhook configuration.
        # Corresponds to the JSON property `webhookData`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1EventingRuntimeDataWebhookData]
        attr_accessor :webhook_data
      
        # WebhookSubscriptions has details of webhook subscriptions.
        # Corresponds to the JSON property `webhookSubscriptions`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions]
        attr_accessor :webhook_subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @events_listener_endpoint = args[:events_listener_endpoint] if args.key?(:events_listener_endpoint)
          @events_listener_psc_sa = args[:events_listener_psc_sa] if args.key?(:events_listener_psc_sa)
          @status = args[:status] if args.key?(:status)
          @webhook_data = args[:webhook_data] if args.key?(:webhook_data)
          @webhook_subscriptions = args[:webhook_subscriptions] if args.key?(:webhook_subscriptions)
        end
      end
      
      # WebhookData has details of webhook configuration.
      class GoogleCloudConnectorsV1EventingRuntimeDataWebhookData
        include Google::Apis::Core::Hashable
      
        # Output only. Additional webhook related field values.
        # Corresponds to the JSON property `additionalVariables`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1ConfigVariable>]
        attr_accessor :additional_variables
      
        # Output only. Timestamp when the webhook was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. ID to uniquely identify webhook.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Name of the Webhook
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Next webhook refresh time. Will be null if refresh is not
        # supported.
        # Corresponds to the JSON property `nextRefreshTime`
        # @return [String]
        attr_accessor :next_refresh_time
      
        # Output only. Timestamp when the webhook was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_variables = args[:additional_variables] if args.key?(:additional_variables)
          @create_time = args[:create_time] if args.key?(:create_time)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @next_refresh_time = args[:next_refresh_time] if args.key?(:next_refresh_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # WebhookSubscriptions has details of webhook subscriptions.
      class GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions
        include Google::Apis::Core::Hashable
      
        # Output only. Webhook data.
        # Corresponds to the JSON property `webhookData`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1EventingRuntimeDataWebhookData>]
        attr_accessor :webhook_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @webhook_data = args[:webhook_data] if args.key?(:webhook_data)
        end
      end
      
      # EventingStatus indicates the state of eventing.
      class GoogleCloudConnectorsV1EventingStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Description of error if State is set to "ERROR".
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. State.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Autoscaling config for connector deployment system metrics.
      class GoogleCloudConnectorsV1HpaConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Percent CPU utilization where HPA triggers autoscaling.
        # Corresponds to the JSON property `cpuUtilizationThreshold`
        # @return [Fixnum]
        attr_accessor :cpu_utilization_threshold
      
        # Output only. Percent Memory utilization where HPA triggers autoscaling.
        # Corresponds to the JSON property `memoryUtilizationThreshold`
        # @return [Fixnum]
        attr_accessor :memory_utilization_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_utilization_threshold = args[:cpu_utilization_threshold] if args.key?(:cpu_utilization_threshold)
          @memory_utilization_threshold = args[:memory_utilization_threshold] if args.key?(:memory_utilization_threshold)
        end
      end
      
      # Determines whether or no a connection is locked. If locked, a reason must be
      # specified.
      class GoogleCloudConnectorsV1LockConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether or not the connection is locked.
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        # Optional. Describes why a connection is locked.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locked = args[:locked] if args.key?(:locked)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Log configuration for the connection.
      class GoogleCloudConnectorsV1LogConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Enabled represents whether logging is enabled or not for a
        # connection.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. Log configuration level.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @level = args[:level] if args.key?(:level)
        end
      end
      
      # Node configuration for the connection.
      class GoogleCloudConnectorsV1NodeConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Maximum number of nodes in the runtime nodes.
        # Corresponds to the JSON property `maxNodeCount`
        # @return [Fixnum]
        attr_accessor :max_node_count
      
        # Optional. Minimum number of nodes in the runtime nodes.
        # Corresponds to the JSON property `minNodeCount`
        # @return [Fixnum]
        attr_accessor :min_node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_node_count = args[:max_node_count] if args.key?(:max_node_count)
          @min_node_count = args[:min_node_count] if args.key?(:min_node_count)
        end
      end
      
      # Resource limits defined for connection pods of a given connector type.
      class GoogleCloudConnectorsV1ResourceLimits
        include Google::Apis::Core::Hashable
      
        # Output only. CPU limit.
        # Corresponds to the JSON property `cpu`
        # @return [String]
        attr_accessor :cpu
      
        # Output only. Memory limit.
        # Corresponds to the JSON property `memory`
        # @return [String]
        attr_accessor :memory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu = args[:cpu] if args.key?(:cpu)
          @memory = args[:memory] if args.key?(:memory)
        end
      end
      
      # Resource requests defined for connection pods of a given connector type.
      class GoogleCloudConnectorsV1ResourceRequests
        include Google::Apis::Core::Hashable
      
        # Output only. CPU request.
        # Corresponds to the JSON property `cpu`
        # @return [String]
        attr_accessor :cpu
      
        # Output only. Memory request.
        # Corresponds to the JSON property `memory`
        # @return [String]
        attr_accessor :memory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu = args[:cpu] if args.key?(:cpu)
          @memory = args[:memory] if args.key?(:memory)
        end
      end
      
      # Secret provides a reference to entries in Secret Manager.
      class GoogleCloudConnectorsV1Secret
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name of the secret version in the format, format as: `
        # projects/*/secrets/*/versions/*`.
        # Corresponds to the JSON property `secretVersion`
        # @return [String]
        attr_accessor :secret_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @secret_version = args[:secret_version] if args.key?(:secret_version)
        end
      end
      
      # SSL Configuration of a connection
      class GoogleCloudConnectorsV1SslConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Additional SSL related field values
        # Corresponds to the JSON property `additionalVariables`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1ConfigVariable>]
        attr_accessor :additional_variables
      
        # Optional. Type of Client Cert (PEM/JKS/.. etc.)
        # Corresponds to the JSON property `clientCertType`
        # @return [String]
        attr_accessor :client_cert_type
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientCertificate`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :client_certificate
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientPrivateKey`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :client_private_key
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `clientPrivateKeyPass`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :client_private_key_pass
      
        # Secret provides a reference to entries in Secret Manager.
        # Corresponds to the JSON property `privateServerCertificate`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Secret]
        attr_accessor :private_server_certificate
      
        # Optional. Type of Server Cert (PEM/JKS/.. etc.)
        # Corresponds to the JSON property `serverCertType`
        # @return [String]
        attr_accessor :server_cert_type
      
        # Optional. Trust Model of the SSL connection
        # Corresponds to the JSON property `trustModel`
        # @return [String]
        attr_accessor :trust_model
      
        # Optional. Controls the ssl type for the given connector version.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. Bool for enabling SSL
        # Corresponds to the JSON property `useSsl`
        # @return [Boolean]
        attr_accessor :use_ssl
        alias_method :use_ssl?, :use_ssl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_variables = args[:additional_variables] if args.key?(:additional_variables)
          @client_cert_type = args[:client_cert_type] if args.key?(:client_cert_type)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_private_key = args[:client_private_key] if args.key?(:client_private_key)
          @client_private_key_pass = args[:client_private_key_pass] if args.key?(:client_private_key_pass)
          @private_server_certificate = args[:private_server_certificate] if args.key?(:private_server_certificate)
          @server_cert_type = args[:server_cert_type] if args.key?(:server_cert_type)
          @trust_model = args[:trust_model] if args.key?(:trust_model)
          @type = args[:type] if args.key?(:type)
          @use_ssl = args[:use_ssl] if args.key?(:use_ssl)
        end
      end
      
      # * TrafficShapingConfig defines the configuration for shaping API traffic by
      # specifying a quota limit and the duration over which this limit is enforced.
      # This configuration helps to control and manage the rate at which API calls are
      # made on the client side, preventing service overload on the backend. For
      # example: - if the quota limit is 100 calls per 10 seconds, then the message
      # would be: ` quota_limit: 100 duration: ` seconds: 10 ` ` - if the quota limit
      # is 100 calls per 5 minutes, then the message would be: ` quota_limit: 100
      # duration: ` seconds: 300 ` ` - if the quota limit is 10000 calls per day, then
      # the message would be: ` quota_limit: 10000 duration: ` seconds: 86400 ` and so
      # on.
      class GoogleCloudConnectorsV1TrafficShapingConfig
        include Google::Apis::Core::Hashable
      
        # Required. * The duration over which the API call quota limits are calculated.
        # This duration is used to define the time window for evaluating if the number
        # of API calls made by a user is within the allowed quota limits. For example: -
        # To define a quota sampled over 16 seconds, set `seconds` to 16 - To define a
        # quota sampled over 5 minutes, set `seconds` to 300 (5 * 60) - To define a
        # quota sampled over 1 day, set `seconds` to 86400 (24 * 60 * 60) and so on. It
        # is important to note that this duration is not the time the quota is valid for,
        # but rather the time window over which the quota is evaluated. For example, if
        # the quota is 100 calls per 10 seconds, then this duration field would be set
        # to 10 seconds.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Required. Maximum number of api calls allowed.
        # Corresponds to the JSON property `quotaLimit`
        # @return [Fixnum]
        attr_accessor :quota_limit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @quota_limit = args[:quota_limit] if args.key?(:quota_limit)
        end
      end
      
      # The access token represents the authorization of a specific application to
      # access specific parts of a user’s data.
      class GoogleCloudIntegrationsV1alphaAccessToken
        include Google::Apis::Core::Hashable
      
        # The access token encapsulating the security identity of a process or thread.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        # Required. The approximate time until the access token retrieved is valid.
        # Corresponds to the JSON property `accessTokenExpireTime`
        # @return [String]
        attr_accessor :access_token_expire_time
      
        # If the access token will expire, use the refresh token to obtain another
        # access token.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        # The approximate time until the refresh token retrieved is valid.
        # Corresponds to the JSON property `refreshTokenExpireTime`
        # @return [String]
        attr_accessor :refresh_token_expire_time
      
        # Only support "bearer" token in v1 as bearer token is the predominant type used
        # with OAuth 2.0.
        # Corresponds to the JSON property `tokenType`
        # @return [String]
        attr_accessor :token_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @access_token_expire_time = args[:access_token_expire_time] if args.key?(:access_token_expire_time)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
          @refresh_token_expire_time = args[:refresh_token_expire_time] if args.key?(:refresh_token_expire_time)
          @token_type = args[:token_type] if args.key?(:token_type)
        end
      end
      
      # AgentFlow configurations.
      class GoogleCloudIntegrationsV1alphaAgentFlow
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the agent flow was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The user who created the agent flow.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Optional. Description of the agent flow.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Display name of the agent flow.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The flow configuration, represented as a string.
        # Corresponds to the JSON property `flowConfig`
        # @return [String]
        attr_accessor :flow_config
      
        # Required. Resource name of the agent flow.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Name of the NoCodeAgent.
        # Corresponds to the JSON property `noCodeAgent`
        # @return [String]
        attr_accessor :no_code_agent
      
        # Output only. The timestamp when the agent flow was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @flow_config = args[:flow_config] if args.key?(:flow_config)
          @name = args[:name] if args.key?(:name)
          @no_code_agent = args[:no_code_agent] if args.key?(:no_code_agent)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # List of API triggerID and their workflow resource name.
      class GoogleCloudIntegrationsV1alphaApiTriggerResource
        include Google::Apis::Core::Hashable
      
        # Required. Integration where the API is published
        # Corresponds to the JSON property `integrationResource`
        # @return [String]
        attr_accessor :integration_resource
      
        # Required. Trigger Id of the API trigger(s) in the integration
        # Corresponds to the JSON property `triggerId`
        # @return [Array<String>]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_resource = args[:integration_resource] if args.key?(:integration_resource)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # An assertion which will check for a condition over task execution status or an
      # expression for task output variables
      class GoogleCloudIntegrationsV1alphaAssertion
        include Google::Apis::Core::Hashable
      
        # Optional. The type of assertion to perform.
        # Corresponds to the JSON property `assertionStrategy`
        # @return [String]
        attr_accessor :assertion_strategy
      
        # Optional. Standard filter expression for ASSERT_CONDITION to succeed
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # This message is used for processing and persisting (when applicable) key value
        # pair parameters for each event in the event bus. Next available id: 4
        # Corresponds to the JSON property `parameter`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaEventParameter]
        attr_accessor :parameter
      
        # Number of times given task should be retried in case of
        # ASSERT_FAILED_EXECUTION
        # Corresponds to the JSON property `retryCount`
        # @return [Fixnum]
        attr_accessor :retry_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion_strategy = args[:assertion_strategy] if args.key?(:assertion_strategy)
          @condition = args[:condition] if args.key?(:condition)
          @parameter = args[:parameter] if args.key?(:parameter)
          @retry_count = args[:retry_count] if args.key?(:retry_count)
        end
      end
      
      # The result of an assertion.
      class GoogleCloudIntegrationsV1alphaAssertionResult
        include Google::Apis::Core::Hashable
      
        # An assertion which will check for a condition over task execution status or an
        # expression for task output variables
        # Corresponds to the JSON property `assertion`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAssertion]
        attr_accessor :assertion
      
        # Details of the assertion failure
        # Corresponds to the JSON property `failureMessage`
        # @return [String]
        attr_accessor :failure_message
      
        # Status of assertion to signify if the assertion succeeded or failed
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Task name of task where the assertion was run.
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        # Task number of task where the assertion was run.
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion = args[:assertion] if args.key?(:assertion)
          @failure_message = args[:failure_message] if args.key?(:failure_message)
          @status = args[:status] if args.key?(:status)
          @task_name = args[:task_name] if args.key?(:task_name)
          @task_number = args[:task_number] if args.key?(:task_number)
        end
      end
      
      # Status for the execution attempt.
      class GoogleCloudIntegrationsV1alphaAttemptStats
        include Google::Apis::Core::Hashable
      
        # The end time of the integration execution for current attempt.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The start time of the integration execution for current attempt. This could be
        # in the future if it's been scheduled.
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
      
      # The AuthConfig resource use to hold channels and connection config data.
      class GoogleCloudIntegrationsV1alphaAuthConfig
        include Google::Apis::Core::Hashable
      
        # Certificate id for client certificate
        # Corresponds to the JSON property `certificateId`
        # @return [String]
        attr_accessor :certificate_id
      
        # Output only. The timestamp when the auth config is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The creator's email address. Generated based on the End User Credentials/LOAS
        # role of the user making the call.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # Required. Credential type of the encrypted credential.
        # Corresponds to the JSON property `credentialType`
        # @return [String]
        attr_accessor :credential_type
      
        # Defines parameters for a single, canonical credential.
        # Corresponds to the JSON property `decryptedCredential`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCredential]
        attr_accessor :decrypted_credential
      
        # Optional. A description of the auth config.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name of the auth config.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with
        # proper KMS key.
        # Corresponds to the JSON property `encryptedCredential`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encrypted_credential
      
        # Optional. User can define the time to receive notification after which the
        # auth config becomes invalid. Support up to 30 days. Support granularity in
        # hours.
        # Corresponds to the JSON property `expiryNotificationDuration`
        # @return [Array<String>]
        attr_accessor :expiry_notification_duration
      
        # The last modifier's email address. Generated based on the End User Credentials/
        # LOAS role of the user making the call.
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # Resource name of the auth config. For more information, see Manage
        # authentication profiles. projects/`project`/locations/`location`/authConfigs/`
        # authConfig`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. User provided expiry time to override. For the example of Salesforce,
        # username/password credentials can be valid for 6 months depending on the
        # instance settings.
        # Corresponds to the JSON property `overrideValidTime`
        # @return [String]
        attr_accessor :override_valid_time
      
        # Output only. The reason / details of the current status.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # Output only. The status of the auth config.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the auth config is modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. The time until the auth config is valid. Empty or max value is
        # considered the auth config won't expire.
        # Corresponds to the JSON property `validTime`
        # @return [String]
        attr_accessor :valid_time
      
        # Optional. The visibility of the auth config.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_id = args[:certificate_id] if args.key?(:certificate_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @credential_type = args[:credential_type] if args.key?(:credential_type)
          @decrypted_credential = args[:decrypted_credential] if args.key?(:decrypted_credential)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @encrypted_credential = args[:encrypted_credential] if args.key?(:encrypted_credential)
          @expiry_notification_duration = args[:expiry_notification_duration] if args.key?(:expiry_notification_duration)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @name = args[:name] if args.key?(:name)
          @override_valid_time = args[:override_valid_time] if args.key?(:override_valid_time)
          @reason = args[:reason] if args.key?(:reason)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @valid_time = args[:valid_time] if args.key?(:valid_time)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # The credentials to authenticate a user agent with a server that is put in HTTP
      # Authorization request header.
      class GoogleCloudIntegrationsV1alphaAuthToken
        include Google::Apis::Core::Hashable
      
        # The token for the auth type.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Authentication type, e.g. "Basic", "Bearer", etc.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @token = args[:token] if args.key?(:token)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # This message only contains a field of boolean array.
      class GoogleCloudIntegrationsV1alphaBooleanParameterArray
        include Google::Apis::Core::Hashable
      
        # Boolean array.
        # Corresponds to the JSON property `booleanValues`
        # @return [Array<Boolean>]
        attr_accessor :boolean_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_values = args[:boolean_values] if args.key?(:boolean_values)
        end
      end
      
      # Request for cancelling an execution.
      class GoogleCloudIntegrationsV1alphaCancelExecutionRequest
        include Google::Apis::Core::Hashable
      
        # Required. Reason for cancelling the execution. This is provided by the client
        # requesting the cancellation, and is not used by the Platform.
        # Corresponds to the JSON property `cancelReason`
        # @return [String]
        attr_accessor :cancel_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancel_reason = args[:cancel_reason] if args.key?(:cancel_reason)
        end
      end
      
      # Response for cancelling an execution.
      class GoogleCloudIntegrationsV1alphaCancelExecutionResponse
        include Google::Apis::Core::Hashable
      
        # True if cancellation performed successfully.
        # Corresponds to the JSON property `isCanceled`
        # @return [Boolean]
        attr_accessor :is_canceled
        alias_method :is_canceled?, :is_canceled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_canceled = args[:is_canceled] if args.key?(:is_canceled)
        end
      end
      
      # The certificate definition
      class GoogleCloudIntegrationsV1alphaCertificate
        include Google::Apis::Core::Hashable
      
        # Status of the certificate
        # Corresponds to the JSON property `certificateStatus`
        # @return [String]
        attr_accessor :certificate_status
      
        # Immutable. Credential id that will be used to register with trawler
        # Corresponds to the JSON property `credentialId`
        # @return [String]
        attr_accessor :credential_id
      
        # Description of the certificate
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Name of the certificate
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Auto generated primary key
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Contains client certificate information
        # Corresponds to the JSON property `rawCertificate`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaClientCertificate]
        attr_accessor :raw_certificate
      
        # Immutable. Requestor ID to be used to register certificate with trawler
        # Corresponds to the JSON property `requestorId`
        # @return [String]
        attr_accessor :requestor_id
      
        # Output only. The timestamp after which certificate will expire
        # Corresponds to the JSON property `validEndTime`
        # @return [String]
        attr_accessor :valid_end_time
      
        # Output only. The timestamp after which certificate will be valid
        # Corresponds to the JSON property `validStartTime`
        # @return [String]
        attr_accessor :valid_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate_status = args[:certificate_status] if args.key?(:certificate_status)
          @credential_id = args[:credential_id] if args.key?(:credential_id)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @raw_certificate = args[:raw_certificate] if args.key?(:raw_certificate)
          @requestor_id = args[:requestor_id] if args.key?(:requestor_id)
          @valid_end_time = args[:valid_end_time] if args.key?(:valid_end_time)
          @valid_start_time = args[:valid_start_time] if args.key?(:valid_start_time)
        end
      end
      
      # Request for the ChangeCustomerConfig rpc
      class GoogleCloudIntegrationsV1alphaChangeCustomerConfigRequest
        include Google::Apis::Core::Hashable
      
        # Customer configuration information for the given client
        # Corresponds to the JSON property `customerConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCustomerConfig]
        attr_accessor :customer_config
      
        # Required. Field mask specifying the fields in the customer config that have
        # been modified and must be updated. If absent or empty, no fields are updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_config = args[:customer_config] if args.key?(:customer_config)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Response for the ChangeCustomerConfig rpc
      class GoogleCloudIntegrationsV1alphaChangeCustomerConfigResponse
        include Google::Apis::Core::Hashable
      
        # Customer configuration information for the given client
        # Corresponds to the JSON property `customerConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCustomerConfig]
        attr_accessor :customer_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_config = args[:customer_config] if args.key?(:customer_config)
        end
      end
      
      # Contains client certificate information
      class GoogleCloudIntegrationsV1alphaClientCertificate
        include Google::Apis::Core::Hashable
      
        # The ssl certificate encoded in PEM format. This string must include the begin
        # header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        # MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        # BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        # MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        # MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        # vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        # sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        # xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        # BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        # Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        # Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        # JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        # 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        # wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # Corresponds to the JSON property `encryptedPrivateKey`
        # @return [String]
        attr_accessor :encrypted_private_key
      
        # 'passphrase' should be left unset if private key is not encrypted. Note that '
        # passphrase' is not the password for web server, but an extra layer of security
        # to protected private key.
        # Corresponds to the JSON property `passphrase`
        # @return [String]
        attr_accessor :passphrase
      
        # The ssl certificate encoded in PEM format. This string must include the begin
        # header and end footer lines. For example, -----BEGIN CERTIFICATE-----
        # MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV
        # BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw
        # MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET
        # MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA
        # vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/
        # sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB
        # xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/
        # BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB
        # Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey
        # Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW
        # JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr
        # 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H
        # wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
        # Corresponds to the JSON property `sslCertificate`
        # @return [String]
        attr_accessor :ssl_certificate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted_private_key = args[:encrypted_private_key] if args.key?(:encrypted_private_key)
          @passphrase = args[:passphrase] if args.key?(:passphrase)
          @ssl_certificate = args[:ssl_certificate] if args.key?(:ssl_certificate)
        end
      end
      
      # The configuration information for the Client
      class GoogleCloudIntegrationsV1alphaClientConfig
        include Google::Apis::Core::Hashable
      
        # Indicates the billing type of the client
        # Corresponds to the JSON property `billingType`
        # @return [String]
        attr_accessor :billing_type
      
        # Indicates the activity state the client
        # Corresponds to the JSON property `clientState`
        # @return [String]
        attr_accessor :client_state
      
        # Configuration information for Client's Cloud KMS information
        # Corresponds to the JSON property `cloudKmsConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCloudKmsConfig]
        attr_accessor :cloud_kms_config
      
        # The timestamp when the client was first created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Customer configuration information for the given client
        # Corresponds to the JSON property `customerConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCustomerConfig]
        attr_accessor :customer_config
      
        # Description of what the client is used for
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional.
        # Corresponds to the JSON property `enableHttpCall`
        # @return [Boolean]
        attr_accessor :enable_http_call
        alias_method :enable_http_call?, :enable_http_call
      
        # Optional. Indicates the client enables internal IP feature, this is applicable
        # for internal clients only.
        # Corresponds to the JSON property `enableInternalIp`
        # @return [Boolean]
        attr_accessor :enable_internal_ip
        alias_method :enable_internal_ip?, :enable_internal_ip
      
        # Optional.
        # Corresponds to the JSON property `enableManagedAiFeatures`
        # @return [Boolean]
        attr_accessor :enable_managed_ai_features
        alias_method :enable_managed_ai_features?, :enable_managed_ai_features
      
        # Optional.
        # Corresponds to the JSON property `enableVariableMasking`
        # @return [Boolean]
        attr_accessor :enable_variable_masking
        alias_method :enable_variable_masking?, :enable_variable_masking
      
        # Globally unique ID (project_id + region)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Indicates the client is provisioned with CMEK or GMEK.
        # Corresponds to the JSON property `isGmek`
        # @return [Boolean]
        attr_accessor :is_gmek
        alias_method :is_gmek?, :is_gmek
      
        # The service agent associated with this client
        # Corresponds to the JSON property `p4ServiceAccount`
        # @return [String]
        attr_accessor :p4_service_account
      
        # The GCP project id of the client associated with
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The region the client is linked to.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # 
        # Corresponds to the JSON property `runAsServiceAccount`
        # @return [String]
        attr_accessor :run_as_service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_type = args[:billing_type] if args.key?(:billing_type)
          @client_state = args[:client_state] if args.key?(:client_state)
          @cloud_kms_config = args[:cloud_kms_config] if args.key?(:cloud_kms_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_config = args[:customer_config] if args.key?(:customer_config)
          @description = args[:description] if args.key?(:description)
          @enable_http_call = args[:enable_http_call] if args.key?(:enable_http_call)
          @enable_internal_ip = args[:enable_internal_ip] if args.key?(:enable_internal_ip)
          @enable_managed_ai_features = args[:enable_managed_ai_features] if args.key?(:enable_managed_ai_features)
          @enable_variable_masking = args[:enable_variable_masking] if args.key?(:enable_variable_masking)
          @id = args[:id] if args.key?(:id)
          @is_gmek = args[:is_gmek] if args.key?(:is_gmek)
          @p4_service_account = args[:p4_service_account] if args.key?(:p4_service_account)
          @project_id = args[:project_id] if args.key?(:project_id)
          @region = args[:region] if args.key?(:region)
          @run_as_service_account = args[:run_as_service_account] if args.key?(:run_as_service_account)
        end
      end
      
      # Configuration information for Client's Cloud KMS information
      class GoogleCloudIntegrationsV1alphaCloudKmsConfig
        include Google::Apis::Core::Hashable
      
        # Required. A Cloud KMS key is a named object containing one or more key
        # versions, along with metadata for the key. A key exists on exactly one key
        # ring tied to a specific location.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. Each version of a key contains key material used for encryption or
        # signing. A key's version is represented by an integer, starting at 1. To
        # decrypt data or verify a signature, you must use the same key version that was
        # used to encrypt or sign the data.
        # Corresponds to the JSON property `keyVersion`
        # @return [String]
        attr_accessor :key_version
      
        # Required. Location name of the key ring, e.g. "us-west1".
        # Corresponds to the JSON property `kmsLocation`
        # @return [String]
        attr_accessor :kms_location
      
        # Optional. The gcp project id of the project where the kms key stored. If empty,
        # the kms key is stored at the same project as customer's project and ecrypted
        # with CMEK, otherwise, the kms key is stored in the tenant project and
        # encrypted with GMEK
        # Corresponds to the JSON property `kmsProjectId`
        # @return [String]
        attr_accessor :kms_project_id
      
        # Required. A key ring organizes keys in a specific Google Cloud location and
        # allows you to manage access control on groups of keys. A key ring's name does
        # not need to be unique across a Google Cloud project, but must be unique within
        # a given location.
        # Corresponds to the JSON property `kmsRing`
        # @return [String]
        attr_accessor :kms_ring
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @key_version = args[:key_version] if args.key?(:key_version)
          @kms_location = args[:kms_location] if args.key?(:kms_location)
          @kms_project_id = args[:kms_project_id] if args.key?(:kms_project_id)
          @kms_ring = args[:kms_ring] if args.key?(:kms_ring)
        end
      end
      
      # Cloud Logging details for execution info
      class GoogleCloudIntegrationsV1alphaCloudLoggingDetails
        include Google::Apis::Core::Hashable
      
        # Optional. Severity selected by the customer for the logs to be sent to Cloud
        # Logging, for the integration version getting executed.
        # Corresponds to the JSON property `cloudLoggingSeverity`
        # @return [String]
        attr_accessor :cloud_logging_severity
      
        # Optional. Status of whether Cloud Logging is enabled or not for the
        # integration version getting executed.
        # Corresponds to the JSON property `enableCloudLogging`
        # @return [Boolean]
        attr_accessor :enable_cloud_logging
        alias_method :enable_cloud_logging?, :enable_cloud_logging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_logging_severity = args[:cloud_logging_severity] if args.key?(:cloud_logging_severity)
          @enable_cloud_logging = args[:enable_cloud_logging] if args.key?(:enable_cloud_logging)
        end
      end
      
      # Cloud Scheduler Trigger configuration
      class GoogleCloudIntegrationsV1alphaCloudSchedulerConfig
        include Google::Apis::Core::Hashable
      
        # Required. The cron tab of cloud scheduler trigger.
        # Corresponds to the JSON property `cronTab`
        # @return [String]
        attr_accessor :cron_tab
      
        # Optional. When the job was deleted from Pantheon UI, error_message will be
        # populated when Get/List integrations
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Required. The location where associated cloud scheduler job will be created
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Required. Service account used by Cloud Scheduler to trigger the integration
        # at scheduled time
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cron_tab = args[:cron_tab] if args.key?(:cron_tab)
          @error_message = args[:error_message] if args.key?(:error_message)
          @location = args[:location] if args.key?(:location)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
        end
      end
      
      # Conditional task failur retry strategies
      class GoogleCloudIntegrationsV1alphaConditionalFailurePolicies
        include Google::Apis::Core::Hashable
      
        # Policy that defines the task retry logic and failure type. If no FailurePolicy
        # is defined for a task, all its dependent tasks will not be executed (i.e, a `
        # retry_strategy` of NONE will be applied).
        # Corresponds to the JSON property `defaultFailurePolicy`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaFailurePolicy]
        attr_accessor :default_failure_policy
      
        # The list of failure policies that will be applied to the task in order.
        # Corresponds to the JSON property `failurePolicies`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaFailurePolicy>]
        attr_accessor :failure_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_failure_policy = args[:default_failure_policy] if args.key?(:default_failure_policy)
          @failure_policies = args[:failure_policies] if args.key?(:failure_policies)
        end
      end
      
      # Metadata of runtime connection schema.
      class GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # List of actions.
        # Corresponds to the JSON property `actions`
        # @return [Array<String>]
        attr_accessor :actions
      
        # List of entity names.
        # Corresponds to the JSON property `entities`
        # @return [Array<String>]
        attr_accessor :entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @entities = args[:entities] if args.key?(:entities)
        end
      end
      
      # Configuration detail of coordinate, it used for UI
      class GoogleCloudIntegrationsV1alphaCoordinate
        include Google::Apis::Core::Hashable
      
        # Required. X axis of the coordinate
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # Required. Y axis of the coordinate
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
      
      # Request for CreateAppsScriptProject rpc call.
      class GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest
        include Google::Apis::Core::Hashable
      
        # The name of the Apps Script project to be created.
        # Corresponds to the JSON property `appsScriptProject`
        # @return [String]
        attr_accessor :apps_script_project
      
        # The auth config id necessary to fetch the necessary credentials to create the
        # project for external clients
        # Corresponds to the JSON property `authConfigId`
        # @return [String]
        attr_accessor :auth_config_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apps_script_project = args[:apps_script_project] if args.key?(:apps_script_project)
          @auth_config_id = args[:auth_config_id] if args.key?(:auth_config_id)
        end
      end
      
      # Response for CreateAppsScriptProject rpc call.
      class GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse
        include Google::Apis::Core::Hashable
      
        # The created AppsScriptProject ID.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Request for Creating Cloud Function rpc call.
      class GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest
        include Google::Apis::Core::Hashable
      
        # The function name of CF to be created
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        # The function region of CF to be created
        # Corresponds to the JSON property `functionRegion`
        # @return [String]
        attr_accessor :function_region
      
        # Optional. The api version of CF to be created
        # Corresponds to the JSON property `gcfApiVersion`
        # @return [String]
        attr_accessor :gcf_api_version
      
        # Indicates the id of the GCP project that the function will be created in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
          @function_region = args[:function_region] if args.key?(:function_region)
          @gcf_api_version = args[:gcf_api_version] if args.key?(:gcf_api_version)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Response for Creating Cloud Function rpc call.
      class GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse
        include Google::Apis::Core::Hashable
      
        # The trigger url that will be returned
        # Corresponds to the JSON property `triggerUrl`
        # @return [String]
        attr_accessor :trigger_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @trigger_url = args[:trigger_url] if args.key?(:trigger_url)
        end
      end
      
      # Defines parameters for a single, canonical credential.
      class GoogleCloudIntegrationsV1alphaCredential
        include Google::Apis::Core::Hashable
      
        # The credentials to authenticate a user agent with a server that is put in HTTP
        # Authorization request header.
        # Corresponds to the JSON property `authToken`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAuthToken]
        attr_accessor :auth_token
      
        # Credential type associated with auth config.
        # Corresponds to the JSON property `credentialType`
        # @return [String]
        attr_accessor :credential_type
      
        # Represents JSON web token(JWT), which is a compact, URL-safe means of
        # representing claims to be transferred between two parties, enabling the claims
        # to be digitally signed or integrity protected.
        # Corresponds to the JSON property `jwt`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaJwt]
        attr_accessor :jwt
      
        # The OAuth Type where the client sends request with the client id and requested
        # scopes to auth endpoint. User sees a consent screen and auth code is received
        # at specified redirect url afterwards. The auth code is then combined with the
        # client id and secret and sent to the token endpoint in exchange for the access
        # and refresh token. The refresh token can be used to fetch new access tokens.
        # Corresponds to the JSON property `oauth2AuthorizationCode`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode]
        attr_accessor :oauth2_authorization_code
      
        # For client credentials grant, the client sends a POST request with grant_type
        # as 'client_credentials' to the authorization server. The authorization server
        # will respond with a JSON object containing the access token.
        # Corresponds to the JSON property `oauth2ClientCredentials`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials]
        attr_accessor :oauth2_client_credentials
      
        # For resource owner credentials grant, the client will ask the user for their
        # authorization credentials (ususally a username and password) and send a POST
        # request to the authorization server. The authorization server will respond
        # with a JSON object containing the access token.
        # Corresponds to the JSON property `oauth2ResourceOwnerCredentials`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials]
        attr_accessor :oauth2_resource_owner_credentials
      
        # OIDC Token
        # Corresponds to the JSON property `oidcToken`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaOidcToken]
        attr_accessor :oidc_token
      
        # Represents the service account which can be used to generate access token for
        # authenticating the service call.
        # Corresponds to the JSON property `serviceAccountCredentials`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaServiceAccountCredentials]
        attr_accessor :service_account_credentials
      
        # Username and password pair.
        # Corresponds to the JSON property `usernameAndPassword`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaUsernameAndPassword]
        attr_accessor :username_and_password
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_token = args[:auth_token] if args.key?(:auth_token)
          @credential_type = args[:credential_type] if args.key?(:credential_type)
          @jwt = args[:jwt] if args.key?(:jwt)
          @oauth2_authorization_code = args[:oauth2_authorization_code] if args.key?(:oauth2_authorization_code)
          @oauth2_client_credentials = args[:oauth2_client_credentials] if args.key?(:oauth2_client_credentials)
          @oauth2_resource_owner_credentials = args[:oauth2_resource_owner_credentials] if args.key?(:oauth2_resource_owner_credentials)
          @oidc_token = args[:oidc_token] if args.key?(:oidc_token)
          @service_account_credentials = args[:service_account_credentials] if args.key?(:service_account_credentials)
          @username_and_password = args[:username_and_password] if args.key?(:username_and_password)
        end
      end
      
      # Customer configuration information for the given client
      class GoogleCloudIntegrationsV1alphaCustomerConfig
        include Google::Apis::Core::Hashable
      
        # Configuration information for Client's Cloud KMS information
        # Corresponds to the JSON property `cloudKmsConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCloudKmsConfig]
        attr_accessor :cloud_kms_config
      
        # Optional. Indicates if the client should be allowed to make HTTP calls. True
        # if http call feature should be turned on for this region.
        # Corresponds to the JSON property `enableHttpCall`
        # @return [Boolean]
        attr_accessor :enable_http_call
        alias_method :enable_http_call?, :enable_http_call
      
        # Optional. Indicates if the client should be allowed to use managed AI features,
        # i.e. using Cloud Companion APIs of the tenant project. This will allow the
        # customers to use features like Troubleshooting, OpenAPI spec enrichment, etc.
        # for free.
        # Corresponds to the JSON property `enableManagedAiFeatures`
        # @return [Boolean]
        attr_accessor :enable_managed_ai_features
        alias_method :enable_managed_ai_features?, :enable_managed_ai_features
      
        # Optional. True if variable masking feature should be turned on for this region.
        # Corresponds to the JSON property `enableVariableMasking`
        # @return [Boolean]
        attr_accessor :enable_variable_masking
        alias_method :enable_variable_masking?, :enable_variable_masking
      
        # Optional. Run-as service account to be updated for the provisioned client.
        # Corresponds to the JSON property `runAsServiceAccount`
        # @return [String]
        attr_accessor :run_as_service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_kms_config = args[:cloud_kms_config] if args.key?(:cloud_kms_config)
          @enable_http_call = args[:enable_http_call] if args.key?(:enable_http_call)
          @enable_managed_ai_features = args[:enable_managed_ai_features] if args.key?(:enable_managed_ai_features)
          @enable_variable_masking = args[:enable_variable_masking] if args.key?(:enable_variable_masking)
          @run_as_service_account = args[:run_as_service_account] if args.key?(:run_as_service_account)
        end
      end
      
      # Request for the Deprovision rpc
      class GoogleCloudIntegrationsV1alphaDeprovisionClientRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # This message only contains a field of double number array.
      class GoogleCloudIntegrationsV1alphaDoubleParameterArray
        include Google::Apis::Core::Hashable
      
        # Double number array.
        # Corresponds to the JSON property `doubleValues`
        # @return [Array<Float>]
        attr_accessor :double_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_values = args[:double_values] if args.key?(:double_values)
        end
      end
      
      # Response for downloading an execution.
      class GoogleCloudIntegrationsV1alphaDownloadExecutionResponse
        include Google::Apis::Core::Hashable
      
        # The content of downloaded execution.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # Response for DownloadIntegrationVersion.
      class GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse
        include Google::Apis::Core::Hashable
      
        # String representation of the requested file.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # List containing String represendation for multiple file with type.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSerializedFile>]
        attr_accessor :files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @files = args[:files] if args.key?(:files)
        end
      end
      
      # Response for DownloadJsonPackage.
      class GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse
        include Google::Apis::Core::Hashable
      
        # List containing JSON for multiple file with type information.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaFile>]
        attr_accessor :files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] if args.key?(:files)
        end
      end
      
      # Response for DownloadTemplate.
      class GoogleCloudIntegrationsV1alphaDownloadTemplateResponse
        include Google::Apis::Core::Hashable
      
        # String representation of the template.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # Response for DownloadTestCase.
      class GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse
        include Google::Apis::Core::Hashable
      
        # String representation of the test case.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
        end
      end
      
      # Response containing all provisioned regions for Connector Platform.
      class GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse
        include Google::Apis::Core::Hashable
      
        # All regions where Connector Platform is provisioned.
        # Corresponds to the JSON property `regions`
        # @return [Array<String>]
        attr_accessor :regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regions = args[:regions] if args.key?(:regions)
        end
      end
      
      # Configuration detail of a error catch task
      class GoogleCloudIntegrationsV1alphaErrorCatcherConfig
        include Google::Apis::Core::Hashable
      
        # Optional. User-provided description intended to give more business context
        # about the error catcher config.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. An error catcher id is string representation for the error catcher
        # config. Within a workflow, error_catcher_id uniquely identifies an error
        # catcher config among all error catcher configs for the workflow
        # Corresponds to the JSON property `errorCatcherId`
        # @return [String]
        attr_accessor :error_catcher_id
      
        # Required. A number to uniquely identify each error catcher config within the
        # workflow on UI.
        # Corresponds to the JSON property `errorCatcherNumber`
        # @return [String]
        attr_accessor :error_catcher_number
      
        # Optional. The user created label for a particular error catcher. Optional.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Configuration detail of coordinate, it used for UI
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCoordinate]
        attr_accessor :position
      
        # Required. The set of start tasks that are to be executed for the error catch
        # flow
        # Corresponds to the JSON property `startErrorTasks`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaNextTask>]
        attr_accessor :start_error_tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @error_catcher_id = args[:error_catcher_id] if args.key?(:error_catcher_id)
          @error_catcher_number = args[:error_catcher_number] if args.key?(:error_catcher_number)
          @label = args[:label] if args.key?(:label)
          @position = args[:position] if args.key?(:position)
          @start_error_tasks = args[:start_error_tasks] if args.key?(:start_error_tasks)
        end
      end
      
      # This message is used for processing and persisting (when applicable) key value
      # pair parameters for each event in the event bus. Next available id: 4
      class GoogleCloudIntegrationsV1alphaEventParameter
        include Google::Apis::Core::Hashable
      
        # Key is used to retrieve the corresponding parameter value. This should be
        # unique for a given fired event. These parameters must be predefined in the
        # integration definition.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # True if this parameter should be masked in the logs
        # Corresponds to the JSON property `masked`
        # @return [Boolean]
        attr_accessor :masked
        alias_method :masked?, :masked
      
        # The type of the parameter.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @masked = args[:masked] if args.key?(:masked)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The response for executing an integration.
      class GoogleCloudIntegrationsV1alphaExecuteEventResponse
        include Google::Apis::Core::Hashable
      
        # The id of the execution corresponding to this run of integration.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
        end
      end
      
      # The request for executing an integration.
      class GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Flag to determine how to should propagate errors. If this flag is
        # set to be true, it will not throw an exception. Instead, it will return a `@
        # link ExecuteIntegrationsResponse` with an execution id and error messages as
        # PostWithTriggerIdExecutionException in `@link EventParameters`. The flag is
        # set to be false by default.
        # Corresponds to the JSON property `doNotPropagateError`
        # @return [Boolean]
        attr_accessor :do_not_propagate_error
        alias_method :do_not_propagate_error?, :do_not_propagate_error
      
        # Optional. The id of the ON_HOLD execution to be resumed.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Optional. Input parameters used by integration execution.
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :input_parameters
      
        # Optional. Parameters are a part of Event and can be used to communicate
        # between different tasks that are part of the same integration execution.
        # Corresponds to the JSON property `parameterEntries`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterEntry>]
        attr_accessor :parameter_entries
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventParameters]
        attr_accessor :parameters
      
        # Optional. This is used to de-dup incoming request: if the duplicate request
        # was detected, the response from the previous execution is returned.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. Matched against all `@link TriggerConfig`s across all integrations.
        # i.e. TriggerConfig.trigger_id.equals(trigger_id). The trigger_id is in the
        # format of `api_trigger/TRIGGER_NAME`.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @do_not_propagate_error = args[:do_not_propagate_error] if args.key?(:do_not_propagate_error)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @parameter_entries = args[:parameter_entries] if args.key?(:parameter_entries)
          @parameters = args[:parameters] if args.key?(:parameters)
          @request_id = args[:request_id] if args.key?(:request_id)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # The response for executing an integration.
      class GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse
        include Google::Apis::Core::Hashable
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `eventParameters`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventParameters]
        attr_accessor :event_parameters
      
        # Is true if any execution in the integration failed. False otherwise.
        # Corresponds to the JSON property `executionFailed`
        # @return [Boolean]
        attr_accessor :execution_failed
        alias_method :execution_failed?, :execution_failed
      
        # The id of the execution corresponding to this run of integration.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # OUTPUT parameters in format of Map. Where Key is the name of the parameter.
        # Note: Name of the system generated parameters are wrapped by backtick(`) to
        # distinguish them from the user defined parameters.
        # Corresponds to the JSON property `outputParameters`
        # @return [Hash<String,Object>]
        attr_accessor :output_parameters
      
        # Parameters are a part of Event and can be used to communicate between
        # different tasks that are part of the same integration execution.
        # Corresponds to the JSON property `parameterEntries`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterEntry>]
        attr_accessor :parameter_entries
      
        # Optional. OUTPUT parameters from integration execution.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_parameters = args[:event_parameters] if args.key?(:event_parameters)
          @execution_failed = args[:execution_failed] if args.key?(:execution_failed)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @output_parameters = args[:output_parameters] if args.key?(:output_parameters)
          @parameter_entries = args[:parameter_entries] if args.key?(:parameter_entries)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # The request for executing a functional test.
      class GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Input parameters used by test case execution.
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :input_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
        end
      end
      
      # The response for executing a functional test.
      class GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse
        include Google::Apis::Core::Hashable
      
        # Results of each assertions ran during execution of test case.
        # Corresponds to the JSON property `assertionResults`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAssertionResult>]
        attr_accessor :assertion_results
      
        # The id of the execution corresponding to this run of integration.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # OUTPUT parameters in format of Map. Where Key is the name of the parameter.
        # Note: Name of the system generated parameters are wrapped by backtick(`) to
        # distinguish them from the user defined parameters.
        # Corresponds to the JSON property `outputParameters`
        # @return [Hash<String,Object>]
        attr_accessor :output_parameters
      
        # State of the test case execution
        # Corresponds to the JSON property `testExecutionState`
        # @return [String]
        attr_accessor :test_execution_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion_results = args[:assertion_results] if args.key?(:assertion_results)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @output_parameters = args[:output_parameters] if args.key?(:output_parameters)
          @test_execution_state = args[:test_execution_state] if args.key?(:test_execution_state)
        end
      end
      
      # Request for ExecuteTestCases.
      class GoogleCloudIntegrationsV1alphaExecuteTestCasesRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for ExecuteTestCases.
      class GoogleCloudIntegrationsV1alphaExecuteTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # Results of each execution of test cases in an integration version.
        # Corresponds to the JSON property `executeTestCaseResponses`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse>]
        attr_accessor :execute_test_case_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execute_test_case_responses = args[:execute_test_case_responses] if args.key?(:execute_test_case_responses)
        end
      end
      
      # The Execution resource contains detailed information of an individual
      # integration execution.
      class GoogleCloudIntegrationsV1alphaExecution
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud KMS resource name for the CMEK encryption key.
        # Corresponds to the JSON property `cloudKmsKey`
        # @return [String]
        attr_accessor :cloud_kms_key
      
        # Cloud Logging details for execution info
        # Corresponds to the JSON property `cloudLoggingDetails`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCloudLoggingDetails]
        attr_accessor :cloud_logging_details
      
        # Output only. Created time of the execution.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Direct sub executions of the following Execution.
        # Corresponds to the JSON property `directSubExecutions`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaExecution>]
        attr_accessor :direct_sub_executions
      
        # Contains the details of the execution info of this event: this includes the
        # tasks execution details plus the event execution statistics. Next available id:
        # 12
        # Corresponds to the JSON property `eventExecutionDetails`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventExecutionDetails]
        attr_accessor :event_execution_details
      
        # Contains the details of the execution info: this includes the tasks execution
        # details plus the event execution statistics.
        # Corresponds to the JSON property `executionDetails`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaExecutionDetails]
        attr_accessor :execution_details
      
        # The ways user posts this event.
        # Corresponds to the JSON property `executionMethod`
        # @return [String]
        attr_accessor :execution_method
      
        # Output only. State of the integration version
        # Corresponds to the JSON property `integrationVersionState`
        # @return [String]
        attr_accessor :integration_version_state
      
        # Auto-generated primary key.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Contains the details of the execution info: this includes the replay reason
        # and replay tree connecting executions in a parent-child relationship
        # Corresponds to the JSON property `replayInfo`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaExecutionReplayInfo]
        attr_accessor :replay_info
      
        # Event parameters come in as part of the request.
        # Corresponds to the JSON property `requestParameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :request_parameters
      
        # Event parameters come in as part of the request.
        # Corresponds to the JSON property `requestParams`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterEntry>]
        attr_accessor :request_params
      
        # Event parameters returned as part of the response. In the case of error, the `
        # ErrorInfo` field is returned in the following format: ` "ErrorInfo": ` "
        # message": String, "code": Number ` `
        # Corresponds to the JSON property `responseParameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :response_parameters
      
        # 
        # Corresponds to the JSON property `responseParams`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterEntry>]
        attr_accessor :response_params
      
        # Output only. An increasing sequence that is set when a new snapshot is created
        # Corresponds to the JSON property `snapshotNumber`
        # @return [Fixnum]
        attr_accessor :snapshot_number
      
        # The trigger id of the integration trigger config. If both trigger_id and
        # client_id is present, the integration is executed from the start tasks
        # provided by the matching trigger config otherwise it is executed from the
        # default start tasks.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # Output only. Last modified time of the execution.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_kms_key = args[:cloud_kms_key] if args.key?(:cloud_kms_key)
          @cloud_logging_details = args[:cloud_logging_details] if args.key?(:cloud_logging_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @direct_sub_executions = args[:direct_sub_executions] if args.key?(:direct_sub_executions)
          @event_execution_details = args[:event_execution_details] if args.key?(:event_execution_details)
          @execution_details = args[:execution_details] if args.key?(:execution_details)
          @execution_method = args[:execution_method] if args.key?(:execution_method)
          @integration_version_state = args[:integration_version_state] if args.key?(:integration_version_state)
          @name = args[:name] if args.key?(:name)
          @replay_info = args[:replay_info] if args.key?(:replay_info)
          @request_parameters = args[:request_parameters] if args.key?(:request_parameters)
          @request_params = args[:request_params] if args.key?(:request_params)
          @response_parameters = args[:response_parameters] if args.key?(:response_parameters)
          @response_params = args[:response_params] if args.key?(:response_params)
          @snapshot_number = args[:snapshot_number] if args.key?(:snapshot_number)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Contains the details of the execution info: this includes the tasks execution
      # details plus the event execution statistics.
      class GoogleCloudIntegrationsV1alphaExecutionDetails
        include Google::Apis::Core::Hashable
      
        # List of Start and end time of the execution attempts.
        # Corresponds to the JSON property `attemptStats`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAttemptStats>]
        attr_accessor :attempt_stats
      
        # Total size of all event_execution_snapshots for an execution
        # Corresponds to the JSON property `eventExecutionSnapshotsSize`
        # @return [Fixnum]
        attr_accessor :event_execution_snapshots_size
      
        # List of snapshots taken during the execution.
        # Corresponds to the JSON property `executionSnapshots`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaExecutionSnapshot>]
        attr_accessor :execution_snapshots
      
        # Status of the execution.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attempt_stats = args[:attempt_stats] if args.key?(:attempt_stats)
          @event_execution_snapshots_size = args[:event_execution_snapshots_size] if args.key?(:event_execution_snapshots_size)
          @execution_snapshots = args[:execution_snapshots] if args.key?(:execution_snapshots)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Contains the details of the execution info: this includes the replay reason
      # and replay tree connecting executions in a parent-child relationship
      class GoogleCloudIntegrationsV1alphaExecutionReplayInfo
        include Google::Apis::Core::Hashable
      
        # If this execution is a replay of another execution, then this field contains
        # the original execution id.
        # Corresponds to the JSON property `originalExecutionInfoId`
        # @return [String]
        attr_accessor :original_execution_info_id
      
        # Replay mode for the execution
        # Corresponds to the JSON property `replayMode`
        # @return [String]
        attr_accessor :replay_mode
      
        # reason for replay
        # Corresponds to the JSON property `replayReason`
        # @return [String]
        attr_accessor :replay_reason
      
        # If this execution has been replayed, then this field contains the execution
        # ids of the replayed executions.
        # Corresponds to the JSON property `replayedExecutionInfoIds`
        # @return [Array<String>]
        attr_accessor :replayed_execution_info_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_execution_info_id = args[:original_execution_info_id] if args.key?(:original_execution_info_id)
          @replay_mode = args[:replay_mode] if args.key?(:replay_mode)
          @replay_reason = args[:replay_reason] if args.key?(:replay_reason)
          @replayed_execution_info_ids = args[:replayed_execution_info_ids] if args.key?(:replayed_execution_info_ids)
        end
      end
      
      # Contains the snapshot of the execution for a given checkpoint.
      class GoogleCloudIntegrationsV1alphaExecutionSnapshot
        include Google::Apis::Core::Hashable
      
        # Indicates "after which checkpoint task's execution" this snapshot is taken.
        # Corresponds to the JSON property `checkpointTaskNumber`
        # @return [String]
        attr_accessor :checkpoint_task_number
      
        # Metadata of the execution snapshot.
        # Corresponds to the JSON property `executionSnapshotMetadata`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata]
        attr_accessor :execution_snapshot_metadata
      
        # Parameters used during the execution.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :params
      
        # All of the task execution details at the given point of time.
        # Corresponds to the JSON property `taskExecutionDetails`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTaskExecutionDetails>]
        attr_accessor :task_execution_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checkpoint_task_number = args[:checkpoint_task_number] if args.key?(:checkpoint_task_number)
          @execution_snapshot_metadata = args[:execution_snapshot_metadata] if args.key?(:execution_snapshot_metadata)
          @params = args[:params] if args.key?(:params)
          @task_execution_details = args[:task_execution_details] if args.key?(:task_execution_details)
        end
      end
      
      # Metadata of the execution snapshot.
      class GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata
        include Google::Apis::Core::Hashable
      
        # Ancestor iteration number for the task(it will only be non-empty if the task
        # is under 'private workflow')
        # Corresponds to the JSON property `ancestorIterationNumbers`
        # @return [Array<String>]
        attr_accessor :ancestor_iteration_numbers
      
        # Ancestor task number for the task(it will only be non-empty if the task is
        # under 'private workflow')
        # Corresponds to the JSON property `ancestorTaskNumbers`
        # @return [Array<String>]
        attr_accessor :ancestor_task_numbers
      
        # the execution attempt number this snapshot belongs to.
        # Corresponds to the JSON property `executionAttempt`
        # @return [Fixnum]
        attr_accessor :execution_attempt
      
        # The direct integration which the event execution snapshots belongs to
        # Corresponds to the JSON property `integrationName`
        # @return [String]
        attr_accessor :integration_name
      
        # the task name associated with this snapshot.
        # Corresponds to the JSON property `task`
        # @return [String]
        attr_accessor :task
      
        # the task attempt number this snapshot belongs to.
        # Corresponds to the JSON property `taskAttempt`
        # @return [Fixnum]
        attr_accessor :task_attempt
      
        # the task label associated with this snapshot. Could be empty.
        # Corresponds to the JSON property `taskLabel`
        # @return [String]
        attr_accessor :task_label
      
        # The task number associated with this snapshot.
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestor_iteration_numbers = args[:ancestor_iteration_numbers] if args.key?(:ancestor_iteration_numbers)
          @ancestor_task_numbers = args[:ancestor_task_numbers] if args.key?(:ancestor_task_numbers)
          @execution_attempt = args[:execution_attempt] if args.key?(:execution_attempt)
          @integration_name = args[:integration_name] if args.key?(:integration_name)
          @task = args[:task] if args.key?(:task)
          @task_attempt = args[:task_attempt] if args.key?(:task_attempt)
          @task_label = args[:task_label] if args.key?(:task_label)
          @task_number = args[:task_number] if args.key?(:task_number)
        end
      end
      
      # Policy that defines the task retry logic and failure type. If no FailurePolicy
      # is defined for a task, all its dependent tasks will not be executed (i.e, a `
      # retry_strategy` of NONE will be applied).
      class GoogleCloudIntegrationsV1alphaFailurePolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The string condition that will be evaluated to determine if the task
        # should be retried with this failure policy.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/
        # RESTART_INTEGRATION_WITH_BACKOFF. Defines the initial interval in seconds for
        # backoff.
        # Corresponds to the JSON property `intervalTime`
        # @return [String]
        attr_accessor :interval_time
      
        # Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/
        # RESTART_INTEGRATION_WITH_BACKOFF. Defines the number of times the task will be
        # retried if failed.
        # Corresponds to the JSON property `maxRetries`
        # @return [Fixnum]
        attr_accessor :max_retries
      
        # Defines what happens to the task upon failure.
        # Corresponds to the JSON property `retryStrategy`
        # @return [String]
        attr_accessor :retry_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @interval_time = args[:interval_time] if args.key?(:interval_time)
          @max_retries = args[:max_retries] if args.key?(:max_retries)
          @retry_strategy = args[:retry_strategy] if args.key?(:retry_strategy)
        end
      end
      
      # To store Integration version related file i.e. Integration Version, Config
      # variable etc.
      class GoogleCloudIntegrationsV1alphaFile
        include Google::Apis::Core::Hashable
      
        # Integration version config file
        # Corresponds to the JSON property `integrationConfig`
        # @return [Hash<String,Object>]
        attr_accessor :integration_config
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        attr_accessor :integration_version
      
        # File information like Integration version, Integration Config variables etc.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_config = args[:integration_config] if args.key?(:integration_config)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request message for GenerateAgentFlow.
      class GoogleCloudIntegrationsV1alphaGenerateAgentFlowRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The creator id;
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Optional. The description of the AgentFlow to be generated.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The display name of the AgentFlow to be generated.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The intent, described in natural language, for the AgentFlow to
        # generate.
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creator = args[:creator] if args.key?(:creator)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @intent = args[:intent] if args.key?(:intent)
        end
      end
      
      # Response message for GenerateAgentFlow.
      class GoogleCloudIntegrationsV1alphaGenerateAgentFlowResponse
        include Google::Apis::Core::Hashable
      
        # AgentFlow configurations.
        # Corresponds to the JSON property `agentFlow`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAgentFlow]
        attr_accessor :agent_flow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_flow = args[:agent_flow] if args.key?(:agent_flow)
        end
      end
      
      # Request message for GenerateAndUpdateAgentFlow.
      class GoogleCloudIntegrationsV1alphaGenerateAndUpdateAgentFlowRequest
        include Google::Apis::Core::Hashable
      
        # Required. The intent, described in natural language, for the AgentFlow to
        # update.
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # Optional. The updater id;
        # Corresponds to the JSON property `updater`
        # @return [String]
        attr_accessor :updater
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intent = args[:intent] if args.key?(:intent)
          @updater = args[:updater] if args.key?(:updater)
        end
      end
      
      # Response message for GenerateAndUpdateAgentFlow.
      class GoogleCloudIntegrationsV1alphaGenerateAndUpdateAgentFlowResponse
        include Google::Apis::Core::Hashable
      
        # AgentFlow configurations.
        # Corresponds to the JSON property `agentFlow`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAgentFlow]
        attr_accessor :agent_flow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_flow = args[:agent_flow] if args.key?(:agent_flow)
        end
      end
      
      # Request for GenerateOpenApiSpec.
      class GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecRequest
        include Google::Apis::Core::Hashable
      
        # Required. List of api triggers
        # Corresponds to the JSON property `apiTriggerResources`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaApiTriggerResource>]
        attr_accessor :api_trigger_resources
      
        # Required. File format for generated spec.
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_trigger_resources = args[:api_trigger_resources] if args.key?(:api_trigger_resources)
          @file_format = args[:file_format] if args.key?(:file_format)
        end
      end
      
      # Response of the GenerateOpenApiSpec API.
      class GoogleCloudIntegrationsV1alphaGenerateOpenApiSpecResponse
        include Google::Apis::Core::Hashable
      
        # Open API spec as per the required format
        # Corresponds to the JSON property `openApiSpec`
        # @return [String]
        attr_accessor :open_api_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @open_api_spec = args[:open_api_spec] if args.key?(:open_api_spec)
        end
      end
      
      # Returns success or error message
      class GoogleCloudIntegrationsV1alphaGenerateTokenResponse
        include Google::Apis::Core::Hashable
      
        # The message that notifies the user if the request succeeded or not.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Response for the GetClientMetadata rpc
      class GoogleCloudIntegrationsV1alphaGetClientMetadataResponse
        include Google::Apis::Core::Hashable
      
        # Metadata information for the given project
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaProjectProperties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Response for the GetClient rpc
      class GoogleCloudIntegrationsV1alphaGetClientResponse
        include Google::Apis::Core::Hashable
      
        # The configuration information for the Client
        # Corresponds to the JSON property `client`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaClientConfig]
        attr_accessor :client
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client = args[:client] if args.key?(:client)
        end
      end
      
      # Request to Import template
      class GoogleCloudIntegrationsV1alphaImportTemplateRequest
        include Google::Apis::Core::Hashable
      
        # Required. Resource Name of the integration where template needs to be imported/
        # inserted.
        # Corresponds to the JSON property `integration`
        # @return [String]
        attr_accessor :integration
      
        # Optional. Sub Integration which would be created via templates.
        # Corresponds to the JSON property `subIntegrations`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails>]
        attr_accessor :sub_integrations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration = args[:integration] if args.key?(:integration)
          @sub_integrations = args[:sub_integrations] if args.key?(:sub_integrations)
        end
      end
      
      # Response for import template
      class GoogleCloudIntegrationsV1alphaImportTemplateResponse
        include Google::Apis::Core::Hashable
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        attr_accessor :integration_version
      
        # Sub integration versions which are imported.
        # Corresponds to the JSON property `subIntegrationVersions`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion>]
        attr_accessor :sub_integration_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
          @sub_integration_versions = args[:sub_integration_versions] if args.key?(:sub_integration_versions)
        end
      end
      
      # This message only contains a field of integer array.
      class GoogleCloudIntegrationsV1alphaIntParameterArray
        include Google::Apis::Core::Hashable
      
        # Integer array.
        # Corresponds to the JSON property `intValues`
        # @return [Array<Fixnum>]
        attr_accessor :int_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @int_values = args[:int_values] if args.key?(:int_values)
        end
      end
      
      # The integration definition.
      class GoogleCloudIntegrationsV1alphaIntegration
        include Google::Apis::Core::Hashable
      
        # Required. If any integration version is published.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Required. Output only. Auto-generated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The creator's email address. Generated based on the End User
        # Credentials/LOAS role of the user making the call.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # Optional.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The last modifier of this integration
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # Required. The resource name of the integration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Auto-generated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @description = args[:description] if args.key?(:description)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message to be used to configure custom alerting in the `@code EventConfig`
      # protos for an event.
      class GoogleCloudIntegrationsV1alphaIntegrationAlertConfig
        include Google::Apis::Core::Hashable
      
        # The period over which the metric value should be aggregated and evaluated.
        # Format is , where integer should be a positive integer and unit should be one
        # of (s,m,h,d,w) meaning (second, minute, hour, day, week). For an EXPECTED_MIN
        # threshold, this aggregation_period must be lesser than 24 hours.
        # Corresponds to the JSON property `aggregationPeriod`
        # @return [String]
        attr_accessor :aggregation_period
      
        # For how many contiguous aggregation periods should the expected min or max be
        # violated for the alert to be fired.
        # Corresponds to the JSON property `alertThreshold`
        # @return [Fixnum]
        attr_accessor :alert_threshold
      
        # Set to false by default. When set to true, the metrics are not aggregated or
        # pushed to Monarch for this integration alert.
        # Corresponds to the JSON property `disableAlert`
        # @return [Boolean]
        attr_accessor :disable_alert
        alias_method :disable_alert?, :disable_alert
      
        # Name of the alert. This will be displayed in the alert subject. If set, this
        # name should be unique within the scope of the integration.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION
        # metrics. This member should be used to specify what duration value the metrics
        # should exceed for the alert to trigger.
        # Corresponds to the JSON property `durationThreshold`
        # @return [String]
        attr_accessor :duration_threshold
      
        # The type of metric.
        # Corresponds to the JSON property `metricType`
        # @return [String]
        attr_accessor :metric_type
      
        # For either events or tasks, depending on the type of alert, count only final
        # attempts, not retries.
        # Corresponds to the JSON property `onlyFinalAttempt`
        # @return [Boolean]
        attr_accessor :only_final_attempt
        alias_method :only_final_attempt?, :only_final_attempt
      
        # The threshold type, whether lower(expected_min) or upper(expected_max), for
        # which this alert is being configured. If value falls below expected_min or
        # exceeds expected_max, an alert will be fired.
        # Corresponds to the JSON property `thresholdType`
        # @return [String]
        attr_accessor :threshold_type
      
        # The threshold value of the metric, above or below which the alert should be
        # triggered. See EventAlertConfig or TaskAlertConfig for the different alert
        # metric types in each case. For the *RATE metrics, one or both of these fields
        # may be set. Zero is the default value and can be left at that. For *
        # PERCENTILE_DURATION metrics, one or both of these fields may be set, and also,
        # the duration threshold value should be specified in the threshold_duration_ms
        # member below. For *AVERAGE_DURATION metrics, these fields should not be set at
        # all. A different member, threshold_duration_ms, must be set in the
        # EventAlertConfig or the TaskAlertConfig.
        # Corresponds to the JSON property `thresholdValue`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue]
        attr_accessor :threshold_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_period = args[:aggregation_period] if args.key?(:aggregation_period)
          @alert_threshold = args[:alert_threshold] if args.key?(:alert_threshold)
          @disable_alert = args[:disable_alert] if args.key?(:disable_alert)
          @display_name = args[:display_name] if args.key?(:display_name)
          @duration_threshold = args[:duration_threshold] if args.key?(:duration_threshold)
          @metric_type = args[:metric_type] if args.key?(:metric_type)
          @only_final_attempt = args[:only_final_attempt] if args.key?(:only_final_attempt)
          @threshold_type = args[:threshold_type] if args.key?(:threshold_type)
          @threshold_value = args[:threshold_value] if args.key?(:threshold_value)
        end
      end
      
      # The threshold value of the metric, above or below which the alert should be
      # triggered. See EventAlertConfig or TaskAlertConfig for the different alert
      # metric types in each case. For the *RATE metrics, one or both of these fields
      # may be set. Zero is the default value and can be left at that. For *
      # PERCENTILE_DURATION metrics, one or both of these fields may be set, and also,
      # the duration threshold value should be specified in the threshold_duration_ms
      # member below. For *AVERAGE_DURATION metrics, these fields should not be set at
      # all. A different member, threshold_duration_ms, must be set in the
      # EventAlertConfig or the TaskAlertConfig.
      class GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue
        include Google::Apis::Core::Hashable
      
        # Absolute value threshold.
        # Corresponds to the JSON property `absolute`
        # @return [Fixnum]
        attr_accessor :absolute
      
        # Percentage threshold.
        # Corresponds to the JSON property `percentage`
        # @return [Fixnum]
        attr_accessor :percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @absolute = args[:absolute] if args.key?(:absolute)
          @percentage = args[:percentage] if args.key?(:percentage)
        end
      end
      
      # Integration Config Parameter is defined in the integration config and are used
      # to provide external configuration for integration. It provide information
      # about data types of the expected parameters and provide any default values or
      # value. They can also be used to add custom attributes.
      class GoogleCloudIntegrationsV1alphaIntegrationConfigParameter
        include Google::Apis::Core::Hashable
      
        # Integration Parameter is defined in the integration config and are used to
        # provide information about data types of the expected parameters and provide
        # any default values if needed. They can also be used to add custom attributes.
        # These are static in nature and should not be used for dynamic event definition.
        # Corresponds to the JSON property `parameter`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationParameter]
        attr_accessor :parameter
      
        # The type of the parameter.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter = args[:parameter] if args.key?(:parameter)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Integration Parameter is defined in the integration config and are used to
      # provide information about data types of the expected parameters and provide
      # any default values if needed. They can also be used to add custom attributes.
      # These are static in nature and should not be used for dynamic event definition.
      class GoogleCloudIntegrationsV1alphaIntegrationParameter
        include Google::Apis::Core::Hashable
      
        # Indicates whether this variable contains large data and need to be uploaded to
        # Cloud Storage.
        # Corresponds to the JSON property `containsLargeData`
        # @return [Boolean]
        attr_accessor :contains_large_data
        alias_method :contains_large_data?, :contains_large_data
      
        # Type of the parameter.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The type of the parameter.
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType]
        attr_accessor :default_value
      
        # Optional. Description of the parameter.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name (without prefix) to be displayed in the UI for this parameter. E.g.
        # if the key is "foo.bar.myName", then the name would be "myName".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Specifies the input/output type for the parameter.
        # Corresponds to the JSON property `inputOutputType`
        # @return [String]
        attr_accessor :input_output_type
      
        # Whether this parameter is a transient parameter.
        # Corresponds to the JSON property `isTransient`
        # @return [Boolean]
        attr_accessor :is_transient
        alias_method :is_transient?, :is_transient
      
        # This schema will be used to validate runtime JSON-typed values of this
        # parameter.
        # Corresponds to the JSON property `jsonSchema`
        # @return [String]
        attr_accessor :json_schema
      
        # Key is used to retrieve the corresponding parameter value. This should be
        # unique for a given fired event. These parameters must be predefined in the
        # integration definition.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # True if this parameter should be masked in the logs
        # Corresponds to the JSON property `masked`
        # @return [Boolean]
        attr_accessor :masked
        alias_method :masked?, :masked
      
        # The identifier of the node (TaskConfig/TriggerConfig) this parameter was
        # produced by, if it is a transient param or a copy of an input param.
        # Corresponds to the JSON property `producer`
        # @return [String]
        attr_accessor :producer
      
        # Searchable in the execution log or not.
        # Corresponds to the JSON property `searchable`
        # @return [Boolean]
        attr_accessor :searchable
        alias_method :searchable?, :searchable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contains_large_data = args[:contains_large_data] if args.key?(:contains_large_data)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @input_output_type = args[:input_output_type] if args.key?(:input_output_type)
          @is_transient = args[:is_transient] if args.key?(:is_transient)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @key = args[:key] if args.key?(:key)
          @masked = args[:masked] if args.key?(:masked)
          @producer = args[:producer] if args.key?(:producer)
          @searchable = args[:searchable] if args.key?(:searchable)
        end
      end
      
      # The integration version definition.
      class GoogleCloudIntegrationsV1alphaIntegrationVersion
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud KMS resource name for the CMEK encryption key.
        # Corresponds to the JSON property `cloudKmsKey`
        # @return [String]
        attr_accessor :cloud_kms_key
      
        # Cloud Logging details for execution info
        # Corresponds to the JSON property `cloudLoggingDetails`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCloudLoggingDetails]
        attr_accessor :cloud_logging_details
      
        # Output only. Auto-generated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Optional. The resource name of the template from which the
        # integration is created.
        # Corresponds to the JSON property `createdFromTemplate`
        # @return [String]
        attr_accessor :created_from_template
      
        # Optional. Flag to disable database persistence for execution data, including
        # event execution info, execution export info, execution metadata index and
        # execution param index.
        # Corresponds to the JSON property `databasePersistencePolicy`
        # @return [String]
        attr_accessor :database_persistence_policy
      
        # Optional. The integration description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. True if variable masking feature should be turned on for this
        # version
        # Corresponds to the JSON property `enableVariableMasking`
        # @return [Boolean]
        attr_accessor :enable_variable_masking
        alias_method :enable_variable_masking?, :enable_variable_masking
      
        # Optional. Error Catch Task configuration for the integration. It's optional.
        # Corresponds to the JSON property `errorCatcherConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaErrorCatcherConfig>]
        attr_accessor :error_catcher_configs
      
        # Optional. Config Parameters that are expected to be passed to the integration
        # when an integration is published. This consists of all the parameters that are
        # expected to provide configuration in the integration execution. This gives the
        # user the ability to provide default values, value, add information like
        # connection url, project based configuration value and also provide data types
        # of each parameter.
        # Corresponds to the JSON property `integrationConfigParameters`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationConfigParameter>]
        attr_accessor :integration_config_parameters
      
        # Optional. Parameters that are expected to be passed to the integration when an
        # event is triggered. This consists of all the parameters that are expected in
        # the integration execution. This gives the user the ability to provide default
        # values, add information like PII and also provide data types of each parameter.
        # Corresponds to the JSON property `integrationParameters`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationParameter>]
        attr_accessor :integration_parameters
      
        # LINT.IfChange This is the frontend version of WorkflowParameters. It's exactly
        # like the backend version except that instead of flattening protobuf parameters
        # and treating every field and subfield of a protobuf parameter as a separate
        # parameter, the fields/subfields of a protobuf parameter will be nested as "
        # children" (see 'children' field below) parameters of the parent parameter.
        # Please refer to enterprise/crm/eventbus/proto/workflow_parameters.proto for
        # more information about WorkflowParameters.
        # Corresponds to the JSON property `integrationParametersInternal`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoWorkflowParameters]
        attr_accessor :integration_parameters_internal
      
        # Optional. The last modifier's email address. Generated based on the End User
        # Credentials/LOAS role of the user making the call.
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # Optional. The edit lock holder's email address. Generated based on the End
        # User Credentials/LOAS role of the user making the call.
        # Corresponds to the JSON property `lockHolder`
        # @return [String]
        attr_accessor :lock_holder
      
        # Output only. Auto-generated primary key.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The origin that indicates where this integration is coming from.
        # Corresponds to the JSON property `origin`
        # @return [String]
        attr_accessor :origin
      
        # Optional. The id of the template which was used to create this
        # integration_version.
        # Corresponds to the JSON property `parentTemplateId`
        # @return [String]
        attr_accessor :parent_template_id
      
        # Optional. The run-as service account email, if set and auth config is not
        # configured, that will be used to generate auth token to be used in Connector
        # task, Rest caller task and Cloud function task.
        # Corresponds to the JSON property `runAsServiceAccount`
        # @return [String]
        attr_accessor :run_as_service_account
      
        # Output only. An increasing sequence that is set when a new snapshot is created.
        # The last created snapshot can be identified by [workflow_name, org_id latest(
        # snapshot_number)]. However, last created snapshot need not be same as the HEAD.
        # So users should always use "HEAD" tag to identify the head.
        # Corresponds to the JSON property `snapshotNumber`
        # @return [Fixnum]
        attr_accessor :snapshot_number
      
        # Output only. User should not set it as an input.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Generated by eventbus. User should not set it as an input.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Optional. Task configuration for the integration. It's optional, but the
        # integration doesn't do anything without task_configs.
        # Corresponds to the JSON property `taskConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTaskConfig>]
        attr_accessor :task_configs
      
        # Optional. Task configuration for the integration. It's optional, but the
        # integration doesn't do anything without task_configs.
        # Corresponds to the JSON property `taskConfigsInternal`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoTaskConfig>]
        attr_accessor :task_configs_internal
      
        # Optional. Contains a graph of tasks that will be executed before putting the
        # event in a terminal state (SUCCEEDED/FAILED/FATAL), regardless of success or
        # failure, similar to "finally" in code.
        # Corresponds to the JSON property `teardown`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoTeardown]
        attr_accessor :teardown
      
        # Optional. Trigger configurations.
        # Corresponds to the JSON property `triggerConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTriggerConfig>]
        attr_accessor :trigger_configs
      
        # Optional. Trigger configurations.
        # Corresponds to the JSON property `triggerConfigsInternal`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoTriggerConfig>]
        attr_accessor :trigger_configs_internal
      
        # Output only. Auto-generated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. A user-defined label that annotates an integration version.
        # Typically, this is only set when the integration version is created.
        # Corresponds to the JSON property `userLabel`
        # @return [String]
        attr_accessor :user_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_kms_key = args[:cloud_kms_key] if args.key?(:cloud_kms_key)
          @cloud_logging_details = args[:cloud_logging_details] if args.key?(:cloud_logging_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @created_from_template = args[:created_from_template] if args.key?(:created_from_template)
          @database_persistence_policy = args[:database_persistence_policy] if args.key?(:database_persistence_policy)
          @description = args[:description] if args.key?(:description)
          @enable_variable_masking = args[:enable_variable_masking] if args.key?(:enable_variable_masking)
          @error_catcher_configs = args[:error_catcher_configs] if args.key?(:error_catcher_configs)
          @integration_config_parameters = args[:integration_config_parameters] if args.key?(:integration_config_parameters)
          @integration_parameters = args[:integration_parameters] if args.key?(:integration_parameters)
          @integration_parameters_internal = args[:integration_parameters_internal] if args.key?(:integration_parameters_internal)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @lock_holder = args[:lock_holder] if args.key?(:lock_holder)
          @name = args[:name] if args.key?(:name)
          @origin = args[:origin] if args.key?(:origin)
          @parent_template_id = args[:parent_template_id] if args.key?(:parent_template_id)
          @run_as_service_account = args[:run_as_service_account] if args.key?(:run_as_service_account)
          @snapshot_number = args[:snapshot_number] if args.key?(:snapshot_number)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
          @task_configs = args[:task_configs] if args.key?(:task_configs)
          @task_configs_internal = args[:task_configs_internal] if args.key?(:task_configs_internal)
          @teardown = args[:teardown] if args.key?(:teardown)
          @trigger_configs = args[:trigger_configs] if args.key?(:trigger_configs)
          @trigger_configs_internal = args[:trigger_configs_internal] if args.key?(:trigger_configs_internal)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_label = args[:user_label] if args.key?(:user_label)
        end
      end
      
      # Define the template of IntegrationVersion.
      class GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate
        include Google::Apis::Core::Hashable
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        attr_accessor :integration_version
      
        # Required. Unique Key of the IntegrationVersion.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Represents JSON web token(JWT), which is a compact, URL-safe means of
      # representing claims to be transferred between two parties, enabling the claims
      # to be digitally signed or integrity protected.
      class GoogleCloudIntegrationsV1alphaJwt
        include Google::Apis::Core::Hashable
      
        # The token calculated by the header, payload and signature.
        # Corresponds to the JSON property `jwt`
        # @return [String]
        attr_accessor :jwt
      
        # Identifies which algorithm is used to generate the signature.
        # Corresponds to the JSON property `jwtHeader`
        # @return [String]
        attr_accessor :jwt_header
      
        # Contains a set of claims. The JWT specification defines seven Registered Claim
        # Names which are the standard fields commonly included in tokens. Custom claims
        # are usually also included, depending on the purpose of the token.
        # Corresponds to the JSON property `jwtPayload`
        # @return [String]
        attr_accessor :jwt_payload
      
        # User's pre-shared secret to sign the token.
        # Corresponds to the JSON property `secret`
        # @return [String]
        attr_accessor :secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jwt = args[:jwt] if args.key?(:jwt)
          @jwt_header = args[:jwt_header] if args.key?(:jwt_header)
          @jwt_payload = args[:jwt_payload] if args.key?(:jwt_payload)
          @secret = args[:secret] if args.key?(:secret)
        end
      end
      
      # Request for lift Suspension
      class GoogleCloudIntegrationsV1alphaLiftSuspensionRequest
        include Google::Apis::Core::Hashable
      
        # User passed in suspension result and will be used to control workflow
        # execution branching behavior by setting up corresponnding edge condition with
        # suspension result. For example, if you want to lift the suspension, you can
        # pass "Approved", or if you want to reject the suspension and terminate
        # workfloe execution, you can pass "Rejected" and terminate the workflow
        # execution with configuring the edge condition.
        # Corresponds to the JSON property `suspensionResult`
        # @return [String]
        attr_accessor :suspension_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suspension_result = args[:suspension_result] if args.key?(:suspension_result)
        end
      end
      
      # Response of lift Suspense
      class GoogleCloudIntegrationsV1alphaLiftSuspensionResponse
        include Google::Apis::Core::Hashable
      
        # Execution Id that will be returned
        # Corresponds to the JSON property `eventExecutionInfoId`
        # @return [String]
        attr_accessor :event_execution_info_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_execution_info_id = args[:event_execution_info_id] if args.key?(:event_execution_info_id)
        end
      end
      
      # Request for LinkAppsScriptProject rpc call.
      class GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest
        include Google::Apis::Core::Hashable
      
        # The id of the Apps Script project to be linked.
        # Corresponds to the JSON property `scriptId`
        # @return [String]
        attr_accessor :script_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @script_id = args[:script_id] if args.key?(:script_id)
        end
      end
      
      # Response for LinkAppsScriptProject rpc call.
      class GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse
        include Google::Apis::Core::Hashable
      
        # The id of the linked Apps Script project.
        # Corresponds to the JSON property `scriptId`
        # @return [String]
        attr_accessor :script_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @script_id = args[:script_id] if args.key?(:script_id)
        end
      end
      
      # Response for ListAgentFlows.
      class GoogleCloudIntegrationsV1alphaListAgentFlowsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The AgentFlows from the specified collection.
        # Corresponds to the JSON property `agentFlows`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAgentFlow>]
        attr_accessor :agent_flows
      
        # Output only. A token, which can be sent as `page_token` to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_flows = args[:agent_flows] if args.key?(:agent_flows)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response to list AuthConfigs.
      class GoogleCloudIntegrationsV1alphaListAuthConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The list of AuthConfigs retrieved.
        # Corresponds to the JSON property `authConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAuthConfig>]
        attr_accessor :auth_configs
      
        # The token used to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_configs = args[:auth_configs] if args.key?(:auth_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response to list Certificates.
      class GoogleCloudIntegrationsV1alphaListCertificatesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Certificates retrieved.
        # Corresponds to the JSON property `certificates`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCertificate>]
        attr_accessor :certificates
      
        # The token used to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificates = args[:certificates] if args.key?(:certificates)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response containing Connections listed by region.
      class GoogleCloudIntegrationsV1alphaListConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # Connections.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudConnectorsV1Connection>]
        attr_accessor :connections
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connections = args[:connections] if args.key?(:connections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for listing the integration execution data.
      class GoogleCloudIntegrationsV1alphaListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # Required. The detailed information of requested executions.
        # Corresponds to the JSON property `executionInfos`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo>]
        attr_accessor :execution_infos
      
        # The detailed information of requested executions
        # Corresponds to the JSON property `executions`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaExecution>]
        attr_accessor :executions
      
        # The token used to retrieve the next page results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_infos = args[:execution_infos] if args.key?(:execution_infos)
          @executions = args[:executions] if args.key?(:executions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for ListIntegrationVersions.
      class GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The integrations which match the request.
        # Corresponds to the JSON property `integrationVersions`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion>]
        attr_accessor :integration_versions
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Whether the user has no permission on the version or not.
        # Corresponds to the JSON property `noPermission`
        # @return [Boolean]
        attr_accessor :no_permission
        alias_method :no_permission?, :no_permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_versions = args[:integration_versions] if args.key?(:integration_versions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @no_permission = args[:no_permission] if args.key?(:no_permission)
        end
      end
      
      # Response for ListIntegrations.
      class GoogleCloudIntegrationsV1alphaListIntegrationsResponse
        include Google::Apis::Core::Hashable
      
        # The integrations which match the request.
        # Corresponds to the JSON property `integrations`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegration>]
        attr_accessor :integrations
      
        # The next page token for the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integrations = args[:integrations] if args.key?(:integrations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for listing RuntimeActionSchemas for a specific Connection.
      class GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Runtime action schemas.
        # Corresponds to the JSON property `runtimeActionSchemas`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaRuntimeActionSchema>]
        attr_accessor :runtime_action_schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @runtime_action_schemas = args[:runtime_action_schemas] if args.key?(:runtime_action_schemas)
        end
      end
      
      # Response for listing RuntimeEntitySchemas for a specific Connection.
      class GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Runtime entity schemas.
        # Corresponds to the JSON property `runtimeEntitySchemas`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaRuntimeEntitySchema>]
        attr_accessor :runtime_entity_schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @runtime_entity_schemas = args[:runtime_entity_schemas] if args.key?(:runtime_entity_schemas)
        end
      end
      
      # Response to list SfdcChannels.
      class GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse
        include Google::Apis::Core::Hashable
      
        # The token used to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of SfdcChannels retrieved.
        # Corresponds to the JSON property `sfdcChannels`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSfdcChannel>]
        attr_accessor :sfdc_channels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sfdc_channels = args[:sfdc_channels] if args.key?(:sfdc_channels)
        end
      end
      
      # Response to list SfdcInstances.
      class GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The token used to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of SfdcInstances retrieved.
        # Corresponds to the JSON property `sfdcInstances`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSfdcInstance>]
        attr_accessor :sfdc_instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sfdc_instances = args[:sfdc_instances] if args.key?(:sfdc_instances)
        end
      end
      
      # Response for Suspensions.ListSuspensions.
      class GoogleCloudIntegrationsV1alphaListSuspensionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The suspensions for the relevant execution which the caller has permissions to
        # view and resolve.
        # Corresponds to the JSON property `suspensions`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSuspension>]
        attr_accessor :suspensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @suspensions = args[:suspensions] if args.key?(:suspensions)
        end
      end
      
      # Response for a request to list templates
      class GoogleCloudIntegrationsV1alphaListTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # The token used to retrieve the next page results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of templates retrieved.
        # Corresponds to the JSON property `templates`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTemplate>]
        attr_accessor :templates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @templates = args[:templates] if args.key?(:templates)
        end
      end
      
      # Response for ListTestCases
      class GoogleCloudIntegrationsV1alphaListTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The test cases corresponding to the specified filter
        # Corresponds to the JSON property `testCases`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTestCase>]
        attr_accessor :test_cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @test_cases = args[:test_cases] if args.key?(:test_cases)
        end
      end
      
      # The configuration for mocking of a task during test execution Next available
      # id: 4
      class GoogleCloudIntegrationsV1alphaMockConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Number of times the given task should fail for failure mock strategy
        # Corresponds to the JSON property `failedExecutions`
        # @return [Fixnum]
        attr_accessor :failed_executions
      
        # Mockstrategy defines how the particular task should be mocked during test
        # execution
        # Corresponds to the JSON property `mockStrategy`
        # @return [String]
        attr_accessor :mock_strategy
      
        # Optional. List of key-value pairs for specific mock strategy
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaEventParameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_executions = args[:failed_executions] if args.key?(:failed_executions)
          @mock_strategy = args[:mock_strategy] if args.key?(:mock_strategy)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # The task that is next in line to be executed, if the condition specified
      # evaluated to true.
      class GoogleCloudIntegrationsV1alphaNextTask
        include Google::Apis::Core::Hashable
      
        # Standard filter expression for this task to become an eligible next task.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # User-provided description intended to give additional business context about
        # the task.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-provided label that is attached to this edge in the UI.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # ID of the next task.
        # Corresponds to the JSON property `taskConfigId`
        # @return [String]
        attr_accessor :task_config_id
      
        # Task number of the next task.
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @task_config_id = args[:task_config_id] if args.key?(:task_config_id)
          @task_id = args[:task_id] if args.key?(:task_id)
        end
      end
      
      # The OAuth Type where the client sends request with the client id and requested
      # scopes to auth endpoint. User sees a consent screen and auth code is received
      # at specified redirect url afterwards. The auth code is then combined with the
      # client id and secret and sent to the token endpoint in exchange for the access
      # and refresh token. The refresh token can be used to fetch new access tokens.
      class GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode
        include Google::Apis::Core::Hashable
      
        # The access token represents the authorization of a specific application to
        # access specific parts of a user’s data.
        # Corresponds to the JSON property `accessToken`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAccessToken]
        attr_accessor :access_token
      
        # Indicates if the user has opted in Google Reauth Policy. If opted in, the
        # refresh token will be valid for 20 hours, after which time users must re-
        # authenticate in order to obtain a new one.
        # Corresponds to the JSON property `applyReauthPolicy`
        # @return [Boolean]
        attr_accessor :apply_reauth_policy
        alias_method :apply_reauth_policy?, :apply_reauth_policy
      
        # The Auth Code that is used to initially retrieve the access token.
        # Corresponds to the JSON property `authCode`
        # @return [String]
        attr_accessor :auth_code
      
        # The auth url endpoint to send the auth code request to.
        # Corresponds to the JSON property `authEndpoint`
        # @return [String]
        attr_accessor :auth_endpoint
      
        # A generic multi-map that holds key value pairs. They keys and values can be of
        # any type, unless specified.
        # Corresponds to the JSON property `authParams`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaParameterMap]
        attr_accessor :auth_params
      
        # The client's id.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # The client's secret.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # Represent how to pass parameters to fetch access token
        # Corresponds to the JSON property `requestType`
        # @return [String]
        attr_accessor :request_type
      
        # A space-delimited list of requested scope permissions.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # The token url endpoint to send the token request to.
        # Corresponds to the JSON property `tokenEndpoint`
        # @return [String]
        attr_accessor :token_endpoint
      
        # A generic multi-map that holds key value pairs. They keys and values can be of
        # any type, unless specified.
        # Corresponds to the JSON property `tokenParams`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaParameterMap]
        attr_accessor :token_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @apply_reauth_policy = args[:apply_reauth_policy] if args.key?(:apply_reauth_policy)
          @auth_code = args[:auth_code] if args.key?(:auth_code)
          @auth_endpoint = args[:auth_endpoint] if args.key?(:auth_endpoint)
          @auth_params = args[:auth_params] if args.key?(:auth_params)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @request_type = args[:request_type] if args.key?(:request_type)
          @scope = args[:scope] if args.key?(:scope)
          @token_endpoint = args[:token_endpoint] if args.key?(:token_endpoint)
          @token_params = args[:token_params] if args.key?(:token_params)
        end
      end
      
      # For client credentials grant, the client sends a POST request with grant_type
      # as 'client_credentials' to the authorization server. The authorization server
      # will respond with a JSON object containing the access token.
      class GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials
        include Google::Apis::Core::Hashable
      
        # The access token represents the authorization of a specific application to
        # access specific parts of a user’s data.
        # Corresponds to the JSON property `accessToken`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAccessToken]
        attr_accessor :access_token
      
        # The client's ID.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # The client's secret.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # Represent how to pass parameters to fetch access token
        # Corresponds to the JSON property `requestType`
        # @return [String]
        attr_accessor :request_type
      
        # A space-delimited list of requested scope permissions.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # The token endpoint is used by the client to obtain an access token by
        # presenting its authorization grant or refresh token.
        # Corresponds to the JSON property `tokenEndpoint`
        # @return [String]
        attr_accessor :token_endpoint
      
        # A generic multi-map that holds key value pairs. They keys and values can be of
        # any type, unless specified.
        # Corresponds to the JSON property `tokenParams`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaParameterMap]
        attr_accessor :token_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @request_type = args[:request_type] if args.key?(:request_type)
          @scope = args[:scope] if args.key?(:scope)
          @token_endpoint = args[:token_endpoint] if args.key?(:token_endpoint)
          @token_params = args[:token_params] if args.key?(:token_params)
        end
      end
      
      # For resource owner credentials grant, the client will ask the user for their
      # authorization credentials (ususally a username and password) and send a POST
      # request to the authorization server. The authorization server will respond
      # with a JSON object containing the access token.
      class GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials
        include Google::Apis::Core::Hashable
      
        # The access token represents the authorization of a specific application to
        # access specific parts of a user’s data.
        # Corresponds to the JSON property `accessToken`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAccessToken]
        attr_accessor :access_token
      
        # The client's ID.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # The client's secret.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # The user's password.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Represent how to pass parameters to fetch access token
        # Corresponds to the JSON property `requestType`
        # @return [String]
        attr_accessor :request_type
      
        # A space-delimited list of requested scope permissions.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # The token endpoint is used by the client to obtain an access token by
        # presenting its authorization grant or refresh token.
        # Corresponds to the JSON property `tokenEndpoint`
        # @return [String]
        attr_accessor :token_endpoint
      
        # A generic multi-map that holds key value pairs. They keys and values can be of
        # any type, unless specified.
        # Corresponds to the JSON property `tokenParams`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaParameterMap]
        attr_accessor :token_params
      
        # The user's username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @password = args[:password] if args.key?(:password)
          @request_type = args[:request_type] if args.key?(:request_type)
          @scope = args[:scope] if args.key?(:scope)
          @token_endpoint = args[:token_endpoint] if args.key?(:token_endpoint)
          @token_params = args[:token_params] if args.key?(:token_params)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # OIDC Token
      class GoogleCloudIntegrationsV1alphaOidcToken
        include Google::Apis::Core::Hashable
      
        # Audience to be used when generating OIDC token. The audience claim identifies
        # the recipients that the JWT is intended for.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # The service account email to be used as the identity for the token.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # ID token obtained for the service account
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The approximate time until the token retrieved is valid.
        # Corresponds to the JSON property `tokenExpireTime`
        # @return [String]
        attr_accessor :token_expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @token = args[:token] if args.key?(:token)
          @token_expire_time = args[:token_expire_time] if args.key?(:token_expire_time)
        end
      end
      
      # A generic multi-map that holds key value pairs. They keys and values can be of
      # any type, unless specified.
      class GoogleCloudIntegrationsV1alphaParameterMap
        include Google::Apis::Core::Hashable
      
        # A list of parameter map entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaParameterMapEntry>]
        attr_accessor :entries
      
        # Option to specify key type for all entries of the map. If provided then field
        # types for all entries must conform to this.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # Option to specify value type for all entries of the map. If provided then
        # field types for all entries must conform to this.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @key_type = args[:key_type] if args.key?(:key_type)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Entry is a pair of key and value.
      class GoogleCloudIntegrationsV1alphaParameterMapEntry
        include Google::Apis::Core::Hashable
      
        # Field represents either the key or value in an entry.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaParameterMapField]
        attr_accessor :key
      
        # Field represents either the key or value in an entry.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaParameterMapField]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Field represents either the key or value in an entry.
      class GoogleCloudIntegrationsV1alphaParameterMapField
        include Google::Apis::Core::Hashable
      
        # The type of the parameter.
        # Corresponds to the JSON property `literalValue`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType]
        attr_accessor :literal_value
      
        # Referencing one of the Integration variables.
        # Corresponds to the JSON property `referenceKey`
        # @return [String]
        attr_accessor :reference_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @literal_value = args[:literal_value] if args.key?(:literal_value)
          @reference_key = args[:reference_key] if args.key?(:reference_key)
        end
      end
      
      # Metadata information for the given project
      class GoogleCloudIntegrationsV1alphaProjectProperties
        include Google::Apis::Core::Hashable
      
        # Required. Required: The client billing type that was requested
        # Corresponds to the JSON property `billingType`
        # @return [String]
        attr_accessor :billing_type
      
        # An enum value of what the enablement state is for the given project
        # Corresponds to the JSON property `ipEnablementState`
        # @return [String]
        attr_accessor :ip_enablement_state
      
        # A list of provisioned regions on the current project
        # Corresponds to the JSON property `provisionedRegions`
        # @return [Array<String>]
        attr_accessor :provisioned_regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_type = args[:billing_type] if args.key?(:billing_type)
          @ip_enablement_state = args[:ip_enablement_state] if args.key?(:ip_enablement_state)
          @provisioned_regions = args[:provisioned_regions] if args.key?(:provisioned_regions)
        end
      end
      
      # Request for PostProvisioning rpc call.
      class GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Indicate which workflows to create
        # Corresponds to the JSON property `workflows`
        # @return [Array<String>]
        attr_accessor :workflows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @workflows = args[:workflows] if args.key?(:workflows)
        end
      end
      
      # Response for PostProvisioning rpc call.
      class GoogleCloudIntegrationsV1alphaProvisionClientPostProcessorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for the Provision rpc
      class GoogleCloudIntegrationsV1alphaProvisionClientRequest
        include Google::Apis::Core::Hashable
      
        # Configuration information for Client's Cloud KMS information
        # Corresponds to the JSON property `cloudKmsConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCloudKmsConfig]
        attr_accessor :cloud_kms_config
      
        # Optional. Indicates if sample workflow should be created along with
        # provisioning
        # Corresponds to the JSON property `createSampleWorkflows`
        # @return [Boolean]
        attr_accessor :create_sample_workflows
        alias_method :create_sample_workflows?, :create_sample_workflows
      
        # Optional. Indicates if the client should be allowed to make HTTP calls.
        # Corresponds to the JSON property `enableHttpCall`
        # @return [Boolean]
        attr_accessor :enable_http_call
        alias_method :enable_http_call?, :enable_http_call
      
        # Optional. Indicates if the client should be allowed to use managed AI features,
        # i.e. using Cloud Companion APIs of the tenant project. This will allow the
        # customers to use features like Troubleshooting, OpenAPI spec enrichment, etc.
        # for free.
        # Corresponds to the JSON property `enableManagedAiFeatures`
        # @return [Boolean]
        attr_accessor :enable_managed_ai_features
        alias_method :enable_managed_ai_features?, :enable_managed_ai_features
      
        # Optional. Deprecated. Indicates provision with GMEK or CMEK. This field is
        # deprecated and the provision would always be GMEK if cloud_kms_config is not
        # present in the request.
        # Corresponds to the JSON property `provisionGmek`
        # @return [Boolean]
        attr_accessor :provision_gmek
        alias_method :provision_gmek?, :provision_gmek
      
        # Optional. User input run-as service account, if empty, will bring up a new
        # default service account
        # Corresponds to the JSON property `runAsServiceAccount`
        # @return [String]
        attr_accessor :run_as_service_account
      
        # Optional. Indicates if skip CP provision or not
        # Corresponds to the JSON property `skipCpProvision`
        # @return [Boolean]
        attr_accessor :skip_cp_provision
        alias_method :skip_cp_provision?, :skip_cp_provision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_kms_config = args[:cloud_kms_config] if args.key?(:cloud_kms_config)
          @create_sample_workflows = args[:create_sample_workflows] if args.key?(:create_sample_workflows)
          @enable_http_call = args[:enable_http_call] if args.key?(:enable_http_call)
          @enable_managed_ai_features = args[:enable_managed_ai_features] if args.key?(:enable_managed_ai_features)
          @provision_gmek = args[:provision_gmek] if args.key?(:provision_gmek)
          @run_as_service_account = args[:run_as_service_account] if args.key?(:run_as_service_account)
          @skip_cp_provision = args[:skip_cp_provision] if args.key?(:skip_cp_provision)
        end
      end
      
      # Request for PublishIntegrationVersion.
      class GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Config parameters used during integration execution.
        # Corresponds to the JSON property `configParameters`
        # @return [Hash<String,Object>]
        attr_accessor :config_parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_parameters = args[:config_parameters] if args.key?(:config_parameters)
        end
      end
      
      # Response for PublishIntegrationVersion.
      class GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for the ReplaceServiceAccount rpc
      class GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        # Required. REQUIRED: Run-as service account to be updated
        # Corresponds to the JSON property `runAsServiceAccount`
        # @return [String]
        attr_accessor :run_as_service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @run_as_service_account = args[:run_as_service_account] if args.key?(:run_as_service_account)
        end
      end
      
      # Request for replaying an execution.
      class GoogleCloudIntegrationsV1alphaReplayExecutionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The modified input parameters for replay. - Provide values for all
        # the fields in the 'update_mask'. Any field not present in the 'update_mask'
        # will be ignored and its value will be taken from the original execution. - If
        # the 'update_mask' is not specified, all the parameters from original execution
        # will be ignored and only the `modified_parameters` will be used.
        # Corresponds to the JSON property `modifiedParameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :modified_parameters
      
        # Optional. The mode of the replay.
        # Corresponds to the JSON property `replayMode`
        # @return [String]
        attr_accessor :replay_mode
      
        # Required. The user provided reason for replaying the execution.
        # Corresponds to the JSON property `replayReason`
        # @return [String]
        attr_accessor :replay_reason
      
        # Optional. The list of parameters to be updated. - If the `update_mask` is not
        # specified, all the parameters from original execution will be ignored and only
        # the `modified_parameters` will be used. - It is an error to include a
        # parameter in `update_mask` but not in `modified_parameters`. - Updating nested
        # fields in a JSON parameter is not supported, please provide the complete JSON
        # in the `modified_parameters`.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @modified_parameters = args[:modified_parameters] if args.key?(:modified_parameters)
          @replay_mode = args[:replay_mode] if args.key?(:replay_mode)
          @replay_reason = args[:replay_reason] if args.key?(:replay_reason)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Response for replaying an execution.
      class GoogleCloudIntegrationsV1alphaReplayExecutionResponse
        include Google::Apis::Core::Hashable
      
        # Next ID: 4 The id of the execution corresponding to this run of the
        # integration.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # OUTPUT parameters in format of Map. Where Key is the name of the parameter.
        # The parameters would only be present in case of synchrounous execution. Note:
        # Name of the system generated parameters are wrapped by backtick(`) to
        # distinguish them from the user defined parameters.
        # Corresponds to the JSON property `outputParameters`
        # @return [Hash<String,Object>]
        attr_accessor :output_parameters
      
        # The execution id which is replayed.
        # Corresponds to the JSON property `replayedExecutionId`
        # @return [String]
        attr_accessor :replayed_execution_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @output_parameters = args[:output_parameters] if args.key?(:output_parameters)
          @replayed_execution_id = args[:replayed_execution_id] if args.key?(:replayed_execution_id)
        end
      end
      
      # Request for [Suspensions.ResolveSuspensions].
      class GoogleCloudIntegrationsV1alphaResolveSuspensionRequest
        include Google::Apis::Core::Hashable
      
        # A record representing a suspension.
        # Corresponds to the JSON property `suspension`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSuspension]
        attr_accessor :suspension
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suspension = args[:suspension] if args.key?(:suspension)
        end
      end
      
      # Response for Suspensions.ResolveSuspensions.
      class GoogleCloudIntegrationsV1alphaResolveSuspensionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata of an action, including schemas for its inputs and outputs.
      class GoogleCloudIntegrationsV1alphaRuntimeActionSchema
        include Google::Apis::Core::Hashable
      
        # Name of the action.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Input parameter schema for the action.
        # Corresponds to the JSON property `inputSchema`
        # @return [String]
        attr_accessor :input_schema
      
        # Output parameter schema for the action.
        # Corresponds to the JSON property `outputSchema`
        # @return [String]
        attr_accessor :output_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @input_schema = args[:input_schema] if args.key?(:input_schema)
          @output_schema = args[:output_schema] if args.key?(:output_schema)
        end
      end
      
      # Metadata of an entity, including a schema for its properties.
      class GoogleCloudIntegrationsV1alphaRuntimeEntitySchema
        include Google::Apis::Core::Hashable
      
        # The above schema, but for an array of the associated entity.
        # Corresponds to the JSON property `arrayFieldSchema`
        # @return [String]
        attr_accessor :array_field_schema
      
        # Name of the entity.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # List of fields in the entity.
        # Corresponds to the JSON property `fieldSchema`
        # @return [String]
        attr_accessor :field_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_field_schema = args[:array_field_schema] if args.key?(:array_field_schema)
          @entity = args[:entity] if args.key?(:entity)
          @field_schema = args[:field_schema] if args.key?(:field_schema)
        end
      end
      
      # The request for scheduling an integration.
      class GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Input parameters used by integration execution.
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :input_parameters
      
        # Parameters are a part of Event and can be used to communicate between
        # different tasks that are part of the same integration execution.
        # Corresponds to the JSON property `parameterEntries`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterEntry>]
        attr_accessor :parameter_entries
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventParameters]
        attr_accessor :parameters
      
        # This is used to de-dup incoming request: if the duplicate request was detected,
        # the response from the previous execution is returned.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # The time that the integration should be executed. If the time is less or equal
        # to the current time, the integration is executed immediately.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        # Required. Matched against all `@link TriggerConfig`s across all integrations.
        # i.e. TriggerConfig.trigger_id.equals(trigger_id)
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # Optional. This is a unique id provided by the method caller. If provided this
        # will be used as the execution_id when a new execution info is created. This is
        # a string representation of a UUID. Must have no more than 36 characters and
        # contain only alphanumeric characters and hyphens.
        # Corresponds to the JSON property `userGeneratedExecutionId`
        # @return [String]
        attr_accessor :user_generated_execution_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @parameter_entries = args[:parameter_entries] if args.key?(:parameter_entries)
          @parameters = args[:parameters] if args.key?(:parameters)
          @request_id = args[:request_id] if args.key?(:request_id)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @user_generated_execution_id = args[:user_generated_execution_id] if args.key?(:user_generated_execution_id)
        end
      end
      
      # The response for executing an integration.
      class GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse
        include Google::Apis::Core::Hashable
      
        # The execution info id for the executed integrations.
        # Corresponds to the JSON property `executionInfoIds`
        # @return [Array<String>]
        attr_accessor :execution_info_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_info_ids = args[:execution_info_ids] if args.key?(:execution_info_ids)
        end
      end
      
      # Response for SearchIntegrations.
      class GoogleCloudIntegrationsV1alphaSearchIntegrationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of integrations that match the search criteria.
        # Corresponds to the JSON property `integrations`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSearchIntegrationsResponseIntegrationSearchResult>]
        attr_accessor :integrations
      
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
          @integrations = args[:integrations] if args.key?(:integrations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The integration search result with integration level information.
      class GoogleCloudIntegrationsV1alphaSearchIntegrationsResponseIntegrationSearchResult
        include Google::Apis::Core::Hashable
      
        # Output only. The create time of the integration version.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The creator of the integration version.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # The description of the integration version.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The integration id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The integration document metadata.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The region of the integration version.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Output only. The status of the integration version.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The version of the integration version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @status = args[:status] if args.key?(:status)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Response for a request to search templates
      class GoogleCloudIntegrationsV1alphaSearchTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # The token used to retrieve the next page results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of templates retrieved.
        # Corresponds to the JSON property `templates`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTemplate>]
        attr_accessor :templates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @templates = args[:templates] if args.key?(:templates)
        end
      end
      
      # To store string representation of Integration file.
      class GoogleCloudIntegrationsV1alphaSerializedFile
        include Google::Apis::Core::Hashable
      
        # String representation of the file content.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # File information like Integration version, Integration Config variables etc.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @file = args[:file] if args.key?(:file)
        end
      end
      
      # Represents the service account which can be used to generate access token for
      # authenticating the service call.
      class GoogleCloudIntegrationsV1alphaServiceAccountCredentials
        include Google::Apis::Core::Hashable
      
        # A space-delimited list of requested scope permissions.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Name of the service account that has the permission to make the request.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scope = args[:scope] if args.key?(:scope)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # The SfdcChannel that points to a CDC or Platform Event Channel.
      class GoogleCloudIntegrationsV1alphaSfdcChannel
        include Google::Apis::Core::Hashable
      
        # Required. The Channel topic defined by salesforce once an channel is opened
        # Corresponds to the JSON property `channelTopic`
        # @return [String]
        attr_accessor :channel_topic
      
        # Output only. Time when the channel is created
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time when the channel was deleted. Empty if not deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. The description for this channel
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Client level unique name/alias to easily reference a channel.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Indicated if a channel has any active integrations referencing it.
        # Set to false when the channel is created, and set to true if there is any
        # integration published with the channel configured in it.
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # Output only. Last sfdc messsage replay id for channel
        # Corresponds to the JSON property `lastReplayId`
        # @return [String]
        attr_accessor :last_replay_id
      
        # Resource name of the SFDC channel projects/`project`/locations/`location`/
        # sfdcInstances/`sfdc_instance`/sfdcChannels/`sfdc_channel`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time when the channel was last updated
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_topic = args[:channel_topic] if args.key?(:channel_topic)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_active = args[:is_active] if args.key?(:is_active)
          @last_replay_id = args[:last_replay_id] if args.key?(:last_replay_id)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The SfdcInstance resource use to hold channels and connection config data.
      class GoogleCloudIntegrationsV1alphaSfdcInstance
        include Google::Apis::Core::Hashable
      
        # A list of AuthConfigs that can be tried to open the channel to SFDC
        # Corresponds to the JSON property `authConfigId`
        # @return [Array<String>]
        attr_accessor :auth_config_id
      
        # Output only. Time when the instance is created
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time when the instance was deleted. Empty if not deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. A description of the sfdc instance.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User selected unique name/alias to easily reference an instance.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the SFDC instance projects/`project`/locations/`location`/
        # sfdcInstances/`sfdcInstance`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. URL used for API calls after authentication (the login authority is
        # configured within the referenced AuthConfig).
        # Corresponds to the JSON property `serviceAuthority`
        # @return [String]
        attr_accessor :service_authority
      
        # The SFDC Org Id. This is defined in salesforce.
        # Corresponds to the JSON property `sfdcOrgId`
        # @return [String]
        attr_accessor :sfdc_org_id
      
        # Output only. Time when the instance was last updated
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_config_id = args[:auth_config_id] if args.key?(:auth_config_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @service_authority = args[:service_authority] if args.key?(:service_authority)
          @sfdc_org_id = args[:sfdc_org_id] if args.key?(:sfdc_org_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request to Share template
      class GoogleCloudIntegrationsV1alphaShareTemplateRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Project name resources to share the template. The project names is
        # expected in resource format Ex: projects/`project-number` or organization/`org-
        # id`
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<String>]
        attr_accessor :resource_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
        end
      end
      
      # This message only contains a field of string array.
      class GoogleCloudIntegrationsV1alphaStringParameterArray
        include Google::Apis::Core::Hashable
      
        # String array.
        # Corresponds to the JSON property `stringValues`
        # @return [Array<String>]
        attr_accessor :string_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @string_values = args[:string_values] if args.key?(:string_values)
        end
      end
      
      # Policy that dictates the behavior for the task after it completes successfully.
      class GoogleCloudIntegrationsV1alphaSuccessPolicy
        include Google::Apis::Core::Hashable
      
        # State to which the execution snapshot status will be set if the task succeeds.
        # Corresponds to the JSON property `finalState`
        # @return [String]
        attr_accessor :final_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @final_state = args[:final_state] if args.key?(:final_state)
        end
      end
      
      # A record representing a suspension.
      class GoogleCloudIntegrationsV1alphaSuspension
        include Google::Apis::Core::Hashable
      
        # Configurations for approving the Suspension.
        # Corresponds to the JSON property `approvalConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig]
        attr_accessor :approval_config
      
        # Contains when and by whom the suspension was resolved.
        # Corresponds to the JSON property `audit`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSuspensionAudit]
        attr_accessor :audit
      
        # Output only. Auto-generated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. ID of the associated execution.
        # Corresponds to the JSON property `eventExecutionInfoId`
        # @return [String]
        attr_accessor :event_execution_info_id
      
        # Required. The name of the originating integration.
        # Corresponds to the JSON property `integration`
        # @return [String]
        attr_accessor :integration
      
        # Output only. Auto-generated.
        # Corresponds to the JSON property `lastModifyTime`
        # @return [String]
        attr_accessor :last_modify_time
      
        # Resource name for suspensions suspension/`suspension_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. State of this suspension, indicating what action a resolver has
        # taken.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Controls the notifications and resolver permissions for this suspension.
        # Corresponds to the JSON property `suspensionConfig`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoSuspensionConfig]
        attr_accessor :suspension_config
      
        # Required. Task id of the associated SuspensionTask.
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @approval_config = args[:approval_config] if args.key?(:approval_config)
          @audit = args[:audit] if args.key?(:audit)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_execution_info_id = args[:event_execution_info_id] if args.key?(:event_execution_info_id)
          @integration = args[:integration] if args.key?(:integration)
          @last_modify_time = args[:last_modify_time] if args.key?(:last_modify_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @suspension_config = args[:suspension_config] if args.key?(:suspension_config)
          @task_id = args[:task_id] if args.key?(:task_id)
        end
      end
      
      # Configurations for approving the Suspension.
      class GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig
        include Google::Apis::Core::Hashable
      
        # Information to provide for recipients.
        # Corresponds to the JSON property `customMessage`
        # @return [String]
        attr_accessor :custom_message
      
        # Email addresses to send approval request to.
        # Corresponds to the JSON property `emailAddresses`
        # @return [Array<String>]
        attr_accessor :email_addresses
      
        # Expiration configs for the approval request.
        # Corresponds to the JSON property `expiration`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration]
        attr_accessor :expiration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_message = args[:custom_message] if args.key?(:custom_message)
          @email_addresses = args[:email_addresses] if args.key?(:email_addresses)
          @expiration = args[:expiration] if args.key?(:expiration)
        end
      end
      
      # Expiration configs for the approval request.
      class GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration
        include Google::Apis::Core::Hashable
      
        # Output only. Time after which the suspension expires, if no action taken.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Whether the suspension will be REJECTED or LIFTED upon expiration. REJECTED is
        # the default behavior.
        # Corresponds to the JSON property `liftWhenExpired`
        # @return [Boolean]
        attr_accessor :lift_when_expired
        alias_method :lift_when_expired?, :lift_when_expired
      
        # Time after the previous suspension action reminder, if any, is sent using the
        # selected notification option, for a suspension which is still
        # PENDING_UNSPECIFIED.
        # Corresponds to the JSON property `remindTime`
        # @return [String]
        attr_accessor :remind_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @lift_when_expired = args[:lift_when_expired] if args.key?(:lift_when_expired)
          @remind_time = args[:remind_time] if args.key?(:remind_time)
        end
      end
      
      # Contains when and by whom the suspension was resolved.
      class GoogleCloudIntegrationsV1alphaSuspensionAudit
        include Google::Apis::Core::Hashable
      
        # Time at which this suspension was resolved.
        # Corresponds to the JSON property `resolveTime`
        # @return [String]
        attr_accessor :resolve_time
      
        # Email address of the person who resolved this suspension.
        # Corresponds to the JSON property `resolver`
        # @return [String]
        attr_accessor :resolver
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resolve_time = args[:resolve_time] if args.key?(:resolve_time)
          @resolver = args[:resolver] if args.key?(:resolver)
        end
      end
      
      # Request for the SwitchEncryption rpc
      class GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest
        include Google::Apis::Core::Hashable
      
        # Configuration information for Client's Cloud KMS information
        # Corresponds to the JSON property `cloudKmsConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCloudKmsConfig]
        attr_accessor :cloud_kms_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_kms_config = args[:cloud_kms_config] if args.key?(:cloud_kms_config)
        end
      end
      
      # Request to enable/disable variable masking for a provisioned client
      class GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest
        include Google::Apis::Core::Hashable
      
        # Required. REQUIRED: True if variable masking feature should be turned on for
        # this region
        # Corresponds to the JSON property `enableVariableMasking`
        # @return [Boolean]
        attr_accessor :enable_variable_masking
        alias_method :enable_variable_masking?, :enable_variable_masking
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_variable_masking = args[:enable_variable_masking] if args.key?(:enable_variable_masking)
        end
      end
      
      # Request for TakeoverEditLock.
      class GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for TakeoverEditLock.
      class GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse
        include Google::Apis::Core::Hashable
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        attr_accessor :integration_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
        end
      end
      
      # Request for TakeoverTestCaseEditLock.
      class GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The task configuration details. This is not the implementation of Task. There
      # might be multiple TaskConfigs for the same Task.
      class GoogleCloudIntegrationsV1alphaTaskConfig
        include Google::Apis::Core::Hashable
      
        # Conditional task failur retry strategies
        # Corresponds to the JSON property `conditionalFailurePolicies`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaConditionalFailurePolicies]
        attr_accessor :conditional_failure_policies
      
        # Optional. User-provided description intended to give additional business
        # context about the task.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User-provided label that is attached to this TaskConfig in the UI.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Optional Error catcher id of the error catch flow which will be
        # executed when execution error happens in the task
        # Corresponds to the JSON property `errorCatcherId`
        # @return [String]
        attr_accessor :error_catcher_id
      
        # Optional. External task type of the task
        # Corresponds to the JSON property `externalTaskType`
        # @return [String]
        attr_accessor :external_task_type
      
        # Policy that defines the task retry logic and failure type. If no FailurePolicy
        # is defined for a task, all its dependent tasks will not be executed (i.e, a `
        # retry_strategy` of NONE will be applied).
        # Corresponds to the JSON property `failurePolicy`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaFailurePolicy]
        attr_accessor :failure_policy
      
        # Optional. If set, overrides the option configured in the Task implementation
        # class.
        # Corresponds to the JSON property `jsonValidationOption`
        # @return [String]
        attr_accessor :json_validation_option
      
        # Optional. The set of tasks that are next in line to be executed as per the
        # execution graph defined for the parent event, specified by `event_config_id`.
        # Each of these next tasks are executed only if the condition associated with
        # them evaluates to true.
        # Corresponds to the JSON property `nextTasks`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaNextTask>]
        attr_accessor :next_tasks
      
        # Optional. The policy dictating the execution of the next set of tasks for the
        # current task.
        # Corresponds to the JSON property `nextTasksExecutionPolicy`
        # @return [String]
        attr_accessor :next_tasks_execution_policy
      
        # Optional. The customized parameters the user can pass to this task.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaEventParameter>]
        attr_accessor :parameters
      
        # Configuration detail of coordinate, it used for UI
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCoordinate]
        attr_accessor :position
      
        # Policy that dictates the behavior for the task after it completes successfully.
        # Corresponds to the JSON property `successPolicy`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaSuccessPolicy]
        attr_accessor :success_policy
      
        # Policy that defines the task retry logic and failure type. If no FailurePolicy
        # is defined for a task, all its dependent tasks will not be executed (i.e, a `
        # retry_strategy` of NONE will be applied).
        # Corresponds to the JSON property `synchronousCallFailurePolicy`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaFailurePolicy]
        attr_accessor :synchronous_call_failure_policy
      
        # Optional. The name for the task.
        # Corresponds to the JSON property `task`
        # @return [String]
        attr_accessor :task
      
        # Optional. The policy dictating the execution strategy of this task.
        # Corresponds to the JSON property `taskExecutionStrategy`
        # @return [String]
        attr_accessor :task_execution_strategy
      
        # Required. The identifier of this task within its parent event config,
        # specified by the client. This should be unique among all the tasks belong to
        # the same event config. We use this field as the identifier to find next tasks (
        # via field `next_tasks.task_id`).
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        # Optional. Used to define task-template name if task is of type task-template
        # Corresponds to the JSON property `taskTemplate`
        # @return [String]
        attr_accessor :task_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditional_failure_policies = args[:conditional_failure_policies] if args.key?(:conditional_failure_policies)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error_catcher_id = args[:error_catcher_id] if args.key?(:error_catcher_id)
          @external_task_type = args[:external_task_type] if args.key?(:external_task_type)
          @failure_policy = args[:failure_policy] if args.key?(:failure_policy)
          @json_validation_option = args[:json_validation_option] if args.key?(:json_validation_option)
          @next_tasks = args[:next_tasks] if args.key?(:next_tasks)
          @next_tasks_execution_policy = args[:next_tasks_execution_policy] if args.key?(:next_tasks_execution_policy)
          @parameters = args[:parameters] if args.key?(:parameters)
          @position = args[:position] if args.key?(:position)
          @success_policy = args[:success_policy] if args.key?(:success_policy)
          @synchronous_call_failure_policy = args[:synchronous_call_failure_policy] if args.key?(:synchronous_call_failure_policy)
          @task = args[:task] if args.key?(:task)
          @task_execution_strategy = args[:task_execution_strategy] if args.key?(:task_execution_strategy)
          @task_id = args[:task_id] if args.key?(:task_id)
          @task_template = args[:task_template] if args.key?(:task_template)
        end
      end
      
      # Contains the details of the execution of this task.
      class GoogleCloudIntegrationsV1alphaTaskExecutionDetails
        include Google::Apis::Core::Hashable
      
        # Status for the current task execution attempt.
        # Corresponds to the JSON property `taskAttemptStats`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAttemptStats>]
        attr_accessor :task_attempt_stats
      
        # The execution state of this task.
        # Corresponds to the JSON property `taskExecutionState`
        # @return [String]
        attr_accessor :task_execution_state
      
        # Pointer to the task config it used for execution.
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @task_attempt_stats = args[:task_attempt_stats] if args.key?(:task_attempt_stats)
          @task_execution_state = args[:task_execution_state] if args.key?(:task_execution_state)
          @task_number = args[:task_number] if args.key?(:task_number)
        end
      end
      
      # Defines the template for Application Integration
      class GoogleCloudIntegrationsV1alphaTemplate
        include Google::Apis::Core::Hashable
      
        # Optional. Creator of the template.
        # Corresponds to the JSON property `author`
        # @return [String]
        attr_accessor :author
      
        # Required. Categories associated with the Template. The categories listed below
        # will be utilized for the Template listing.
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # Optional. Components being used in the template. This could be used to
        # categorize and filter.
        # Corresponds to the JSON property `components`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTemplateComponent>]
        attr_accessor :components
      
        # Output only. Auto-generated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the template. The length should not be more than 255
        # characters
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name of the template
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Link to template documentation.
        # Corresponds to the JSON property `docLink`
        # @return [String]
        attr_accessor :doc_link
      
        # Optional. Time the template was last used.
        # Corresponds to the JSON property `lastUsedTime`
        # @return [String]
        attr_accessor :last_used_time
      
        # Identifier. Resource name of the template.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Resource names with which the template is shared for example
        # ProjectNumber/Ord id
        # Corresponds to the JSON property `sharedWith`
        # @return [Array<String>]
        attr_accessor :shared_with
      
        # Required. Tags which are used to identify templates. These tags could be for
        # business use case, connectors etc.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Define the bundle of the template.
        # Corresponds to the JSON property `templateBundle`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTemplateBundle]
        attr_accessor :template_bundle
      
        # Output only. Auto-generated
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. Number of template usages.
        # Corresponds to the JSON property `usageCount`
        # @return [Fixnum]
        attr_accessor :usage_count
      
        # Optional. Information on how to use the template. This should contain detailed
        # information about usage of the template.
        # Corresponds to the JSON property `usageInfo`
        # @return [String]
        attr_accessor :usage_info
      
        # Required. Visibility of the template.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @categories = args[:categories] if args.key?(:categories)
          @components = args[:components] if args.key?(:components)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @doc_link = args[:doc_link] if args.key?(:doc_link)
          @last_used_time = args[:last_used_time] if args.key?(:last_used_time)
          @name = args[:name] if args.key?(:name)
          @shared_with = args[:shared_with] if args.key?(:shared_with)
          @tags = args[:tags] if args.key?(:tags)
          @template_bundle = args[:template_bundle] if args.key?(:template_bundle)
          @update_time = args[:update_time] if args.key?(:update_time)
          @usage_count = args[:usage_count] if args.key?(:usage_count)
          @usage_info = args[:usage_info] if args.key?(:usage_info)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # Define the bundle of the template.
      class GoogleCloudIntegrationsV1alphaTemplateBundle
        include Google::Apis::Core::Hashable
      
        # Define the template of IntegrationVersion.
        # Corresponds to the JSON property `integrationVersionTemplate`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate]
        attr_accessor :integration_version_template
      
        # Optional. Sub integration templates which would be added along with main
        # integration.
        # Corresponds to the JSON property `subIntegrationVersionTemplates`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate>]
        attr_accessor :sub_integration_version_templates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_version_template = args[:integration_version_template] if args.key?(:integration_version_template)
          @sub_integration_version_templates = args[:sub_integration_version_templates] if args.key?(:sub_integration_version_templates)
        end
      end
      
      # Define the components that are present in a template.
      class GoogleCloudIntegrationsV1alphaTemplateComponent
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the component.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Type of the component.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Defines the functional test case for Application Integration. Next available
      # id: 15
      class GoogleCloudIntegrationsV1alphaTestCase
        include Google::Apis::Core::Hashable
      
        # Auto-generated.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The creator's email address. Generated based on the End User
        # Credentials/LOAS role of the user making the call.
        # Corresponds to the JSON property `creatorEmail`
        # @return [String]
        attr_accessor :creator_email
      
        # Optional. Various policies for how to persist the test execution info
        # including execution info, execution export info, execution metadata index and
        # execution param index..
        # Corresponds to the JSON property `databasePersistencePolicy`
        # @return [String]
        attr_accessor :database_persistence_policy
      
        # Optional. Description of the test case.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of test case.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The last modifier's email address. Generated based on the End User Credentials/
        # LOAS role of the user making the call.
        # Corresponds to the JSON property `lastModifierEmail`
        # @return [String]
        attr_accessor :last_modifier_email
      
        # Optional. The edit lock holder's email address. Generated based on the End
        # User Credentials/LOAS role of the user making the call.
        # Corresponds to the JSON property `lockHolderEmail`
        # @return [String]
        attr_accessor :lock_holder_email
      
        # Output only. Auto-generated primary key.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Parameters that are expected to be passed to the test case when the
        # test case is triggered. This gives the user the ability to provide default
        # values. This should include all the output variables of the trigger as input
        # variables.
        # Corresponds to the JSON property `testInputParameters`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationParameter>]
        attr_accessor :test_input_parameters
      
        # Optional. However, the test case doesn't mock or assert anything without
        # test_task_configs.
        # Corresponds to the JSON property `testTaskConfigs`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTestTaskConfig>]
        attr_accessor :test_task_configs
      
        # Configuration detail of a trigger.
        # Corresponds to the JSON property `triggerConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTriggerConfig]
        attr_accessor :trigger_config
      
        # Required. This defines the trigger ID in workflow which is considered to be
        # executed as starting point of the test case
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # Auto-generated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator_email = args[:creator_email] if args.key?(:creator_email)
          @database_persistence_policy = args[:database_persistence_policy] if args.key?(:database_persistence_policy)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_modifier_email = args[:last_modifier_email] if args.key?(:last_modifier_email)
          @lock_holder_email = args[:lock_holder_email] if args.key?(:lock_holder_email)
          @name = args[:name] if args.key?(:name)
          @test_input_parameters = args[:test_input_parameters] if args.key?(:test_input_parameters)
          @test_task_configs = args[:test_task_configs] if args.key?(:test_task_configs)
          @trigger_config = args[:trigger_config] if args.key?(:trigger_config)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The request for testing an integration.
      class GoogleCloudIntegrationsV1alphaTestIntegrationsRequest
        include Google::Apis::Core::Hashable
      
        # Required. This is used to identify the client on whose behalf the event will
        # be executed.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Optional. Config parameters used during integration execution.
        # Corresponds to the JSON property `configParameters`
        # @return [Hash<String,Object>]
        attr_accessor :config_parameters
      
        # Optional. custom deadline of the rpc
        # Corresponds to the JSON property `deadlineSecondsTime`
        # @return [String]
        attr_accessor :deadline_seconds_time
      
        # Optional. Input parameters used during integration execution.
        # Corresponds to the JSON property `inputParameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :input_parameters
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        attr_accessor :integration_version
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventParameters]
        attr_accessor :parameters
      
        # Optional. Can be specified in the event request, otherwise false (default). If
        # true, enables tasks with condition "test_mode = true". If false, disables
        # tasks with condition "test_mode = true" if global test mode (set by platform)
        # is also false `@link EventBusConfig`.
        # Corresponds to the JSON property `testMode`
        # @return [Boolean]
        attr_accessor :test_mode
        alias_method :test_mode?, :test_mode
      
        # Required. The trigger id of the integration trigger config. If both trigger_id
        # and client_id is present, the integration is executed from the start tasks
        # provided by the matching trigger config otherwise it is executed from the
        # default start tasks.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @config_parameters = args[:config_parameters] if args.key?(:config_parameters)
          @deadline_seconds_time = args[:deadline_seconds_time] if args.key?(:deadline_seconds_time)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
          @parameters = args[:parameters] if args.key?(:parameters)
          @test_mode = args[:test_mode] if args.key?(:test_mode)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # The response for testing an integration.
      class GoogleCloudIntegrationsV1alphaTestIntegrationsResponse
        include Google::Apis::Core::Hashable
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `eventParameters`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoEventParameters]
        attr_accessor :event_parameters
      
        # Is true if any execution in the integration failed. False otherwise.
        # Corresponds to the JSON property `executionFailed`
        # @return [Boolean]
        attr_accessor :execution_failed
        alias_method :execution_failed?, :execution_failed
      
        # The id of the execution corresponding to this run of integration.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Parameters are a part of Event and can be used to communicate between
        # different tasks that are part of the same integration execution.
        # Corresponds to the JSON property `parameterEntries`
        # @return [Array<Google::Apis::IntegrationsV1::EnterpriseCrmFrontendsEventbusProtoParameterEntry>]
        attr_accessor :parameter_entries
      
        # Optional. Parameters are a part of Event and can be used to communicate
        # between different tasks that are part of the same integration execution.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaValueType>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_parameters = args[:event_parameters] if args.key?(:event_parameters)
          @execution_failed = args[:execution_failed] if args.key?(:execution_failed)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @parameter_entries = args[:parameter_entries] if args.key?(:parameter_entries)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # The task mock configuration details and assertions for functional tests. Next
      # available id: 6
      class GoogleCloudIntegrationsV1alphaTestTaskConfig
        include Google::Apis::Core::Hashable
      
        # Optional. List of conditions or expressions which should be evaluated to true
        # unless there is a bug/problem in the integration. These are evaluated one the
        # task execution is completed as per the mock strategy in test case
        # Corresponds to the JSON property `assertions`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaAssertion>]
        attr_accessor :assertions
      
        # The configuration for mocking of a task during test execution Next available
        # id: 4
        # Corresponds to the JSON property `mockConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaMockConfig]
        attr_accessor :mock_config
      
        # Required. This defines in the test case, the task name in integration which
        # will be mocked by this test task config
        # Corresponds to the JSON property `task`
        # @return [String]
        attr_accessor :task
      
        # The task configuration details. This is not the implementation of Task. There
        # might be multiple TaskConfigs for the same Task.
        # Corresponds to the JSON property `taskConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTaskConfig]
        attr_accessor :task_config
      
        # Required. This defines in the test case, the task in integration which will be
        # mocked by this test task config
        # Corresponds to the JSON property `taskNumber`
        # @return [String]
        attr_accessor :task_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertions = args[:assertions] if args.key?(:assertions)
          @mock_config = args[:mock_config] if args.key?(:mock_config)
          @task = args[:task] if args.key?(:task)
          @task_config = args[:task_config] if args.key?(:task_config)
          @task_number = args[:task_number] if args.key?(:task_number)
        end
      end
      
      # Request to enable/disable http call for a provisioned client
      class GoogleCloudIntegrationsV1alphaToggleHttpRequest
        include Google::Apis::Core::Hashable
      
        # Required. REQUIRED: True if http call feature should be turned on for this
        # region
        # Corresponds to the JSON property `enableHttpCall`
        # @return [Boolean]
        attr_accessor :enable_http_call
        alias_method :enable_http_call?, :enable_http_call
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_http_call = args[:enable_http_call] if args.key?(:enable_http_call)
        end
      end
      
      # Configuration detail of a trigger.
      class GoogleCloudIntegrationsV1alphaTriggerConfig
        include Google::Apis::Core::Hashable
      
        # Optional. An alert threshold configuration for the [trigger + client +
        # integration] tuple. If these values are not specified in the trigger config,
        # default values will be populated by the system. Note that there must be
        # exactly one alert threshold configured per [client + trigger + integration]
        # when published.
        # Corresponds to the JSON property `alertConfig`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationAlertConfig>]
        attr_accessor :alert_config
      
        # Cloud Scheduler Trigger configuration
        # Corresponds to the JSON property `cloudSchedulerConfig`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCloudSchedulerConfig]
        attr_accessor :cloud_scheduler_config
      
        # Optional. User-provided description intended to give additional business
        # context about the task.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Optional Error catcher id of the error catch flow which will be
        # executed when execution error happens in the task
        # Corresponds to the JSON property `errorCatcherId`
        # @return [String]
        attr_accessor :error_catcher_id
      
        # Variables names mapped to api trigger.
        # Corresponds to the JSON property `inputVariables`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTriggerConfigVariables]
        attr_accessor :input_variables
      
        # Optional. The user created label for a particular trigger.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Optional. Dictates how next tasks will be executed.
        # Corresponds to the JSON property `nextTasksExecutionPolicy`
        # @return [String]
        attr_accessor :next_tasks_execution_policy
      
        # Variables names mapped to api trigger.
        # Corresponds to the JSON property `outputVariables`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTriggerConfigVariables]
        attr_accessor :output_variables
      
        # Configuration detail of coordinate, it used for UI
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaCoordinate]
        attr_accessor :position
      
        # Optional. Configurable properties of the trigger, not to be confused with
        # integration parameters. E.g. "name" is a property for API triggers and "
        # subscription" is a property for Pub/sub triggers.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Optional. Set of tasks numbers from where the integration execution is started
        # by this trigger. If this is empty, then integration is executed with default
        # start tasks. In the list of start tasks, none of two tasks can have direct
        # ancestor-descendant relationships (i.e. in a same integration execution graph).
        # Corresponds to the JSON property `startTasks`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaNextTask>]
        attr_accessor :start_tasks
      
        # Optional. Name of the trigger. Example: "API Trigger", "Cloud Pub Sub Trigger"
        # When set will be sent out to monitoring dashabord for tracking purpose.
        # Corresponds to the JSON property `trigger`
        # @return [String]
        attr_accessor :trigger
      
        # Optional. Auto-generated trigger ID. The ID is based on the properties that
        # you define in the trigger config. For example, for an API trigger, the trigger
        # ID follows the format: api_trigger/TRIGGER_NAME Where trigger config has
        # properties with value `"Trigger name": TRIGGER_NAME`
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # Required. A number to uniquely identify each trigger config within the
        # integration on UI.
        # Corresponds to the JSON property `triggerNumber`
        # @return [String]
        attr_accessor :trigger_number
      
        # Optional. Type of trigger
        # Corresponds to the JSON property `triggerType`
        # @return [String]
        attr_accessor :trigger_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alert_config = args[:alert_config] if args.key?(:alert_config)
          @cloud_scheduler_config = args[:cloud_scheduler_config] if args.key?(:cloud_scheduler_config)
          @description = args[:description] if args.key?(:description)
          @error_catcher_id = args[:error_catcher_id] if args.key?(:error_catcher_id)
          @input_variables = args[:input_variables] if args.key?(:input_variables)
          @label = args[:label] if args.key?(:label)
          @next_tasks_execution_policy = args[:next_tasks_execution_policy] if args.key?(:next_tasks_execution_policy)
          @output_variables = args[:output_variables] if args.key?(:output_variables)
          @position = args[:position] if args.key?(:position)
          @properties = args[:properties] if args.key?(:properties)
          @start_tasks = args[:start_tasks] if args.key?(:start_tasks)
          @trigger = args[:trigger] if args.key?(:trigger)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @trigger_number = args[:trigger_number] if args.key?(:trigger_number)
          @trigger_type = args[:trigger_type] if args.key?(:trigger_type)
        end
      end
      
      # Variables names mapped to api trigger.
      class GoogleCloudIntegrationsV1alphaTriggerConfigVariables
        include Google::Apis::Core::Hashable
      
        # Optional. List of variable names.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # Request for UnpublishIntegrationVersion.
      class GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request to Unshare template
      class GoogleCloudIntegrationsV1alphaUnshareTemplateRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Project name resources to unshare the template. The project names is
        # expected in resource format Ex: projects/`project-number`
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<String>]
        attr_accessor :resource_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
        end
      end
      
      # Request for UploadIntegrationVersion.
      class GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest
        include Google::Apis::Core::Hashable
      
        # The textproto of the IntegrationVersion.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # File format for upload request.
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @file_format = args[:file_format] if args.key?(:file_format)
        end
      end
      
      # Response for UploadIntegrationVersion.
      class GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse
        include Google::Apis::Core::Hashable
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        attr_accessor :integration_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
        end
      end
      
      # Request for UploadTemplate.
      class GoogleCloudIntegrationsV1alphaUploadTemplateRequest
        include Google::Apis::Core::Hashable
      
        # Required. The textproto of the template.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Required. File format for upload request.
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @file_format = args[:file_format] if args.key?(:file_format)
        end
      end
      
      # Response for UploadTemplate.
      class GoogleCloudIntegrationsV1alphaUploadTemplateResponse
        include Google::Apis::Core::Hashable
      
        # Defines the template for Application Integration
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTemplate]
        attr_accessor :template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @template = args[:template] if args.key?(:template)
        end
      end
      
      # Request for UploadTestCase.
      class GoogleCloudIntegrationsV1alphaUploadTestCaseRequest
        include Google::Apis::Core::Hashable
      
        # The textproto of the test case.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # File format for upload request.
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @file_format = args[:file_format] if args.key?(:file_format)
        end
      end
      
      # Response for UploadTestCase.
      class GoogleCloudIntegrationsV1alphaUploadTestCaseResponse
        include Google::Apis::Core::Hashable
      
        # Defines the functional test case for Application Integration. Next available
        # id: 15
        # Corresponds to the JSON property `testCase`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaTestCase]
        attr_accessor :test_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_case = args[:test_case] if args.key?(:test_case)
        end
      end
      
      # Request to Use template
      class GoogleCloudIntegrationsV1alphaUseTemplateRequest
        include Google::Apis::Core::Hashable
      
        # Sub Integration which would be created via templates.
        # Corresponds to the JSON property `integrationDetails`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails]
        attr_accessor :integration_details
      
        # Required. The region of the Integration to be created.
        # Corresponds to the JSON property `integrationRegion`
        # @return [String]
        attr_accessor :integration_region
      
        # Optional. Sub Integration which would be created via templates.
        # Corresponds to the JSON property `subIntegrations`
        # @return [Hash<String,Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails>]
        attr_accessor :sub_integrations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_details = args[:integration_details] if args.key?(:integration_details)
          @integration_region = args[:integration_region] if args.key?(:integration_region)
          @sub_integrations = args[:sub_integrations] if args.key?(:sub_integrations)
        end
      end
      
      # Sub Integration which would be created via templates.
      class GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails
        include Google::Apis::Core::Hashable
      
        # Required. Name of the sub integration which would be created via templates.
        # Corresponds to the JSON property `integration`
        # @return [String]
        attr_accessor :integration
      
        # Optional. Description of the sub integration which would be created via
        # templates.
        # Corresponds to the JSON property `integrationDescription`
        # @return [String]
        attr_accessor :integration_description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration = args[:integration] if args.key?(:integration)
          @integration_description = args[:integration_description] if args.key?(:integration_description)
        end
      end
      
      # Response for use template
      class GoogleCloudIntegrationsV1alphaUseTemplateResponse
        include Google::Apis::Core::Hashable
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion]
        attr_accessor :integration_version
      
        # Sub integration versions which are created.
        # Corresponds to the JSON property `subIntegrationVersions`
        # @return [Array<Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntegrationVersion>]
        attr_accessor :sub_integration_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
          @sub_integration_versions = args[:sub_integration_versions] if args.key?(:sub_integration_versions)
        end
      end
      
      # Username and password pair.
      class GoogleCloudIntegrationsV1alphaUsernameAndPassword
        include Google::Apis::Core::Hashable
      
        # Password to be used
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Username to be used
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # The type of the parameter.
      class GoogleCloudIntegrationsV1alphaValueType
        include Google::Apis::Core::Hashable
      
        # This message only contains a field of boolean array.
        # Corresponds to the JSON property `booleanArray`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaBooleanParameterArray]
        attr_accessor :boolean_array
      
        # Boolean.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # This message only contains a field of double number array.
        # Corresponds to the JSON property `doubleArray`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaDoubleParameterArray]
        attr_accessor :double_array
      
        # Double Number.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # This message only contains a field of integer array.
        # Corresponds to the JSON property `intArray`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaIntParameterArray]
        attr_accessor :int_array
      
        # Integer.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # Json.
        # Corresponds to the JSON property `jsonValue`
        # @return [String]
        attr_accessor :json_value
      
        # This message only contains a field of string array.
        # Corresponds to the JSON property `stringArray`
        # @return [Google::Apis::IntegrationsV1::GoogleCloudIntegrationsV1alphaStringParameterArray]
        attr_accessor :string_array
      
        # String.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_array = args[:boolean_array] if args.key?(:boolean_array)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @double_array = args[:double_array] if args.key?(:double_array)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int_array = args[:int_array] if args.key?(:int_array)
          @int_value = args[:int_value] if args.key?(:int_value)
          @json_value = args[:json_value] if args.key?(:json_value)
          @string_array = args[:string_array] if args.key?(:string_array)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # LINT.IfChange Use this request to post all workflows associated with a given
      # trigger id. Next available id: 13
      class GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If the client id is provided, then the combination of trigger id and
        # client id is matched across all the workflows. If the client id is not
        # provided, then workflows with matching trigger id are executed for each client
        # id in the `@link TriggerConfig`. For Api Trigger, the client id is required
        # and will be validated against the allowed clients.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Optional. Flag to determine whether clients would suppress a warning when no
        # ACTIVE workflows are not found. If this flag is set to be true, an error will
        # not be thrown if the requested trigger_id or client_id is not found in any
        # ACTIVE workflow. Otherwise, the error is always thrown. The flag is set to be
        # false by default.
        # Corresponds to the JSON property `ignoreErrorIfNoActiveWorkflow`
        # @return [Boolean]
        attr_accessor :ignore_error_if_no_active_workflow
        alias_method :ignore_error_if_no_active_workflow?, :ignore_error_if_no_active_workflow
      
        # LINT.IfChange This message is used for processing and persisting (when
        # applicable) key value pair parameters for each event in the event bus. Please
        # see
        # Corresponds to the JSON property `parameters`
        # @return [Google::Apis::IntegrationsV1::EnterpriseCrmEventbusProtoEventParameters]
        attr_accessor :parameters
      
        # The request priority this request should be processed at. For internal users:
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # Optional. This is a field to see the quota retry count for integration
        # execution
        # Corresponds to the JSON property `quotaRetryCount`
        # @return [Fixnum]
        attr_accessor :quota_retry_count
      
        # Optional. This is used to de-dup incoming request: if the duplicate request
        # was detected, the response from the previous execution is returned. Must have
        # no more than 36 characters and contain only alphanumeric characters and
        # hyphens.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # This field is only required when using Admin Access. The resource name of
        # target, or the parent resource name. For example: "projects/*/locations/*/
        # integrations/*"
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Optional. Time in milliseconds since epoch when the given event would be
        # scheduled.
        # Corresponds to the JSON property `scheduledTime`
        # @return [Fixnum]
        attr_accessor :scheduled_time
      
        # Optional. Sets test mode in `@link enterprise/crm/eventbus/event_message.proto`
        # .
        # Corresponds to the JSON property `testMode`
        # @return [Boolean]
        attr_accessor :test_mode
        alias_method :test_mode?, :test_mode
      
        # Matched against all `@link TriggerConfig`s across all workflows. i.e.
        # TriggerConfig.trigger_id.equals(trigger_id) Required.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # This is a unique id provided by the method caller. If provided this will be
        # used as the execution_id when a new execution info is created. This is a
        # string representation of a UUID. Must have no more than 36 characters and
        # contain only alphanumeric characters and hyphens.
        # Corresponds to the JSON property `userGeneratedExecutionId`
        # @return [String]
        attr_accessor :user_generated_execution_id
      
        # Optional. If provided, the workflow_name is used to filter all the matched
        # workflows having same trigger_id+client_id. A combination of trigger_id,
        # client_id and workflow_name identifies a unique workflow.
        # Corresponds to the JSON property `workflowName`
        # @return [String]
        attr_accessor :workflow_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @ignore_error_if_no_active_workflow = args[:ignore_error_if_no_active_workflow] if args.key?(:ignore_error_if_no_active_workflow)
          @parameters = args[:parameters] if args.key?(:parameters)
          @priority = args[:priority] if args.key?(:priority)
          @quota_retry_count = args[:quota_retry_count] if args.key?(:quota_retry_count)
          @request_id = args[:request_id] if args.key?(:request_id)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @scheduled_time = args[:scheduled_time] if args.key?(:scheduled_time)
          @test_mode = args[:test_mode] if args.key?(:test_mode)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @user_generated_execution_id = args[:user_generated_execution_id] if args.key?(:user_generated_execution_id)
          @workflow_name = args[:workflow_name] if args.key?(:workflow_name)
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
    end
  end
end
