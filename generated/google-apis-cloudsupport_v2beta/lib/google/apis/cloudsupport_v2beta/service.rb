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
        
        # Retrieve valid classifications to use when creating a support case.
        # Classifications are hierarchical. Each classification is a string containing
        # all levels of the hierarchy separated by `" > "`. For example, `"Technical
        # Issue > Compute > Compute Engine"`. Classification IDs returned by this
        # endpoint are valid for at least six months. When a classification is
        # deactivated, this endpoint immediately stops returning it. After six months, `
        # case.create` requests using the classification will fail. EXAMPLES: cURL: ```
        # shell curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)"
        # \ 'https://cloudsupport.googleapis.com/v2/caseClassifications:search?query=
        # display_name:"*Compute%20Engine*"' ``` Python: ```python import
        # googleapiclient.discovery supportApiService = googleapiclient.discovery.build(
        # serviceName="cloudsupport", version="v2", discoveryServiceUrl=f"https://
        # cloudsupport.googleapis.com/$discovery/rest?version=v2", ) request =
        # supportApiService.caseClassifications().search( query='display_name:"*Compute
        # Engine*"' ) print(request.execute()) ```
        # @param [Fixnum] page_size
        #   The maximum number of classifications fetched with each request.
        # @param [String] page_token
        #   A token identifying the page of results to return. If unspecified, the first
        #   page is retrieved.
        # @param [String] query
        #   An expression used to filter case classifications. If it's an empty string,
        #   then no filtering happens. Otherwise, case classifications will be returned
        #   that match the filter.
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
        
        # Close a case. EXAMPLES: cURL: ```shell case="projects/some-project/cases/
        # 43595344" curl \ --request POST \ --header "Authorization: Bearer $(gcloud
        # auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$case:
        # close" ``` Python: ```python import googleapiclient.discovery api_version = "
        # v2" supportApiService = googleapiclient.discovery.build( serviceName="
        # cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.
        # googleapis.com/$discovery/rest?version=`api_version`", ) request =
        # supportApiService.cases().close( name="projects/some-project/cases/43595344" )
        # print(request.execute()) ```
        # @param [String] name
        #   Required. The name of the case to close.
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
        
        # Create a new case and associate it with a parent. It must have the following
        # fields set: `display_name`, `description`, `classification`, and `priority`.
        # If you're just testing the API and don't want to route your case to an agent,
        # set `testCase=true`. EXAMPLES: cURL: ```shell parent="projects/some-project"
        # curl \ --request POST \ --header "Authorization: Bearer $(gcloud auth print-
        # access-token)" \ --header 'Content-Type: application/json' \ --data '` "
        # display_name": "Test case created by me.", "description": "a random test case,
        # feel free to close", "classification": ` "id": "
        # 1BT1M2T31DHNMENPO6KS36CPJ786L2TBFEHGN6NPI64R3CDHN8880G08I1H3MURR7DHII0GRCDTQM8"
        # `, "time_zone": "-07:00", "subscriber_email_addresses": [ "foo@domain.com", "
        # bar@domain.com" ], "testCase": true, "priority": "P3" `' \ "https://
        # cloudsupport.googleapis.com/v2/$parent/cases" ``` Python: ```python import
        # googleapiclient.discovery api_version = "v2" supportApiService =
        # googleapiclient.discovery.build( serviceName="cloudsupport", version=
        # api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$
        # discovery/rest?version=`api_version`", ) request = supportApiService.cases().
        # create( parent="projects/some-project", body=` "displayName": "A Test Case", "
        # description": "This is a test case.", "testCase": True, "priority": "P2", "
        # classification": ` "id": "
        # 1BT1M2T31DHNMENPO6KS36CPJ786L2TBFEHGN6NPI64R3CDHN8880G08I1H3MURR7DHII0GRCDTQM8"
        # `, `, ) print(request.execute()) ```
        # @param [String] parent
        #   Required. The name of the parent under which the case should be created.
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
        
        # Escalate a case, starting the Google Cloud Support escalation management
        # process. This operation is only available for some support services. Go to
        # https://cloud.google.com/support and look for 'Technical support escalations'
        # in the feature list to find out which ones let you do that. EXAMPLES: cURL: ```
        # shell case="projects/some-project/cases/43595344" curl \ --request POST \ --
        # header "Authorization: Bearer $(gcloud auth print-access-token)" \ --header "
        # Content-Type: application/json" \ --data '` "escalation": ` "reason": "
        # BUSINESS_IMPACT", "justification": "This is a test escalation." ` `' \ "https:/
        # /cloudsupport.googleapis.com/v2/$case:escalate" ``` Python: ```python import
        # googleapiclient.discovery api_version = "v2" supportApiService =
        # googleapiclient.discovery.build( serviceName="cloudsupport", version=
        # api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$
        # discovery/rest?version=`api_version`", ) request = supportApiService.cases().
        # escalate( name="projects/some-project/cases/43595344", body=` "escalation": ` "
        # reason": "BUSINESS_IMPACT", "justification": "This is a test escalation.", `, `
        # , ) print(request.execute()) ```
        # @param [String] name
        #   Required. The name of the case to be escalated.
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
        
        # Retrieve a case. EXAMPLES: cURL: ```shell case="projects/some-project/cases/
        # 16033687" curl \ --header "Authorization: Bearer $(gcloud auth print-access-
        # token)" \ "https://cloudsupport.googleapis.com/v2/$case" ``` Python: ```python
        # import googleapiclient.discovery api_version = "v2" supportApiService =
        # googleapiclient.discovery.build( serviceName="cloudsupport", version=
        # api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$
        # discovery/rest?version=`api_version`", ) request = supportApiService.cases().
        # get( name="projects/some-project/cases/43595344", ) print(request.execute()) ``
        # `
        # @param [String] name
        #   Required. The full name of a case to be retrieved.
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
        
        # Retrieve all cases under a parent, but not its children. For example, listing
        # cases under an organization only returns the cases that are directly parented
        # by that organization. To retrieve cases under an organization and its projects,
        # use `cases.search`. EXAMPLES: cURL: ```shell parent="projects/some-project"
        # curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ "
        # https://cloudsupport.googleapis.com/v2/$parent/cases" ``` Python: ```python
        # import googleapiclient.discovery api_version = "v2" supportApiService =
        # googleapiclient.discovery.build( serviceName="cloudsupport", version=
        # api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$
        # discovery/rest?version=`api_version`", ) request = supportApiService.cases().
        # list(parent="projects/some-project") print(request.execute()) ```
        # @param [String] parent
        #   Required. The name of a parent to list cases under.
        # @param [String] filter
        #   An expression used to filter cases. If it's an empty string, then no filtering
        #   happens. Otherwise, the endpoint returns the cases that match the filter.
        #   Expressions use the following fields separated by `AND` and specified with `=`:
        #   - `state`: Can be `OPEN` or `CLOSED`. - `priority`: Can be `P0`, `P1`, `P2`, `
        #   P3`, or `P4`. You can specify multiple values for priority using the `OR`
        #   operator. For example, `priority=P1 OR priority=P2`. - `creator.email`: The
        #   email address of the case creator. EXAMPLES: - `state=CLOSED` - `state=OPEN
        #   AND creator.email="tester@example.com"` - `state=OPEN AND (priority=P0 OR
        #   priority=P1)`
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
        
        # Update a case. Only some fields can be updated. EXAMPLES: cURL: ```shell case="
        # projects/some-project/cases/43595344" curl \ --request PATCH \ --header "
        # Authorization: Bearer $(gcloud auth print-access-token)" \ --header "Content-
        # Type: application/json" \ --data '` "priority": "P1" `' \ "https://
        # cloudsupport.googleapis.com/v2/$case?updateMask=priority" ``` Python: ```
        # python import googleapiclient.discovery api_version = "v2" supportApiService =
        # googleapiclient.discovery.build( serviceName="cloudsupport", version=
        # api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$
        # discovery/rest?version=`api_version`", ) request = supportApiService.cases().
        # patch( name="projects/some-project/cases/43112854", body=` "displayName": "
        # This is Now a New Title", "priority": "P2", `, ) print(request.execute()) ```
        # @param [String] name
        #   The resource name for the case.
        # @param [Google::Apis::CloudsupportV2beta::Case] case_object
        # @param [String] update_mask
        #   A list of attributes of the case that should be updated. Supported values are `
        #   priority`, `display_name`, and `subscriber_email_addresses`. If no fields are
        #   specified, all supported fields are updated. Be careful - if you do not
        #   provide a field mask, then you might accidentally clear some fields. For
        #   example, if you leave the field mask empty and do not provide a value for `
        #   subscriber_email_addresses`, then `subscriber_email_addresses` is updated to
        #   empty.
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
        
        # Search for cases using a query. EXAMPLES: cURL: ```shell parent="projects/some-
        # project" curl \ --header "Authorization: Bearer $(gcloud auth print-access-
        # token)" \ "https://cloudsupport.googleapis.com/v2/$parent/cases:search" ```
        # Python: ```python import googleapiclient.discovery api_version = "v2"
        # supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport"
        # , version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.
        # com/$discovery/rest?version=`api_version`", ) request = supportApiService.
        # cases().search( parent="projects/some-project", query="state=OPEN" ) print(
        # request.execute()) ```
        # @param [Fixnum] page_size
        #   The maximum number of cases fetched with each request. The default page size
        #   is 10.
        # @param [String] page_token
        #   A token identifying the page of results to return. If unspecified, the first
        #   page is retrieved.
        # @param [String] parent
        #   The name of the parent resource to search for cases under.
        # @param [String] query
        #   An expression used to filter cases. Expressions use the following fields
        #   separated by `AND` and specified with `=`: - `organization`: An organization
        #   name in the form `organizations/`. - `project`: A project name in the form `
        #   projects/`. - `state`: Can be `OPEN` or `CLOSED`. - `priority`: Can be `P0`, `
        #   P1`, `P2`, `P3`, or `P4`. You can specify multiple values for priority using
        #   the `OR` operator. For example, `priority=P1 OR priority=P2`. - `creator.email`
        #   : The email address of the case creator. You must specify either `organization`
        #   or `project`. To search across `displayName`, `description`, and comments,
        #   use a global restriction with no keyword or operator. For example, `"my search"
        #   `. To search only cases updated after a certain date, use `update_time`
        #   restricted with that particular date, time, and timezone in ISO datetime
        #   format. For example, `update_time>"2020-01-01T00:00:00-05:00"`. `update_time`
        #   only supports the greater than operator (`>`). Examples: - `organization="
        #   organizations/123456789"` - `project="projects/my-project-id"` - `project="
        #   projects/123456789"` - `organization="organizations/123456789" AND state=
        #   CLOSED` - `project="projects/my-project-id" AND creator.email="tester@example.
        #   com"` - `project="projects/my-project-id" AND (priority=P0 OR priority=P1)`
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
        def search_cases(page_size: nil, page_token: nil, parent: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta/cases:search', options)
          command.response_representation = Google::Apis::CloudsupportV2beta::SearchCasesResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2beta::SearchCasesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all the attachments associated with a support case. EXAMPLES: cURL: ```
        # shell case="projects/some-project/cases/23598314" curl \ --header "
        # Authorization: Bearer $(gcloud auth print-access-token)" \ "https://
        # cloudsupport.googleapis.com/v2/$case/attachments" ``` Python: ```python import
        # googleapiclient.discovery api_version = "v2" supportApiService =
        # googleapiclient.discovery.build( serviceName="cloudsupport", version=
        # api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$
        # discovery/rest?version=`api_version`", ) request = ( supportApiService.cases()
        # .attachments() .list(parent="projects/some-project/cases/43595344") ) print(
        # request.execute()) ```
        # @param [String] parent
        #   Required. The name of the case for which attachments should be listed.
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
        
        # Add a new comment to a case. The comment must have the following fields set: `
        # body`. EXAMPLES: cURL: ```shell case="projects/some-project/cases/43591344"
        # curl \ --request POST \ --header "Authorization: Bearer $(gcloud auth print-
        # access-token)" \ --header 'Content-Type: application/json' \ --data '` "body":
        # "This is a test comment." `' \ "https://cloudsupport.googleapis.com/v2/$case/
        # comments" ``` Python: ```python import googleapiclient.discovery api_version =
        # "v2" supportApiService = googleapiclient.discovery.build( serviceName="
        # cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.
        # googleapis.com/$discovery/rest?version=`api_version`", ) request = (
        # supportApiService.cases() .comments() .create( parent="projects/some-project/
        # cases/43595344", body=`"body": "This is a test comment."`, ) ) print(request.
        # execute()) ```
        # @param [String] parent
        #   Required. The name of the case to which the comment should be added.
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
        
        # List all the comments associated with a case. EXAMPLES: cURL: ```shell case="
        # projects/some-project/cases/43595344" curl \ --header "Authorization: Bearer $(
        # gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$
        # case/comments" ``` Python: ```python import googleapiclient.discovery
        # api_version = "v2" supportApiService = googleapiclient.discovery.build(
        # serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://
        # cloudsupport.googleapis.com/$discovery/rest?version=`api_version`", ) request =
        # ( supportApiService.cases() .comments() .list(parent="projects/some-project/
        # cases/43595344") ) print(request.execute()) ```
        # @param [String] parent
        #   Required. The name of the case for which to list comments.
        # @param [Fixnum] page_size
        #   The maximum number of comments to fetch. Defaults to 10.
        # @param [String] page_token
        #   A token identifying the page of results to return. If unspecified, the first
        #   page is returned.
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
        
        # Download a file attached to a case. Note: HTTP requests must append "?alt=
        # media" to the URL. EXAMPLES: cURL: ```shell name="projects/some-project/cases/
        # 43594844/attachments/0674M00000WijAnZAJ" curl \ --header "Authorization:
        # Bearer $(gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.
        # com/v2/$name:download?alt=media" ``` Python: ```python import googleapiclient.
        # discovery api_version = "v2" supportApiService = googleapiclient.discovery.
        # build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"
        # https://cloudsupport.googleapis.com/$discovery/rest?version=`api_version`", )
        # request = supportApiService.media().download( name="projects/some-project/
        # cases/43595344/attachments/0684M00000Pw6pHQAR" ) request.uri = request.uri.
        # split("?")[0] + "?alt=media" print(request.execute()) ```
        # @param [String] name
        #   The name of the file attachment to download.
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
        
        # Create a file attachment on a case or Cloud resource. The attachment must have
        # the following fields set: `filename`. EXAMPLES: cURL: ```shell echo "This text
        # is in a file I'm uploading using CSAPI." \ > "./example_file.txt" case="
        # projects/some-project/cases/43594844" curl \ --header "Authorization: Bearer $(
        # gcloud auth print-access-token)" \ --data-binary @"./example_file.txt" \ "
        # https://cloudsupport.googleapis.com/upload/v2beta/$case/attachments?attachment.
        # filename=uploaded_via_curl.txt" ``` Python: ```python import googleapiclient.
        # discovery api_version = "v2" supportApiService = googleapiclient.discovery.
        # build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"
        # https://cloudsupport.googleapis.com/$discovery/rest?version=`api_version`", )
        # file_path = "./example_file.txt" with open(file_path, "w") as file: file.write(
        # "This text is inside a file I'm going to upload using the Cloud Support API.",
        # ) request = supportApiService.media().upload( parent="projects/some-project/
        # cases/43595344", media_body=file_path ) request.uri = request.uri.split("?")[0]
        # + "?attachment.filename=uploaded_via_python.txt" print(request.execute()) ```
        # @param [String] parent
        #   Required. The name of the case or Cloud resource to which the attachment
        #   should be attached.
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
