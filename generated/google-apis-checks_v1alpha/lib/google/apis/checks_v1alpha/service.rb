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
    module ChecksV1alpha
      # Checks API
      #
      # The Checks API contains powerful and easy-to-use privacy and compliance APIs
      #  that interact with the Checks product and its underlying technology.
      #
      # @example
      #    require 'google/apis/checks_v1alpha'
      #
      #    Checks = Google::Apis::ChecksV1alpha # Alias the module
      #    service = Checks::ChecksServiceService.new
      #
      # @see https://developers.google.com/checks
      class ChecksServiceService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://checks.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-checks_v1alpha',
                client_version: Google::Apis::ChecksV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets an app.
        # @param [String] name
        #   Required. Resource name of the app. Example: `accounts/123/apps/456`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaApp::Representation
          command.response_class = Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaApp
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the apps under the given account.
        # @param [String] parent
        #   Required. The parent account. Example: `accounts/123`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return. The server may further
        #   constrain the maximum number of results returned in a single page. If
        #   unspecified, the server will decide the number of results to be returned.
        # @param [String] page_token
        #   Optional. A page token received from a previous `ListApps` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaListAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaListAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_apps(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/apps', options)
          command.response_representation = Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaListAppsResponse::Representation
          command.response_class = Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaListAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::ChecksV1alpha::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:cancel', options)
          command.request_representation = Google::Apis::ChecksV1alpha::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::ChecksV1alpha::Empty::Representation
          command.response_class = Google::Apis::ChecksV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_app_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::ChecksV1alpha::Empty::Representation
          command.response_class = Google::Apis::ChecksV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_app_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::ChecksV1alpha::Operation::Representation
          command.response_class = Google::Apis::ChecksV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_app_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::ChecksV1alpha::ListOperationsResponse::Representation
          command.response_class = Google::Apis::ChecksV1alpha::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Waits until the specified long-running operation is done or reaches at most a
        # specified timeout, returning the latest state. If the operation is already
        # done, the latest state is immediately returned. If the timeout specified is
        # greater than the default HTTP/RPC timeout, the HTTP/RPC timeout is used. If
        # the server does not support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`. Note that this method is on a best-effort basis. It may return
        # the latest state before the specified timeout (including immediately), meaning
        # even an immediate response is no guarantee that the operation is done.
        # @param [String] name
        #   The name of the operation resource to wait on.
        # @param [Google::Apis::ChecksV1alpha::WaitOperationRequest] wait_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def wait_operation(name, wait_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:wait', options)
          command.request_representation = Google::Apis::ChecksV1alpha::WaitOperationRequest::Representation
          command.request_object = wait_operation_request_object
          command.response_representation = Google::Apis::ChecksV1alpha::Operation::Representation
          command.response_class = Google::Apis::ChecksV1alpha::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a report. By default, only the name and results_uri fields are returned.
        # You can include other fields by listing them in the `fields` URL query
        # parameter. For example, `?fields=name,checks` will return the name and checks
        # fields.
        # @param [String] name
        #   Required. Resource name of the report. Example: `accounts/123/apps/456/reports/
        #   789`
        # @param [String] checks_filter
        #   Optional. An [AIP-160](https://google.aip.dev/160) filter string to filter
        #   checks within the report. Only checks that match the filter string are
        #   included in the response. Example: `state = FAILED`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_app_report(name, checks_filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaReport::Representation
          command.response_class = Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaReport
          command.params['name'] = name unless name.nil?
          command.query['checksFilter'] = checks_filter unless checks_filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists reports for the specified app. By default, only the name and results_uri
        # fields are returned. You can include other fields by listing them in the `
        # fields` URL query parameter. For example, `?fields=reports(name,checks)` will
        # return the name and checks fields.
        # @param [String] parent
        #   Required. Resource name of the app. Example: `accounts/123/apps/456`
        # @param [String] checks_filter
        #   Optional. An [AIP-160](https://google.aip.dev/160) filter string to filter
        #   checks within reports. Only checks that match the filter string are included
        #   in the response. Example: `state = FAILED`
        # @param [String] filter
        #   Optional. An [AIP-160](https://google.aip.dev/160) filter string to filter
        #   reports. Example: `appBundle.releaseType = PRE_RELEASE`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of reports to return. If unspecified, at most 10
        #   reports will be returned. The maximum value is 50; values above 50 will be
        #   coerced to 50.
        # @param [String] page_token
        #   Optional. A page token received from a previous `ListReports` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListReports` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_app_reports(parent, checks_filter: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/reports', options)
          command.response_representation = Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaListReportsResponse::Representation
          command.response_class = Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaListReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['checksFilter'] = checks_filter unless checks_filter.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes the uploaded app bundle and returns a google.longrunning.Operation
        # containing the generated Report. ## Example (upload only) Send a regular POST
        # request with the header `X-Goog-Upload-Protocol: raw`. ``` POST https://checks.
        # googleapis.com/upload/v1alpha/`parent=accounts/*/apps/*`/reports:analyzeUpload
        # HTTP/1.1 X-Goog-Upload-Protocol: raw Content-Length: Content-Type: application/
        # octet-stream ``` ## Example (upload with metadata) Send a multipart POST
        # request where the first body part contains the metadata JSON and the second
        # body part contains the binary upload. Include the header `X-Goog-Upload-
        # Protocol: multipart`. ``` POST https://checks.googleapis.com/upload/v1alpha/`
        # parent=accounts/*/apps/*`/reports:analyzeUpload HTTP/1.1 X-Goog-Upload-
        # Protocol: multipart Content-Length: ? Content-Type: multipart/related;
        # boundary=BOUNDARY --BOUNDARY Content-Type: application/json `"
        # code_reference_id":"db5bcc20f94055fb5bc08cbb9b0e7a5530308786"` --BOUNDARY --
        # BOUNDARY-- ``` *Note:* Metadata-only requests are not supported.
        # @param [String] parent
        #   Required. Resource name of the app. Example: `accounts/123/apps/456`
        # @param [Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaAnalyzeUploadRequest] google_checks_report_v1alpha_analyze_upload_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChecksV1alpha::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChecksV1alpha::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium(parent, google_checks_report_v1alpha_analyze_upload_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1alpha/{+parent}/reports:analyzeUpload', options)
          else
            command = make_upload_command(:post, 'v1alpha/{+parent}/reports:analyzeUpload', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaAnalyzeUploadRequest::Representation
          command.request_object = google_checks_report_v1alpha_analyze_upload_request_object
          command.response_representation = Google::Apis::ChecksV1alpha::Operation::Representation
          command.response_class = Google::Apis::ChecksV1alpha::Operation
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
