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
    module IntegrationsV2
      
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
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoToken>]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoFunction]
        attr_accessor :base_function
      
        # LINT.IfChange To support various types of parameter values. Next available id:
        # 14
        # Corresponds to the JSON property `literalValue`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoConnectorsConnection]
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
      
      # 
      class EnterpriseCrmEventbusProtoCustomSuspensionRequest
        include Google::Apis::Core::Hashable
      
        # LINT.IfChange Use this request to post all workflows associated with a given
        # trigger id. Next available id: 13
        # Corresponds to the JSON property `postToQueueWithTriggerIdRequest`
        # @return [Google::Apis::IntegrationsV2::GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest]
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
      
      # LINT.IfChange This message is used for processing and persisting (when
      # applicable) key value pair parameters for each event in the event bus. Please
      # see
      class EnterpriseCrmEventbusProtoEventParameters
        include Google::Apis::Core::Hashable
      
        # Parameters are a part of Event and can be used to communicate between
        # different tasks that are part of the same integration execution.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterEntry>]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoTransformExpression]
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
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoMappedField>]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoFunctionType]
        attr_accessor :function_type
      
        # List of parameters required for the transformation.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoTransformExpression>]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBaseFunction]
        attr_accessor :base_function
      
        # 
        # Corresponds to the JSON property `booleanArrayFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBooleanArrayFunction]
        attr_accessor :boolean_array_function
      
        # 
        # Corresponds to the JSON property `booleanFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBooleanFunction]
        attr_accessor :boolean_function
      
        # 
        # Corresponds to the JSON property `doubleArrayFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoDoubleArrayFunction]
        attr_accessor :double_array_function
      
        # 
        # Corresponds to the JSON property `doubleFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoDoubleFunction]
        attr_accessor :double_function
      
        # 
        # Corresponds to the JSON property `intArrayFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoIntArrayFunction]
        attr_accessor :int_array_function
      
        # 
        # Corresponds to the JSON property `intFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoIntFunction]
        attr_accessor :int_function
      
        # 
        # Corresponds to the JSON property `jsonFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoJsonFunction]
        attr_accessor :json_function
      
        # 
        # Corresponds to the JSON property `protoArrayFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoProtoArrayFunction]
        attr_accessor :proto_array_function
      
        # 
        # Corresponds to the JSON property `protoFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoProtoFunction]
        attr_accessor :proto_function
      
        # 
        # Corresponds to the JSON property `stringArrayFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoStringArrayFunction]
        attr_accessor :string_array_function
      
        # 
        # Corresponds to the JSON property `stringFunction`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoStringFunction]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoField]
        attr_accessor :input_field
      
        # Information about the value and type of the field.
        # Corresponds to the JSON property `outputField`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoField]
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
      
      # 
      class EnterpriseCrmEventbusProtoNotification
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buganizerNotification`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBuganizerNotification]
        attr_accessor :buganizer_notification
      
        # Email address along with optional name and tokens. These tokens will be
        # substituted for the variables in the form of [`var_name`], where var_name
        # could be any string of no more than 32 bytes.
        # Corresponds to the JSON property `emailAddress`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoAddress]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoCustomSuspensionRequest]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType]
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
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterMapEntry>]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterMapField]
        attr_accessor :key
      
        # Field represents either the key or value in an entry.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterMapField]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBooleanParameterArray]
        attr_accessor :boolean_array
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # 
        # Corresponds to the JSON property `doubleArray`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoDoubleParameterArray]
        attr_accessor :double_array
      
        # 
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # 
        # Corresponds to the JSON property `intArray`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoIntParameterArray]
        attr_accessor :int_array
      
        # 
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # 
        # Corresponds to the JSON property `protoArray`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoProtoParameterArray]
        attr_accessor :proto_array
      
        # 
        # Corresponds to the JSON property `protoValue`
        # @return [Hash<String,Object>]
        attr_accessor :proto_value
      
        # 
        # Corresponds to the JSON property `serializedObjectValue`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSerializedObjectParameter]
        attr_accessor :serialized_object_value
      
        # 
        # Corresponds to the JSON property `stringArray`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoStringParameterArray]
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
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterEntry>]
        attr_accessor :response_params
      
        # LINT.IfChange To support various types of parameter values. Next available id:
        # 14
        # Corresponds to the JSON property `scatterElement`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoParameterValueType]
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
      
      # LINT.IfChange
      class EnterpriseCrmEventbusProtoSuspensionAuthPermissions
        include Google::Apis::Core::Hashable
      
        # Represents a Gaia identity for a person or service account.
        # Corresponds to the JSON property `gaiaIdentity`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity]
        attr_accessor :gaia_identity
      
        # 
        # Corresponds to the JSON property `googleGroup`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity]
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
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoNotification>]
        attr_accessor :notifications
      
        # Indicates the next steps when no external actions happen on the suspension.
        # Corresponds to the JSON property `suspensionExpiration`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionExpiration]
        attr_accessor :suspension_expiration
      
        # Identities able to resolve this suspension.
        # Corresponds to the JSON property `whoMayResolve`
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionAuthPermissions>]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionResolutionInfoAudit]
        attr_accessor :audit
      
        # The event data user sends as request.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # KMS info, used by cmek/gmek integration
        # Corresponds to the JSON property `cloudKmsConfig`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoCloudKmsConfig]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoExternalTraffic]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoSuspensionConfig]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoBaseValue]
        attr_accessor :initial_value
      
        # Transformations to be applied sequentially.
        # Corresponds to the JSON property `transformationFunctions`
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoFunction>]
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
      
      # A generic multi-map that holds key value pairs. They keys and values can be of
      # any type, unless specified.
      class EnterpriseCrmFrontendsEventbusProtoParameterMap
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterMapEntry>]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterMapField]
        attr_accessor :key
      
        # Field represents either the key or value in an entry.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterMapField]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoParameterValueType]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray]
        attr_accessor :boolean_array
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # 
        # Corresponds to the JSON property `doubleArray`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray]
        attr_accessor :double_array
      
        # 
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # 
        # Corresponds to the JSON property `intArray`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoIntParameterArray]
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoProtoParameterArray]
        attr_accessor :proto_array
      
        # 
        # Corresponds to the JSON property `protoValue`
        # @return [Hash<String,Object>]
        attr_accessor :proto_value
      
        # 
        # Corresponds to the JSON property `serializedObjectValue`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter]
        attr_accessor :serialized_object_value
      
        # 
        # Corresponds to the JSON property `stringArray`
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmFrontendsEventbusProtoStringParameterArray]
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
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class GoogleApiHttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # Status for the execution attempt.
      class GoogleCloudIntegrationsV2AttemptStats
        include Google::Apis::Core::Hashable
      
        # The end time of the execution for the current attempt.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The start time of the execution for the current attempt. This could be in the
        # future if it's been scheduled.
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
      
      # Cloud Logging details for execution info
      class GoogleCloudIntegrationsV2CloudLoggingDetails
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
      
      # This message only contains a field of boolean array.
      class GoogleCloudIntegrationsV2DuetBooleanParameterArray
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
      
      # Cloud Scheduler Trigger configuration
      class GoogleCloudIntegrationsV2DuetCloudSchedulerConfig
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
      
      # This message only contains a field of double number array.
      class GoogleCloudIntegrationsV2DuetDoubleParameterArray
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
      
      # Configuration detail of a error catch task
      class GoogleCloudIntegrationsV2DuetErrorCatcherConfig
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
      
        # Required. The set of start tasks that are to be executed for the error catch
        # flow
        # Corresponds to the JSON property `startErrorTasks`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetNextTask>]
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
          @start_error_tasks = args[:start_error_tasks] if args.key?(:start_error_tasks)
        end
      end
      
      # This message is used for processing and persisting (when applicable) key value
      # pair parameters for each event in the event bus.
      class GoogleCloudIntegrationsV2DuetEventParameter
        include Google::Apis::Core::Hashable
      
        # Key is used to retrieve the corresponding parameter value. This should be
        # unique for a given fired event. These parameters must be predefined in the
        # integration definition.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The type of the parameter.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetValueType]
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
      
      # Request message for generating an integration branch containing tasks.
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchRequest
        include Google::Apis::Core::Hashable
      
        # The request for generating an integration branch.
        # Corresponds to the JSON property `integrationBranchRequest`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationBranchRequest]
        attr_accessor :integration_branch_request
      
        # Required. User prompt.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_branch_request = args[:integration_branch_request] if args.key?(:integration_branch_request)
          @prompt = args[:prompt] if args.key?(:prompt)
        end
      end
      
      # Response message containing the generated integration branch data.
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationBranchResponse
        include Google::Apis::Core::Hashable
      
        # An integration branch skeleton containing basic fields which can be used to
        # create an integration branch on the UI.
        # Corresponds to the JSON property `integrationBranch`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationBranch]
        attr_accessor :integration_branch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_branch = args[:integration_branch] if args.key?(:integration_branch)
        end
      end
      
      # Request message for generating documentation for an integration version.
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentRequest
        include Google::Apis::Core::Hashable
      
        # The request for generating description of an integration.
        # Corresponds to the JSON property `integrationDocumentRequest`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest]
        attr_accessor :integration_document_request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_document_request = args[:integration_document_request] if args.key?(:integration_document_request)
        end
      end
      
      # Response message containing generated integration documentation text.
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationDocumentResponse
        include Google::Apis::Core::Hashable
      
        # The description of the integration returned by Duet AI.
        # Corresponds to the JSON property `document`
        # @return [String]
        attr_accessor :document
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
        end
      end
      
      # Request for generating an integration.
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates if copilot is enabled. Copilot features may alter the
        # generated integration structure.
        # Corresponds to the JSON property `copilotEnabled`
        # @return [Boolean]
        attr_accessor :copilot_enabled
        alias_method :copilot_enabled?, :copilot_enabled
      
        # Required. The natural language prompt based on which the integration will be
        # generated.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copilot_enabled = args[:copilot_enabled] if args.key?(:copilot_enabled)
          @prompt = args[:prompt] if args.key?(:prompt)
        end
      end
      
      # Response for generating an integration.
      class GoogleCloudIntegrationsV2DuetGenerateIntegrationResponse
        include Google::Apis::Core::Hashable
      
        # The list of integration skeletons returned.
        # Corresponds to the JSON property `skeletonIntegrations`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationSkeleton>]
        attr_accessor :skeleton_integrations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @skeleton_integrations = args[:skeleton_integrations] if args.key?(:skeleton_integrations)
        end
      end
      
      # Request message for generating data mapping Javascript.
      class GoogleCloudIntegrationsV2DuetGenerateJavascriptRequest
        include Google::Apis::Core::Hashable
      
        # Request message for Javascript Task using Gemini.
        # Corresponds to the JSON property `javascriptRequest`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetJavascriptRequest]
        attr_accessor :javascript_request
      
        # Optional. User prompt.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @javascript_request = args[:javascript_request] if args.key?(:javascript_request)
          @prompt = args[:prompt] if args.key?(:prompt)
        end
      end
      
      # Response message containing generated Javascript code recommendations.
      class GoogleCloudIntegrationsV2DuetGenerateJavascriptResponse
        include Google::Apis::Core::Hashable
      
        # List of the Javascript recommendations.
        # Corresponds to the JSON property `recommendations`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetJavascriptRecommendation>]
        attr_accessor :recommendations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recommendations = args[:recommendations] if args.key?(:recommendations)
        end
      end
      
      # This message only contains a field of integer array.
      class GoogleCloudIntegrationsV2DuetIntParameterArray
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
      
      # An integration branch skeleton containing basic fields which can be used to
      # create an integration branch on the UI.
      class GoogleCloudIntegrationsV2DuetIntegrationBranch
        include Google::Apis::Core::Hashable
      
        # The condition for the branch.
        # Corresponds to the JSON property `branchCondition`
        # @return [String]
        attr_accessor :branch_condition
      
        # Explanation of why this integration branch was generated.
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # The newly generated workflow parameters.
        # Corresponds to the JSON property `integrationParameters`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter>]
        attr_accessor :integration_parameters
      
        # The newly generated tasks which can be branched into the current integration.
        # Corresponds to the JSON property `taskConfigs`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig>]
        attr_accessor :task_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_condition = args[:branch_condition] if args.key?(:branch_condition)
          @explanation = args[:explanation] if args.key?(:explanation)
          @integration_parameters = args[:integration_parameters] if args.key?(:integration_parameters)
          @task_configs = args[:task_configs] if args.key?(:task_configs)
        end
      end
      
      # The request for generating an integration branch.
      class GoogleCloudIntegrationsV2DuetIntegrationBranchRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The condition for the particular branch which the user selected.
        # Corresponds to the JSON property `branchCondition`
        # @return [String]
        attr_accessor :branch_condition
      
        # Optional. A list of all the workflow parameters of the current integration.
        # Corresponds to the JSON property `integrationParameters`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter>]
        attr_accessor :integration_parameters
      
        # Required. A list of all the tasks of the current integration.
        # Corresponds to the JSON property `taskConfigs`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig>]
        attr_accessor :task_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_condition = args[:branch_condition] if args.key?(:branch_condition)
          @integration_parameters = args[:integration_parameters] if args.key?(:integration_parameters)
          @task_configs = args[:task_configs] if args.key?(:task_configs)
        end
      end
      
      # Integration Config Parameter is defined in the integration config and are used
      # to provide external configuration for integration. It provide information
      # about data types of the expected parameters and provide any default values or
      # value. They can also be used to add custom attributes.
      class GoogleCloudIntegrationsV2DuetIntegrationConfigParameter
        include Google::Apis::Core::Hashable
      
        # Integration Parameter is defined in the integration config and are used to
        # provide information about data types of the expected parameters and provide
        # any default values if needed. They can also be used to add custom attributes.
        # These are static in nature and should not be used for dynamic event definition.
        # Corresponds to the JSON property `parameter`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter]
        attr_accessor :parameter
      
        # The type of the parameter.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetValueType]
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
      
      # The request for generating description of an integration.
      class GoogleCloudIntegrationsV2DuetIntegrationDocumentRequest
        include Google::Apis::Core::Hashable
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationVersion]
        attr_accessor :integration_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
        end
      end
      
      # Integration Parameter is defined in the integration config and are used to
      # provide information about data types of the expected parameters and provide
      # any default values if needed. They can also be used to add custom attributes.
      # These are static in nature and should not be used for dynamic event definition.
      class GoogleCloudIntegrationsV2DuetIntegrationParameter
        include Google::Apis::Core::Hashable
      
        # Type of the parameter.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The type of the parameter.
        # Corresponds to the JSON property `defaultValue`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetValueType]
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @input_output_type = args[:input_output_type] if args.key?(:input_output_type)
          @is_transient = args[:is_transient] if args.key?(:is_transient)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # An integration skeleton containing basic fields which can be used to create an
      # integration on the UI.
      class GoogleCloudIntegrationsV2DuetIntegrationSkeleton
        include Google::Apis::Core::Hashable
      
        # Explanation of why this integration was generated.
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationVersion]
        attr_accessor :integration_version
      
        # The name of the integration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indicate the strategy/methodology used to generate the integration.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explanation = args[:explanation] if args.key?(:explanation)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
          @name = args[:name] if args.key?(:name)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # The integration version definition.
      class GoogleCloudIntegrationsV2DuetIntegrationVersion
        include Google::Apis::Core::Hashable
      
        # Optional. The integration description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Error Catch Task configuration for the integration. It's optional.
        # Corresponds to the JSON property `errorCatcherConfigs`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetErrorCatcherConfig>]
        attr_accessor :error_catcher_configs
      
        # Optional. Config Parameters that are expected to be passed to the integration
        # when an integration is published. This consists of all the parameters that are
        # expected to provide configuration in the integration execution. This gives the
        # user the ability to provide default values, value, add information like
        # connection url, project based configuration value and also provide data types
        # of each parameter.
        # Corresponds to the JSON property `integrationConfigParameters`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationConfigParameter>]
        attr_accessor :integration_config_parameters
      
        # Optional. Parameters that are expected to be passed to the integration when an
        # event is triggered. This consists of all the parameters that are expected in
        # the integration execution. This gives the user the ability to provide default
        # values, add information like PII and also provide data types of each parameter.
        # Corresponds to the JSON property `integrationParameters`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter>]
        attr_accessor :integration_parameters
      
        # Optional. Auto-generated primary key.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. An increasing sequence that is set when a new snapshot is created.
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
      
        # Optional. Task configuration for the integration. It's optional, but the
        # integration doesn't do anything without task_configs.
        # Corresponds to the JSON property `taskConfigs`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig>]
        attr_accessor :task_configs
      
        # Optional. Trigger configurations.
        # Corresponds to the JSON property `triggerConfigs`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTriggerConfig>]
        attr_accessor :trigger_configs
      
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
          @description = args[:description] if args.key?(:description)
          @error_catcher_configs = args[:error_catcher_configs] if args.key?(:error_catcher_configs)
          @integration_config_parameters = args[:integration_config_parameters] if args.key?(:integration_config_parameters)
          @integration_parameters = args[:integration_parameters] if args.key?(:integration_parameters)
          @name = args[:name] if args.key?(:name)
          @snapshot_number = args[:snapshot_number] if args.key?(:snapshot_number)
          @state = args[:state] if args.key?(:state)
          @task_configs = args[:task_configs] if args.key?(:task_configs)
          @trigger_configs = args[:trigger_configs] if args.key?(:trigger_configs)
          @user_label = args[:user_label] if args.key?(:user_label)
        end
      end
      
      # Individual Javascript recommendation containing the task config with the new
      # code, integration parameters and the explanation.
      class GoogleCloudIntegrationsV2DuetJavascriptRecommendation
        include Google::Apis::Core::Hashable
      
        # The explanation of the Javascript code.
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # Optional. The list of the new integration parameters.
        # Corresponds to the JSON property `integrationParameters`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationParameter>]
        attr_accessor :integration_parameters
      
        # The task configuration details. This is not the implementation of Task. There
        # might be multiple TaskConfigs for the same Task.
        # Corresponds to the JSON property `taskConfig`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig]
        attr_accessor :task_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explanation = args[:explanation] if args.key?(:explanation)
          @integration_parameters = args[:integration_parameters] if args.key?(:integration_parameters)
          @task_config = args[:task_config] if args.key?(:task_config)
        end
      end
      
      # Request message for Javascript Task using Gemini.
      class GoogleCloudIntegrationsV2DuetJavascriptRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If this request is for copilot.
        # Corresponds to the JSON property `copilotEnabled`
        # @return [Boolean]
        attr_accessor :copilot_enabled
        alias_method :copilot_enabled?, :copilot_enabled
      
        # The integration version definition.
        # Corresponds to the JSON property `integrationVersion`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntegrationVersion]
        attr_accessor :integration_version
      
        # Required. The task id of the Javascript task.
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        # Optional. Whether to use the current javascript task config (JS code) to
        # generate the Javascript code.
        # Corresponds to the JSON property `useCurrentScript`
        # @return [Boolean]
        attr_accessor :use_current_script
        alias_method :use_current_script?, :use_current_script
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copilot_enabled = args[:copilot_enabled] if args.key?(:copilot_enabled)
          @integration_version = args[:integration_version] if args.key?(:integration_version)
          @task_id = args[:task_id] if args.key?(:task_id)
          @use_current_script = args[:use_current_script] if args.key?(:use_current_script)
        end
      end
      
      # The task that is next in line to be executed, if the condition specified
      # evaluated to true.
      class GoogleCloudIntegrationsV2DuetNextTask
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
      
      # Request message for recommending tasks to replace a selected task.
      class GoogleCloudIntegrationsV2DuetRecommendTasksRequest
        include Google::Apis::Core::Hashable
      
        # Optional. User prompt.
        # Corresponds to the JSON property `prompt`
        # @return [String]
        attr_accessor :prompt
      
        # Message for Replace Task Scenario.
        # Corresponds to the JSON property `replaceTaskRequest`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetReplaceTaskRequest]
        attr_accessor :replace_task_request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prompt = args[:prompt] if args.key?(:prompt)
          @replace_task_request = args[:replace_task_request] if args.key?(:replace_task_request)
        end
      end
      
      # Response message containing recommended tasks for replacement.
      class GoogleCloudIntegrationsV2DuetRecommendTasksResponse
        include Google::Apis::Core::Hashable
      
        # The list of recommended tasks.
        # Corresponds to the JSON property `taskConfigs`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig>]
        attr_accessor :task_configs
      
        # The list of task response status based on the task_types in the request.
        # Corresponds to the JSON property `taskResponseStatuses`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskResponseStatus>]
        attr_accessor :task_response_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @task_configs = args[:task_configs] if args.key?(:task_configs)
          @task_response_statuses = args[:task_response_statuses] if args.key?(:task_response_statuses)
        end
      end
      
      # Message for Replace Task Scenario.
      class GoogleCloudIntegrationsV2DuetReplaceTaskRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If this request is for copilot.
        # Corresponds to the JSON property `copilotEnabled`
        # @return [Boolean]
        attr_accessor :copilot_enabled
        alias_method :copilot_enabled?, :copilot_enabled
      
        # The task configuration details. This is not the implementation of Task. There
        # might be multiple TaskConfigs for the same Task.
        # Corresponds to the JSON property `taskConfig`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTaskConfig]
        attr_accessor :task_config
      
        # The list of task types.
        # Corresponds to the JSON property `taskTypes`
        # @return [Array<String>]
        attr_accessor :task_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copilot_enabled = args[:copilot_enabled] if args.key?(:copilot_enabled)
          @task_config = args[:task_config] if args.key?(:task_config)
          @task_types = args[:task_types] if args.key?(:task_types)
        end
      end
      
      # This message only contains a field of string array.
      class GoogleCloudIntegrationsV2DuetStringParameterArray
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
      
      # The task configuration details. This is not the implementation of Task. There
      # might be multiple TaskConfigs for the same Task.
      class GoogleCloudIntegrationsV2DuetTaskConfig
        include Google::Apis::Core::Hashable
      
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
      
        # Optional. The set of tasks that are next in line to be executed as per the
        # execution graph defined for the parent event, specified by `event_config_id`.
        # Each of these next tasks are executed only if the condition associated with
        # them evaluates to true.
        # Corresponds to the JSON property `nextTasks`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetNextTask>]
        attr_accessor :next_tasks
      
        # Optional. The customized parameters the user can pass to this task.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetEventParameter>]
        attr_accessor :parameters
      
        # Optional. The name for the task.
        # Corresponds to the JSON property `task`
        # @return [String]
        attr_accessor :task
      
        # Required. The identifier of this task within its parent event config,
        # specified by the client. This should be unique among all the tasks belong to
        # the same event config. We use this field as the identifier to find next tasks (
        # via field `next_tasks.task_id`).
        # Corresponds to the JSON property `taskId`
        # @return [String]
        attr_accessor :task_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error_catcher_id = args[:error_catcher_id] if args.key?(:error_catcher_id)
          @external_task_type = args[:external_task_type] if args.key?(:external_task_type)
          @next_tasks = args[:next_tasks] if args.key?(:next_tasks)
          @parameters = args[:parameters] if args.key?(:parameters)
          @task = args[:task] if args.key?(:task)
          @task_id = args[:task_id] if args.key?(:task_id)
        end
      end
      
      # Message for task response status.
      class GoogleCloudIntegrationsV2DuetTaskResponseStatus
        include Google::Apis::Core::Hashable
      
        # The error message of the task response in case of failure.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The http code of the task response.
        # Corresponds to the JSON property `httpCode`
        # @return [Fixnum]
        attr_accessor :http_code
      
        # The task type.
        # Corresponds to the JSON property `taskType`
        # @return [String]
        attr_accessor :task_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @http_code = args[:http_code] if args.key?(:http_code)
          @task_type = args[:task_type] if args.key?(:task_type)
        end
      end
      
      # Configuration detail of a trigger.
      class GoogleCloudIntegrationsV2DuetTriggerConfig
        include Google::Apis::Core::Hashable
      
        # Cloud Scheduler Trigger configuration
        # Corresponds to the JSON property `cloudSchedulerConfig`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetCloudSchedulerConfig]
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
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTriggerConfigVariables]
        attr_accessor :input_variables
      
        # Optional. The user created label for a particular trigger.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Variables names mapped to api trigger.
        # Corresponds to the JSON property `outputVariables`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetTriggerConfigVariables]
        attr_accessor :output_variables
      
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
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetNextTask>]
        attr_accessor :start_tasks
      
        # Optional. Name of the trigger. Example: "API Trigger", "Cloud Pub Sub Trigger"
        # When set will be sent out to monitoring dashabord for tracking purpose.
        # Corresponds to the JSON property `trigger`
        # @return [String]
        attr_accessor :trigger
      
        # Optional. The backend trigger ID.
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
          @cloud_scheduler_config = args[:cloud_scheduler_config] if args.key?(:cloud_scheduler_config)
          @description = args[:description] if args.key?(:description)
          @error_catcher_id = args[:error_catcher_id] if args.key?(:error_catcher_id)
          @input_variables = args[:input_variables] if args.key?(:input_variables)
          @label = args[:label] if args.key?(:label)
          @output_variables = args[:output_variables] if args.key?(:output_variables)
          @properties = args[:properties] if args.key?(:properties)
          @start_tasks = args[:start_tasks] if args.key?(:start_tasks)
          @trigger = args[:trigger] if args.key?(:trigger)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @trigger_number = args[:trigger_number] if args.key?(:trigger_number)
          @trigger_type = args[:trigger_type] if args.key?(:trigger_type)
        end
      end
      
      # Variables names mapped to api trigger.
      class GoogleCloudIntegrationsV2DuetTriggerConfigVariables
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
      
      # Response for troubleshooting an integration execution.
      class GoogleCloudIntegrationsV2DuetTroubleshootExecutionResponse
        include Google::Apis::Core::Hashable
      
        # Detailed explanation of the root cause of the integration execution failure.
        # Corresponds to the JSON property `detailedExplanation`
        # @return [String]
        attr_accessor :detailed_explanation
      
        # Display message to be shown to the user. Example - If integration execution
        # succeeded, this field value can be "Integration execution succeeded. No
        # troubleshooting needed.".
        # Corresponds to the JSON property `displayMessage`
        # @return [String]
        attr_accessor :display_message
      
        # Error message of the integration execution, if the execution failed.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The execution id of the integration execution to be troubleshooted.
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Root cause of the integration execution failure.
        # Corresponds to the JSON property `rootCause`
        # @return [String]
        attr_accessor :root_cause
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detailed_explanation = args[:detailed_explanation] if args.key?(:detailed_explanation)
          @display_message = args[:display_message] if args.key?(:display_message)
          @error_message = args[:error_message] if args.key?(:error_message)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @root_cause = args[:root_cause] if args.key?(:root_cause)
        end
      end
      
      # The type of the parameter.
      class GoogleCloudIntegrationsV2DuetValueType
        include Google::Apis::Core::Hashable
      
        # This message only contains a field of boolean array.
        # Corresponds to the JSON property `booleanArray`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetBooleanParameterArray]
        attr_accessor :boolean_array
      
        # Boolean.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # This message only contains a field of double number array.
        # Corresponds to the JSON property `doubleArray`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetDoubleParameterArray]
        attr_accessor :double_array
      
        # Double Number.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # This message only contains a field of integer array.
        # Corresponds to the JSON property `intArray`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetIntParameterArray]
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
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2DuetStringParameterArray]
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
      
      # The Execution contains detailed information of an individual integration
      # execution.
      class GoogleCloudIntegrationsV2Execution
        include Google::Apis::Core::Hashable
      
        # Cloud Logging details for execution info
        # Corresponds to the JSON property `cloudLoggingDetails`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2CloudLoggingDetails]
        attr_accessor :cloud_logging_details
      
        # Indicates if the task execution contains variables.
        # Corresponds to the JSON property `containTaskVariables`
        # @return [Boolean]
        attr_accessor :contain_task_variables
        alias_method :contain_task_variables?, :contain_task_variables
      
        # Output only. Time the execution is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Start and end time of each execution attempt.
        # Corresponds to the JSON property `executionAttemptStats`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2AttemptStats>]
        attr_accessor :execution_attempt_stats
      
        # Indicates which snapshot of integration is used for this execution.
        # Corresponds to the JSON property `integrationVersionNumber`
        # @return [Fixnum]
        attr_accessor :integration_version_number
      
        # Optional. User-defined label that annotates the executed integration version.
        # Corresponds to the JSON property `integrationVersionUserLabel`
        # @return [String]
        attr_accessor :integration_version_user_label
      
        # Identifier. Execution resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Contains the details of the execution info: this includes the replay reason
        # and replay tree connecting executions in a parent-child relationship
        # Corresponds to the JSON property `replayInfo`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2ExecutionReplayInfo]
        attr_accessor :replay_info
      
        # Optional. Variables provided in the request.
        # Corresponds to the JSON property `requestVariables`
        # @return [Hash<String,Object>]
        attr_accessor :request_variables
      
        # Optional. Variables returned as part of the response.
        # Corresponds to the JSON property `responseVariables`
        # @return [Hash<String,Object>]
        attr_accessor :response_variables
      
        # Output only. Status of the execution.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. List of task executions.
        # Corresponds to the JSON property `taskExecutions`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecution>]
        attr_accessor :task_executions
      
        # The ID of the trigger invoked at the start of the execution.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        # Output only. Time the execution is recently updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_logging_details = args[:cloud_logging_details] if args.key?(:cloud_logging_details)
          @contain_task_variables = args[:contain_task_variables] if args.key?(:contain_task_variables)
          @create_time = args[:create_time] if args.key?(:create_time)
          @execution_attempt_stats = args[:execution_attempt_stats] if args.key?(:execution_attempt_stats)
          @integration_version_number = args[:integration_version_number] if args.key?(:integration_version_number)
          @integration_version_user_label = args[:integration_version_user_label] if args.key?(:integration_version_user_label)
          @name = args[:name] if args.key?(:name)
          @replay_info = args[:replay_info] if args.key?(:replay_info)
          @request_variables = args[:request_variables] if args.key?(:request_variables)
          @response_variables = args[:response_variables] if args.key?(:response_variables)
          @state = args[:state] if args.key?(:state)
          @task_executions = args[:task_executions] if args.key?(:task_executions)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Contains the details of the execution info: this includes the replay reason
      # and replay tree connecting executions in a parent-child relationship
      class GoogleCloudIntegrationsV2ExecutionReplayInfo
        include Google::Apis::Core::Hashable
      
        # If this execution is a replay of another execution, then this field contains
        # the original execution id.
        # Corresponds to the JSON property `originalExecutionId`
        # @return [String]
        attr_accessor :original_execution_id
      
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
        # Corresponds to the JSON property `replayedExecutionIds`
        # @return [Array<String>]
        attr_accessor :replayed_execution_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_execution_id = args[:original_execution_id] if args.key?(:original_execution_id)
          @replay_mode = args[:replay_mode] if args.key?(:replay_mode)
          @replay_reason = args[:replay_reason] if args.key?(:replay_reason)
          @replayed_execution_ids = args[:replayed_execution_ids] if args.key?(:replayed_execution_ids)
        end
      end
      
      # Response for listing the Integration executions.
      class GoogleCloudIntegrationsV2ListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # Required. The list of executions.
        # Corresponds to the JSON property `executions`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2Execution>]
        attr_accessor :executions
      
        # The token for retrieving the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executions = args[:executions] if args.key?(:executions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Execution of a single task within an integration
      class GoogleCloudIntegrationsV2TaskExecution
        include Google::Apis::Core::Hashable
      
        # Identifier. Task execution resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Details of the task execution.
        # Corresponds to the JSON property `taskExecutionDetails`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecutionDetails>]
        attr_accessor :task_execution_details
      
        # Metadata of the task execution.
        # Corresponds to the JSON property `taskExecutionMetadata`
        # @return [Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata]
        attr_accessor :task_execution_metadata
      
        # Optional. Variables used during the execution.
        # Corresponds to the JSON property `variables`
        # @return [Hash<String,Object>]
        attr_accessor :variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @task_execution_details = args[:task_execution_details] if args.key?(:task_execution_details)
          @task_execution_metadata = args[:task_execution_metadata] if args.key?(:task_execution_metadata)
          @variables = args[:variables] if args.key?(:variables)
        end
      end
      
      # Details of the task execution.
      class GoogleCloudIntegrationsV2TaskExecutionDetails
        include Google::Apis::Core::Hashable
      
        # List for the current task execution attempts.
        # Corresponds to the JSON property `taskAttemptStats`
        # @return [Array<Google::Apis::IntegrationsV2::GoogleCloudIntegrationsV2AttemptStats>]
        attr_accessor :task_attempt_stats
      
        # Output only. The execution state of this task.
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
      
      # Metadata of the task execution.
      class GoogleCloudIntegrationsV2TaskExecutionTaskExecutionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Ancestor iteration number for the task (it will only be non-empty if
        # the task is under 'private integration').
        # Corresponds to the JSON property `ancestorIterationNumbers`
        # @return [Array<String>]
        attr_accessor :ancestor_iteration_numbers
      
        # Optional. Ancestor task number for the task (it will only be non-empty if the
        # task is under 'private integration').
        # Corresponds to the JSON property `ancestorTaskNumbers`
        # @return [Array<String>]
        attr_accessor :ancestor_task_numbers
      
        # The execution attempt number this execution belongs to.
        # Corresponds to the JSON property `executionAttempt`
        # @return [Fixnum]
        attr_accessor :execution_attempt
      
        # Optional. The direct integration which the execution belongs to.
        # Corresponds to the JSON property `privateIntegrationName`
        # @return [String]
        attr_accessor :private_integration_name
      
        # The task name associated with this execution.
        # Corresponds to the JSON property `task`
        # @return [String]
        attr_accessor :task
      
        # The task attempt number this execution belongs to.
        # Corresponds to the JSON property `taskAttempt`
        # @return [Fixnum]
        attr_accessor :task_attempt
      
        # The task label associated with this execution.
        # Corresponds to the JSON property `taskLabel`
        # @return [String]
        attr_accessor :task_label
      
        # The task number associated with this execution.
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
          @private_integration_name = args[:private_integration_name] if args.key?(:private_integration_name)
          @task = args[:task] if args.key?(:task)
          @task_attempt = args[:task_attempt] if args.key?(:task_attempt)
          @task_label = args[:task_label] if args.key?(:task_label)
          @task_number = args[:task_number] if args.key?(:task_number)
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
        # @return [Google::Apis::IntegrationsV2::EnterpriseCrmEventbusProtoEventParameters]
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
    end
  end
end
