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
    module ConnectorsV2
      
      # AccessCredentials includes the OAuth access token, and the other fields
      # returned along with it.
      class AccessCredentials
        include Google::Apis::Core::Hashable
      
        # OAuth access token.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        # Duration till the access token expires.
        # Corresponds to the JSON property `expiresIn`
        # @return [String]
        attr_accessor :expires_in
      
        # OAuth refresh token.
        # Corresponds to the JSON property `refreshToken`
        # @return [String]
        attr_accessor :refresh_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
          @expires_in = args[:expires_in] if args.key?(:expires_in)
          @refresh_token = args[:refresh_token] if args.key?(:refresh_token)
        end
      end
      
      # Action message contains metadata information about a single action present in
      # the external system.
      class Action
        include Google::Apis::Core::Hashable
      
        # Brief Description of action
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display Name of action to be shown on client side
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `inputJsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :input_json_schema
      
        # List containing input parameter metadata.
        # Corresponds to the JSON property `inputParameters`
        # @return [Array<Google::Apis::ConnectorsV2::InputParameter>]
        attr_accessor :input_parameters
      
        # Name of the action.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `resultJsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :result_json_schema
      
        # List containing the metadata of result fields.
        # Corresponds to the JSON property `resultMetadata`
        # @return [Array<Google::Apis::ConnectorsV2::ResultMetadata>]
        attr_accessor :result_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @input_json_schema = args[:input_json_schema] if args.key?(:input_json_schema)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @name = args[:name] if args.key?(:name)
          @result_json_schema = args[:result_json_schema] if args.key?(:result_json_schema)
          @result_metadata = args[:result_metadata] if args.key?(:result_metadata)
        end
      end
      
      # Response containing status of the connector for readiness prober.
      class CheckReadinessResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The status of the connector.
      class CheckStatusResponse
        include Google::Apis::Core::Hashable
      
        # When the connector is not in ACTIVE state, the description must be populated
        # to specify the reason why it's not in ACTIVE state.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # State of the connector.
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
      
      # Time window specified for daily operations.
      class DailyCycle
        include Google::Apis::Core::Hashable
      
        # Output only. Duration of the time window, set by service producer.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::ConnectorsV2::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
          @start_time = args[:start_time] if args.key?(:start_time)
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
      class Date
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
      
      # DenyMaintenancePeriod definition. Maintenance is forbidden within the deny
      # period. The start_date must be less than the end_date.
      class DenyMaintenancePeriod
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::ConnectorsV2::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::ConnectorsV2::Date]
        attr_accessor :start_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `time`
        # @return [Google::Apis::ConnectorsV2::TimeOfDay]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
          @time = args[:time] if args.key?(:time)
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
      
      # 'Entity row'/ 'Entity' refers to a single row of an entity type.
      class Entity
        include Google::Apis::Core::Hashable
      
        # Fields of the entity. The key is name of the field and the value contains the
        # applicable `google.protobuf.Value` entry for this field.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Object>]
        attr_accessor :fields
      
        # Output only. Resource name of the Entity. Format: projects/`project`/locations/
        # `location`/connections/`connection`/entityTypes/`type`/entities/`id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # EntityType message contains metadata information about a single entity type
      # present in the external system.
      class EntityType
        include Google::Apis::Core::Hashable
      
        # List containing metadata information about each field of the entity type.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::ConnectorsV2::Field>]
        attr_accessor :fields
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `jsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :json_schema
      
        # The name of the entity type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # ExchangeAuthCodeRequest currently includes no fields.
      class ExchangeAuthCodeRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # ExchangeAuthCodeResponse includes the returned access token and its associated
      # credentials.
      class ExchangeAuthCodeResponse
        include Google::Apis::Core::Hashable
      
        # AccessCredentials includes the OAuth access token, and the other fields
        # returned along with it.
        # Corresponds to the JSON property `accessCredentials`
        # @return [Google::Apis::ConnectorsV2::AccessCredentials]
        attr_accessor :access_credentials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_credentials = args[:access_credentials] if args.key?(:access_credentials)
        end
      end
      
      # Request message for ActionService.ExecuteAction
      class ExecuteActionRequest
        include Google::Apis::Core::Hashable
      
        # Parameters for executing the action. The parameters can be key/value pairs or
        # nested structs.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Response message for ActionService.ExecuteAction
      class ExecuteActionResponse
        include Google::Apis::Core::Hashable
      
        # In the case of successful invocation of the specified action, the results
        # Struct contains values based on the response of the action invoked. 1. If the
        # action execution produces any entities as a result, they are returned as an
        # array of Structs with the 'key' being the field name and the 'value' being the
        # value of that field in each result row. ` 'results': [`'key': 'value'`, ...] `
        # Corresponds to the JSON property `results`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # An execute sql query request containing the query and the connection to
      # execute it on.
      class ExecuteSqlQueryRequest
        include Google::Apis::Core::Hashable
      
        # A wrapper around the SQL query statement. This is needed so that the JSON
        # representation of ExecuteSqlQueryRequest has the following format: ``"query":"
        # select *"``.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::ConnectorsV2::Query]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # A response returned by the connection after executing the sql query.
      class ExecuteSqlQueryResponse
        include Google::Apis::Core::Hashable
      
        # In the case of successful execution of the query the response contains results
        # returned by the external system. For example, the result rows of the query are
        # contained in the 'results' Struct list - "results": [ ` "field1": "val1", "
        # field2": "val2",.. `,.. ] Each Struct row can contain fields any type of like
        # nested Structs or lists.
        # Corresponds to the JSON property `results`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Message contains EntityType's Field metadata.
      class Field
        include Google::Apis::Core::Hashable
      
        # The following map contains fields that are not explicitly mentioned above,this
        # give connectors the flexibility to add new metadata fields.
        # Corresponds to the JSON property `additionalDetails`
        # @return [Hash<String,Object>]
        attr_accessor :additional_details
      
        # The data type of the Field.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The following field specifies the default value of the Field provided by the
        # external system if a value is not provided.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # A brief description of the Field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `jsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :json_schema
      
        # The following boolean field specifies if the current Field acts as a primary
        # key or id if the parent is of type entity.
        # Corresponds to the JSON property `key`
        # @return [Boolean]
        attr_accessor :key
        alias_method :key?, :key
      
        # Name of the Field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies whether a null value is allowed.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Reference captures the association between two different entity types. Value
        # links to the reference of another entity type.
        # Corresponds to the JSON property `reference`
        # @return [Google::Apis::ConnectorsV2::Reference]
        attr_accessor :reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_details = args[:additional_details] if args.key?(:additional_details)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @key = args[:key] if args.key?(:key)
          @name = args[:name] if args.key?(:name)
          @nullable = args[:nullable] if args.key?(:nullable)
          @reference = args[:reference] if args.key?(:reference)
        end
      end
      
      # Input Parameter message contains metadata about the parameters required for
      # executing an Action.
      class InputParameter
        include Google::Apis::Core::Hashable
      
        # The following map contains fields that are not explicitly mentioned above,this
        # give connectors the flexibility to add new metadata fields.
        # Corresponds to the JSON property `additionalDetails`
        # @return [Hash<String,Object>]
        attr_accessor :additional_details
      
        # The data type of the Parameter
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The following field specifies the default value of the Parameter provided by
        # the external system if a value is not provided.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # A brief description of the Parameter.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `jsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :json_schema
      
        # Name of the Parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies whether a null value is allowed.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_details = args[:additional_details] if args.key?(:additional_details)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @name = args[:name] if args.key?(:name)
          @nullable = args[:nullable] if args.key?(:nullable)
        end
      end
      
      # Instance represents the interface for SLM services to actuate the state of
      # control plane resources. Example Instance in JSON, where consumer-project-
      # number=123456, producer-project-id=cloud-sql: ```json Instance: ` "name": "
      # projects/123456/locations/us-east1/instances/prod-instance", "create_time": ` "
      # seconds": 1526406431, `, "labels": ` "env": "prod", "foo": "bar" `, "state":
      # READY, "software_versions": ` "software_update": "cloud-sql-09-28-2018", `, "
      # maintenance_policy_names": ` "UpdatePolicy": "projects/123456/locations/us-
      # east1/maintenancePolicies/prod-update-policy", ` "tenant_project_id": "cloud-
      # sql-test-tenant", "producer_metadata": ` "cloud-sql-tier": "basic", "cloud-sql-
      # instance-size": "1G", `, "provisioned_resources": [ ` "resource-type": "
      # compute-instance", "resource-url": "https://www.googleapis.com/compute/v1/
      # projects/cloud-sql/zones/us-east1-b/instances/vm-1", ` ], "
      # maintenance_schedules": ` "csa_rollout": ` "start_time": ` "seconds":
      # 1526406431, `, "end_time": ` "seconds": 1535406431, `, `, "ncsa_rollout": ` "
      # start_time": ` "seconds": 1526406431, `, "end_time": ` "seconds": 1535406431, `
      # , ` `, "consumer_defined_name": "my-sql-instance1", ` ``` LINT.IfChange
      class Instance
        include Google::Apis::Core::Hashable
      
        # consumer_defined_name is the name of the instance set by the service consumers.
        # Generally this is different from the `name` field which reperesents the
        # system-assigned id of the instance which the service consumers do not
        # recognize. This is a required field for tenants onboarding to Maintenance
        # Window notifications (go/slm-rollout-maintenance-policies#prerequisites).
        # Corresponds to the JSON property `consumerDefinedName`
        # @return [String]
        attr_accessor :consumer_defined_name
      
        # Output only. Timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The instance_type of this instance of format: projects/`
        # project_number`/locations/`location_id`/instanceTypes/`instance_type_id`.
        # Instance Type represents a high-level tier or SKU of the service that this
        # instance belong to. When enabled(eg: Maintenance Rollout), Rollout uses '
        # instance_type' along with 'software_versions' to determine whether instance
        # needs an update or not.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Optional. Resource labels to represent user provided metadata. Each label is a
        # key-value pair, where both the key and the value are arbitrary strings
        # provided by the user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The MaintenancePolicies that have been attached to the instance. The
        # key must be of the type name of the oneof policy name defined in
        # MaintenancePolicy, and the referenced policy must define the same policy type.
        # For details, please refer to go/mr-user-guide. Should not be set if
        # maintenance_settings.maintenance_policies is set.
        # Corresponds to the JSON property `maintenancePolicyNames`
        # @return [Hash<String,String>]
        attr_accessor :maintenance_policy_names
      
        # The MaintenanceSchedule contains the scheduling information of published
        # maintenance schedule with same key as software_versions.
        # Corresponds to the JSON property `maintenanceSchedules`
        # @return [Hash<String,Google::Apis::ConnectorsV2::MaintenanceSchedule>]
        attr_accessor :maintenance_schedules
      
        # Maintenance settings associated with instance. Allows service producers and
        # end users to assign settings that controls maintenance on this instance.
        # Corresponds to the JSON property `maintenanceSettings`
        # @return [Google::Apis::ConnectorsV2::MaintenanceSettings]
        attr_accessor :maintenance_settings
      
        # Unique name of the resource. It uses the form: `projects/`project_number`/
        # locations/`location_id`/instances/`instance_id`` Note: This name is passed,
        # stored and logged across the rollout system. So use of consumer project_id or
        # any other consumer PII in the name is strongly discouraged for wipeout (go/
        # wipeout) compliance. See go/elysium/project_ids#storage-guidance for more
        # details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. notification_parameter are information that service producers may
        # like to include that is not relevant to Rollout. This parameter will only be
        # passed to Gamma and Cloud Logging for notification/logging purpose.
        # Corresponds to the JSON property `notificationParameters`
        # @return [Hash<String,Google::Apis::ConnectorsV2::NotificationParameter>]
        attr_accessor :notification_parameters
      
        # Output only. Custom string attributes used primarily to expose producer-
        # specific information in monitoring dashboards. See go/get-instance-metadata.
        # Corresponds to the JSON property `producerMetadata`
        # @return [Hash<String,String>]
        attr_accessor :producer_metadata
      
        # Output only. The list of data plane resources provisioned for this instance, e.
        # g. compute VMs. See go/get-instance-metadata.
        # Corresponds to the JSON property `provisionedResources`
        # @return [Array<Google::Apis::ConnectorsV2::ProvisionedResource>]
        attr_accessor :provisioned_resources
      
        # Link to the SLM instance template. Only populated when updating SLM instances
        # via SSA's Actuation service adaptor. Service producers with custom control
        # plane (e.g. Cloud SQL) doesn't need to populate this field. Instead they
        # should use software_versions.
        # Corresponds to the JSON property `slmInstanceTemplate`
        # @return [String]
        attr_accessor :slm_instance_template
      
        # SloMetadata contains resources required for proper SLO classification of the
        # instance.
        # Corresponds to the JSON property `sloMetadata`
        # @return [Google::Apis::ConnectorsV2::SloMetadata]
        attr_accessor :slo_metadata
      
        # Software versions that are used to deploy this instance. This can be mutated
        # by rollout services.
        # Corresponds to the JSON property `softwareVersions`
        # @return [Hash<String,String>]
        attr_accessor :software_versions
      
        # Output only. Current lifecycle state of the resource (e.g. if it's being
        # created or ready to use).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. ID of the associated GCP tenant project. See go/get-instance-
        # metadata.
        # Corresponds to the JSON property `tenantProjectId`
        # @return [String]
        attr_accessor :tenant_project_id
      
        # Output only. Timestamp when the resource was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumer_defined_name = args[:consumer_defined_name] if args.key?(:consumer_defined_name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @labels = args[:labels] if args.key?(:labels)
          @maintenance_policy_names = args[:maintenance_policy_names] if args.key?(:maintenance_policy_names)
          @maintenance_schedules = args[:maintenance_schedules] if args.key?(:maintenance_schedules)
          @maintenance_settings = args[:maintenance_settings] if args.key?(:maintenance_settings)
          @name = args[:name] if args.key?(:name)
          @notification_parameters = args[:notification_parameters] if args.key?(:notification_parameters)
          @producer_metadata = args[:producer_metadata] if args.key?(:producer_metadata)
          @provisioned_resources = args[:provisioned_resources] if args.key?(:provisioned_resources)
          @slm_instance_template = args[:slm_instance_template] if args.key?(:slm_instance_template)
          @slo_metadata = args[:slo_metadata] if args.key?(:slo_metadata)
          @software_versions = args[:software_versions] if args.key?(:software_versions)
          @state = args[:state] if args.key?(:state)
          @tenant_project_id = args[:tenant_project_id] if args.key?(:tenant_project_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # JsonSchema representation of schema metadata
      class JsonSchema
        include Google::Apis::Core::Hashable
      
        # Additional details apart from standard json schema fields, this gives
        # flexibility to store metadata about the schema
        # Corresponds to the JSON property `additionalDetails`
        # @return [Hash<String,Object>]
        attr_accessor :additional_details
      
        # The default value of the field or object described by this schema.
        # Corresponds to the JSON property `default`
        # @return [Object]
        attr_accessor :default
      
        # A description of this schema.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Possible values for an enumeration. This works in conjunction with `type` to
        # represent types with a fixed set of legal values
        # Corresponds to the JSON property `enum`
        # @return [Array<Object>]
        attr_accessor :enum
      
        # Format of the value as per https://json-schema.org/understanding-json-schema/
        # reference/string.html#format
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `items`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :items
      
        # JDBC datatype of the field.
        # Corresponds to the JSON property `jdbcType`
        # @return [String]
        attr_accessor :jdbc_type
      
        # The child schemas, applicable only if this is of type `object`. The key is the
        # name of the property and the value is the json schema that describes that
        # property
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::ConnectorsV2::JsonSchema>]
        attr_accessor :properties
      
        # Whether this property is required.
        # Corresponds to the JSON property `required`
        # @return [Array<String>]
        attr_accessor :required
      
        # JSON Schema Validation: A Vocabulary for Structural Validation of JSON
        # Corresponds to the JSON property `type`
        # @return [Array<String>]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_details = args[:additional_details] if args.key?(:additional_details)
          @default = args[:default] if args.key?(:default)
          @description = args[:description] if args.key?(:description)
          @enum = args[:enum] if args.key?(:enum)
          @format = args[:format] if args.key?(:format)
          @items = args[:items] if args.key?(:items)
          @jdbc_type = args[:jdbc_type] if args.key?(:jdbc_type)
          @properties = args[:properties] if args.key?(:properties)
          @required = args[:required] if args.key?(:required)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response message for ActionService.ListActions
      class ListActionsResponse
        include Google::Apis::Core::Hashable
      
        # List of action metadata.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::ConnectorsV2::Action>]
        attr_accessor :actions
      
        # Next page token if more actions available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of actions which contain unsupported Datatypes. Check datatype.proto for
        # more information.
        # Corresponds to the JSON property `unsupportedActionNames`
        # @return [Array<String>]
        attr_accessor :unsupported_action_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unsupported_action_names = args[:unsupported_action_names] if args.key?(:unsupported_action_names)
        end
      end
      
      # Response message for EntityService.ListEntities
      class ListEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # List containing entity rows.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::ConnectorsV2::Entity>]
        attr_accessor :entities
      
        # Next page token if more records are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for EntityService.ListEntityTypes
      class ListEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # Next page token if more entity types available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of metadata related to all entity types.
        # Corresponds to the JSON property `types`
        # @return [Array<Google::Apis::ConnectorsV2::EntityType>]
        attr_accessor :types
      
        # List of entity type names which contain unsupported Datatypes. Check datatype.
        # proto for more information.
        # Corresponds to the JSON property `unsupportedTypeNames`
        # @return [Array<String>]
        attr_accessor :unsupported_type_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @types = args[:types] if args.key?(:types)
          @unsupported_type_names = args[:unsupported_type_names] if args.key?(:unsupported_type_names)
        end
      end
      
      # LINT.IfChange Defines policies to service maintenance events.
      class MaintenancePolicy
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of what this policy is for. Create/Update methods return
        # INVALID_ARGUMENT if the length is greater than 512.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Resource labels to represent user provided metadata. Each label is a
        # key-value pair, where both the key and the value are arbitrary strings
        # provided by the user.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. MaintenancePolicy name using the form: `projects/`project_id`/
        # locations/`location_id`/maintenancePolicies/`maintenance_policy_id`` where `
        # project_id` refers to a GCP consumer project ID, `location_id` refers to a GCP
        # region/zone, `maintenance_policy_id` must be 1-63 characters long and match
        # the regular expression `[a-z0-9]([-a-z0-9]*[a-z0-9])?`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The state of the policy.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Maintenance policy applicable to instance updates.
        # Corresponds to the JSON property `updatePolicy`
        # @return [Google::Apis::ConnectorsV2::UpdatePolicy]
        attr_accessor :update_policy
      
        # Output only. The time when the resource was updated.
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
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_policy = args[:update_policy] if args.key?(:update_policy)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Maintenance schedule which is exposed to customer and potentially end user,
      # indicating published upcoming future maintenance schedule
      class MaintenanceSchedule
        include Google::Apis::Core::Hashable
      
        # This field is deprecated, and will be always set to true since reschedule can
        # happen multiple times now. This field should not be removed until all service
        # producers remove this for their customers.
        # Corresponds to the JSON property `canReschedule`
        # @return [Boolean]
        attr_accessor :can_reschedule
        alias_method :can_reschedule?, :can_reschedule
      
        # The scheduled end time for the maintenance.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The rollout management policy this maintenance schedule is associated with.
        # When doing reschedule update request, the reschedule should be against this
        # given policy.
        # Corresponds to the JSON property `rolloutManagementPolicy`
        # @return [String]
        attr_accessor :rollout_management_policy
      
        # schedule_deadline_time is the time deadline any schedule start time cannot go
        # beyond, including reschedule. It's normally the initial schedule start time
        # plus maintenance window length (1 day or 1 week). Maintenance cannot be
        # scheduled to start beyond this deadline.
        # Corresponds to the JSON property `scheduleDeadlineTime`
        # @return [String]
        attr_accessor :schedule_deadline_time
      
        # The scheduled start time for the maintenance.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_reschedule = args[:can_reschedule] if args.key?(:can_reschedule)
          @end_time = args[:end_time] if args.key?(:end_time)
          @rollout_management_policy = args[:rollout_management_policy] if args.key?(:rollout_management_policy)
          @schedule_deadline_time = args[:schedule_deadline_time] if args.key?(:schedule_deadline_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Maintenance settings associated with instance. Allows service producers and
      # end users to assign settings that controls maintenance on this instance.
      class MaintenanceSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Exclude instance from maintenance. When true, rollout service will
        # not attempt maintenance on the instance. Rollout service will include the
        # instance in reported rollout progress as not attempted.
        # Corresponds to the JSON property `exclude`
        # @return [Boolean]
        attr_accessor :exclude
        alias_method :exclude?, :exclude
      
        # Optional. If the update call is triggered from rollback, set the value as true.
        # Corresponds to the JSON property `isRollback`
        # @return [Boolean]
        attr_accessor :is_rollback
        alias_method :is_rollback?, :is_rollback
      
        # Optional. The MaintenancePolicies that have been attached to the instance. The
        # key must be of the type name of the oneof policy name defined in
        # MaintenancePolicy, and the embedded policy must define the same policy type.
        # For details, please refer to go/mr-user-guide. Should not be set if
        # maintenance_policy_names is set. If only the name is needed, then only
        # populate MaintenancePolicy.name.
        # Corresponds to the JSON property `maintenancePolicies`
        # @return [Hash<String,Google::Apis::ConnectorsV2::MaintenancePolicy>]
        attr_accessor :maintenance_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude = args[:exclude] if args.key?(:exclude)
          @is_rollback = args[:is_rollback] if args.key?(:is_rollback)
          @maintenance_policies = args[:maintenance_policies] if args.key?(:maintenance_policies)
        end
      end
      
      # MaintenanceWindow definition.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Time window specified for daily operations.
        # Corresponds to the JSON property `dailyCycle`
        # @return [Google::Apis::ConnectorsV2::DailyCycle]
        attr_accessor :daily_cycle
      
        # Time window specified for weekly operations.
        # Corresponds to the JSON property `weeklyCycle`
        # @return [Google::Apis::ConnectorsV2::WeeklyCycle]
        attr_accessor :weekly_cycle
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_cycle = args[:daily_cycle] if args.key?(:daily_cycle)
          @weekly_cycle = args[:weekly_cycle] if args.key?(:weekly_cycle)
        end
      end
      
      # Node information for custom per-node SLO implementations. SSA does not support
      # per-node SLO, but producers can populate per-node information in SloMetadata
      # for custom precomputations. SSA Eligibility Exporter will emit per-node metric
      # based on this information.
      class NodeSloMetadata
        include Google::Apis::Core::Hashable
      
        # The location of the node, if different from instance location.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The id of the node. This should be equal to SaasInstanceNode.node_id.
        # Corresponds to the JSON property `nodeId`
        # @return [String]
        attr_accessor :node_id
      
        # PerSliSloEligibility is a mapping from an SLI name to eligibility.
        # Corresponds to the JSON property `perSliEligibility`
        # @return [Google::Apis::ConnectorsV2::PerSliSloEligibility]
        attr_accessor :per_sli_eligibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @node_id = args[:node_id] if args.key?(:node_id)
          @per_sli_eligibility = args[:per_sli_eligibility] if args.key?(:per_sli_eligibility)
        end
      end
      
      # Contains notification related data.
      class NotificationParameter
        include Google::Apis::Core::Hashable
      
        # Optional. Array of string values. e.g. instance's replica information.
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
      
      # PerSliSloEligibility is a mapping from an SLI name to eligibility.
      class PerSliSloEligibility
        include Google::Apis::Core::Hashable
      
        # An entry in the eligibilities map specifies an eligibility for a particular
        # SLI for the given instance. The SLI key in the name must be a valid SLI name
        # specified in the Eligibility Exporter binary flags otherwise an error will be
        # emitted by Eligibility Exporter and the oncaller will be alerted. If an SLI
        # has been defined in the binary flags but the eligibilities map does not
        # contain it, the corresponding SLI time series will not be emitted by the
        # Eligibility Exporter. This ensures a smooth rollout and compatibility between
        # the data produced by different versions of the Eligibility Exporters. If
        # eligibilities map contains a key for an SLI which has not been declared in the
        # binary flags, there will be an error message emitted in the Eligibility
        # Exporter log and the metric for the SLI in question will not be emitted.
        # Corresponds to the JSON property `eligibilities`
        # @return [Hash<String,Google::Apis::ConnectorsV2::SloEligibility>]
        attr_accessor :eligibilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eligibilities = args[:eligibilities] if args.key?(:eligibilities)
        end
      end
      
      # Describes provisioned dataplane resources.
      class ProvisionedResource
        include Google::Apis::Core::Hashable
      
        # Type of the resource. This can be either a GCP resource or a custom one (e.g.
        # another cloud provider's VM). For GCP compute resources use singular form of
        # the names listed in GCP compute API documentation (https://cloud.google.com/
        # compute/docs/reference/rest/v1/), prefixed with 'compute-', for example: '
        # compute-instance', 'compute-disk', 'compute-autoscaler'.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # URL identifying the resource, e.g. "https://www.googleapis.com/compute/v1/
        # projects/...)".
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
        end
      end
      
      # A wrapper around the SQL query statement. This is needed so that the JSON
      # representation of ExecuteSqlQueryRequest has the following format: ``"query":"
      # select *"``.
      class Query
        include Google::Apis::Core::Hashable
      
        # Sets the limit for the maximum number of rows returned after the query
        # execution.
        # Corresponds to the JSON property `maxRows`
        # @return [Fixnum]
        attr_accessor :max_rows
      
        # Required. Sql query to execute.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # In the struct, the value corresponds to the value of query parameter and date
        # type corresponds to the date type of the query parameter.
        # Corresponds to the JSON property `queryParameters`
        # @return [Array<Google::Apis::ConnectorsV2::QueryParameter>]
        attr_accessor :query_parameters
      
        # Sets the number of seconds the driver will wait for a query to execute.
        # Corresponds to the JSON property `timeout`
        # @return [Fixnum]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_rows = args[:max_rows] if args.key?(:max_rows)
          @query = args[:query] if args.key?(:query)
          @query_parameters = args[:query_parameters] if args.key?(:query_parameters)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # Query parameter definition
      class QueryParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class Reference
        include Google::Apis::Core::Hashable
      
        # Name of the reference field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of reference entity type.
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
      
      # RefreshAccessTokenRequest currently includes no fields.
      class RefreshAccessTokenRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # RefreshAccessTokenResponse includes the returned access token and its
      # associated credentials.
      class RefreshAccessTokenResponse
        include Google::Apis::Core::Hashable
      
        # AccessCredentials includes the OAuth access token, and the other fields
        # returned along with it.
        # Corresponds to the JSON property `accessCredentials`
        # @return [Google::Apis::ConnectorsV2::AccessCredentials]
        attr_accessor :access_credentials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_credentials = args[:access_credentials] if args.key?(:access_credentials)
        end
      end
      
      # Result Metadata message contains metadata about the result returned after
      # executing an Action.
      class ResultMetadata
        include Google::Apis::Core::Hashable
      
        # The data type of the metadata field
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # A brief description of the metadata field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `jsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :json_schema
      
        # Name of the metadata field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @description = args[:description] if args.key?(:description)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Configure the schedule.
      class Schedule
        include Google::Apis::Core::Hashable
      
        # Allows to define schedule that runs specified day of the week.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
        # Output only. Duration of the time window, set by service producer.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::ConnectorsV2::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @duration = args[:duration] if args.key?(:duration)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # SloEligibility is a tuple containing eligibility value: true if an instance is
      # eligible for SLO calculation or false if it should be excluded from all SLO-
      # related calculations along with a user-defined reason.
      class SloEligibility
        include Google::Apis::Core::Hashable
      
        # Whether an instance is eligible or ineligible.
        # Corresponds to the JSON property `eligible`
        # @return [Boolean]
        attr_accessor :eligible
        alias_method :eligible?, :eligible
      
        # User-defined reason for the current value of instance eligibility. Usually,
        # this can be directly mapped to the internal state. An empty reason is allowed.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eligible = args[:eligible] if args.key?(:eligible)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # SloMetadata contains resources required for proper SLO classification of the
      # instance.
      class SloMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. List of nodes. Some producers need to use per-node metadata to
        # calculate SLO. This field allows such producers to publish per-node SLO meta
        # data, which will be consumed by SSA Eligibility Exporter and published in the
        # form of per node metric to Monarch.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::ConnectorsV2::NodeSloMetadata>]
        attr_accessor :nodes
      
        # PerSliSloEligibility is a mapping from an SLI name to eligibility.
        # Corresponds to the JSON property `perSliEligibility`
        # @return [Google::Apis::ConnectorsV2::PerSliSloEligibility]
        attr_accessor :per_sli_eligibility
      
        # Name of the SLO tier the Instance belongs to. This name will be expected to
        # match the tiers specified in the service SLO configuration. Field is mandatory
        # and must not be empty.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @nodes = args[:nodes] if args.key?(:nodes)
          @per_sli_eligibility = args[:per_sli_eligibility] if args.key?(:per_sli_eligibility)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Response message for EntityService.UpdateEntitiesWithConditions
      class UpdateEntitiesWithConditionsResponse
        include Google::Apis::Core::Hashable
      
        # Response returned by the external system.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Maintenance policy applicable to instance updates.
      class UpdatePolicy
        include Google::Apis::Core::Hashable
      
        # Optional. Relative scheduling channel applied to resource.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Deny Maintenance Period that is applied to resource to indicate when
        # maintenance is forbidden. The protocol supports zero-to-many such periods, but
        # the current SLM Rollout implementation only supports zero-to-one.
        # Corresponds to the JSON property `denyMaintenancePeriods`
        # @return [Array<Google::Apis::ConnectorsV2::DenyMaintenancePeriod>]
        attr_accessor :deny_maintenance_periods
      
        # MaintenanceWindow definition.
        # Corresponds to the JSON property `window`
        # @return [Google::Apis::ConnectorsV2::MaintenanceWindow]
        attr_accessor :window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @deny_maintenance_periods = args[:deny_maintenance_periods] if args.key?(:deny_maintenance_periods)
          @window = args[:window] if args.key?(:window)
        end
      end
      
      # Time window specified for weekly operations.
      class WeeklyCycle
        include Google::Apis::Core::Hashable
      
        # User can specify multiple windows in a week. Minimum of 1 window.
        # Corresponds to the JSON property `schedule`
        # @return [Array<Google::Apis::ConnectorsV2::Schedule>]
        attr_accessor :schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schedule = args[:schedule] if args.key?(:schedule)
        end
      end
    end
  end
end
