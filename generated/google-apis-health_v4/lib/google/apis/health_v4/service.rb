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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module HealthV4
      # Google Health API
      #
      # The Google Health API lets you view and manage health and fitness metrics and
      #  measurement data.
      #
      # @example
      #    require 'google/apis/health_v4'
      #
      #    Health = Google::Apis::HealthV4 # Alias the module
      #    service = Health::GoogleHealthAPIService.new
      #
      # @see https://developers.google.com/health
      class GoogleHealthAPIService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://health.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-health_v4',
                client_version: Google::Apis::HealthV4::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Registers a new subscriber endpoint to receive notifications. A subscriber
        # represents an application or service that wishes to receive data change
        # notifications for users who have granted consent. **Endpoint Verification:**
        # For a subscriber to be successfully created, the provided `endpoint_uri` must
        # be a valid HTTPS endpoint and must pass an automated verification check. The
        # backend will send two HTTP POST requests to the `endpoint_uri`: 1. **
        # Verification with Authorization:** * **Headers:** Includes `Content-Type:
        # application/json` and `Authorization` (with the exact value from `
        # CreateSubscriberPayload.endpoint_authorization.secret`). * **Body:** ``"type":
        # "verification"`` * **Expected Response:** HTTP `201 Created`. 2. **
        # Verification without Authorization:** * **Headers:** Includes `Content-Type:
        # application/json`. The `Authorization` header is OMITTED. * **Body:** ``"type":
        # "verification"`` * **Expected Response:** HTTP `401 Unauthorized` or `403
        # Forbidden`. Both tests must pass for the subscriber creation to succeed. If
        # verification fails, the operation will not be completed and an error will be
        # returned. This process ensures the endpoint is reachable and correctly
        # validates the `Authorization` header.
        # @param [String] parent
        #   Required. The parent resource where this subscriber will be created. Format:
        #   projects/`project` Example: projects/my-project-123
        # @param [Google::Apis::HealthV4::CreateSubscriberPayload] create_subscriber_payload_object
        # @param [String] subscriber_id
        #   Optional. The ID to use for the subscriber, which will become the final
        #   component of the subscriber's resource name. This value should be 4-36
        #   characters, and valid characters are /[a-z]([a-z0-9-]`2,34`[a-z0-9])/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_subscriber(parent, create_subscriber_payload_object = nil, subscriber_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/subscribers', options)
          command.request_representation = Google::Apis::HealthV4::CreateSubscriberPayload::Representation
          command.request_object = create_subscriber_payload_object
          command.response_representation = Google::Apis::HealthV4::Operation::Representation
          command.response_class = Google::Apis::HealthV4::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['subscriberId'] = subscriber_id unless subscriber_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a subscriber registration. This will stop all notifications to the
        # subscriber's endpoint.
        # @param [String] name
        #   Required. The name of the subscriber to delete. Format: projects/`project`/
        #   subscribers/`subscriber` Example: projects/my-project/subscribers/my-
        #   subscriber-123 The `subscriber` ID is user-settable (4-36 characters, matching
        #   /[a-z]([a-z0-9-]`2,34`[a-z0-9])/) or system-generated if not provided during
        #   creation.
        # @param [Boolean] force
        #   Optional. If set to true, any child resources (e.g., subscriptions) will also
        #   be deleted. If false (default) and child resources exist, the request will
        #   fail.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_subscriber(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4/{+name}', options)
          command.response_representation = Google::Apis::HealthV4::Operation::Representation
          command.response_class = Google::Apis::HealthV4::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all subscribers registered within the owned Google Cloud Project.
        # @param [String] parent
        #   Required. The parent, which owns this collection of subscribers. Format:
        #   projects/`project`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of subscribers to return. The service may return
        #   fewer than this value. If unspecified, at most 50 subscribers will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListSubscribers` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListSubscribers` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::ListSubscribersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::ListSubscribersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_subscribers(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/subscribers', options)
          command.response_representation = Google::Apis::HealthV4::ListSubscribersResponse::Representation
          command.response_class = Google::Apis::HealthV4::ListSubscribersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the configuration of an existing subscriber, such as the endpoint URI
        # or the data types it's interested in. **Endpoint Verification:** If the `
        # endpoint_uri` or `endpoint_authorization` field is included in the `
        # update_mask`, the backend will re-verify the endpoint. The verification
        # process is the same as described in `CreateSubscriber`: 1. **Verification with
        # Authorization:** POST to the new or existing `endpoint_uri` with the new or
        # existing `Authorization` secret. Expects HTTP `201 Created`. 2. **Verification
        # without Authorization:** POST to the `endpoint_uri` without the `Authorization`
        # header. Expects HTTP `401 Unauthorized` or `403 Forbidden`. Both tests must
        # pass using the potentially updated values for the subscriber update to succeed.
        # If verification fails, the update will not be applied, and an error will be
        # returned.
        # @param [String] name
        #   Identifier. The resource name of the Subscriber. Format: projects/`project`/
        #   subscribers/`subscriber` The `project` ID is a Google Cloud Project ID or
        #   Project Number. The `subscriber` ID is user-settable (4-36 characters,
        #   matching /[a-z]([a-z0-9-]`2,34`[a-z0-9])/) if provided during creation, or
        #   system-generated otherwise (e.g., a UUID). Example (User-settable subscriber
        #   ID): projects/my-project/subscribers/my-sub-123 Example (System-generated
        #   subscriber ID): projects/my-project/subscribers/a1b2c3d4-e5f6-7890-1234-
        #   567890abcdef
        # @param [Google::Apis::HealthV4::Subscriber] subscriber_object
        # @param [String] update_mask
        #   Optional. A field mask that specifies which fields of the Subscriber message
        #   are to be updated. This allows for partial updates. Supported fields: -
        #   endpoint_uri - subscriber_configs - endpoint_authorization
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_subscriber(name, subscriber_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::HealthV4::Subscriber::Representation
          command.request_object = subscriber_object
          command.response_representation = Google::Apis::HealthV4::Operation::Representation
          command.response_class = Google::Apis::HealthV4::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the user's identity. It includes the legacy Fitbit user ID and the Google
        # user ID and it can be used by migrating clients to map identifiers between the
        # two systems.
        # @param [String] name
        #   Required. The resource name of the Identity. Format: `users/me/identity`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Identity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Identity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_identity(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::HealthV4::Identity::Representation
          command.response_class = Google::Apis::HealthV4::Identity
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns user Profile details.
        # @param [String] name
        #   Required. The name of the Profile. Format: `users/me/profile`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::HealthV4::Profile::Representation
          command.response_class = Google::Apis::HealthV4::Profile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns user settings details.
        # @param [String] name
        #   Required. The name of the Settings. Format: `users/me/settings`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::HealthV4::Settings::Representation
          command.response_class = Google::Apis::HealthV4::Settings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the user's profile details.
        # @param [String] name
        #   Identifier. The resource name of this Profile resource. Format: `users/`user`/
        #   profile` Example: `users/1234567890/profile` or `users/me/profile` The `user`
        #   ID is a system-generated Google Health API user ID, a string of 1-63
        #   characters consisting of lowercase and uppercase letters, numbers, and hyphens.
        #   The literal `me` can also be used to refer to the authenticated user.
        # @param [Google::Apis::HealthV4::Profile] profile_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user_profile(name, profile_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::HealthV4::Profile::Representation
          command.request_object = profile_object
          command.response_representation = Google::Apis::HealthV4::Profile::Representation
          command.response_class = Google::Apis::HealthV4::Profile
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the user's settings details.
        # @param [String] name
        #   Identifier. The resource name of this Settings resource. Format: `users/`user`/
        #   settings` Example: `users/1234567890/settings` or `users/me/settings` The `
        #   user` ID is a system-generated Google Health API user ID, a string of 1-63
        #   characters consisting of lowercase and uppercase letters, numbers, and hyphens.
        #   The literal `me` can also be used to refer to the authenticated user.
        # @param [Google::Apis::HealthV4::Settings] settings_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Settings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Settings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user_settings(name, settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::HealthV4::Settings::Representation
          command.request_object = settings_object
          command.response_representation = Google::Apis::HealthV4::Settings::Representation
          command.response_class = Google::Apis::HealthV4::Settings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a batch of identifyable data points.
        # @param [String] parent
        #   Optional. Parent (data type) for the Data Point collection Format: `users/me/
        #   dataTypes/`data_type``, e.g.: - `users/me/dataTypes/steps` - `users/me/
        #   dataTypes/-` For a list of the supported data types see the DataPoint data
        #   union field. Deleting data points across multiple data type collections is
        #   supported following https://aip.dev/159. If this is set, the parent of all of
        #   the data points specified in `names` must match this field.
        # @param [Google::Apis::HealthV4::BatchDeleteDataPointsRequest] batch_delete_data_points_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_data_points(parent, batch_delete_data_points_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/dataPoints:batchDelete', options)
          command.request_representation = Google::Apis::HealthV4::BatchDeleteDataPointsRequest::Representation
          command.request_object = batch_delete_data_points_request_object
          command.response_representation = Google::Apis::HealthV4::Operation::Representation
          command.response_class = Google::Apis::HealthV4::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a single identifiable data point.
        # @param [String] parent
        #   Required. The parent resource name where the data point will be created.
        #   Format: `users/`user`/dataTypes/`data_type``
        # @param [Google::Apis::HealthV4::DataPoint] data_point_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_user_data_type_data_point(parent, data_point_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/dataPoints', options)
          command.request_representation = Google::Apis::HealthV4::DataPoint::Representation
          command.request_object = data_point_object
          command.response_representation = Google::Apis::HealthV4::Operation::Representation
          command.response_class = Google::Apis::HealthV4::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Roll up data points over civil time intervals for supported data types.
        # @param [String] parent
        #   Required. Parent data type of the Data Point collection. Format: `users/`user`/
        #   dataTypes/`data_type``, e.g.: - `users/me/dataTypes/steps` - `users/me/
        #   dataTypes/distance` For a list of the supported data types see the
        #   DailyRollupDataPoint value union field.
        # @param [Google::Apis::HealthV4::DailyRollUpDataPointsRequest] daily_roll_up_data_points_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::DailyRollUpDataPointsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::DailyRollUpDataPointsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def daily_roll_up_data_points(parent, daily_roll_up_data_points_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/dataPoints:dailyRollUp', options)
          command.request_representation = Google::Apis::HealthV4::DailyRollUpDataPointsRequest::Representation
          command.request_object = daily_roll_up_data_points_request_object
          command.response_representation = Google::Apis::HealthV4::DailyRollUpDataPointsResponse::Representation
          command.response_class = Google::Apis::HealthV4::DailyRollUpDataPointsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports exercise data in TCX format. **IMPORTANT:** HTTP clients must append `?
        # alt=media` to the request URL to download the raw TCX file. Example: `https://
        # health.googleapis.com/v4/users/me/dataTypes/exercise/dataPoints/EXERCISE_ID:
        # exportExerciseTcx?alt=media` Without `alt=media`, the server returns a JSON
        # response (`ExportExerciseTcxResponse`) which is intended primarily for gRPC
        # clients. **Note:** While the Authorization section below states that any one
        # of the listed scopes is accepted, this specific method requires the user to
        # provide both one of the `activity_and_fitness` scopes (`normal` or `readonly`)
        # AND one of the `location` scopes (`normal` or `readonly`) in their access
        # token to succeed.
        # @param [String] name
        #   Required. The resource name of the exercise data point to export. Format: `
        #   users/`user`/dataTypes/exercise/dataPoints/`data_point`` Example: `users/me/
        #   dataTypes/exercise/dataPoints/2026443605080188808` The ``user`` is the alias `"
        #   me"` currently. Future versions may support user IDs. The ``data_point`` ID
        #   maps to the exercise ID, which is a long integer.
        # @param [Boolean] partial_data
        #   Optional. Indicates whether to include the TCX data points when the GPS data
        #   is not available. If not specified, defaults to `false` and partial data will
        #   not be included.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::ExportExerciseTcxResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::ExportExerciseTcxResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_user_data_type_data_point_exercise_tcx(name, partial_data: nil, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'v4/{+name}:exportExerciseTcx', options)
          else
            command = make_download_command(:get, 'v4/{+name}:exportExerciseTcx', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::HealthV4::ExportExerciseTcxResponse::Representation
          command.response_class = Google::Apis::HealthV4::ExportExerciseTcxResponse
          command.params['name'] = name unless name.nil?
          command.query['partialData'] = partial_data unless partial_data.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a single identifyable data point.
        # @param [String] name
        #   Required. The name of the data point to retrieve. Format: `users/`user`/
        #   dataTypes/`data_type`/dataPoints/`data_point`` See DataPoint.name for examples
        #   and possible values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::DataPoint] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::DataPoint]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_data_type_data_point(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+name}', options)
          command.response_representation = Google::Apis::HealthV4::DataPoint::Representation
          command.response_class = Google::Apis::HealthV4::DataPoint
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Query user health and fitness data points.
        # @param [String] parent
        #   Required. Parent data type of the Data Point collection. Format: `users/me/
        #   dataTypes/`data_type``, e.g.: - `users/me/dataTypes/steps` - `users/me/
        #   dataTypes/weight` For a list of the supported data types see the DataPoint
        #   data union field.
        # @param [String] filter
        #   Optional. Filter expression following https://google.aip.dev/160. A time range
        #   (either physical or civil) can be specified. The supported filter fields are: -
        #   Interval start time: - Pattern: ``interval_data_type`.interval.start_time` -
        #   Supported comparison operators: `>=`, `<` - Timestamp literal expected in RFC-
        #   3339 format - Supported logical operators: `AND` - Example: - `steps.interval.
        #   start_time >= "2023-11-24T00:00:00Z" AND steps.interval.start_time < "2023-11-
        #   25T00:00:00Z"` - `distance.interval.start_time >= "2024-08-14T12:34:56Z"` -
        #   Interval civil start time: - Pattern: ``interval_data_type`.interval.
        #   civil_start_time` - Supported comparison operators: `>=`, `<` - Date with
        #   optional time literal expected in ISO 8601 `YYYY-MM-DD[THH:mm:ss]` format -
        #   Supported logical operators: `AND` - Example: - `steps.interval.
        #   civil_start_time >= "2023-11-24" AND steps.interval.civil_start_time < "2023-
        #   11-25"` - `distance.interval.civil_start_time >= "2024-08-14T12:34:56"` -
        #   Sample observation physical time: - Pattern: ``sample_data_type`.sample_time.
        #   physical_time` - Supported comparison operators: `>=`, `<` - Timestamp literal
        #   expected in RFC-3339 format - Supported logical operators: `AND` - Example: - `
        #   weight.sample_time.physical_time >= "2023-11-24T00:00:00Z" AND weight.
        #   sample_time.physical_time < "2023-11-25T00:00:00Z"` - `weight.sample_time.
        #   physical_time >= "2024-08-14T12:34:56Z"` - Sample observation civil time: -
        #   Pattern: ``sample_data_type`.sample_time.civil_time` - Supported comparison
        #   operators: `>=`, `<` - Date with optional time literal expected in ISO 8601 `
        #   YYYY-MM-DD[THH:mm:ss]` format - Supported logical operators: `AND` - Example: -
        #   `weight.sample_time.civil_time >= "2023-11-24" AND weight.sample_time.
        #   civil_time < "2023-11-25"` - `weight.sample_time.civil_time >= "2024-08-14T12:
        #   34:56"` - Daily summary date: - Pattern: ``daily_summary_data_type`.date` -
        #   Supported comparison operators: `>=`, `<` - Date literal expected in ISO 8601 `
        #   YYYY-MM-DD` format - Supported logical operators: `AND` - Example: - `
        #   daily_heart_rate_variability.date < "2024-08-15"` - Session start time (**ECG
        #   specific**): - Pattern: `electrocardiogram.interval.start_time` - Supported
        #   comparison operators: `>=` - Timestamp literal expected in RFC-3339 format -
        #   Example: - `electrocardiogram.interval.start_time >= "2024-08-14T12:34:56Z"` -
        #   Note: Only filtering by start time is supported for ECG. Filtering by end time
        #   (e.g., `electrocardiogram.interval.end_time`) is not supported. - Session
        #   civil start time (**Excluding Sleep**): - Pattern: ``session_data_type`.
        #   interval.civil_start_time` - Supported comparison operators: `>=`, `<` - Date
        #   with optional time literal expected in ISO 8601 `YYYY-MM-DD[THH:mm:ss]` format
        #   - Supported logical operators: `AND` - Example: - `exercise.interval.
        #   civil_start_time >= "2023-11-24" AND exercise.interval.civil_start_time < "
        #   2023-11-25"` - `exercise.interval.civil_start_time >= "2024-08-14T12:34:56"` -
        #   Session end time (**Sleep specific**): - Pattern: `sleep.interval.end_time` -
        #   Supported comparison operators: `>=`, `<` - Timestamp literal expected in RFC-
        #   3339 format - Supported logical operators: `AND`, `OR` - Example: - `sleep.
        #   interval.end_time >= "2023-11-24T00:00:00Z" AND sleep.interval.end_time < "
        #   2023-11-25T00:00:00Z"` - Session civil end time (**Sleep specific**): -
        #   Pattern: `sleep.interval.civil_end_time` - Supported comparison operators: `>=`
        #   , `<` - Date with optional time literal expected in ISO 8601 `YYYY-MM-DD[THH:
        #   mm:ss]` format - Supported logical operators: `AND`, `OR` - Example: - `sleep.
        #   interval.civil_end_time >= "2023-11-24" AND sleep.interval.civil_end_time < "
        #   2023-11-25"` Data points in the response will be ordered by the interval start
        #   time in descending order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of data points to return. If unspecified, at most
        #   1440 data points will be returned. The maximum page size is 10000; values
        #   above that will be truncated accordingly. For `exercise` and `sleep` the
        #   default page size is 25. The maximum page size for `exercise` and `sleep` is
        #   25.
        # @param [String] page_token
        #   Optional. The `next_page_token` from a previous request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::ListDataPointsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::ListDataPointsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_user_data_type_data_points(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/dataPoints', options)
          command.response_representation = Google::Apis::HealthV4::ListDataPointsResponse::Representation
          command.response_class = Google::Apis::HealthV4::ListDataPointsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a single identifiable data point. If a data point with the specified `
        # name` is not found, the request will fail.
        # @param [String] name
        #   Identifier. Data point name, only supported for the subset of identifiable
        #   data types. For the majority of the data types, individual data points do not
        #   need to be identified and this field would be empty. Format: `users/`user`/
        #   dataTypes/`data_type`/dataPoints/`data_point`` Example: `users/abcd1234/
        #   dataTypes/sleep/dataPoints/a1b2c3d4-e5f6-7890-1234-567890abcdef` The ``user``
        #   ID is a system-generated identifier, as described in Identity.health_user_id.
        #   The ``data_type`` ID corresponds to the kebab-case version of the field names
        #   in the DataPoint data union field, e.g. `total-calories` for the `
        #   total_calories` field. The ``data_point`` ID can be client-provided or system-
        #   generated. If client-provided, it must be a string of 4-63 characters,
        #   containing only lowercase letters, numbers, and hyphens.
        # @param [Google::Apis::HealthV4::DataPoint] data_point_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_user_data_type_data_point(name, data_point_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4/{+name}', options)
          command.request_representation = Google::Apis::HealthV4::DataPoint::Representation
          command.request_object = data_point_object
          command.response_representation = Google::Apis::HealthV4::Operation::Representation
          command.response_class = Google::Apis::HealthV4::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reconcile data points from multiple data sources into a single data stream.
        # @param [String] parent
        #   Required. Parent data type of the Data Point collection. Format: `users/me/
        #   dataTypes/`data_type``, e.g.: - `users/me/dataTypes/steps` - `users/me/
        #   dataTypes/heart-rate` For a list of the supported data types see the DataPoint
        #   data union field.
        # @param [String] data_source_family
        #   Optional. The data source family name to reconcile. If empty, data points from
        #   all data sources will be reconciled. Format: `users/me/dataSourceFamilies/`
        #   data_source_family`` The supported values are: - `users/me/dataSourceFamilies/
        #   all-sources` - default value - `users/me/dataSourceFamilies/google-wearables` -
        #   tracker devices - `users/me/dataSourceFamilies/google-sources` - Google first
        #   party sources
        # @param [String] filter
        #   Optional. Filter expression based on https://aip.dev/160. A time range, either
        #   physical or civil, can be specified. See the ListDataPointsRequest.filter for
        #   the supported fields and syntax.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of data points to return. If unspecified, at most
        #   1440 data points will be returned. The maximum page size is 10000; values
        #   above that will be truncated accordingly. For `exercise` and `sleep` the
        #   default page size is 25. The maximum page size for `exercise` and `sleep` is
        #   25.
        # @param [String] page_token
        #   Optional. The `next_page_token` from a previous request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::ReconcileDataPointsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::ReconcileDataPointsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reconcile_user_data_type_data_point(parent, data_source_family: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4/{+parent}/dataPoints:reconcile', options)
          command.response_representation = Google::Apis::HealthV4::ReconcileDataPointsResponse::Representation
          command.response_class = Google::Apis::HealthV4::ReconcileDataPointsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['dataSourceFamily'] = data_source_family unless data_source_family.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Roll up data points over physical time intervals for supported data types.
        # @param [String] parent
        #   Required. Parent data type of the Data Point collection. Format: `users/`user`/
        #   dataTypes/`data_type``, e.g.: - `users/me/dataTypes/steps` - `users/me/
        #   dataTypes/distance` For a list of the supported data types see the
        #   RollupDataPoint value union field.
        # @param [Google::Apis::HealthV4::RollUpDataPointsRequest] roll_up_data_points_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::HealthV4::RollUpDataPointsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::HealthV4::RollUpDataPointsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def roll_up_data_points(parent, roll_up_data_points_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4/{+parent}/dataPoints:rollUp', options)
          command.request_representation = Google::Apis::HealthV4::RollUpDataPointsRequest::Representation
          command.request_object = roll_up_data_points_request_object
          command.response_representation = Google::Apis::HealthV4::RollUpDataPointsResponse::Representation
          command.response_class = Google::Apis::HealthV4::RollUpDataPointsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
