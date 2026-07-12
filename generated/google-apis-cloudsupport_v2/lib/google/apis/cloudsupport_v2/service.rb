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
    module CloudsupportV2
      # Google Cloud Support API
      #
      # Manages Google Cloud technical support cases for Customer Care support
      #  offerings.
      #
      # @example
      #    require 'google/apis/cloudsupport_v2'
      #
      #    Cloudsupport = Google::Apis::CloudsupportV2 # Alias the module
      #    service = Cloudsupport::CloudSupportService.new
      #
      # @see https://cloud.google.com/support/docs/apis
      class CloudSupportService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://cloudsupport.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-cloudsupport_v2',
                client_version: Google::Apis::CloudsupportV2::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::CloudsupportV2::SearchCaseClassificationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::SearchCaseClassificationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_case_classifications(page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/caseClassifications:search', options)
          command.response_representation = Google::Apis::CloudsupportV2::SearchCaseClassificationsResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2::SearchCaseClassificationsResponse
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
        # @param [Google::Apis::CloudsupportV2::CloseCaseRequest] close_case_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def close_case(name, close_case_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:close', options)
          command.request_representation = Google::Apis::CloudsupportV2::CloseCaseRequest::Representation
          command.request_object = close_case_request_object
          command.response_representation = Google::Apis::CloudsupportV2::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2::Case
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
        # @param [Google::Apis::CloudsupportV2::Case] case_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_case(parent, case_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/cases', options)
          command.request_representation = Google::Apis::CloudsupportV2::Case::Representation
          command.request_object = case_object
          command.response_representation = Google::Apis::CloudsupportV2::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2::Case
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
        # @param [Google::Apis::CloudsupportV2::EscalateCaseRequest] escalate_case_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def escalate_case(name, escalate_case_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:escalate', options)
          command.request_representation = Google::Apis::CloudsupportV2::EscalateCaseRequest::Representation
          command.request_object = escalate_case_request_object
          command.response_representation = Google::Apis::CloudsupportV2::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2::Case
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
        # @yieldparam result [Google::Apis::CloudsupportV2::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_case(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudsupportV2::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2::Case
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
        # @yieldparam result [Google::Apis::CloudsupportV2::ListCasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::ListCasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_cases(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/cases', options)
          command.response_representation = Google::Apis::CloudsupportV2::ListCasesResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2::ListCasesResponse
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
        #   Identifier. The resource name for the case.
        # @param [Google::Apis::CloudsupportV2::Case] case_object
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
        # @yieldparam result [Google::Apis::CloudsupportV2::Case] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Case]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_case(name, case_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::CloudsupportV2::Case::Representation
          command.request_object = case_object
          command.response_representation = Google::Apis::CloudsupportV2::Case::Representation
          command.response_class = Google::Apis::CloudsupportV2::Case
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
        # @param [String] parent
        #   The name of the parent resource to search for cases under.
        # @param [Fixnum] page_size
        #   The maximum number of cases fetched with each request. The default page size
        #   is 10.
        # @param [String] page_token
        #   A token identifying the page of results to return. If unspecified, the first
        #   page is retrieved.
        # @param [String] query
        #   An expression used to filter cases. Expressions use the following fields
        #   separated by `AND` and specified with `=`: - `state`: Can be `OPEN` or `CLOSED`
        #   . - `priority`: Can be `P0`, `P1`, `P2`, `P3`, or `P4`. You can specify
        #   multiple values for priority using the `OR` operator. For example, `priority=
        #   P1 OR priority=P2`. - `creator.email`: The email address of the case creator.
        #   To search across `displayName`, `description`, and comments, use a global
        #   restriction with no keyword or operator. For example, `"my search"`. To search
        #   only cases updated after a certain date, use `update_time` restricted with
        #   that particular date, time, and timezone in ISO datetime format. For example, `
        #   update_time>"2020-01-01T00:00:00-05:00"`. `update_time` only supports the
        #   greater than operator (`>`). If you are using the `v2` version of the API, you
        #   must specify the case parent in the `parent` field. If you provide an empty `
        #   query`, all cases under the parent resource will be returned. If you are using
        #   the `v2beta` version of the API, you must specify the case parent in the `
        #   query` field using one of the two fields below, which are only available for `
        #   v2beta`. The `parent` field will be ignored. - `organization`: An organization
        #   name in the form `organizations/`. - `project`: A project name in the form `
        #   projects/`. Examples: For `v2`: - `state=CLOSED` - `state=OPEN AND creator.
        #   email="tester@example.com"` - `state=OPEN AND (priority=P0 OR priority=P1)` - `
        #   update_time>"2020-01-01T00:00:00-05:00"` For `v2beta`: - `organization="
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
        # @yieldparam result [Google::Apis::CloudsupportV2::SearchCasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::SearchCasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_cases(parent, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/cases:search', options)
          command.response_representation = Google::Apis::CloudsupportV2::SearchCasesResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2::SearchCasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve an attachment associated with a support case. EXAMPLES: cURL: ```
        # shell attachment="projects/some-project/cases/23598314/attachments/
        # 0684M00000P3h1fQAB" curl \ --header "Authorization: Bearer $(gcloud auth print-
        # access-token)" \ "https://cloudsupport.googleapis.com/v2/$attachment" ```
        # Python: ```python import googleapiclient.discovery api_version = "v2"
        # supportApiService = googleapiclient.discovery.build( serviceName="cloudsupport"
        # , version=api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.
        # com/$discovery/rest?version=`api_version`", ) request = ( supportApiService.
        # cases() .attachments() .get(name="projects/some-project/cases/43595344/
        # attachments/0684M00000P3h1fQAB") ) print(request.execute()) ```
        # @param [String] name
        #   Required. The name of the attachment to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::Attachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Attachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_case_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudsupportV2::Attachment::Representation
          command.response_class = Google::Apis::CloudsupportV2::Attachment
          command.params['name'] = name unless name.nil?
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
        #   the default is 10. The maximum page size that will be returned is 100. The
        #   size of each page can be smaller than the requested page size and can include
        #   zero. For example, you could request 100 attachments on one page, receive 0,
        #   and then on the next page, receive 90.
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
        # @yieldparam result [Google::Apis::CloudsupportV2::ListAttachmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::ListAttachmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_case_attachments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/attachments', options)
          command.response_representation = Google::Apis::CloudsupportV2::ListAttachmentsResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2::ListAttachmentsResponse
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
        # @param [Google::Apis::CloudsupportV2::Comment] comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_case_comment(parent, comment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/comments', options)
          command.request_representation = Google::Apis::CloudsupportV2::Comment::Representation
          command.request_object = comment_object
          command.response_representation = Google::Apis::CloudsupportV2::Comment::Representation
          command.response_class = Google::Apis::CloudsupportV2::Comment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a comment. EXAMPLES: cURL: ```shell comment="projects/some-project/
        # cases/43595344/comments/234567890" curl \ --header "Authorization: Bearer $(
        # gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$
        # comment" ``` Python: ```python import googleapiclient.discovery api_version = "
        # v2" supportApiService = googleapiclient.discovery.build( serviceName="
        # cloudsupport", version=api_version, discoveryServiceUrl=f"https://cloudsupport.
        # googleapis.com/$discovery/rest?version=`api_version`", ) request =
        # supportApiService.cases().comments().get( name="projects/some-project/cases/
        # 43595344/comments/234567890", ) print(request.execute()) ```
        # @param [String] name
        #   Required. The name of the comment to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_case_comment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudsupportV2::Comment::Representation
          command.response_class = Google::Apis::CloudsupportV2::Comment
          command.params['name'] = name unless name.nil?
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
        # @yieldparam result [Google::Apis::CloudsupportV2::ListCommentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::ListCommentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_case_comments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/comments', options)
          command.response_representation = Google::Apis::CloudsupportV2::ListCommentsResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2::ListCommentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Download a file attached to a case. When this endpoint is called, no "response
        # body" will be returned. Instead, the attachment's blob will be returned. Note:
        # HTTP requests must append "?alt=media" to the URL. EXAMPLES: cURL: ```shell
        # name="projects/some-project/cases/43594844/attachments/0674M00000WijAnZAJ"
        # curl \ --header "Authorization: Bearer $(gcloud auth print-access-token)" \ "
        # https://cloudsupport.googleapis.com/v2/$name:download?alt=media" ``` Python: ``
        # `python import googleapiclient.discovery api_version = "v2" supportApiService =
        # googleapiclient.discovery.build( serviceName="cloudsupport", version=
        # api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$
        # discovery/rest?version=`api_version`", ) request = supportApiService.media().
        # download( name="projects/some-project/cases/43595344/attachments/
        # 0684M00000Pw6pHQAR" ) request.uri = request.uri.split("?")[0] + "?alt=media"
        # print(request.execute()) ```
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
        # @yieldparam result [Google::Apis::CloudsupportV2::Media] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Media]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(name, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'v2/{+name}:download', options)
          else
            command = make_download_command(:get, 'v2/{+name}:download', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::CloudsupportV2::Media::Representation
          command.response_class = Google::Apis::CloudsupportV2::Media
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
        # https://cloudsupport.googleapis.com/upload/v2/$case/attachments?attachment.
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
        # @param [Google::Apis::CloudsupportV2::CreateAttachmentRequest] create_attachment_request_object
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
        # @yieldparam result [Google::Apis::CloudsupportV2::Attachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Attachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium(parent, create_attachment_request_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'v2/{+parent}/attachments', options)
          else
            command = make_upload_command(:post, 'v2/{+parent}/attachments', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::CloudsupportV2::CreateAttachmentRequest::Representation
          command.request_object = create_attachment_request_object
          command.response_representation = Google::Apis::CloudsupportV2::Attachment::Representation
          command.response_class = Google::Apis::CloudsupportV2::Attachment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a support event subscription for an organization. EXAMPLES: cURL: ```
        # shell parent="organizations/123456789" curl \ --request POST \ --header "
        # Authorization: Bearer $(gcloud auth print-access-token)" \ --header 'Content-
        # Type: application/json' \ --data '` "pub_sub_topic": "projects/my-project/
        # topics/my-topic" `' \ "https://cloudsupport.googleapis.com/v2/$parent/
        # supportEventSubscriptions" ``` Python: ```python import googleapiclient.
        # discovery api_version = "v2" supportApiService = googleapiclient.discovery.
        # build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"
        # https://cloudsupport.googleapis.com/$discovery/rest?version=`api_version`", )
        # request = supportApiService.supportEventSubscriptions().create( parent="
        # organizations/123456789", body=` "pub_sub_topic": "projects/my-project/topics/
        # my-topic" `, ) print(request.execute()) ```
        # @param [String] parent
        #   Required. The parent resource name where the support event subscription will
        #   be created. Format: organizations/`organization_id`
        # @param [Google::Apis::CloudsupportV2::SupportEventSubscription] support_event_subscription_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::SupportEventSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::SupportEventSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_support_event_subscription(parent, support_event_subscription_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/supportEventSubscriptions', options)
          command.request_representation = Google::Apis::CloudsupportV2::SupportEventSubscription::Representation
          command.request_object = support_event_subscription_object
          command.response_representation = Google::Apis::CloudsupportV2::SupportEventSubscription::Representation
          command.response_class = Google::Apis::CloudsupportV2::SupportEventSubscription
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Soft deletes a support event subscription. EXAMPLES: cURL: ```shell
        # support_event_subscription="organizations/123456789/supportEventSubscriptions/
        # abcdef123456" curl \ --request DELETE \ --header "Authorization: Bearer $(
        # gcloud auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$
        # support_event_subscription" ``` Python: ```python import googleapiclient.
        # discovery api_version = "v2" supportApiService = googleapiclient.discovery.
        # build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"
        # https://cloudsupport.googleapis.com/$discovery/rest?version=`api_version`", )
        # request = supportApiService).supportEventSubscriptions().delete( name="
        # organizations/123456789/supportEventSubscriptions/abcdef123456" ) print(
        # request.execute()) ```
        # @param [String] name
        #   Required. The name of the support event subscription to delete. Format:
        #   organizations/`organization_id`/supportEventSubscriptions/`subscription_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::SupportEventSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::SupportEventSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_support_event_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudsupportV2::SupportEventSubscription::Representation
          command.response_class = Google::Apis::CloudsupportV2::SupportEventSubscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Expunges a support event subscription.
        # @param [String] name
        #   Required. The name of the support event subscription to expunge. Format:
        #   organizations/`organization_id`/supportEventSubscriptions/`subscription_id`
        # @param [Google::Apis::CloudsupportV2::ExpungeSupportEventSubscriptionRequest] expunge_support_event_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def expunge_support_event_subscription(name, expunge_support_event_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:expunge', options)
          command.request_representation = Google::Apis::CloudsupportV2::ExpungeSupportEventSubscriptionRequest::Representation
          command.request_object = expunge_support_event_subscription_request_object
          command.response_representation = Google::Apis::CloudsupportV2::Empty::Representation
          command.response_class = Google::Apis::CloudsupportV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a support event subscription. EXAMPLES: cURL: ```shell
        # support_event_subscription="organizations/123456789/supportEventSubscriptions/
        # abcdef123456" curl \ --header "Authorization: Bearer $(gcloud auth print-
        # access-token)" \ "https://cloudsupport.googleapis.com/v2/$
        # support_event_subscription" ``` Python: ```python import googleapiclient.
        # discovery api_version = "v2" supportApiService = googleapiclient.discovery.
        # build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"
        # https://cloudsupport.googleapis.com/$discovery/rest?version=`api_version`", )
        # request = supportApiService.supportEventSubscriptions().get( name="
        # organizations/123456789/supportEventSubscriptions/abcdef123456" ) print(
        # request.execute()) ```
        # @param [String] name
        #   Required. The name of the support event subscription to retrieve. Format:
        #   organizations/`organization_id`/supportEventSubscriptions/`subscription_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::SupportEventSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::SupportEventSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_support_event_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudsupportV2::SupportEventSubscription::Representation
          command.response_class = Google::Apis::CloudsupportV2::SupportEventSubscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists support event subscriptions. EXAMPLES: cURL: ```shell parent="
        # organizations/123456789" curl \ --header "Authorization: Bearer $(gcloud auth
        # print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$parent/
        # supportEventSubscriptions" ``` Python: ```python import googleapiclient.
        # discovery api_version = "v2" supportApiService = googleapiclient.discovery.
        # build( serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"
        # https://cloudsupport.googleapis.com/$discovery/rest?version=`api_version`", )
        # request = supportApiService.supportEventSubscriptions().list( parent="
        # organizations/123456789" ) print(request.execute()) ```
        # @param [String] parent
        #   Required. The fully qualified name of the Cloud resource to list support event
        #   subscriptions under. Format: organizations/`organization_id`
        # @param [String] filter
        #   Optional. Filter expression based on AIP-160. Supported fields: -
        #   pub_sub_topic - state Examples: - `pub_sub_topic="projects/example-project/
        #   topics/example-topic"` - `state=WORKING` - `pub_sub_topic="projects/example-
        #   project/topics/example-topic" AND state=WORKING`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of support event subscriptions to return.
        # @param [String] page_token
        #   Optional. A token identifying the page of results to return. If unspecified,
        #   the first page is retrieved. When paginating, all other parameters provided to
        #   `ListSupportEventSubscriptions` must match the call that provided the page
        #   token.
        # @param [Boolean] show_deleted
        #   Optional. Whether to show deleted subscriptions. By default, deleted
        #   subscriptions are not returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::ListSupportEventSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::ListSupportEventSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_support_event_subscriptions(parent, filter: nil, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/supportEventSubscriptions', options)
          command.response_representation = Google::Apis::CloudsupportV2::ListSupportEventSubscriptionsResponse::Representation
          command.response_class = Google::Apis::CloudsupportV2::ListSupportEventSubscriptionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a support event subscription. EXAMPLES: cURL: ```shell
        # support_event_subscription="organizations/123456789/supportEventSubscriptions/
        # abcdef123456" curl \ --request PATCH \ --header "Authorization: Bearer $(
        # gcloud auth print-access-token)" \ --header "Content-Type: application/json" \
        # --data '` "pub_sub_topic": "projects/my-project/topics/new-topic" `' \ "https:/
        # /cloudsupport.googleapis.com/v2/$support_event_subscription?updateMask=
        # pub_sub_topic" ``` Python: ```python import googleapiclient.discovery
        # api_version = "v2" supportApiService = googleapiclient.discovery.build(
        # serviceName="cloudsupport", version=api_version, discoveryServiceUrl=f"https://
        # cloudsupport.googleapis.com/$discovery/rest?version=`api_version`", ) request =
        # supportApiService.supportEventSubscriptions().patch( name="organizations/
        # 123456789/supportEventSubscriptions/abcdef123456", body=` "pub_sub_topic": "
        # projects/my-project/topics/new-topic" `, ) print(request.execute()) ```
        # @param [String] name
        #   Identifier. The resource name of the support event subscription.
        # @param [Google::Apis::CloudsupportV2::SupportEventSubscription] support_event_subscription_object
        # @param [String] update_mask
        #   Optional. The list of fields to update. The only supported value is
        #   pub_sub_topic.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::SupportEventSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::SupportEventSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_support_event_subscription(name, support_event_subscription_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::CloudsupportV2::SupportEventSubscription::Representation
          command.request_object = support_event_subscription_object
          command.response_representation = Google::Apis::CloudsupportV2::SupportEventSubscription::Representation
          command.response_class = Google::Apis::CloudsupportV2::SupportEventSubscription
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a support event subscription. EXAMPLES: cURL: ```shell
        # support_event_subscription="organizations/123456789/supportEventSubscriptions/
        # abcdef123456" curl \ --request POST \ --header "Authorization: Bearer $(gcloud
        # auth print-access-token)" \ "https://cloudsupport.googleapis.com/v2/$
        # support_event_subscription:undelete" ``` Python: ```python import
        # googleapiclient.discovery api_version = "v2" supportApiService =
        # googleapiclient.discovery.build( serviceName="cloudsupport", version=
        # api_version, discoveryServiceUrl=f"https://cloudsupport.googleapis.com/$
        # discovery/rest?version=`api_version`", ) request = supportApiService.
        # supportEventSubscriptions().undelete( name="organizations/123456789/
        # supportEventSubscriptions/abcdef123456" ) print(request.execute()) ```
        # Undeletes a support event subscription.
        # @param [String] name
        #   Required. The name of the support event subscription to undelete. Format:
        #   organizations/`organization_id`/supportEventSubscriptions/`subscription_id`
        # @param [Google::Apis::CloudsupportV2::UndeleteSupportEventSubscriptionRequest] undelete_support_event_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudsupportV2::SupportEventSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudsupportV2::SupportEventSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_support_event_subscription(name, undelete_support_event_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undelete', options)
          command.request_representation = Google::Apis::CloudsupportV2::UndeleteSupportEventSubscriptionRequest::Representation
          command.request_object = undelete_support_event_subscription_request_object
          command.response_representation = Google::Apis::CloudsupportV2::SupportEventSubscription::Representation
          command.response_class = Google::Apis::CloudsupportV2::SupportEventSubscription
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
