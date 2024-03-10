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
    module CloudfunctionsV2
      # Cloud Functions API
      #
      # Manages lightweight user-provided functions executed in response to events.
      #
      # @example
      #    require 'google/apis/cloudfunctions_v2'
      #
      #    Cloudfunctions = Google::Apis::CloudfunctionsV2 # Alias the module
      #    service = Cloudfunctions::CloudFunctionsService.new
      #
      # @see https://cloud.google.com/functions
      class CloudFunctionsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://cloudfunctions.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-cloudfunctions_v2',
                client_version: Google::Apis::CloudfunctionsV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/locations', options)
          command.response_representation = Google::Apis::CloudfunctionsV2::ListLocationsResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Aborts generation upgrade process for a function with the given name from the
        # specified project. Deletes all 2nd Gen copy related configuration and
        # resources which were created during the upgrade process.
        # @param [String] name
        #   Required. The name of the function for which upgrade should be aborted.
        # @param [Google::Apis::CloudfunctionsV2::AbortFunctionUpgradeRequest] abort_function_upgrade_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def abort_function_upgrade(name, abort_function_upgrade_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:abortFunctionUpgrade', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::AbortFunctionUpgradeRequest::Representation
          command.request_object = abort_function_upgrade_request_object
          command.response_representation = Google::Apis::CloudfunctionsV2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finalizes the upgrade after which function upgrade can not be rolled back.
        # This is the last step of the multi step process to upgrade 1st Gen functions
        # to 2nd Gen. Deletes all original 1st Gen related configuration and resources.
        # @param [String] name
        #   Required. The name of the function for which upgrade should be finalized.
        # @param [Google::Apis::CloudfunctionsV2::CommitFunctionUpgradeRequest] commit_function_upgrade_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def commit_function_upgrade(name, commit_function_upgrade_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:commitFunctionUpgrade', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::CommitFunctionUpgradeRequest::Representation
          command.request_object = commit_function_upgrade_request_object
          command.response_representation = Google::Apis::CloudfunctionsV2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new function. If a function with the given name already exists in
        # the specified project, the long running operation will return `ALREADY_EXISTS`
        # error.
        # @param [String] parent
        #   Required. The project and location in which the function should be created,
        #   specified in the format `projects/*/locations/*`
        # @param [Google::Apis::CloudfunctionsV2::Function] function_object
        # @param [String] function_id
        #   The ID to use for the function, which will become the final component of the
        #   function's resource name. This value should be 4-63 characters, and valid
        #   characters are /a-z-/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_function(parent, function_object = nil, function_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/functions', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::Function::Representation
          command.request_object = function_object
          command.response_representation = Google::Apis::CloudfunctionsV2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['functionId'] = function_id unless function_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a function with the given name from the specified project. If the
        # given function is used by some trigger, the trigger will be updated to remove
        # this function.
        # @param [String] name
        #   Required. The name of the function which should be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_function(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudfunctionsV2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a signed URL for downloading deployed function source code. The URL is
        # only valid for a limited period and should be used within 30 minutes of
        # generation. For more information about the signed URL usage see: https://cloud.
        # google.com/storage/docs/access-control/signed-urls
        # @param [String] name
        #   Required. The name of function for which source code Google Cloud Storage
        #   signed URL should be generated.
        # @param [Google::Apis::CloudfunctionsV2::GenerateDownloadUrlRequest] generate_download_url_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::GenerateDownloadUrlResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::GenerateDownloadUrlResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_function_download_url(name, generate_download_url_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:generateDownloadUrl', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::GenerateDownloadUrlRequest::Representation
          command.request_object = generate_download_url_request_object
          command.response_representation = Google::Apis::CloudfunctionsV2::GenerateDownloadUrlResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::GenerateDownloadUrlResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a signed URL for uploading a function source code. For more
        # information about the signed URL usage see: https://cloud.google.com/storage/
        # docs/access-control/signed-urls. Once the function source code upload is
        # complete, the used signed URL should be provided in CreateFunction or
        # UpdateFunction request as a reference to the function source code. When
        # uploading source code to the generated signed URL, please follow these
        # restrictions: * Source file type should be a zip file. * No credentials should
        # be attached - the signed URLs provide access to the target bucket using
        # internal service identity; if credentials were attached, the identity from the
        # credentials would be used, but that identity does not have permissions to
        # upload files to the URL. When making a HTTP PUT request, specify this header: *
        # `content-type: application/zip` Do not specify this header: * `Authorization:
        # Bearer YOUR_TOKEN`
        # @param [String] parent
        #   Required. The project and location in which the Google Cloud Storage signed
        #   URL should be generated, specified in the format `projects/*/locations/*`.
        # @param [Google::Apis::CloudfunctionsV2::GenerateUploadUrlRequest] generate_upload_url_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::GenerateUploadUrlResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::GenerateUploadUrlResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_function_upload_url(parent, generate_upload_url_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/functions:generateUploadUrl', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::GenerateUploadUrlRequest::Representation
          command.request_object = generate_upload_url_request_object
          command.response_representation = Google::Apis::CloudfunctionsV2::GenerateUploadUrlResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::GenerateUploadUrlResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a function with the given name from the requested project.
        # @param [String] name
        #   Required. The name of the function which details should be obtained.
        # @param [String] revision
        #   Optional. The optional version of the 1st gen function whose details should be
        #   obtained. The version of a 1st gen function is an integer that starts from 1
        #   and gets incremented on redeployments. GCF may keep historical configs for old
        #   versions of 1st gen function. This field can be specified to fetch the
        #   historical configs. This field is valid only for GCF 1st gen function.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Function] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Function]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_function(name, revision: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudfunctionsV2::Function::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Function
          command.params['name'] = name unless name.nil?
          command.query['revision'] = revision unless revision.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_function_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::CloudfunctionsV2::Policy::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of functions that belong to the requested project.
        # @param [String] parent
        #   Required. The project and location from which the function should be listed,
        #   specified in the format `projects/*/locations/*` If you want to list functions
        #   in all locations, use "-" in place of a location. When listing functions in
        #   all locations, if one or more location(s) are unreachable, the response will
        #   contain functions from all reachable locations along with the names of any
        #   unreachable locations.
        # @param [String] filter
        #   The filter for Functions that match the filter expression, following the
        #   syntax outlined in https://google.aip.dev/160.
        # @param [String] order_by
        #   The sorting order of the resources returned. Value should be a comma separated
        #   list of fields. The default sorting oder is ascending. See https://google.aip.
        #   dev/132#ordering.
        # @param [Fixnum] page_size
        #   Maximum number of functions to return per call. The largest allowed page_size
        #   is 1,000, if the page_size is omitted or specified as greater than 1,000 then
        #   it will be replaced as 1,000. The size of the list response can be less than
        #   specified when used with filters.
        # @param [String] page_token
        #   The value returned by the last `ListFunctionsResponse`; indicates that this is
        #   a continuation of a prior `ListFunctions` call, and that the system should
        #   return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::ListFunctionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::ListFunctionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_functions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/functions', options)
          command.response_representation = Google::Apis::CloudfunctionsV2::ListFunctionsResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::ListFunctionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates existing function.
        # @param [String] name
        #   A user-defined name of the function. Function names must be unique globally
        #   and match pattern `projects/*/locations/*/functions/*`
        # @param [Google::Apis::CloudfunctionsV2::Function] function_object
        # @param [String] update_mask
        #   The list of fields to be updated. If no field mask is provided, all provided
        #   fields in the request will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_function(name, function_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::Function::Representation
          command.request_object = function_object
          command.response_representation = Google::Apis::CloudfunctionsV2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes the traffic target of a function from the original 1st Gen function to
        # the 2nd Gen copy. This is the second step of the multi step process to upgrade
        # 1st Gen functions to 2nd Gen. After this operation, all new traffic will be
        # served by 2nd Gen copy.
        # @param [String] name
        #   Required. The name of the function for which traffic target should be changed
        #   to 2nd Gen from 1st Gen.
        # @param [Google::Apis::CloudfunctionsV2::RedirectFunctionUpgradeTrafficRequest] redirect_function_upgrade_traffic_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def redirect_function_upgrade_traffic(name, redirect_function_upgrade_traffic_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:redirectFunctionUpgradeTraffic', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::RedirectFunctionUpgradeTrafficRequest::Representation
          command.request_object = redirect_function_upgrade_traffic_request_object
          command.response_representation = Google::Apis::CloudfunctionsV2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts the traffic target of a function from the 2nd Gen copy to the original
        # 1st Gen function. After this operation, all new traffic would be served by the
        # 1st Gen.
        # @param [String] name
        #   Required. The name of the function for which traffic target should be changed
        #   back to 1st Gen from 2nd Gen.
        # @param [Google::Apis::CloudfunctionsV2::RollbackFunctionUpgradeTrafficRequest] rollback_function_upgrade_traffic_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_function_upgrade_traffic(name, rollback_function_upgrade_traffic_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:rollbackFunctionUpgradeTraffic', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::RollbackFunctionUpgradeTrafficRequest::Representation
          command.request_object = rollback_function_upgrade_traffic_request_object
          command.response_representation = Google::Apis::CloudfunctionsV2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `
        # PERMISSION_DENIED` errors.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::CloudfunctionsV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_function_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::CloudfunctionsV2::Policy::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a 2nd Gen copy of the function configuration based on the 1st Gen
        # function with the given name. This is the first step of the multi step process
        # to upgrade 1st Gen functions to 2nd Gen. Only 2nd Gen configuration is setup
        # as part of this request and traffic continues to be served by 1st Gen.
        # @param [String] name
        #   Required. The name of the function which should have configuration copied for
        #   upgrade.
        # @param [Google::Apis::CloudfunctionsV2::SetupFunctionUpgradeConfigRequest] setup_function_upgrade_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def setup_function_upgrade_config(name, setup_function_upgrade_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:setupFunctionUpgradeConfig', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::SetupFunctionUpgradeConfigRequest::Representation
          command.request_object = setup_function_upgrade_config_request_object
          command.response_representation = Google::Apis::CloudfunctionsV2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource. If the
        # resource does not exist, this will return an empty set of permissions, not a `
        # NOT_FOUND` error. Note: This operation is designed to be used for building
        # permission-aware UIs and command-line tools, not for authorization checking.
        # This operation may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::CloudfunctionsV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_function_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::CloudfunctionsV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::CloudfunctionsV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
        # @yieldparam result [Google::Apis::CloudfunctionsV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::CloudfunctionsV2::Operation::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::Operation
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
        # @yieldparam result [Google::Apis::CloudfunctionsV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::CloudfunctionsV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of runtimes that are supported for the requested project.
        # @param [String] parent
        #   Required. The project and location from which the runtimes should be listed,
        #   specified in the format `projects/*/locations/*`
        # @param [String] filter
        #   The filter for Runtimes that match the filter expression, following the syntax
        #   outlined in https://google.aip.dev/160.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudfunctionsV2::ListRuntimesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudfunctionsV2::ListRuntimesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_runtimes(parent, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/runtimes', options)
          command.response_representation = Google::Apis::CloudfunctionsV2::ListRuntimesResponse::Representation
          command.response_class = Google::Apis::CloudfunctionsV2::ListRuntimesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
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
