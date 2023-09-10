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
    module TestingV1
      # Cloud Testing API
      #
      # Allows developers to run automated tests for their mobile applications on
      #  Google infrastructure.
      #
      # @example
      #    require 'google/apis/testing_v1'
      #
      #    Testing = Google::Apis::TestingV1 # Alias the module
      #    service = Testing::TestingService.new
      #
      # @see https://developers.google.com/cloud-test-lab/
      class TestingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://testing.googleapis.com/', '',
                client_name: 'google-apis-testing_v1',
                client_version: Google::Apis::TestingV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets the details of an Android application APK.
        # @param [Google::Apis::TestingV1::FileReference] file_reference_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::GetApkDetailsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::GetApkDetailsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_application_detail_service_apk_details(file_reference_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/applicationDetailService/getApkDetails', options)
          command.request_representation = Google::Apis::TestingV1::FileReference::Representation
          command.request_object = file_reference_object
          command.response_representation = Google::Apis::TestingV1::GetApkDetailsResponse::Representation
          command.response_class = Google::Apis::TestingV1::GetApkDetailsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # POST /v1/projects/`project_id`/deviceSessions/`device_session_id`:cancel
        # Changes the DeviceSession to state FINISHED and terminates all connections.
        # Canceled sessions are not deleted and can be retrieved or listed by the user
        # until they expire based on the 28 day deletion policy.
        # @param [String] name
        #   Required. Name of the DeviceSession, e.g. "projects/`project_id`/
        #   deviceSessions/`session_id`"
        # @param [Google::Apis::TestingV1::CancelDeviceSessionRequest] cancel_device_session_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_device_session(name, cancel_device_session_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::TestingV1::CancelDeviceSessionRequest::Representation
          command.request_object = cancel_device_session_request_object
          command.response_representation = Google::Apis::TestingV1::Empty::Representation
          command.response_class = Google::Apis::TestingV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # POST /v1/projects/`project_id`/deviceSessions
        # @param [String] parent
        #   Required. The Compute Engine project under which this device will be allocated.
        #   "projects/`project_id`"
        # @param [Google::Apis::TestingV1::DeviceSession] device_session_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::DeviceSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::DeviceSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_device_session(parent, device_session_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/deviceSessions', options)
          command.request_representation = Google::Apis::TestingV1::DeviceSession::Representation
          command.request_object = device_session_object
          command.response_representation = Google::Apis::TestingV1::DeviceSession::Representation
          command.response_class = Google::Apis::TestingV1::DeviceSession
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GET /v1/projects/`project_id`/deviceSessions/`device_session_id` Return a
        # DeviceSession, which documents the allocation status and whether the device is
        # allocated. Clients making requests from this API must poll GetDeviceSession.
        # @param [String] name
        #   Required. Name of the DeviceSession, e.g. "projects/`project_id`/
        #   deviceSessions/`session_id`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::DeviceSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::DeviceSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_device_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::TestingV1::DeviceSession::Representation
          command.response_class = Google::Apis::TestingV1::DeviceSession
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GET /v1/projects/`project_id`/deviceSessions Lists device Sessions owned by
        # the project user.
        # @param [String] parent
        #   Required. The name of the parent to request, e.g. "projects/`project_id`"
        # @param [String] filter
        #   Optional. If specified, responses will be filtered by the given filter.
        #   Allowed fields are: session_state.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of DeviceSessions to return.
        # @param [String] page_token
        #   Optional. A continuation token for paging.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::ListDeviceSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::ListDeviceSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_device_sessions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deviceSessions', options)
          command.response_representation = Google::Apis::TestingV1::ListDeviceSessionsResponse::Representation
          command.response_class = Google::Apis::TestingV1::ListDeviceSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # PATCH /v1/projects/`projectId`/deviceSessions/deviceSessionId`:
        # updateDeviceSession Updates the current device session to the fields described
        # by the update_mask.
        # @param [String] name
        #   Optional. Name of the DeviceSession, e.g. "projects/`project_id`/
        #   deviceSessions/`session_id`"
        # @param [Google::Apis::TestingV1::DeviceSession] device_session_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::DeviceSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::DeviceSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_device_session(name, device_session_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::TestingV1::DeviceSession::Representation
          command.request_object = device_session_object
          command.response_representation = Google::Apis::TestingV1::DeviceSession::Representation
          command.response_class = Google::Apis::TestingV1::DeviceSession
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels unfinished test executions in a test matrix. This call returns
        # immediately and cancellation proceeds asynchronously. If the matrix is already
        # final, this operation will have no effect. May return any of the following
        # canonical error codes: - PERMISSION_DENIED - if the user is not authorized to
        # read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if
        # the Test Matrix does not exist
        # @param [String] project_id
        #   Cloud project that owns the test.
        # @param [String] test_matrix_id
        #   Test matrix that will be canceled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::CancelTestMatrixResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::CancelTestMatrixResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_test_matrix(project_id, test_matrix_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/testMatrices/{testMatrixId}:cancel', options)
          command.response_representation = Google::Apis::TestingV1::CancelTestMatrixResponse::Representation
          command.response_class = Google::Apis::TestingV1::CancelTestMatrixResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['testMatrixId'] = test_matrix_id unless test_matrix_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and runs a matrix of tests according to the given specifications.
        # Unsupported environments will be returned in the state UNSUPPORTED. A test
        # matrix is limited to use at most 2000 devices in parallel. The returned matrix
        # will not yet contain the executions that will be created for this matrix.
        # Execution creation happens later on and will require a call to GetTestMatrix.
        # May return any of the following canonical error codes: - PERMISSION_DENIED -
        # if the user is not authorized to write to project - INVALID_ARGUMENT - if the
        # request is malformed or if the matrix tries to use too many simultaneous
        # devices.
        # @param [String] project_id
        #   The GCE project under which this job will run.
        # @param [Google::Apis::TestingV1::TestMatrix] test_matrix_object
        # @param [String] request_id
        #   A string id used to detect duplicated requests. Ids are automatically scoped
        #   to a project, so users should ensure the ID is unique per-project. A UUID is
        #   recommended. Optional, but strongly recommended.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::TestMatrix] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::TestMatrix]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_test_matrix(project_id, test_matrix_object = nil, request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{projectId}/testMatrices', options)
          command.request_representation = Google::Apis::TestingV1::TestMatrix::Representation
          command.request_object = test_matrix_object
          command.response_representation = Google::Apis::TestingV1::TestMatrix::Representation
          command.response_class = Google::Apis::TestingV1::TestMatrix
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks the status of a test matrix and the executions once they are created.
        # The test matrix will contain the list of test executions to run if and only if
        # the resultStorage.toolResultsExecution fields have been populated. Note: Flaky
        # test executions may be added to the matrix at a later stage. May return any of
        # the following canonical error codes: - PERMISSION_DENIED - if the user is not
        # authorized to read project - INVALID_ARGUMENT - if the request is malformed -
        # NOT_FOUND - if the Test Matrix does not exist
        # @param [String] project_id
        #   Cloud project that owns the test matrix.
        # @param [String] test_matrix_id
        #   Unique test matrix id which was assigned by the service.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::TestMatrix] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::TestMatrix]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_test_matrix(project_id, test_matrix_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{projectId}/testMatrices/{testMatrixId}', options)
          command.response_representation = Google::Apis::TestingV1::TestMatrix::Representation
          command.response_class = Google::Apis::TestingV1::TestMatrix
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['testMatrixId'] = test_matrix_id unless test_matrix_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the catalog of supported test environments. May return any of the
        # following canonical error codes: - INVALID_ARGUMENT - if the request is
        # malformed - NOT_FOUND - if the environment type does not exist - INTERNAL - if
        # an internal error occurred
        # @param [String] environment_type
        #   Required. The type of environment that should be listed.
        # @param [String] project_id
        #   For authorization, the cloud project requesting the TestEnvironmentCatalog.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TestingV1::TestEnvironmentCatalog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TestingV1::TestEnvironmentCatalog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_test_environment_catalog(environment_type, project_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/testEnvironmentCatalog/{environmentType}', options)
          command.response_representation = Google::Apis::TestingV1::TestEnvironmentCatalog::Representation
          command.response_class = Google::Apis::TestingV1::TestEnvironmentCatalog
          command.params['environmentType'] = environment_type unless environment_type.nil?
          command.query['projectId'] = project_id unless project_id.nil?
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
