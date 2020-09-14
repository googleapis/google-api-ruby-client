# Copyright 2015 Google Inc.
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
    module FirebasemlV1beta2
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response for list models
      class ListModelsResponse
        include Google::Apis::Core::Hashable
      
        # The list of models
        # Corresponds to the JSON property `models`
        # @return [Array<Google::Apis::FirebasemlV1beta2::Model>]
        attr_accessor :models
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @models = args[:models] if args.key?(:models)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An ML model hosted in Firebase ML
      class Model
        include Google::Apis::Core::Hashable
      
        # Output only. Lists operation ids associated with this model whose status is
        # NOT done.
        # Corresponds to the JSON property `activeOperations`
        # @return [Array<Google::Apis::FirebasemlV1beta2::Operation>]
        attr_accessor :active_operations
      
        # Output only. Timestamp when this model was created in Firebase ML.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The name of the model to create. The name can be up to 32 characters
        # long and can consist only of ASCII Latin letters A-Z and a-z, underscores(_)
        # and ASCII digits 0-9. It must start with a letter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. See RFC7232 https://tools.ietf.org/html/rfc7232#section-2.3
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The model_hash will change if a new file is available for
        # download.
        # Corresponds to the JSON property `modelHash`
        # @return [String]
        attr_accessor :model_hash
      
        # The resource name of the Model. Model names have the form `projects/`
        # project_id`/models/`model_id`` The name is ignored when creating a model.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # State common to all model types. Includes publishing and validation
        # information.
        # Corresponds to the JSON property `state`
        # @return [Google::Apis::FirebasemlV1beta2::ModelState]
        attr_accessor :state
      
        # User defined tags which can be used to group/filter models during listing
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Information that is specific to TfLite models.
        # Corresponds to the JSON property `tfliteModel`
        # @return [Google::Apis::FirebasemlV1beta2::TfLiteModel]
        attr_accessor :tflite_model
      
        # Output only. Timestamp when this model was updated in Firebase ML.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_operations = args[:active_operations] if args.key?(:active_operations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @model_hash = args[:model_hash] if args.key?(:model_hash)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @tags = args[:tags] if args.key?(:tags)
          @tflite_model = args[:tflite_model] if args.key?(:tflite_model)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # This is returned in the longrunning operations for create/update.
      class ModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `basicOperationStatus`
        # @return [String]
        attr_accessor :basic_operation_status
      
        # The name of the model we are creating/updating The name must have the form `
        # projects/`project_id`/models/`model_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_operation_status = args[:basic_operation_status] if args.key?(:basic_operation_status)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # State common to all model types. Includes publishing and validation
      # information.
      class ModelState
        include Google::Apis::Core::Hashable
      
        # Indicates if this model has been published.
        # Corresponds to the JSON property `published`
        # @return [Boolean]
        attr_accessor :published
        alias_method :published?, :published
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `validationError`
        # @return [Google::Apis::FirebasemlV1beta2::Status]
        attr_accessor :validation_error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @published = args[:published] if args.key?(:published)
          @validation_error = args[:validation_error] if args.key?(:validation_error)
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
        # @return [Google::Apis::FirebasemlV1beta2::Status]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # Information that is specific to TfLite models.
      class TfLiteModel
        include Google::Apis::Core::Hashable
      
        # The AutoML model id referencing a model you created with the AutoML API. The
        # name should have format 'projects//locations//models/' (This is the model
        # resource name returned from the AutoML API)
        # Corresponds to the JSON property `automlModel`
        # @return [String]
        attr_accessor :automl_model
      
        # The TfLite file containing the model. (Stored in Google Cloud). The
        # gcs_tflite_uri should have form: gs://some-bucket/some-model.tflite Note: If
        # you update the file in the original location, it is necessary to call
        # UpdateModel for ML to pick up and validate the updated file.
        # Corresponds to the JSON property `gcsTfliteUri`
        # @return [String]
        attr_accessor :gcs_tflite_uri
      
        # Output only. The size of the TFLite model
        # Corresponds to the JSON property `sizeBytes`
        # @return [String]
        attr_accessor :size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automl_model = args[:automl_model] if args.key?(:automl_model)
          @gcs_tflite_uri = args[:gcs_tflite_uri] if args.key?(:gcs_tflite_uri)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
        end
      end
    end
  end
end
