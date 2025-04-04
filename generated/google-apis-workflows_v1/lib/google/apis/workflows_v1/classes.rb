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
    module WorkflowsV1
      
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
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::WorkflowsV1::Location>]
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
        # @return [Array<Google::Apis::WorkflowsV1::Operation>]
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
      
      # Response for the ListWorkflowRevisions method.
      class ListWorkflowRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The revisions of the workflow, ordered in reverse chronological order.
        # Corresponds to the JSON property `workflows`
        # @return [Array<Google::Apis::WorkflowsV1::Workflow>]
        attr_accessor :workflows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @workflows = args[:workflows] if args.key?(:workflows)
        end
      end
      
      # Response for the ListWorkflows method.
      class ListWorkflowsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # The workflows that match the request.
        # Corresponds to the JSON property `workflows`
        # @return [Array<Google::Apis::WorkflowsV1::Workflow>]
        attr_accessor :workflows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workflows = args[:workflows] if args.key?(:workflows)
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
        # @return [Google::Apis::WorkflowsV1::Status]
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
      
        # API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Name of the verb executed by the operation.
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
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Describes an error related to the current state of the workflow.
      class StateError
        include Google::Apis::Core::Hashable
      
        # Provides specifics about the error.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # The type of this state error.
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
      
      # Workflow program to be executed by Workflows.
      class Workflow
        include Google::Apis::Core::Hashable
      
        # Output only. A list of all KMS crypto keys used to encrypt or decrypt the data
        # associated with the workflow.
        # Corresponds to the JSON property `allKmsKeys`
        # @return [Array<String>]
        attr_accessor :all_kms_keys
      
        # Output only. A list of all KMS crypto key versions used to encrypt or decrypt
        # the data associated with the workflow.
        # Corresponds to the JSON property `allKmsKeysVersions`
        # @return [Array<String>]
        attr_accessor :all_kms_keys_versions
      
        # Optional. Describes the level of platform logging to apply to calls and call
        # responses during executions of this workflow. If both the workflow and the
        # execution specify a logging level, the execution level takes precedence.
        # Corresponds to the JSON property `callLogLevel`
        # @return [String]
        attr_accessor :call_log_level
      
        # Output only. The timestamp for when the workflow was created. This is a
        # workflow-wide field and is not tied to a specific revision.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The resource name of a KMS crypto key used to encrypt or decrypt the
        # data associated with the workflow. Format: projects/`project`/locations/`
        # location`/keyRings/`keyRing`/cryptoKeys/`cryptoKey` Using `-` as a wildcard
        # for the ``project`` or not providing one at all will infer the project from
        # the account. If not provided, data associated with the workflow will not be
        # CMEK-encrypted.
        # Corresponds to the JSON property `cryptoKeyName`
        # @return [String]
        attr_accessor :crypto_key_name
      
        # Output only. The resource name of a KMS crypto key version used to encrypt or
        # decrypt the data associated with the workflow. Format: projects/`project`/
        # locations/`location`/keyRings/`keyRing`/cryptoKeys/`cryptoKey`/
        # cryptoKeyVersions/`cryptoKeyVersion`
        # Corresponds to the JSON property `cryptoKeyVersion`
        # @return [String]
        attr_accessor :crypto_key_version
      
        # Description of the workflow provided by the user. Must be at most 1000 Unicode
        # characters long. This is a workflow-wide field and is not tied to a specific
        # revision.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Describes the execution history level to apply to this workflow.
        # Corresponds to the JSON property `executionHistoryLevel`
        # @return [String]
        attr_accessor :execution_history_level
      
        # Labels associated with this workflow. Labels can contain at most 64 entries.
        # Keys and values can be no longer than 63 characters and can only contain
        # lowercase letters, numeric characters, underscores, and dashes. Label keys
        # must start with a letter. International characters are allowed. This is a
        # workflow-wide field and is not tied to a specific revision.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource name of the workflow. Format: projects/`project`/locations/`
        # location`/workflows/`workflow`. This is a workflow-wide field and is not tied
        # to a specific revision.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp for the latest revision of the workflow's creation.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Output only. The revision of the workflow. A new revision of a workflow is
        # created as a result of updating the following properties of a workflow: -
        # Service account - Workflow code to be executed The format is "000001-a4d",
        # where the first six characters define the zero-padded revision ordinal number.
        # They are followed by a hyphen and three hexadecimal random characters.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # The service account associated with the latest workflow version. This service
        # account represents the identity of the workflow and determines what
        # permissions the workflow has. Format: projects/`project`/serviceAccounts/`
        # account` or `account` Using `-` as a wildcard for the ``project`` or not
        # providing one at all will infer the project from the account. The ``account``
        # value can be the `email` address or the `unique_id` of the service account. If
        # not provided, workflow will use the project's default service account.
        # Modifying this field for an existing workflow results in a new workflow
        # revision.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Workflow code to be executed. The size limit is 128KB.
        # Corresponds to the JSON property `sourceContents`
        # @return [String]
        attr_accessor :source_contents
      
        # Output only. State of the workflow deployment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Describes an error related to the current state of the workflow.
        # Corresponds to the JSON property `stateError`
        # @return [Google::Apis::WorkflowsV1::StateError]
        attr_accessor :state_error
      
        # Optional. Input only. Immutable. Tags associated with this workflow.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # Output only. The timestamp for when the workflow was last updated. This is a
        # workflow-wide field and is not tied to a specific revision.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. User-defined environment variables associated with this workflow
        # revision. This map has a maximum length of 20. Each string can take up to 4KiB.
        # Keys cannot be empty strings and cannot start with "GOOGLE" or "WORKFLOWS".
        # Corresponds to the JSON property `userEnvVars`
        # @return [Hash<String,String>]
        attr_accessor :user_env_vars
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_kms_keys = args[:all_kms_keys] if args.key?(:all_kms_keys)
          @all_kms_keys_versions = args[:all_kms_keys_versions] if args.key?(:all_kms_keys_versions)
          @call_log_level = args[:call_log_level] if args.key?(:call_log_level)
          @create_time = args[:create_time] if args.key?(:create_time)
          @crypto_key_name = args[:crypto_key_name] if args.key?(:crypto_key_name)
          @crypto_key_version = args[:crypto_key_version] if args.key?(:crypto_key_version)
          @description = args[:description] if args.key?(:description)
          @execution_history_level = args[:execution_history_level] if args.key?(:execution_history_level)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @service_account = args[:service_account] if args.key?(:service_account)
          @source_contents = args[:source_contents] if args.key?(:source_contents)
          @state = args[:state] if args.key?(:state)
          @state_error = args[:state_error] if args.key?(:state_error)
          @tags = args[:tags] if args.key?(:tags)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_env_vars = args[:user_env_vars] if args.key?(:user_env_vars)
        end
      end
    end
  end
end
