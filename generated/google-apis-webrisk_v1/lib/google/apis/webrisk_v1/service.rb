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
    module WebriskV1
      # Web Risk API
      #
      # 
      #
      # @example
      #    require 'google/apis/webrisk_v1'
      #
      #    Webrisk = Google::Apis::WebriskV1 # Alias the module
      #    service = Webrisk::WebRiskService.new
      #
      # @see https://cloud.google.com/web-risk/
      class WebRiskService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://webrisk.googleapis.com/', '',
                client_name: 'google-apis-webrisk_v1',
                client_version: Google::Apis::WebriskV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets the full hashes that match the requested hash prefix. This is used after
        # a hash prefix is looked up in a threatList and there is a match. The client
        # side threatList only holds partial hashes so the client must query this method
        # to determine if there is a full hash match of a threat.
        # @param [String] hash_prefix
        #   A hash prefix, consisting of the most significant 4-32 bytes of a SHA256 hash.
        #   For JSON requests, this field is base64-encoded. Note that if this parameter
        #   is provided by a URI, it must be encoded using the web safe base64 variant (
        #   RFC 4648).
        # @param [Array<String>, String] threat_types
        #   Required. The ThreatLists to search in. Multiple ThreatLists may be specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchHashesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchHashesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_hashes(hash_prefix: nil, threat_types: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/hashes:search', options)
          command.response_representation = Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchHashesResponse::Representation
          command.response_class = Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchHashesResponse
          command.query['hashPrefix'] = hash_prefix unless hash_prefix.nil?
          command.query['threatTypes'] = threat_types unless threat_types.nil?
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
        # @param [Google::Apis::WebriskV1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebriskV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebriskV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::WebriskV1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::WebriskV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::WebriskV1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::WebriskV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebriskV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WebriskV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::WebriskV1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::WebriskV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebriskV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WebriskV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::WebriskV1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::WebriskV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebriskV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::WebriskV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::WebriskV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Submission of a URI suspected of containing phishing content to be
        # reviewed. If the result verifies the existence of malicious phishing content,
        # the site will be added to the [Google's Social Engineering lists](https://
        # support.google.com/webmasters/answer/6350487/) in order to protect users that
        # could get exposed to this threat in the future. Only allowlisted projects can
        # use this method during Early Access. Please reach out to Sales or your
        # customer engineer to obtain access.
        # @param [String] parent
        #   Required. The name of the project that is making the submission. This string
        #   is in the format "projects/`project_number`".
        # @param [Google::Apis::WebriskV1::GoogleCloudWebriskV1Submission] google_cloud_webrisk_v1_submission_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebriskV1::GoogleCloudWebriskV1Submission] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1Submission]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_submission(parent, google_cloud_webrisk_v1_submission_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/submissions', options)
          command.request_representation = Google::Apis::WebriskV1::GoogleCloudWebriskV1Submission::Representation
          command.request_object = google_cloud_webrisk_v1_submission_object
          command.response_representation = Google::Apis::WebriskV1::GoogleCloudWebriskV1Submission::Representation
          command.response_class = Google::Apis::WebriskV1::GoogleCloudWebriskV1Submission
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the most recent threat list diffs. These diffs should be applied to a
        # local database of hashes to keep it up-to-date. If the local database is empty
        # or excessively out-of-date, a complete snapshot of the database will be
        # returned. This Method only updates a single ThreatList at a time. To update
        # multiple ThreatList databases, this method needs to be called once for each
        # list.
        # @param [Fixnum] constraints_max_database_entries
        #   Sets the maximum number of entries that the client is willing to have in the
        #   local database. This should be a power of 2 between 2**10 and 2**20. If zero,
        #   no database size limit is set.
        # @param [Fixnum] constraints_max_diff_entries
        #   The maximum size in number of entries. The diff will not contain more entries
        #   than this value. This should be a power of 2 between 2**10 and 2**20. If zero,
        #   no diff size limit is set.
        # @param [Array<String>, String] constraints_supported_compressions
        #   The compression types supported by the client.
        # @param [String] threat_type
        #   Required. The threat list to update. Only a single ThreatType should be
        #   specified per request. If you want to handle multiple ThreatTypes, you must
        #   make one request per ThreatType.
        # @param [String] version_token
        #   The current version token of the client for the requested list (the client
        #   version that was received from the last successful diff). If the client does
        #   not have a version token (this is the first time calling ComputeThreatListDiff)
        #   , this may be left empty and a full database snapshot will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebriskV1::GoogleCloudWebriskV1ComputeThreatListDiffResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1ComputeThreatListDiffResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_threat_list_diff(constraints_max_database_entries: nil, constraints_max_diff_entries: nil, constraints_supported_compressions: nil, threat_type: nil, version_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/threatLists:computeDiff', options)
          command.response_representation = Google::Apis::WebriskV1::GoogleCloudWebriskV1ComputeThreatListDiffResponse::Representation
          command.response_class = Google::Apis::WebriskV1::GoogleCloudWebriskV1ComputeThreatListDiffResponse
          command.query['constraints.maxDatabaseEntries'] = constraints_max_database_entries unless constraints_max_database_entries.nil?
          command.query['constraints.maxDiffEntries'] = constraints_max_diff_entries unless constraints_max_diff_entries.nil?
          command.query['constraints.supportedCompressions'] = constraints_supported_compressions unless constraints_supported_compressions.nil?
          command.query['threatType'] = threat_type unless threat_type.nil?
          command.query['versionToken'] = version_token unless version_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This method is used to check whether a URI is on a given threatList. Multiple
        # threatLists may be searched in a single query. The response will list all
        # requested threatLists the URI was found to match. If the URI is not found on
        # any of the requested ThreatList an empty response will be returned.
        # @param [Array<String>, String] threat_types
        #   Required. The ThreatLists to search in. Multiple ThreatLists may be specified.
        # @param [String] uri
        #   Required. The URI to be checked for matches.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchUrisResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchUrisResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_uris(threat_types: nil, uri: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/uris:search', options)
          command.response_representation = Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchUrisResponse::Representation
          command.response_class = Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchUrisResponse
          command.query['threatTypes'] = threat_types unless threat_types.nil?
          command.query['uri'] = uri unless uri.nil?
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
