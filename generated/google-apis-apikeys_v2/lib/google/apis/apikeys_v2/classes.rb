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
    module ApikeysV2
      
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
        # @return [Google::Apis::ApikeysV2::Status]
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
      
      # Identifier of an Android application for key use.
      class V2AndroidApplication
        include Google::Apis::Core::Hashable
      
        # The package name of the application.
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # The SHA1 fingerprint of the application. For example, both sha1 formats are
        # acceptable : DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or
        # DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the latter.
        # Corresponds to the JSON property `sha1Fingerprint`
        # @return [String]
        attr_accessor :sha1_fingerprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package_name = args[:package_name] if args.key?(:package_name)
          @sha1_fingerprint = args[:sha1_fingerprint] if args.key?(:sha1_fingerprint)
        end
      end
      
      # The Android apps that are allowed to use the key.
      class V2AndroidKeyRestrictions
        include Google::Apis::Core::Hashable
      
        # A list of Android applications that are allowed to make API calls with this
        # key.
        # Corresponds to the JSON property `allowedApplications`
        # @return [Array<Google::Apis::ApikeysV2::V2AndroidApplication>]
        attr_accessor :allowed_applications
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_applications = args[:allowed_applications] if args.key?(:allowed_applications)
        end
      end
      
      # A restriction for a specific service and optionally one or multiple specific
      # methods. Both fields are case insensitive.
      class V2ApiTarget
        include Google::Apis::Core::Hashable
      
        # Optional. List of one or more methods that can be called. If empty, all
        # methods for the service are allowed. A wildcard (*) can be used as the last
        # symbol. Valid examples: `google.cloud.translate.v2.TranslateService.
        # GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*`
        # Corresponds to the JSON property `methods`
        # @return [Array<String>]
        attr_accessor :methods_prop
      
        # The service for this restriction. It should be the canonical service name, for
        # example: `translate.googleapis.com`. You can use [`gcloud services list`](/sdk/
        # gcloud/reference/services/list) to get a list of services that are enabled in
        # the project.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @methods_prop = args[:methods_prop] if args.key?(:methods_prop)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # The HTTP referrers (websites) that are allowed to use the key.
      class V2BrowserKeyRestrictions
        include Google::Apis::Core::Hashable
      
        # A list of regular expressions for the referrer URLs that are allowed to make
        # API calls with this key.
        # Corresponds to the JSON property `allowedReferrers`
        # @return [Array<String>]
        attr_accessor :allowed_referrers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_referrers = args[:allowed_referrers] if args.key?(:allowed_referrers)
        end
      end
      
      # Response message for `GetKeyString` method.
      class V2GetKeyStringResponse
        include Google::Apis::Core::Hashable
      
        # An encrypted and signed value of the key.
        # Corresponds to the JSON property `keyString`
        # @return [String]
        attr_accessor :key_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_string = args[:key_string] if args.key?(:key_string)
        end
      end
      
      # The iOS apps that are allowed to use the key.
      class V2IosKeyRestrictions
        include Google::Apis::Core::Hashable
      
        # A list of bundle IDs that are allowed when making API calls with this key.
        # Corresponds to the JSON property `allowedBundleIds`
        # @return [Array<String>]
        attr_accessor :allowed_bundle_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_bundle_ids = args[:allowed_bundle_ids] if args.key?(:allowed_bundle_ids)
        end
      end
      
      # The representation of a key managed by the API Keys API.
      class V2Key
        include Google::Apis::Core::Hashable
      
        # Annotations is an unstructured key-value map stored with a policy that may be
        # set by external tools to store and retrieve arbitrary metadata. They are not
        # queryable and should be preserved when modifying objects.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. A timestamp identifying the time this key was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. A timestamp when this key was deleted. If the resource is not
        # deleted, this must be empty.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Human-readable display name of this key that you can modify. The maximum
        # length is 63 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. A checksum computed by the server based on the current value of
        # the Key resource. This may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding. See https://google.aip.dev/
        # 154.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. An encrypted and signed value held by this key. This field can be
        # accessed only through the `GetKeyString` method.
        # Corresponds to the JSON property `keyString`
        # @return [String]
        attr_accessor :key_string
      
        # Output only. The resource name of the key. The `name` has the form: `projects//
        # locations/global/keys/`. For example: `projects/123456867718/locations/global/
        # keys/b7ff1f9f-8275-410a-94dd-3855ee9b5dd2` NOTE: Key is a global resource;
        # hence the only supported value for location is `global`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Describes the restrictions on the key.
        # Corresponds to the JSON property `restrictions`
        # @return [Google::Apis::ApikeysV2::V2Restrictions]
        attr_accessor :restrictions
      
        # Output only. Unique id in UUID4 format.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. A timestamp identifying the time this key was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @key_string = args[:key_string] if args.key?(:key_string)
          @name = args[:name] if args.key?(:name)
          @restrictions = args[:restrictions] if args.key?(:restrictions)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for `ListKeys` method.
      class V2ListKeysResponse
        include Google::Apis::Core::Hashable
      
        # A list of API keys.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::ApikeysV2::V2Key>]
        attr_accessor :keys
      
        # The pagination token for the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for `LookupKey` method.
      class V2LookupKeyResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the API key. If the API key has been purged, resource
        # name is empty.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The project that owns the key with the value specified in the request.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Describes the restrictions on the key.
      class V2Restrictions
        include Google::Apis::Core::Hashable
      
        # The Android apps that are allowed to use the key.
        # Corresponds to the JSON property `androidKeyRestrictions`
        # @return [Google::Apis::ApikeysV2::V2AndroidKeyRestrictions]
        attr_accessor :android_key_restrictions
      
        # A restriction for a specific service and optionally one or more specific
        # methods. Requests are allowed if they match any of these restrictions. If no
        # restrictions are specified, all targets are allowed.
        # Corresponds to the JSON property `apiTargets`
        # @return [Array<Google::Apis::ApikeysV2::V2ApiTarget>]
        attr_accessor :api_targets
      
        # The HTTP referrers (websites) that are allowed to use the key.
        # Corresponds to the JSON property `browserKeyRestrictions`
        # @return [Google::Apis::ApikeysV2::V2BrowserKeyRestrictions]
        attr_accessor :browser_key_restrictions
      
        # The iOS apps that are allowed to use the key.
        # Corresponds to the JSON property `iosKeyRestrictions`
        # @return [Google::Apis::ApikeysV2::V2IosKeyRestrictions]
        attr_accessor :ios_key_restrictions
      
        # The IP addresses of callers that are allowed to use the key.
        # Corresponds to the JSON property `serverKeyRestrictions`
        # @return [Google::Apis::ApikeysV2::V2ServerKeyRestrictions]
        attr_accessor :server_key_restrictions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_key_restrictions = args[:android_key_restrictions] if args.key?(:android_key_restrictions)
          @api_targets = args[:api_targets] if args.key?(:api_targets)
          @browser_key_restrictions = args[:browser_key_restrictions] if args.key?(:browser_key_restrictions)
          @ios_key_restrictions = args[:ios_key_restrictions] if args.key?(:ios_key_restrictions)
          @server_key_restrictions = args[:server_key_restrictions] if args.key?(:server_key_restrictions)
        end
      end
      
      # The IP addresses of callers that are allowed to use the key.
      class V2ServerKeyRestrictions
        include Google::Apis::Core::Hashable
      
        # A list of the caller IP addresses that are allowed to make API calls with this
        # key.
        # Corresponds to the JSON property `allowedIps`
        # @return [Array<String>]
        attr_accessor :allowed_ips
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_ips = args[:allowed_ips] if args.key?(:allowed_ips)
        end
      end
      
      # Request message for `UndeleteKey` method.
      class V2UndeleteKeyRequest
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
