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
    module FirebaseappdistributionV1alpha
      # Firebase App Distribution API
      #
      # 
      #
      # @example
      #    require 'google/apis/firebaseappdistribution_v1alpha'
      #
      #    Firebaseappdistribution = Google::Apis::FirebaseappdistributionV1alpha # Alias the module
      #    service = Firebaseappdistribution::FirebaseAppDistributionService.new
      #
      # @see https://firebase.google.com/products/app-distribution
      class FirebaseAppDistributionService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://firebaseappdistribution.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-firebaseappdistribution_v1alpha',
                client_version: Google::Apis::FirebaseappdistributionV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Get the app, if it exists
        # @param [String] mobilesdk_app_id
        #   Unique id for a Firebase app of the format: `version`:`project_number`:`
        #   platform`:`hash(bundle_id)` Example: 1:581234567376:android:aa0a3c7b135e90289
        # @param [String] app_view
        #   App view. When unset or set to BASIC, returns an App with everything set
        #   except for aab_state. When set to FULL, returns an App with aab_state set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_app(mobilesdk_app_id, app_view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/apps/{mobilesdkAppId}', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaApp::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaApp
          command.params['mobilesdkAppId'] = mobilesdk_app_id unless mobilesdk_app_id.nil?
          command.query['appView'] = app_view unless app_view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a JWT token
        # @param [String] mobilesdk_app_id
        #   Required. Unique id for a Firebase app of the format: `version`:`
        #   project_number`:`platform`:`hash(bundle_id)` Example: 1:581234567376:android:
        #   aa0a3c7b135e90289
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaJwt] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaJwt]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_app_jwt(mobilesdk_app_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/apps/{mobilesdkAppId}/jwt', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaJwt::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaJwt
          command.params['mobilesdkAppId'] = mobilesdk_app_id unless mobilesdk_app_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GET Release by binary upload hash
        # @param [String] mobilesdk_app_id
        #   Required. Unique id for a Firebase app of the format: `version`:`
        #   project_number`:`platform`:`hash(bundle_id)` Example: 1:581234567376:android:
        #   aa0a3c7b135e90289
        # @param [String] upload_hash
        #   Required. The hash for the upload
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_app_release_by_hash(mobilesdk_app_id, upload_hash, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/apps/{mobilesdkAppId}/release_by_hash/{uploadHash}', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse
          command.params['mobilesdkAppId'] = mobilesdk_app_id unless mobilesdk_app_id.nil?
          command.params['uploadHash'] = upload_hash unless upload_hash.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enable access on a release for testers.
        # @param [String] mobilesdk_app_id
        #   Required. Unique id for a Firebase app of the format: `version`:`
        #   project_number`:`platform`:`hash(bundle_id)` Example: 1:581234567376:android:
        #   aa0a3c7b135e90289
        # @param [String] release_id
        #   Required. Release identifier
        # @param [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest] google_firebase_appdistro_v1alpha_enable_access_on_release_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_app_release_access(mobilesdk_app_id, release_id, google_firebase_appdistro_v1alpha_enable_access_on_release_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/apps/{mobilesdkAppId}/releases/{releaseId}/enable_access', options)
          command.request_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest::Representation
          command.request_object = google_firebase_appdistro_v1alpha_enable_access_on_release_request_object
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse
          command.params['mobilesdkAppId'] = mobilesdk_app_id unless mobilesdk_app_id.nil?
          command.params['releaseId'] = release_id unless release_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create release notes on a release.
        # @param [String] mobilesdk_app_id
        #   Required. Unique id for a Firebase app of the format: `version`:`
        #   project_number`:`platform`:`hash(bundle_id)` Example: 1:581234567376:android:
        #   aa0a3c7b135e90289
        # @param [String] release_id
        #   Required. Release identifier
        # @param [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest] google_firebase_appdistro_v1alpha_create_release_notes_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_app_release_note(mobilesdk_app_id, release_id, google_firebase_appdistro_v1alpha_create_release_notes_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/apps/{mobilesdkAppId}/releases/{releaseId}/notes', options)
          command.request_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest::Representation
          command.request_object = google_firebase_appdistro_v1alpha_create_release_notes_request_object
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse
          command.params['mobilesdkAppId'] = mobilesdk_app_id unless mobilesdk_app_id.nil?
          command.params['releaseId'] = release_id unless release_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get UDIDs of tester iOS devices in a project
        # @param [String] mobilesdk_app_id
        #   Unique id for a Firebase app of the format: `version`:`project_number`:`
        #   platform`:`hash(bundle_id)` Example: 1:581234567376:android:aa0a3c7b135e90289
        # @param [String] project
        #   The name of the project, which is the parent of testers Format: `projects/`
        #   project_number``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_app_tester_tester_udids(mobilesdk_app_id, project: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/apps/{mobilesdkAppId}/testers:getTesterUdids', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse
          command.params['mobilesdkAppId'] = mobilesdk_app_id unless mobilesdk_app_id.nil?
          command.query['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GET Binary upload status by token
        # @param [String] mobilesdk_app_id
        #   Required. Unique id for a Firebase app of the format: `version`:`
        #   project_number`:`platform`:`hash(bundle_id)` Example: 1:581234567376:android:
        #   aa0a3c7b135e90289
        # @param [String] upload_token
        #   Required. The token for the upload
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_app_upload_status(mobilesdk_app_id, upload_token, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/apps/{mobilesdkAppId}/upload_status/{uploadToken}', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse
          command.params['mobilesdkAppId'] = mobilesdk_app_id unless mobilesdk_app_id.nil?
          command.params['uploadToken'] = upload_token unless upload_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about the quota for `ReleaseTests`.
        # @param [String] name
        #   Required. The name of the `TestQuota` resource to retrieve. Format: `projects/`
        #   project_number`/testQuota`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestQuota] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestQuota]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_test_quota(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestQuota::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestQuota
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets configuration for automated tests.
        # @param [String] name
        #   Required. The name of the `TestConfig` resource to retrieve. Format: `projects/
        #   `project_number`/apps/`app`/testConfig`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_test_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates automated test configuration.
        # @param [String] name
        #   Identifier. The name of the test configuration resource. Format: `projects/`
        #   project_number`/apps/`app`/testConfig`
        # @param [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig] google_firebase_appdistro_v1alpha_test_config_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_app_test_config(name, google_firebase_appdistro_v1alpha_test_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig::Representation
          command.request_object = google_firebase_appdistro_v1alpha_test_config_object
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Abort automated test run on release.
        # @param [String] name
        #   Required. The name of the release test resource. Format: `projects/`
        #   project_number`/apps/`app`/releases/`release`/tests/`test``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_app_release_test(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:cancel', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaCancelReleaseTestResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Run automated test(s) on release.
        # @param [String] parent
        #   Required. The name of the release resource, which is the parent of the test
        #   Format: `projects/`project_number`/apps/`app`/releases/`release``
        # @param [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest] google_firebase_appdistro_v1alpha_release_test_object
        # @param [String] release_test_id
        #   Optional. The ID to use for the test, which will become the final component of
        #   the test's resource name. This value should be 4-63 characters, and valid
        #   characters are /a-z-/. If it is not provided one will be automatically
        #   generated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_app_release_test(parent, google_firebase_appdistro_v1alpha_release_test_object = nil, release_test_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/tests', options)
          command.request_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest::Representation
          command.request_object = google_firebase_appdistro_v1alpha_release_test_object
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest
          command.params['parent'] = parent unless parent.nil?
          command.query['releaseTestId'] = release_test_id unless release_test_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get results for automated test run on release.
        # @param [String] name
        #   Required. The name of the release test resource. Format: `projects/`
        #   project_number`/apps/`app`/releases/`release`/tests/`test``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_release_test(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaReleaseTest
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List results for automated tests run on release.
        # @param [String] parent
        #   Required. The name of the release resource, which is the parent of the tests
        #   Format: `projects/`project_number`/apps/`app`/releases/`release``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of tests to return. The service may return fewer
        #   than this value.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListReleaseTests` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] view
        #   Optional. The requested view on the returned ReleaseTests. Defaults to the
        #   basic view.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_app_release_tests(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/tests', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaListReleaseTestsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes multiple test cases.
        # @param [String] parent
        #   Required. The parent resource of the test cases being deleted. Format: `
        #   projects/`project_number`/apps/`app``
        # @param [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest] google_firebase_appdistro_v1alpha_batch_delete_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_test_case_delete(parent, google_firebase_appdistro_v1alpha_batch_delete_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/testCases:batchDelete', options)
          command.request_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaBatchDeleteTestCasesRequest::Representation
          command.request_object = google_firebase_appdistro_v1alpha_batch_delete_test_cases_request_object
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates multiple test cases.
        # @param [String] parent
        #   Required. The parent resource of the test cases being updated. Format: `
        #   projects/`project_number`/apps/`app``
        # @param [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaBatchUpdateTestCasesRequest] google_firebase_appdistro_v1alpha_batch_update_test_cases_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaBatchUpdateTestCasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaBatchUpdateTestCasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_app_test_case_update(parent, google_firebase_appdistro_v1alpha_batch_update_test_cases_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/testCases:batchUpdate', options)
          command.request_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaBatchUpdateTestCasesRequest::Representation
          command.request_object = google_firebase_appdistro_v1alpha_batch_update_test_cases_request_object
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaBatchUpdateTestCasesResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaBatchUpdateTestCasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears cached test runs for a specific test case and device(s).
        # @param [String] test_case
        #   Required. The name of the test case resource for which to clear the cache.
        #   Format: `projects/`project_number`/apps/`app`/testCases/`test_case``
        # @param [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaClearTestCaseCacheRequest] google_firebase_appdistro_v1alpha_clear_test_case_cache_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaClearTestCaseCacheResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaClearTestCaseCacheResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_project_app_test_case_test_case_cache(test_case, google_firebase_appdistro_v1alpha_clear_test_case_cache_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+testCase}:clearTestCaseCache', options)
          command.request_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaClearTestCaseCacheRequest::Representation
          command.request_object = google_firebase_appdistro_v1alpha_clear_test_case_cache_request_object
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaClearTestCaseCacheResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaClearTestCaseCacheResponse
          command.params['testCase'] = test_case unless test_case.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new test case.
        # @param [String] parent
        #   Required. The parent resource where this test case will be created. Format: `
        #   projects/`project_number`/apps/`app``
        # @param [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase] google_firebase_appdistro_v1alpha_test_case_object
        # @param [String] test_case_id
        #   Optional. The ID to use for the test case, which will become the final
        #   component of the test case's resource name. This value should be 4-63
        #   characters, and valid characters are /a-z-/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_app_test_case(parent, google_firebase_appdistro_v1alpha_test_case_object = nil, test_case_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/testCases', options)
          command.request_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase::Representation
          command.request_object = google_firebase_appdistro_v1alpha_test_case_object
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase
          command.params['parent'] = parent unless parent.nil?
          command.query['testCaseId'] = test_case_id unless test_case_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a test case.
        # @param [String] name
        #   Required. The name of the test case resource to delete. Format: `projects/`
        #   project_number`/apps/`app`/testCases/`test_case``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_app_test_case(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a test case.
        # @param [String] name
        #   Required. The name of the test case resource to retrieve. Format: `projects/`
        #   project_number`/apps/`app`/testCases/`test_case``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_app_test_case(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List test cases.
        # @param [String] parent
        #   Required. The parent resource from which to list test cases. Format: `projects/
        #   `project_number`/apps/`app``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of test cases to return. The service may return
        #   fewer than this value. If unspecified, at most 50 test cases will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListTestCases` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListTestCases` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaListTestCasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaListTestCasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_app_test_cases(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/testCases', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaListTestCasesResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaListTestCasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a test case.
        # @param [String] name
        #   Identifier. The name of the test case resource. Format: `projects/`
        #   project_number`/apps/`app`/testCases/`test_case``
        # @param [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase] google_firebase_appdistro_v1alpha_test_case_object
        # @param [Boolean] allow_missing
        #   Optional. If set to true, and the test case is not found, a new test case will
        #   be created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_app_test_case(name, google_firebase_appdistro_v1alpha_test_case_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase::Representation
          command.request_object = google_firebase_appdistro_v1alpha_test_case_object
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaTestCase
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get UDIDs of tester iOS devices in a project
        # @param [String] project
        #   The name of the project, which is the parent of testers Format: `projects/`
        #   project_number``
        # @param [String] mobilesdk_app_id
        #   Unique id for a Firebase app of the format: `version`:`project_number`:`
        #   platform`:`hash(bundle_id)` Example: 1:581234567376:android:aa0a3c7b135e90289
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tester_udids(project, mobilesdk_app_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+project}/testers:udids', options)
          command.response_representation = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse::Representation
          command.response_class = Google::Apis::FirebaseappdistributionV1alpha::GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse
          command.params['project'] = project unless project.nil?
          command.query['mobilesdkAppId'] = mobilesdk_app_id unless mobilesdk_app_id.nil?
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
