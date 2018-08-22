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
    module CloudshellV1alpha1
      
      # Request message for AuthorizeEnvironment.
      class AuthorizeEnvironmentRequest
        include Google::Apis::Core::Hashable
      
        # The OAuth access token that should be sent to the environment.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
        end
      end
      
      # Request message for CreatePublicKey.
      class CreatePublicKeyRequest
        include Google::Apis::Core::Hashable
      
        # A public SSH key, corresponding to a private SSH key held by the client.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::CloudshellV1alpha1::PublicKey]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Cloud Shell environment, which is defined as the combination of a Docker
      # image specifying what is installed on the environment and a home directory
      # containing the user's data that will remain across sessions. Each user has a
      # single environment with the ID "default".
      class Environment
        include Google::Apis::Core::Hashable
      
        # Required. Full path to the Docker image used to run this environment, e.g.
        # "gcr.io/dev-con/cloud-devshell:latest".
        # Corresponds to the JSON property `dockerImage`
        # @return [String]
        attr_accessor :docker_image
      
        # Output only. The environment's identifier, which is always "default".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Full name of this resource, in the format
        # `users/`owner_email`/environments/`environment_id``. ``owner_email`` is the
        # email address of the user to whom this environment belongs, and
        # ``environment_id`` is the identifier of this environment. For example,
        # `users/someone@example.com/environments/default`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Public keys associated with the environment. Clients can
        # connect to this environment via SSH only if they possess a private key
        # corresponding to at least one of these public keys. Keys can be added to or
        # removed from the environment using the CreatePublicKey and DeletePublicKey
        # methods.
        # Corresponds to the JSON property `publicKeys`
        # @return [Array<Google::Apis::CloudshellV1alpha1::PublicKey>]
        attr_accessor :public_keys
      
        # Output only. Host to which clients can connect to initiate SSH sessions
        # with the environment.
        # Corresponds to the JSON property `sshHost`
        # @return [String]
        attr_accessor :ssh_host
      
        # Output only. Port to which clients can connect to initiate SSH sessions
        # with the environment.
        # Corresponds to the JSON property `sshPort`
        # @return [Fixnum]
        attr_accessor :ssh_port
      
        # Output only. Username that clients should use when initiating SSH sessions
        # with the environment.
        # Corresponds to the JSON property `sshUsername`
        # @return [String]
        attr_accessor :ssh_username
      
        # Output only. Current execution state of this environment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @docker_image = args[:docker_image] if args.key?(:docker_image)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @public_keys = args[:public_keys] if args.key?(:public_keys)
          @ssh_host = args[:ssh_host] if args.key?(:ssh_host)
          @ssh_port = args[:ssh_port] if args.key?(:ssh_port)
          @ssh_username = args[:ssh_username] if args.key?(:ssh_username)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CloudshellV1alpha1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should have the format of `operations/some/unique/name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
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
      
      # A public SSH key, corresponding to a private SSH key held by the client.
      class PublicKey
        include Google::Apis::Core::Hashable
      
        # Required. Format of this key's content.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Required. Content of this key.
        # Corresponds to the JSON property `key`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :key
      
        # Output only. Full name of this resource, in the format
        # `users/`owner_email`/environments/`environment_id`/publicKeys/`key_id``.
        # ``owner_email`` is the email address of the user to whom the key belongs.
        # ``environment_id`` is the identifier of the environment to which the key
        # grants access. ``key_id`` is the unique identifier of the key. For example,
        # `users/someone@example.com/environments/default/publicKeys/myKey`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @key = args[:key] if args.key?(:key)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Message included in the metadata field of operations returned from
      # StartEnvironment.
      class StartEnvironmentMetadata
        include Google::Apis::Core::Hashable
      
        # Current state of the environment being started.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Request message for StartEnvironment.
      class StartEnvironmentRequest
        include Google::Apis::Core::Hashable
      
        # The initial access token passed to the environment. If this is present and
        # valid, the environment will be pre-authenticated with gcloud so that the
        # user can run gcloud commands in Cloud Shell without having to log in. This
        # code can be updated later by calling AuthorizeEnvironment.
        # Corresponds to the JSON property `accessToken`
        # @return [String]
        attr_accessor :access_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_token = args[:access_token] if args.key?(:access_token)
        end
      end
      
      # Message included in the response field of operations returned from
      # StartEnvironment once the
      # operation is complete.
      class StartEnvironmentResponse
        include Google::Apis::Core::Hashable
      
        # A Cloud Shell environment, which is defined as the combination of a Docker
        # image specifying what is installed on the environment and a home directory
        # containing the user's data that will remain across sessions. Each user has a
        # single environment with the ID "default".
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::CloudshellV1alpha1::Environment]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
    end
  end
end
