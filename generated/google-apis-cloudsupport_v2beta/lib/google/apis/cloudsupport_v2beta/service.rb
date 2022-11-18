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
    module CloudsupportV2beta
      # Google Cloud Support API
      #
      # Manages Google Cloud technical support cases for Customer Care support
      #  offerings.
      #
      # @example
      #    require 'google/apis/cloudsupport_v2beta'
      #
      #    Cloudsupport = Google::Apis::CloudsupportV2beta # Alias the module
      #    service = Cloudsupport::CloudSupportService.new
      #
      # @see https://cloud.google.com/support/docs/apis
      class CloudSupportService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudsupport.googleapis.com/', '',
                client_name: 'google-apis-cloudsupport_v2beta',
                client_version: Google::Apis::CloudsupportV2beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Create a file attachment on a case or Cloud resource. The attachment object
        # must have the following fields set: filename.
        # @param [String] parent
        #   Required. The resource name of the case to which attachment should be attached.
        # @param [Google::Apis::CloudsupportV2beta::CreateAttachmentRequest] create_attachment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::Attachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::Attachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_attachment(parent, create_attachment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/attachments', options)
          command.request_representation = Google::Apis::CloudsupportV2beta::CreateAttachmentRequest::Representation
          command.request_object = create_attachment_request_object
          command.response_representation = Google::Apis::CloudsupportV2beta::Attachment::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::Attachment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve valid classifications to be used when creating a support case. The
        # classications are hierarchical, with each classification containing all levels
        # of the hierarchy, separated by " > ". For example "Technical Issue > Compute >
        # Compute Engine".
        # @param [Fixnum] page_size
        #   The maximum number of cases fetched with each request.
        # @param [String] page_token
        #   A token identifying the page of results to return. If unspecified, the first
        #   page is retrieved.
        # @param [String] query
        #   An expression written in the Cloud filter language. If non-empty, then only
        #   cases whose fields match the filter are returned. If empty, then no messages
        #   are filtered out.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::SearchCaseClassificationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::SearchCaseClassificationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_case_classifications(page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/caseClassifications:search', options)
          command.response_representation = Google::Apis::CloudsupportV2beta::SearchCaseClassificationsResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::SearchCaseClassificationsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Close the specified case.
        # @param [String] name
        #   Required. The fully qualified name of the case resource to be closed.
        # @param [Google::Apis::CloudsupportV2beta::CloseCaseRequest] close_case_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def close_case(name, close_case_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+name}:close', options)
          command.request_representation = Google::Apis::CloudsupportV2beta::CloseCaseRequest::Representation
          command.request_object = close_case_request_object
          command.response_representation = Google::Apis::CloudsupportV2beta::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::Case
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new case and associate it with the given Cloud resource. The case
        # object must have the following fields set: display_name, description,
        # classification, and severity.
        # @param [String] parent
        #   Required. The name of the Cloud resource under which the case should be
        #   created.
        # @param [Google::Apis::CloudsupportV2beta::Case] case_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_case(parent, case_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/cases', options)
          command.request_representation = Google::Apis::CloudsupportV2beta::Case::Representation
          command.request_object = case_object
          command.response_representation = Google::Apis::CloudsupportV2beta::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::Case
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Escalate a case. Escalating a case will initiate the Cloud Support escalation
        # management process. This operation is only available to certain Customer Care
        # tiers. Go to https://cloud.google.com/support and look for 'Technical support
        # escalations' in the feature list to find out which tiers are able to perform
        # escalations.
        # @param [String] name
        #   Required. The fully qualified name of the Case resource to be escalated.
        # @param [Google::Apis::CloudsupportV2beta::EscalateCaseRequest] escalate_case_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def escalate_case(name, escalate_case_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+name}:escalate', options)
          command.request_representation = Google::Apis::CloudsupportV2beta::EscalateCaseRequest::Representation
          command.request_object = escalate_case_request_object
          command.response_representation = Google::Apis::CloudsupportV2beta::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::Case
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve the specified case.
        # @param [String] name
        #   Required. The fully qualified name of a case to be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_case(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+name}', options)
          command.response_representation = Google::Apis::CloudsupportV2beta::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::Case
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all cases under the specified parent. Note: Listing cases under an
        # Organization returns only the cases directly parented by that organization. To
        # retrieve all cases under an organization, including cases parented by projects
        # under that organization, use `cases.search`.
        # @param [String] parent
        #   Required. The fully qualified name of parent resource to list cases under.
        # @param [String] filter
        #   An expression written in filter language. If non-empty, the query returns the
        #   cases that match the filter. Else, the query doesn't filter the cases. Filter
        #   expressions use the following fields with the operators equals (`=`) and `AND`:
        #   - `state`: The accepted values are `OPEN` or `CLOSED`. - `priority`: The
        #   accepted values are `P0`, `P1`, `P2`, `P3`, or `P4`. You can specify multiple
        #   values for priority using the `OR` operator. For example, `priority=P1 OR
        #   priority=P2`. - [DEPRECATED] `severity`: The accepted values are `S0`, `S1`, `
        #   S2`, `S3`, or `S4`. - `creator.email`: The email address of the case creator.
        #   Examples: - `state=CLOSED` - `state=OPEN AND creator.email="tester@example.com"
        #   ` - `state=OPEN AND (priority=P0 OR priority=P1)`
        # @param [Fixnum] page_size
        #   The maximum number of cases fetched with each request. Defaults to 10.
        # @param [String] page_token
        #   A token identifying the page of results to return. If unspecified, the first
        #   page is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::ListCasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::ListCasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_cases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+parent}/cases', options)
          command.response_representation = Google::Apis::CloudsupportV2beta::ListCasesResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::ListCasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the specified case. Only a subset of fields (display_name, description,
        # time_zone, subscriber_email_addresses, related_resources, severity, priority,
        # primary_contact, and labels) can be updated.
        # @param [String] name
        #   The resource name for the case.
        # @param [Google::Apis::CloudsupportV2beta::Case] case_object
        # @param [String] update_mask
        #   A field that represents attributes of a case object that should be updated as
        #   part of this request. Supported values are severity, display_name, and
        #   subscriber_email_addresses. If no fields are specified, all supported fields
        #   will be updated. WARNING: If you do not provide a field mask then you may
        #   accidentally clear some fields. For example, if you leave field mask empty and
        #   do not provide a value for subscriber_email_addresses then
        #   subscriber_email_addresses will be updated to empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_case(name, case_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta/{+name}', options)
          command.request_representation = Google::Apis::CloudsupportV2beta::Case::Representation
          command.request_object = case_object
          command.response_representation = Google::Apis::CloudsupportV2beta::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::Case
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search cases using the specified query.
        # @param [Fixnum] page_size
        #   The maximum number of cases fetched with each request. The default page size
        #   is 10.
        # @param [String] page_token
        #   A token identifying the page of results to return. If unspecified, the first
        #   page is retrieved.
        # @param [String] query
        #   An expression written in filter language. A query uses the following fields
        #   with the operators equals (`=`) and `AND`: - `organization`: An organization
        #   name in the form `organizations/`. - `project`: A project name in the form `
        #   projects/`. - `state`: The accepted values are `OPEN` or `CLOSED`. - `priority`
        #   : The accepted values are `P0`, `P1`, `P2`, `P3`, or `P4`. You can specify
        #   multiple values for priority using the `OR` operator. For example, `priority=
        #   P1 OR priority=P2`. - [DEPRECATED] `severity`: The accepted values are `S0`, `
        #   S1`, `S2`, `S3`, or `S4`. - `creator.email`: The email address of the case
        #   creator. - `billingAccount`: A billing account in the form `billingAccounts/`
        #   You must specify eitehr `organization` or `project`. To search across `
        #   displayName`, `description`, and comments, use a global restriction with no
        #   keyword or operator. For example, `"my search"`. To search only cases updated
        #   after a certain date, use `update_time` retricted with that particular date,
        #   time, and timezone in ISO datetime format. For example, `update_time>"2020-01-
        #   01T00:00:00-05:00"`. `update_time` only supports the greater than operator (`>`
        #   ). Examples: - `organization="organizations/123456789"` - `project="projects/
        #   my-project-id"` - `project="projects/123456789"` - `billing_account="
        #   billingAccounts/123456-A0B0C0-CUZ789"` - `organization="organizations/
        #   123456789" AND state=CLOSED` - `project="projects/my-project-id" AND creator.
        #   email="tester@example.com"` - `project="projects/my-project-id" AND (priority=
        #   P0 OR priority=P1)`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::SearchCasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::SearchCasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_cases(page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/cases:search', options)
          command.response_representation = Google::Apis::CloudsupportV2beta::SearchCasesResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::SearchCasesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all attachments associated with a support case.
        # @param [String] parent
        #   Required. The resource name of Case object for which attachments should be
        #   listed.
        # @param [Fixnum] page_size
        #   The maximum number of attachments fetched with each request. If not provided,
        #   the default is 10. The maximum page size that will be returned is 100.
        # @param [String] page_token
        #   A token identifying the page of results to return. If unspecified, the first
        #   page is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::ListAttachmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::ListAttachmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_case_attachments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+parent}/attachments', options)
          command.response_representation = Google::Apis::CloudsupportV2beta::ListAttachmentsResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::ListAttachmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a new comment to the specified Case. The comment object must have the
        # following fields set: body.
        # @param [String] parent
        #   Required. The resource name of Case to which this comment should be added.
        # @param [Google::Apis::CloudsupportV2beta::Comment] comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_case_comment(parent, comment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+parent}/comments', options)
          command.request_representation = Google::Apis::CloudsupportV2beta::Comment::Representation
          command.request_object = comment_object
          command.response_representation = Google::Apis::CloudsupportV2beta::Comment::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::Comment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve all Comments associated with the Case object.
        # @param [String] parent
        #   Required. The resource name of Case object for which comments should be listed.
        # @param [Fixnum] page_size
        #   The maximum number of comments fetched with each request. Defaults to 10.
        # @param [String] page_token
        #   A token identifying the page of results to return. If unspecified, the first
        #   page is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2beta::ListCommentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::ListCommentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_case_comments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/{+parent}/comments', options)
          command.response_representation = Google::Apis::CloudsupportV2beta::ListCommentsResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::ListCommentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Download a file attachment on a case. Note: HTTP requests must append "?alt=
        # media" to the URL.
        # @param [String] name
        #   The resource name of the attachment to be downloaded.
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
        # @yieldparam result [Google::Apis::CloudsupportV2beta::Media] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::Media]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(name, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'v2beta/{+name}:download', options)
          else
            command = make_download_command(:get, 'v2beta/{+name}:download', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::CloudsupportV2beta::Media::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::Media
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a file attachment on a case or Cloud resource. The attachment object
        # must have the following fields set: filename.
        # @param [String] parent
        #   Required. The resource name of the case to which attachment should be attached.
        # @param [Google::Apis::CloudsupportV2beta::CreateAttachmentRequest] create_attachment_request_object
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
        # @yieldparam result [Google::Apis::CloudsupportV2beta::Attachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2beta::Attachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium(parent, create_attachment_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v2beta/{+parent}/attachments', options)
          else
            command = make_upload_command(:post, 'v2beta/{+parent}/attachments', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::CloudsupportV2beta::CreateAttachmentRequest::Representation
          command.request_object = create_attachment_request_object
          command.response_representation = Google::Apis::CloudsupportV2beta::Attachment::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::Attachment
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
