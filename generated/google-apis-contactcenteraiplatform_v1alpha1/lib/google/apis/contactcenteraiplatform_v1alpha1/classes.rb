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
    module ContactcenteraiplatformV1alpha1
      
      # Message storing info about the first admin user. Next ID: 3
      class AdminUser
        include Google::Apis::Core::Hashable
      
        # Optional. Last/family name of the first admin user.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Optional. First/given name of the first admin user.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
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
      
      # Message describing ContactCenter object Next ID: 14
      class ContactCenter
        include Google::Apis::Core::Hashable
      
        # Message storing info about the first admin user. Next ID: 3
        # Corresponds to the JSON property `adminUser`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::AdminUser]
        attr_accessor :admin_user
      
        # Optional. Whether to enable users to be created in the CCAIP-instance
        # concurrently to having users in Cloud identity
        # Corresponds to the JSON property `ccaipManagedUsers`
        # @return [Boolean]
        attr_accessor :ccaip_managed_users
        alias_method :ccaip_managed_users?, :ccaip_managed_users
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Immutable. At least 2 and max 16 char long, must conform to [RFC
        # 1035](https://www.ietf.org/rfc/rfc1035.txt).
        # Corresponds to the JSON property `customerDomainPrefix`
        # @return [String]
        attr_accessor :customer_domain_prefix
      
        # Required. A user friendly name for the ContactCenter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Message storing the instance configuration.
        # Corresponds to the JSON property `instanceConfig`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::InstanceConfig]
        attr_accessor :instance_config
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # name of resource
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message storing SAML params to enable Google as IDP.
        # Corresponds to the JSON property `samlParams`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::SamlParams]
        attr_accessor :saml_params
      
        # Output only. The state of this contact center.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Message storing the URIs of the ContactCenter.
        # Corresponds to the JSON property `uris`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::UrIs]
        attr_accessor :uris
      
        # Optional. Email address of the first admin user.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_user = args[:admin_user] if args.key?(:admin_user)
          @ccaip_managed_users = args[:ccaip_managed_users] if args.key?(:ccaip_managed_users)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_domain_prefix = args[:customer_domain_prefix] if args.key?(:customer_domain_prefix)
          @display_name = args[:display_name] if args.key?(:display_name)
          @instance_config = args[:instance_config] if args.key?(:instance_config)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @saml_params = args[:saml_params] if args.key?(:saml_params)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uris = args[:uris] if args.key?(:uris)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # Represents a quota for contact centers.
      class ContactCenterQuota
        include Google::Apis::Core::Hashable
      
        # Reflects the count limit of contact centers on a billing account.
        # Corresponds to the JSON property `contactCenterCountLimit`
        # @return [Fixnum]
        attr_accessor :contact_center_count_limit
      
        # Reflects the count sum of contact centers on a billing account.
        # Corresponds to the JSON property `contactCenterCountSum`
        # @return [Fixnum]
        attr_accessor :contact_center_count_sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_center_count_limit = args[:contact_center_count_limit] if args.key?(:contact_center_count_limit)
          @contact_center_count_sum = args[:contact_center_count_sum] if args.key?(:contact_center_count_sum)
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
      
      # Message storing the instance configuration.
      class InstanceConfig
        include Google::Apis::Core::Hashable
      
        # The instance size of this the instance configuration.
        # Corresponds to the JSON property `instanceSize`
        # @return [String]
        attr_accessor :instance_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_size = args[:instance_size] if args.key?(:instance_size)
        end
      end
      
      # Message for response to listing ContactCenters
      class ListContactCentersResponse
        include Google::Apis::Core::Hashable
      
        # The list of ContactCenter
        # Corresponds to the JSON property `contactCenters`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter>]
        attr_accessor :contact_centers
      
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
          @contact_centers = args[:contact_centers] if args.key?(:contact_centers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::Location>]
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
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::Operation>]
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
      
      # A resource that represents Google Cloud location.
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
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::Status]
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Message describing ContactCenter object Next ID: 14
        # Corresponds to the JSON property `contactCenter`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter]
        attr_accessor :contact_center
      
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
          @contact_center = args[:contact_center] if args.key?(:contact_center)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Message storing SAML params to enable Google as IDP.
      class SamlParams
        include Google::Apis::Core::Hashable
      
        # SAML certificate
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # Entity id URL
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # Single sign-on URL
        # Corresponds to the JSON property `ssoUri`
        # @return [String]
        attr_accessor :sso_uri
      
        # Email address of the first admin users.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @sso_uri = args[:sso_uri] if args.key?(:sso_uri)
          @user_email = args[:user_email] if args.key?(:user_email)
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
      
      # Message storing the URIs of the ContactCenter.
      class UrIs
        include Google::Apis::Core::Hashable
      
        # Chat Bot Uri of the ContactCenter
        # Corresponds to the JSON property `chatBotUri`
        # @return [String]
        attr_accessor :chat_bot_uri
      
        # Media Uri of the ContactCenter.
        # Corresponds to the JSON property `mediaUri`
        # @return [String]
        attr_accessor :media_uri
      
        # Root Uri of the ContactCenter.
        # Corresponds to the JSON property `rootUri`
        # @return [String]
        attr_accessor :root_uri
      
        # Virtual Agent Streaming Service Uri of the ContactCenter.
        # Corresponds to the JSON property `virtualAgentStreamingServiceUri`
        # @return [String]
        attr_accessor :virtual_agent_streaming_service_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chat_bot_uri = args[:chat_bot_uri] if args.key?(:chat_bot_uri)
          @media_uri = args[:media_uri] if args.key?(:media_uri)
          @root_uri = args[:root_uri] if args.key?(:root_uri)
          @virtual_agent_streaming_service_uri = args[:virtual_agent_streaming_service_uri] if args.key?(:virtual_agent_streaming_service_uri)
        end
      end
    end
  end
end
