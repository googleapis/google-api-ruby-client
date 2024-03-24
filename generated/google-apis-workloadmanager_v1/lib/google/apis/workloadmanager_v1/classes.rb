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
    module WorkloadmanagerV1
      
      # Message describing big query destination
      class BigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Optional. determine if results will be saved in a new table
        # Corresponds to the JSON property `createNewResultsTable`
        # @return [Boolean]
        attr_accessor :create_new_results_table
        alias_method :create_new_results_table?, :create_new_results_table
      
        # Optional. destination dataset to save evaluation results
        # Corresponds to the JSON property `destinationDataset`
        # @return [String]
        attr_accessor :destination_dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_new_results_table = args[:create_new_results_table] if args.key?(:create_new_results_table)
          @destination_dataset = args[:destination_dataset] if args.key?(:destination_dataset)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # LINT.IfChange Message describing Evaluation object
      class Evaluation
        include Google::Apis::Core::Hashable
      
        # Message describing big query destination
        # Corresponds to the JSON property `bigQueryDestination`
        # @return [Google::Apis::WorkloadmanagerV1::BigQueryDestination]
        attr_accessor :big_query_destination
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The Cloud Storage bucket name for custom rules.
        # Corresponds to the JSON property `customRulesBucket`
        # @return [String]
        attr_accessor :custom_rules_bucket
      
        # Description of the Evaluation
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # name of resource names have the form 'projects/`project_id`/locations/`
        # location_id`/evaluations/`evaluation_id`'
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message describing resource filters
        # Corresponds to the JSON property `resourceFilter`
        # @return [Google::Apis::WorkloadmanagerV1::ResourceFilter]
        attr_accessor :resource_filter
      
        # Message describing resource status
        # Corresponds to the JSON property `resourceStatus`
        # @return [Google::Apis::WorkloadmanagerV1::ResourceStatus]
        attr_accessor :resource_status
      
        # the name of the rule
        # Corresponds to the JSON property `ruleNames`
        # @return [Array<String>]
        attr_accessor :rule_names
      
        # Output only. [Output only] The updated rule ids if exist.
        # Corresponds to the JSON property `ruleVersions`
        # @return [Array<String>]
        attr_accessor :rule_versions
      
        # crontab format schedule for scheduled evaluation, currently only support the
        # following schedule: "0 */1 * * *", "0 */6 * * *", "0 */12 * * *", "0 0 */1 * *"
        # , "0 0 */7 * *",
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_destination = args[:big_query_destination] if args.key?(:big_query_destination)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_rules_bucket = args[:custom_rules_bucket] if args.key?(:custom_rules_bucket)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @resource_filter = args[:resource_filter] if args.key?(:resource_filter)
          @resource_status = args[:resource_status] if args.key?(:resource_status)
          @rule_names = args[:rule_names] if args.key?(:rule_names)
          @rule_versions = args[:rule_versions] if args.key?(:rule_versions)
          @schedule = args[:schedule] if args.key?(:schedule)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message describing Execution object
      class Execution
        include Google::Apis::Core::Hashable
      
        # Output only. [Output only] End time stamp
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. [Output only] Evaluation ID
        # Corresponds to the JSON property `evaluationId`
        # @return [String]
        attr_accessor :evaluation_id
      
        # Output only. [Output only] Inventory time stamp
        # Corresponds to the JSON property `inventoryTime`
        # @return [String]
        attr_accessor :inventory_time
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The name of execution resource. The format is projects/`project`/locations/`
        # location`/evaluations/`evaluation`/executions/`execution`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # type represent whether the execution executed directly by user or scheduled
        # according evaluation.schedule field.
        # Corresponds to the JSON property `runType`
        # @return [String]
        attr_accessor :run_type
      
        # Output only. [Output only] Start time stamp
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. [Output only] State
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @evaluation_id = args[:evaluation_id] if args.key?(:evaluation_id)
          @inventory_time = args[:inventory_time] if args.key?(:inventory_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @run_type = args[:run_type] if args.key?(:run_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Message describing the result of an execution
      class ExecutionResult
        include Google::Apis::Core::Hashable
      
        # the document url of the rule
        # Corresponds to the JSON property `documentationUrl`
        # @return [String]
        attr_accessor :documentation_url
      
        # Message represent resource in execution result
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::WorkloadmanagerV1::Resource]
        attr_accessor :resource
      
        # the rule which violate in execution
        # Corresponds to the JSON property `rule`
        # @return [String]
        attr_accessor :rule
      
        # severity of violation
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Message describing the violdation in execution result
        # Corresponds to the JSON property `violationDetails`
        # @return [Google::Apis::WorkloadmanagerV1::ViolationDetails]
        attr_accessor :violation_details
      
        # the violation message of an execution
        # Corresponds to the JSON property `violationMessage`
        # @return [String]
        attr_accessor :violation_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documentation_url = args[:documentation_url] if args.key?(:documentation_url)
          @resource = args[:resource] if args.key?(:resource)
          @rule = args[:rule] if args.key?(:rule)
          @severity = args[:severity] if args.key?(:severity)
          @violation_details = args[:violation_details] if args.key?(:violation_details)
          @violation_message = args[:violation_message] if args.key?(:violation_message)
        end
      end
      
      # Message describing compute engine instance filter
      class GceInstanceFilter
        include Google::Apis::Core::Hashable
      
        # Service account of compute engine
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<String>]
        attr_accessor :service_accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
        end
      end
      
      # A presentation of host resource usage where the workload runs.
      class Insight
        include Google::Apis::Core::Hashable
      
        # Required. The instance id where the insight is generated from
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The schema of SAP system discovery data.
        # Corresponds to the JSON property `sapDiscovery`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscovery]
        attr_accessor :sap_discovery
      
        # A presentation of SAP workload insight. The schema of SAP workloads validation
        # related data.
        # Corresponds to the JSON property `sapValidation`
        # @return [Google::Apis::WorkloadmanagerV1::SapValidation]
        attr_accessor :sap_validation
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `sentTime`
        # @return [String]
        attr_accessor :sent_time
      
        # A presentation of SQLServer workload insight. The schema of SqlServer
        # workloads validation related data.
        # Corresponds to the JSON property `sqlserverValidation`
        # @return [Google::Apis::WorkloadmanagerV1::SqlserverValidation]
        attr_accessor :sqlserver_validation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @sap_discovery = args[:sap_discovery] if args.key?(:sap_discovery)
          @sap_validation = args[:sap_validation] if args.key?(:sap_validation)
          @sent_time = args[:sent_time] if args.key?(:sent_time)
          @sqlserver_validation = args[:sqlserver_validation] if args.key?(:sqlserver_validation)
        end
      end
      
      # Message for response to listing Evaluations
      class ListEvaluationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Evaluation
        # Corresponds to the JSON property `evaluations`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Evaluation>]
        attr_accessor :evaluations
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluations = args[:evaluations] if args.key?(:evaluations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response of list execution results
      class ListExecutionResultsResponse
        include Google::Apis::Core::Hashable
      
        # The versions from the specified publisher.
        # Corresponds to the JSON property `executionResults`
        # @return [Array<Google::Apis::WorkloadmanagerV1::ExecutionResult>]
        attr_accessor :execution_results
      
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
          @execution_results = args[:execution_results] if args.key?(:execution_results)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing Executions
      class ListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Execution
        # Corresponds to the JSON property `executions`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Execution>]
        attr_accessor :executions
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executions = args[:executions] if args.key?(:executions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # Mesesage of response of list rules
      class ListRulesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # all rules in response
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::WorkloadmanagerV1::Rule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Message for response to list scanned resources
      class ListScannedResourcesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # All scanned resources in response
        # Corresponds to the JSON property `scannedResources`
        # @return [Array<Google::Apis::WorkloadmanagerV1::ScannedResource>]
        attr_accessor :scanned_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @scanned_resources = args[:scanned_resources] if args.key?(:scanned_resources)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::WorkloadmanagerV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Message represent resource in execution result
      class Resource
        include Google::Apis::Core::Hashable
      
        # the name of the resource
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # the service account accosiate with resource
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # the type of reresource
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Message describing resource filters
      class ResourceFilter
        include Google::Apis::Core::Hashable
      
        # Message describing compute engine instance filter
        # Corresponds to the JSON property `gceInstanceFilter`
        # @return [Google::Apis::WorkloadmanagerV1::GceInstanceFilter]
        attr_accessor :gce_instance_filter
      
        # The label used for filter resource
        # Corresponds to the JSON property `inclusionLabels`
        # @return [Hash<String,String>]
        attr_accessor :inclusion_labels
      
        # The id pattern for filter resource
        # Corresponds to the JSON property `resourceIdPatterns`
        # @return [Array<String>]
        attr_accessor :resource_id_patterns
      
        # The scopes of evaluation resource
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gce_instance_filter = args[:gce_instance_filter] if args.key?(:gce_instance_filter)
          @inclusion_labels = args[:inclusion_labels] if args.key?(:inclusion_labels)
          @resource_id_patterns = args[:resource_id_patterns] if args.key?(:resource_id_patterns)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # Message describing resource status
      class ResourceStatus
        include Google::Apis::Core::Hashable
      
        # Historical: Used before 2023-05-22 the new version of rule id if exists
        # Corresponds to the JSON property `rulesNewerVersions`
        # @return [Array<String>]
        attr_accessor :rules_newer_versions
      
        # State of the resource
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules_newer_versions = args[:rules_newer_versions] if args.key?(:rules_newer_versions)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Message represent a rule
      class Rule
        include Google::Apis::Core::Hashable
      
        # descrite rule in plain language
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # the name display in UI
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # the message template for rule
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # rule name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # the primary category
        # Corresponds to the JSON property `primaryCategory`
        # @return [String]
        attr_accessor :primary_category
      
        # the remediation for the rule
        # Corresponds to the JSON property `remediation`
        # @return [String]
        attr_accessor :remediation
      
        # Output only. the version of the rule
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # the secondary category
        # Corresponds to the JSON property `secondaryCategory`
        # @return [String]
        attr_accessor :secondary_category
      
        # the severity of the rule
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # List of user-defined tags
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # the docuement url for the rule
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error_message = args[:error_message] if args.key?(:error_message)
          @name = args[:name] if args.key?(:name)
          @primary_category = args[:primary_category] if args.key?(:primary_category)
          @remediation = args[:remediation] if args.key?(:remediation)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @secondary_category = args[:secondary_category] if args.key?(:secondary_category)
          @severity = args[:severity] if args.key?(:severity)
          @tags = args[:tags] if args.key?(:tags)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Message for creating a Execution
      class RunEvaluationRequest
        include Google::Apis::Core::Hashable
      
        # Message describing Execution object
        # Corresponds to the JSON property `execution`
        # @return [Google::Apis::WorkloadmanagerV1::Execution]
        attr_accessor :execution
      
        # Required. Id of the requesting object If auto-generating Id server-side,
        # remove this field and execution_id from the method_signature of Create RPC
        # Corresponds to the JSON property `executionId`
        # @return [String]
        attr_accessor :execution_id
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution = args[:execution] if args.key?(:execution)
          @execution_id = args[:execution_id] if args.key?(:execution_id)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # The schema of SAP system discovery data.
      class SapDiscovery
        include Google::Apis::Core::Hashable
      
        # Message describing the system component.
        # Corresponds to the JSON property `applicationLayer`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent]
        attr_accessor :application_layer
      
        # Message describing the system component.
        # Corresponds to the JSON property `databaseLayer`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryComponent]
        attr_accessor :database_layer
      
        # Message describing SAP discovery system metadata
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryMetadata]
        attr_accessor :metadata
      
        # Optional. The GCP project number that this SapSystem belongs to.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # Output only. A combination of database SID, database instance URI and tenant
        # DB name to make a unique identifier per-system.
        # Corresponds to the JSON property `systemId`
        # @return [String]
        attr_accessor :system_id
      
        # Required. Unix timestamp this system has been updated last.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # A set of properties describing an SAP workload.
        # Corresponds to the JSON property `workloadProperties`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadProperties]
        attr_accessor :workload_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_layer = args[:application_layer] if args.key?(:application_layer)
          @database_layer = args[:database_layer] if args.key?(:database_layer)
          @metadata = args[:metadata] if args.key?(:metadata)
          @project_number = args[:project_number] if args.key?(:project_number)
          @system_id = args[:system_id] if args.key?(:system_id)
          @update_time = args[:update_time] if args.key?(:update_time)
          @workload_properties = args[:workload_properties] if args.key?(:workload_properties)
        end
      end
      
      # Message describing the system component.
      class SapDiscoveryComponent
        include Google::Apis::Core::Hashable
      
        # A set of properties describing an SAP Application layer.
        # Corresponds to the JSON property `applicationProperties`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentApplicationProperties]
        attr_accessor :application_properties
      
        # A set of properties describing an SAP Database layer.
        # Corresponds to the JSON property `databaseProperties`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryComponentDatabaseProperties]
        attr_accessor :database_properties
      
        # Optional. A list of host URIs that are part of the HA configuration if present.
        # An empty list indicates the component is not configured for HA.
        # Corresponds to the JSON property `haHosts`
        # @return [Array<String>]
        attr_accessor :ha_hosts
      
        # Required. Pantheon Project in which the resources reside.
        # Corresponds to the JSON property `hostProject`
        # @return [String]
        attr_accessor :host_project
      
        # Optional. The resources in a component.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapDiscoveryResource>]
        attr_accessor :resources
      
        # Optional. The SAP identifier, used by the SAP software and helps differentiate
        # systems for customers.
        # Corresponds to the JSON property `sid`
        # @return [String]
        attr_accessor :sid
      
        # Optional. The detected topology of the component.
        # Corresponds to the JSON property `topologyType`
        # @return [String]
        attr_accessor :topology_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_properties = args[:application_properties] if args.key?(:application_properties)
          @database_properties = args[:database_properties] if args.key?(:database_properties)
          @ha_hosts = args[:ha_hosts] if args.key?(:ha_hosts)
          @host_project = args[:host_project] if args.key?(:host_project)
          @resources = args[:resources] if args.key?(:resources)
          @sid = args[:sid] if args.key?(:sid)
          @topology_type = args[:topology_type] if args.key?(:topology_type)
        end
      end
      
      # A set of properties describing an SAP Application layer.
      class SapDiscoveryComponentApplicationProperties
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether this is a Java or ABAP Netweaver instance. true
        # means it is ABAP, false means it is Java.
        # Corresponds to the JSON property `abap`
        # @return [Boolean]
        attr_accessor :abap
        alias_method :abap?, :abap
      
        # Optional. Instance number of the SAP application instance.
        # Corresponds to the JSON property `appInstanceNumber`
        # @return [String]
        attr_accessor :app_instance_number
      
        # Required. Type of the application. Netweaver, etc.
        # Corresponds to the JSON property `applicationType`
        # @return [String]
        attr_accessor :application_type
      
        # Optional. Instance number of the ASCS instance.
        # Corresponds to the JSON property `ascsInstanceNumber`
        # @return [String]
        attr_accessor :ascs_instance_number
      
        # Optional. Resource URI of the recognized ASCS host of the application.
        # Corresponds to the JSON property `ascsUri`
        # @return [String]
        attr_accessor :ascs_uri
      
        # Optional. Kernel version for Netweaver running in the system.
        # Corresponds to the JSON property `kernelVersion`
        # @return [String]
        attr_accessor :kernel_version
      
        # Optional. Resource URI of the recognized shared NFS of the application. May be
        # empty if the application server has only a single node.
        # Corresponds to the JSON property `nfsUri`
        # @return [String]
        attr_accessor :nfs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abap = args[:abap] if args.key?(:abap)
          @app_instance_number = args[:app_instance_number] if args.key?(:app_instance_number)
          @application_type = args[:application_type] if args.key?(:application_type)
          @ascs_instance_number = args[:ascs_instance_number] if args.key?(:ascs_instance_number)
          @ascs_uri = args[:ascs_uri] if args.key?(:ascs_uri)
          @kernel_version = args[:kernel_version] if args.key?(:kernel_version)
          @nfs_uri = args[:nfs_uri] if args.key?(:nfs_uri)
        end
      end
      
      # A set of properties describing an SAP Database layer.
      class SapDiscoveryComponentDatabaseProperties
        include Google::Apis::Core::Hashable
      
        # Optional. SID of the system database.
        # Corresponds to the JSON property `databaseSid`
        # @return [String]
        attr_accessor :database_sid
      
        # Required. Type of the database. HANA, DB2, etc.
        # Corresponds to the JSON property `databaseType`
        # @return [String]
        attr_accessor :database_type
      
        # Optional. The version of the database software running in the system.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # Optional. Instance number of the SAP instance.
        # Corresponds to the JSON property `instanceNumber`
        # @return [String]
        attr_accessor :instance_number
      
        # Required. URI of the recognized primary instance of the database.
        # Corresponds to the JSON property `primaryInstanceUri`
        # @return [String]
        attr_accessor :primary_instance_uri
      
        # Optional. URI of the recognized shared NFS of the database. May be empty if
        # the database has only a single node.
        # Corresponds to the JSON property `sharedNfsUri`
        # @return [String]
        attr_accessor :shared_nfs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_sid = args[:database_sid] if args.key?(:database_sid)
          @database_type = args[:database_type] if args.key?(:database_type)
          @database_version = args[:database_version] if args.key?(:database_version)
          @instance_number = args[:instance_number] if args.key?(:instance_number)
          @primary_instance_uri = args[:primary_instance_uri] if args.key?(:primary_instance_uri)
          @shared_nfs_uri = args[:shared_nfs_uri] if args.key?(:shared_nfs_uri)
        end
      end
      
      # Message describing SAP discovery system metadata
      class SapDiscoveryMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Customer region string for customer's use. Does not represent GCP
        # region.
        # Corresponds to the JSON property `customerRegion`
        # @return [String]
        attr_accessor :customer_region
      
        # Optional. Customer defined, something like "E-commerce pre prod"
        # Corresponds to the JSON property `definedSystem`
        # @return [String]
        attr_accessor :defined_system
      
        # Optional. Should be "prod", "QA", "dev", "staging", etc.
        # Corresponds to the JSON property `environmentType`
        # @return [String]
        attr_accessor :environment_type
      
        # Optional. This SAP product name
        # Corresponds to the JSON property `sapProduct`
        # @return [String]
        attr_accessor :sap_product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_region = args[:customer_region] if args.key?(:customer_region)
          @defined_system = args[:defined_system] if args.key?(:defined_system)
          @environment_type = args[:environment_type] if args.key?(:environment_type)
          @sap_product = args[:sap_product] if args.key?(:sap_product)
        end
      end
      
      # Message describing a resource.
      class SapDiscoveryResource
        include Google::Apis::Core::Hashable
      
        # A set of properties only present for an instance type resource
        # Corresponds to the JSON property `instanceProperties`
        # @return [Google::Apis::WorkloadmanagerV1::SapDiscoveryResourceInstanceProperties]
        attr_accessor :instance_properties
      
        # Optional. A list of resource URIs related to this resource.
        # Corresponds to the JSON property `relatedResources`
        # @return [Array<String>]
        attr_accessor :related_resources
      
        # Required. ComputeInstance, ComputeDisk, VPC, Bare Metal server, etc.
        # Corresponds to the JSON property `resourceKind`
        # @return [String]
        attr_accessor :resource_kind
      
        # Required. The type of this resource.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Required. URI of the resource, includes project, location, and name.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # Required. Unix timestamp of when this resource last had its discovery data
        # updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_properties = args[:instance_properties] if args.key?(:instance_properties)
          @related_resources = args[:related_resources] if args.key?(:related_resources)
          @resource_kind = args[:resource_kind] if args.key?(:resource_kind)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A set of properties only present for an instance type resource
      class SapDiscoveryResourceInstanceProperties
        include Google::Apis::Core::Hashable
      
        # Optional. A list of instance URIs that are part of a cluster with this one.
        # Corresponds to the JSON property `clusterInstances`
        # @return [Array<String>]
        attr_accessor :cluster_instances
      
        # Optional. The VM's instance number.
        # Corresponds to the JSON property `instanceNumber`
        # @return [Fixnum]
        attr_accessor :instance_number
      
        # Optional. A virtual hostname of the instance if it has one.
        # Corresponds to the JSON property `virtualHostname`
        # @return [String]
        attr_accessor :virtual_hostname
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_instances = args[:cluster_instances] if args.key?(:cluster_instances)
          @instance_number = args[:instance_number] if args.key?(:instance_number)
          @virtual_hostname = args[:virtual_hostname] if args.key?(:virtual_hostname)
        end
      end
      
      # A set of properties describing an SAP workload.
      class SapDiscoveryWorkloadProperties
        include Google::Apis::Core::Hashable
      
        # Optional. List of SAP Products and their versions running on the system.
        # Corresponds to the JSON property `productVersions`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadPropertiesProductVersion>]
        attr_accessor :product_versions
      
        # Optional. A list of SAP software components and their versions running on the
        # system.
        # Corresponds to the JSON property `softwareComponentVersions`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapDiscoveryWorkloadPropertiesSoftwareComponentProperties>]
        attr_accessor :software_component_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product_versions = args[:product_versions] if args.key?(:product_versions)
          @software_component_versions = args[:software_component_versions] if args.key?(:software_component_versions)
        end
      end
      
      # A product name and version.
      class SapDiscoveryWorkloadPropertiesProductVersion
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the product.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Version of the product.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A SAP software component name, version, and type.
      class SapDiscoveryWorkloadPropertiesSoftwareComponentProperties
        include Google::Apis::Core::Hashable
      
        # Optional. The component's minor version.
        # Corresponds to the JSON property `extVersion`
        # @return [String]
        attr_accessor :ext_version
      
        # Optional. Name of the component.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The component's type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. The component's major version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ext_version = args[:ext_version] if args.key?(:ext_version)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A presentation of SAP workload insight. The schema of SAP workloads validation
      # related data.
      class SapValidation
        include Google::Apis::Core::Hashable
      
        # Required. The project_id of the cloud project that the Insight data comes from.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Optional. A list of SAP validation metrics data.
        # Corresponds to the JSON property `validationDetails`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SapValidationValidationDetail>]
        attr_accessor :validation_details
      
        # Optional. The zone of the instance that the Insight data comes from.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @validation_details = args[:validation_details] if args.key?(:validation_details)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Message describing the SAP validation metrics.
      class SapValidationValidationDetail
        include Google::Apis::Core::Hashable
      
        # Optional. The pairs of metrics data: field name & field value.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        # Optional. Was there a SAP system detected for this validation type.
        # Corresponds to the JSON property `isPresent`
        # @return [Boolean]
        attr_accessor :is_present
        alias_method :is_present?, :is_present
      
        # Optional. The SAP system that the validation data is from.
        # Corresponds to the JSON property `sapValidationType`
        # @return [String]
        attr_accessor :sap_validation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @is_present = args[:is_present] if args.key?(:is_present)
          @sap_validation_type = args[:sap_validation_type] if args.key?(:sap_validation_type)
        end
      end
      
      # Message of scanned resource
      class ScannedResource
        include Google::Apis::Core::Hashable
      
        # resource name
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # resource type
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A presentation of SQLServer workload insight. The schema of SqlServer
      # workloads validation related data.
      class SqlserverValidation
        include Google::Apis::Core::Hashable
      
        # Optional. The agent version collected this data point
        # Corresponds to the JSON property `agentVersion`
        # @return [String]
        attr_accessor :agent_version
      
        # Required. The instance_name of the instance that the Insight data comes from.
        # According to https://linter.aip.dev/122/name-suffix: field names should not
        # use the _name suffix unless the field would be ambiguous without it.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Required. The project_id of the cloud project that the Insight data comes from.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Optional. A list of SqlServer validation metrics data.
        # Corresponds to the JSON property `validationDetails`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SqlserverValidationValidationDetail>]
        attr_accessor :validation_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_version = args[:agent_version] if args.key?(:agent_version)
          @instance = args[:instance] if args.key?(:instance)
          @project_id = args[:project_id] if args.key?(:project_id)
          @validation_details = args[:validation_details] if args.key?(:validation_details)
        end
      end
      
      # Message containing collected data names and values.
      class SqlserverValidationDetails
        include Google::Apis::Core::Hashable
      
        # Required. Collected data is in format.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,String>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Message describing the Sqlserver validation metrics.
      class SqlserverValidationValidationDetail
        include Google::Apis::Core::Hashable
      
        # Required. Details wraps map that represents collected data names and values.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::WorkloadmanagerV1::SqlserverValidationDetails>]
        attr_accessor :details
      
        # Optional. The Sqlserver system that the validation data is from.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @type = args[:type] if args.key?(:type)
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
      
      # Message describing the violdation in execution result
      class ViolationDetails
        include Google::Apis::Core::Hashable
      
        # the name of asset
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # observed
        # Corresponds to the JSON property `observed`
        # @return [Hash<String,String>]
        attr_accessor :observed
      
        # the service account associate with resource
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @observed = args[:observed] if args.key?(:observed)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Request for sending the data insights.
      class WriteInsightRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The agent version collected this data point.
        # Corresponds to the JSON property `agentVersion`
        # @return [String]
        attr_accessor :agent_version
      
        # A presentation of host resource usage where the workload runs.
        # Corresponds to the JSON property `insight`
        # @return [Google::Apis::WorkloadmanagerV1::Insight]
        attr_accessor :insight
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_version = args[:agent_version] if args.key?(:agent_version)
          @insight = args[:insight] if args.key?(:insight)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # The response for write insights request.
      class WriteInsightResponse
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
