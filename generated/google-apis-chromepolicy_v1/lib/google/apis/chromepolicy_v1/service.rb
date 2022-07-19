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
    module ChromepolicyV1
      # Chrome Policy API
      #
      # The Chrome Policy API is a suite of services that allows Chrome administrators
      #  to control the policies applied to their managed Chrome OS devices and Chrome
      #  browsers.
      #
      # @example
      #    require 'google/apis/chromepolicy_v1'
      #
      #    Chromepolicy = Google::Apis::ChromepolicyV1 # Alias the module
      #    service = Chromepolicy::ChromePolicyService.new
      #
      # @see http://developers.google.com/chrome/policy
      class ChromePolicyService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://chromepolicy.googleapis.com/', '',
                client_name: 'google-apis-chromepolicy_v1',
                client_version: Google::Apis::ChromepolicyV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets the resolved policy values for a list of policies that match a search
        # query.
        # @param [String] customer
        #   ID of the G Suite account or literal "my_customer" for the customer associated
        #   to the request.
        # @param [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ResolveRequest] google_chrome_policy_v1_resolve_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ResolveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ResolveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_customer_policy(customer, google_chrome_policy_v1_resolve_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+customer}/policies:resolve', options)
          command.request_representation = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ResolveRequest::Representation
          command.request_object = google_chrome_policy_v1_resolve_request_object
          command.response_representation = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ResolveResponse::Representation
          command.response_class = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ResolveResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modify multiple policy values that are applied to a specific org unit so that
        # they now inherit the value from a parent (if applicable). All targets must
        # have the same target format. That is to say that they must point to the same
        # target resource and must have the same keys specified in `
        # additionalTargetKeyNames`, though the values for those keys may be different.
        # On failure the request will return the error details as part of the google.rpc.
        # Status.
        # @param [String] customer
        #   ID of the G Suite account or literal "my_customer" for the customer associated
        #   to the request.
        # @param [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest] google_chrome_policy_v1_batch_inherit_org_unit_policies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromepolicyV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromepolicyV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_customer_policy_orgunit_inherit(customer, google_chrome_policy_v1_batch_inherit_org_unit_policies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+customer}/policies/orgunits:batchInherit', options)
          command.request_representation = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1BatchInheritOrgUnitPoliciesRequest::Representation
          command.request_object = google_chrome_policy_v1_batch_inherit_org_unit_policies_request_object
          command.response_representation = Google::Apis::ChromepolicyV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ChromepolicyV1::GoogleProtobufEmpty
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modify multiple policy values that are applied to a specific org unit. All
        # targets must have the same target format. That is to say that they must point
        # to the same target resource and must have the same keys specified in `
        # additionalTargetKeyNames`, though the values for those keys may be different.
        # On failure the request will return the error details as part of the google.rpc.
        # Status.
        # @param [String] customer
        #   ID of the G Suite account or literal "my_customer" for the customer associated
        #   to the request.
        # @param [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest] google_chrome_policy_v1_batch_modify_org_unit_policies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromepolicyV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromepolicyV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_customer_policy_orgunit_modify(customer, google_chrome_policy_v1_batch_modify_org_unit_policies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+customer}/policies/orgunits:batchModify', options)
          command.request_representation = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1BatchModifyOrgUnitPoliciesRequest::Representation
          command.request_object = google_chrome_policy_v1_batch_modify_org_unit_policies_request_object
          command.response_representation = Google::Apis::ChromepolicyV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ChromepolicyV1::GoogleProtobufEmpty
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a specific policy schema for a customer by its resource name.
        # @param [String] name
        #   Required. The policy schema resource name to query.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_policy_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchema::Representation
          command.response_class = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1PolicySchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of policy schemas that match a specified filter value for a given
        # customer.
        # @param [String] parent
        #   Required. The customer for which the listing request will apply.
        # @param [String] filter
        #   The schema filter used to find a particular schema based on fields like its
        #   resource name, description and `additionalTargetKeyNames`.
        # @param [Fixnum] page_size
        #   The maximum number of policy schemas to return.
        # @param [String] page_token
        #   The page token used to retrieve a specific page of the listing request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ListPolicySchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ListPolicySchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_policy_schemas(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/policySchemas', options)
          command.response_representation = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ListPolicySchemasResponse::Representation
          command.response_class = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1ListPolicySchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an enterprise file from the content provided by user. Returns a public
        # download url for end user.
        # @param [String] customer
        #   Required. The customer for which the file upload will apply.
        # @param [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1UploadPolicyFileRequest] google_chrome_policy_v1_upload_policy_file_request_object
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
        # @yieldparam result [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1UploadPolicyFileResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromepolicyV1::GoogleChromePolicyV1UploadPolicyFileResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium(customer, google_chrome_policy_v1_upload_policy_file_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v1/{+customer}/policies/files:uploadPolicyFile', options)
          else
            command = make_upload_command(:post, 'v1/{+customer}/policies/files:uploadPolicyFile', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1UploadPolicyFileRequest::Representation
          command.request_object = google_chrome_policy_v1_upload_policy_file_request_object
          command.response_representation = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1UploadPolicyFileResponse::Representation
          command.response_class = Google::Apis::ChromepolicyV1::GoogleChromePolicyV1UploadPolicyFileResponse
          command.params['customer'] = customer unless customer.nil?
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
