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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DlpV2beta1
      # DLP API
      #
      # The Google Data Loss Prevention API provides methods for detection of privacy-
      #  sensitive fragments in text, images, and Google Cloud Platform storage
      #  repositories.
      #
      # @example
      #    require 'google/apis/dlp_v2beta1'
      #
      #    Dlp = Google::Apis::DlpV2beta1 # Alias the module
      #    service = Dlp::DLPService.new
      #
      # @see https://cloud.google.com/dlp/docs/
      class DLPService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://dlp.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # De-identifies potentially sensitive info from a list of strings.
        # This method has limits on input size and output size.
        # @param [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DeidentifyContentRequest] google_privacy_dlp_v2beta1_deidentify_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DeidentifyContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DeidentifyContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deidentify_content(google_privacy_dlp_v2beta1_deidentify_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/content:deidentify', options)
          command.request_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DeidentifyContentRequest::Representation
          command.request_object = google_privacy_dlp_v2beta1_deidentify_content_request_object
          command.response_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DeidentifyContentResponse::Representation
          command.response_class = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DeidentifyContentResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finds potentially sensitive info in a list of strings.
        # This method has limits on input size, processing time, and output size.
        # @param [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectContentRequest] google_privacy_dlp_v2beta1_inspect_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def inspect_content(google_privacy_dlp_v2beta1_inspect_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/content:inspect', options)
          command.request_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectContentRequest::Representation
          command.request_object = google_privacy_dlp_v2beta1_inspect_content_request_object
          command.response_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectContentResponse::Representation
          command.response_class = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectContentResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Redacts potentially sensitive info from a list of strings.
        # This method has limits on input size, processing time, and output size.
        # @param [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1RedactContentRequest] google_privacy_dlp_v2beta1_redact_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1RedactContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1RedactContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def redact_content(google_privacy_dlp_v2beta1_redact_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/content:redact', options)
          command.request_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1RedactContentRequest::Representation
          command.request_object = google_privacy_dlp_v2beta1_redact_content_request_object
          command.response_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1RedactContentResponse::Representation
          command.response_class = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1RedactContentResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Schedules a job to compute risk analysis metrics over content in a Google
        # Cloud Platform repository.
        # @param [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest] google_privacy_dlp_v2beta1_analyze_data_source_risk_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_data_source(google_privacy_dlp_v2beta1_analyze_data_source_risk_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/dataSource:analyze', options)
          command.request_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1AnalyzeDataSourceRiskRequest::Representation
          command.request_object = google_privacy_dlp_v2beta1_analyze_data_source_risk_request_object
          command.response_representation = Google::Apis::DlpV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleLongrunningOperation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels an operation. Use the `inspect.operations.get` to check whether the
        # cancellation succeeded or the operation completed despite cancellation.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DlpV2beta1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_inspect_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DlpV2beta1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::DlpV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Schedules a job scanning content in a Google Cloud Platform data
        # repository.
        # @param [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CreateInspectOperationRequest] google_privacy_dlp_v2beta1_create_inspect_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_inspect_operation(google_privacy_dlp_v2beta1_create_inspect_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/inspect/operations', options)
          command.request_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CreateInspectOperationRequest::Representation
          command.request_object = google_privacy_dlp_v2beta1_create_inspect_operation_request_object
          command.response_representation = Google::Apis::DlpV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleLongrunningOperation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This method is not supported and the server returns `UNIMPLEMENTED`.
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
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_inspect_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DlpV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
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
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_inspect_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DlpV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the list of long running operations.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   Filters by `done`. That is, `done=true` or `done=false`.
        # @param [Fixnum] page_size
        #   The list page size. The maximum allowed value is 256 and the default is 100.
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
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inspect_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DlpV2beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns list of results for given inspect operation result set id.
        # @param [String] name
        #   Identifier of the results set returned as metadata of
        #   the longrunning operation created by a call to InspectDataSource.
        #   Should be in the format of `inspect/results/`id``.
        # @param [String] filter
        #   Restricts findings to items that match. Supports info_type and likelihood.
        #   Examples:
        #   - info_type=EMAIL_ADDRESS
        #   - info_type=PHONE_NUMBER,EMAIL_ADDRESS
        #   - likelihood=VERY_LIKELY
        #   - likelihood=VERY_LIKELY,LIKELY
        #   - info_type=EMAIL_ADDRESS,likelihood=VERY_LIKELY,LIKELY
        # @param [Fixnum] page_size
        #   Maximum number of results to return.
        #   If 0, the implementation selects a reasonable value.
        # @param [String] page_token
        #   The value returned by the last `ListInspectFindingsResponse`; indicates
        #   that this is a continuation of a prior `ListInspectFindings` call, and that
        #   the system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListInspectFindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListInspectFindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inspect_result_findings(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/{+name}/findings', options)
          command.response_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListInspectFindingsResponse::Representation
          command.response_class = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListInspectFindingsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels an operation. Use the `inspect.operations.get` to check whether the
        # cancellation succeeded or the operation completed despite cancellation.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DlpV2beta1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_risk_analysis_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/{+name}:cancel', options)
          command.request_representation = Google::Apis::DlpV2beta1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::DlpV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This method is not supported and the server returns `UNIMPLEMENTED`.
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
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_risk_analysis_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DlpV2beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
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
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_risk_analysis_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DlpV2beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches the list of long running operations.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   Filters by `done`. That is, `done=true` or `done=false`.
        # @param [Fixnum] page_size
        #   The list page size. The maximum allowed value is 256 and the default is 100.
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
        # @yieldparam result [Google::Apis::DlpV2beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_risk_analysis_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::DlpV2beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DlpV2beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of root categories of sensitive information.
        # @param [String] language_code
        #   Optional language code for localized friendly category names.
        #   If omitted or if localized strings are not available,
        #   en-US strings will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListRootCategoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListRootCategoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_root_categories(language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/rootCategories', options)
          command.response_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListRootCategoriesResponse::Representation
          command.response_class = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListRootCategoriesResponse
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns sensitive information types for given category.
        # @param [String] category
        #   Category name as returned by ListRootCategories.
        # @param [String] language_code
        #   Optional BCP-47 language code for localized info type friendly
        #   names. If omitted, or if localized strings are not available,
        #   en-US strings will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListInfoTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListInfoTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_root_category_info_types(category, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/rootCategories/{+category}/infoTypes', options)
          command.response_representation = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListInfoTypesResponse::Representation
          command.response_class = Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ListInfoTypesResponse
          command.params['category'] = category unless category.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
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
