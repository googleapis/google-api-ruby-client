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
    module IamV2
      # Identity and Access Management (IAM) API
      #
      # Manages identity and access control for Google Cloud Platform resources,
      #  including the creation of service accounts, which you can use to authenticate
      #  to Google and make API calls.
      #
      # @example
      #    require 'google/apis/iam_v2'
      #
      #    Iam = Google::Apis::IamV2 # Alias the module
      #    service = Iam::IamService.new
      #
      # @see https://cloud.google.com/iam/
      class IamService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://iam.googleapis.com/', '',
                client_name: 'google-apis-iam_v2',
                client_version: Google::Apis::IamV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a policy.
        # @param [String] parent
        #   Required. The resource that the policy is attached to, along with the kind of
        #   policy to create. Format: `policies/`attachment_point`/denypolicies` The
        #   attachment point is identified by its URL-encoded full resource name, which
        #   means that the forward-slash character, `/`, must be written as `%2F`. For
        #   example, `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/
        #   denypolicies`. For organizations and folders, use the numeric ID in the full
        #   resource name. For projects, you can use the alphanumeric or the numeric ID.
        # @param [Google::Apis::IamV2::GoogleIamV2Policy] google_iam_v2_policy_object
        # @param [String] policy_id
        #   The ID to use for this policy, which will become the final component of the
        #   policy's resource name. The ID must contain 3 to 63 characters. It can contain
        #   lowercase letters and numbers, as well as dashes (`-`) and periods (`.`). The
        #   first character must be a lowercase letter.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_policy_policy(parent, google_iam_v2_policy_object = nil, policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}', options)
          command.request_representation = Google::Apis::IamV2::GoogleIamV2Policy::Representation
          command.request_object = google_iam_v2_policy_object
          command.response_representation = Google::Apis::IamV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::IamV2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['policyId'] = policy_id unless policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a policy. This action is permanent.
        # @param [String] name
        #   Required. The resource name of the policy to delete. Format: `policies/`
        #   attachment_point`/denypolicies/`policy_id`` Use the URL-encoded full resource
        #   name, which means that the forward-slash character, `/`, must be written as `%
        #   2F`. For example, `policies/cloudresourcemanager.googleapis.com%2Fprojects%
        #   2Fmy-project/denypolicies/my-policy`. For organizations and folders, use the
        #   numeric ID in the full resource name. For projects, you can use the
        #   alphanumeric or the numeric ID.
        # @param [String] etag
        #   Optional. The expected `etag` of the policy to delete. If the value does not
        #   match the value that is stored in IAM, the request fails with a `409` error
        #   code and `ABORTED` status. If you omit this field, the policy is deleted
        #   regardless of its current `etag`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_policy(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IamV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::IamV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a policy.
        # @param [String] name
        #   Required. The resource name of the policy to retrieve. Format: `policies/`
        #   attachment_point`/denypolicies/`policy_id`` Use the URL-encoded full resource
        #   name, which means that the forward-slash character, `/`, must be written as `%
        #   2F`. For example, `policies/cloudresourcemanager.googleapis.com%2Fprojects%
        #   2Fmy-project/denypolicies/my-policy`. For organizations and folders, use the
        #   numeric ID in the full resource name. For projects, you can use the
        #   alphanumeric or the numeric ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV2::GoogleIamV2Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV2::GoogleIamV2Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IamV2::GoogleIamV2Policy::Representation
          command.response_class = Google::Apis::IamV2::GoogleIamV2Policy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the policies of the specified kind that are attached to a resource.
        # The response lists only policy metadata. In particular, policy rules are
        # omitted.
        # @param [String] parent
        #   Required. The resource that the policy is attached to, along with the kind of
        #   policy to list. Format: `policies/`attachment_point`/denypolicies` The
        #   attachment point is identified by its URL-encoded full resource name, which
        #   means that the forward-slash character, `/`, must be written as `%2F`. For
        #   example, `policies/cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/
        #   denypolicies`. For organizations and folders, use the numeric ID in the full
        #   resource name. For projects, you can use the alphanumeric or the numeric ID.
        # @param [Fixnum] page_size
        #   The maximum number of policies to return. IAM ignores this value and uses the
        #   value 1000.
        # @param [String] page_token
        #   A page token received in a ListPoliciesResponse. Provide this token to
        #   retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV2::GoogleIamV2ListPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV2::GoogleIamV2ListPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_policy_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}', options)
          command.response_representation = Google::Apis::IamV2::GoogleIamV2ListPoliciesResponse::Representation
          command.response_class = Google::Apis::IamV2::GoogleIamV2ListPoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified policy. You can update only the rules and the display
        # name for the policy. To update a policy, you should use a read-modify-write
        # loop: 1. Use GetPolicy to read the current version of the policy. 2. Modify
        # the policy as needed. 3. Use `UpdatePolicy` to write the updated policy. This
        # pattern helps prevent conflicts between concurrent updates.
        # @param [String] name
        #   Immutable. The resource name of the `Policy`, which must be unique. Format: `
        #   policies/`attachment_point`/denypolicies/`policy_id`` The attachment point is
        #   identified by its URL-encoded full resource name, which means that the forward-
        #   slash character, `/`, must be written as `%2F`. For example, `policies/
        #   cloudresourcemanager.googleapis.com%2Fprojects%2Fmy-project/denypolicies/my-
        #   deny-policy`. For organizations and folders, use the numeric ID in the full
        #   resource name. For projects, requests can use the alphanumeric or the numeric
        #   ID. Responses always contain the numeric ID.
        # @param [Google::Apis::IamV2::GoogleIamV2Policy] google_iam_v2_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IamV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_policy(name, google_iam_v2_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v2/{+name}', options)
          command.request_representation = Google::Apis::IamV2::GoogleIamV2Policy::Representation
          command.request_object = google_iam_v2_policy_object
          command.response_representation = Google::Apis::IamV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::IamV2::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::IamV2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IamV2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_policy_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IamV2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::IamV2::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
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
