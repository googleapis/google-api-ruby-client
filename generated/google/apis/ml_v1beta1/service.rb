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
    module MlV1beta1
      # Google Cloud Machine Learning Engine
      #
      # An API to enable creating and using machine learning models.
      #
      # @example
      #    require 'google/apis/ml_v1beta1'
      #
      #    Ml = Google::Apis::MlV1beta1 # Alias the module
      #    service = Ml::CloudMachineLearningEngineService.new
      #
      # @see https://cloud.google.com/ml/
      class CloudMachineLearningEngineService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://ml.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Get the service account information associated with your project. You need
        # this information in order to grant the service account persmissions for
        # the Google Cloud Storage location where you put your model training code
        # for training the model with Google Cloud Machine Learning.
        # @param [String] name
        #   Required. The project name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1GetConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1GetConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+name}:getConfig', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1GetConfigResponse::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1GetConfigResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs prediction on the data in the request.
        # **** REMOVE FROM GENERATED DOCUMENTATION
        # @param [String] name
        #   Required. The resource name of a model or a version.
        #   Authorization: requires the `predict` permission on the specified resource.
        # @param [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1PredictRequest] google_cloud_ml_v1beta1__predict_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def predict_project(name, google_cloud_ml_v1beta1__predict_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+name}:predict', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1PredictRequest::Representation
          command.request_object = google_cloud_ml_v1beta1__predict_request_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleApiHttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a running job.
        # @param [String] name
        #   Required. The name of the job to cancel.
        # @param [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1CancelJobRequest] google_cloud_ml_v1beta1__cancel_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_job(name, google_cloud_ml_v1beta1__cancel_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+name}:cancel', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1CancelJobRequest::Representation
          command.request_object = google_cloud_ml_v1beta1__cancel_job_request_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a training or a batch prediction job.
        # @param [String] parent
        #   Required. The project name.
        # @param [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job] google_cloud_ml_v1beta1__job_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_job(parent, google_cloud_ml_v1beta1__job_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+parent}/jobs', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job::Representation
          command.request_object = google_cloud_ml_v1beta1__job_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Describes a job.
        # @param [String] name
        #   Required. The name of the job to get the description of.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource.
        # Returns an empty policy if the resource exists and does not have a policy
        # set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_job_iam_policy(resource, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the jobs in the project.
        # @param [String] parent
        #   Required. The name of the project for which to list jobs.
        # @param [String] filter
        #   Optional. Specifies the subset of jobs to retrieve.
        # @param [Fixnum] page_size
        #   Optional. The number of jobs to retrieve per "page" of results. If there
        #   are more remaining results than this number, the response message will
        #   contain a valid value in the `next_page_token` field.
        #   The default value is 20, and the maximum page size is 100.
        # @param [String] page_token
        #   Optional. A page token to request the next page of results.
        #   You get the token from the `next_page_token` field of the response from
        #   the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_jobs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+parent}/jobs', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListJobsResponse::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::MlV1beta1::GoogleIamV1SetIamPolicyRequest] google_iam_v1__set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_job_iam_policy(resource, google_iam_v1__set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1__set_iam_policy_request_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource.
        # If the resource does not exist, this will return an empty set of
        # permissions, not a NOT_FOUND error.
        # Note: This operation is designed to be used for building permission-aware
        # UIs and command-line tools, not for authorization checking. This operation
        # may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1__test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_job_iam_permissions(resource, google_iam_v1__test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1__test_iam_permissions_request_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a model which will later contain one or more versions.
        # You must add at least one version before you can request predictions from
        # the model. Add versions by calling
        # [projects.models.versions.create](/ml-engine/reference/rest/v1beta1/projects.
        # models.versions/create).
        # @param [String] parent
        #   Required. The project name.
        # @param [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model] google_cloud_ml_v1beta1__model_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_model(parent, google_cloud_ml_v1beta1__model_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+parent}/models', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model::Representation
          command.request_object = google_cloud_ml_v1beta1__model_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a model.
        # You can only delete a model if there are no versions in it. You can delete
        # versions by calling
        # [projects.models.versions.delete](/ml-engine/reference/rest/v1beta1/projects.
        # models.versions/delete).
        # @param [String] name
        #   Required. The name of the model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a model, including its name, the description (if
        # set), and the default version (if at least one version of the model has
        # been deployed).
        # @param [String] name
        #   Required. The name of the model.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_model(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Model
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource.
        # Returns an empty policy if the resource exists and does not have a policy
        # set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_model_iam_policy(resource, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the models in a project.
        # Each project can contain multiple models, and each model can have multiple
        # versions.
        # @param [String] parent
        #   Required. The name of the project whose models are to be listed.
        # @param [Fixnum] page_size
        #   Optional. The number of models to retrieve per "page" of results. If there
        #   are more remaining results than this number, the response message will
        #   contain a valid value in the `next_page_token` field.
        #   The default value is 20, and the maximum page size is 100.
        # @param [String] page_token
        #   Optional. A page token to request the next page of results.
        #   You get the token from the `next_page_token` field of the response from
        #   the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_models(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+parent}/models', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListModelsResponse::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListModelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::MlV1beta1::GoogleIamV1SetIamPolicyRequest] google_iam_v1__set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_model_iam_policy(resource, google_iam_v1__set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1__set_iam_policy_request_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource.
        # If the resource does not exist, this will return an empty set of
        # permissions, not a NOT_FOUND error.
        # Note: This operation is designed to be used for building permission-aware
        # UIs and command-line tools, not for authorization checking. This operation
        # may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1__test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_model_iam_permissions(resource, google_iam_v1__test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1__test_iam_permissions_request_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new version of a model from a trained TensorFlow model.
        # If the version created in the cloud by this call is the first deployed
        # version of the specified model, it will be made the default version of the
        # model. When you add a version to a model that already has one or more
        # versions, the default version does not automatically change. If you want a
        # new version to be the default, you must call
        # [projects.models.versions.setDefault](/ml-engine/reference/rest/v1beta1/
        # projects.models.versions/setDefault).
        # @param [String] parent
        #   Required. The name of the model.
        # @param [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version] google_cloud_ml_v1beta1__version_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_model_version(parent, google_cloud_ml_v1beta1__version_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version::Representation
          command.request_object = google_cloud_ml_v1beta1__version_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a model version.
        # Each model can have multiple versions deployed and in use at any given
        # time. Use this method to remove a single version.
        # Note: You cannot delete the version that is set as the default version
        # of the model unless it is the only remaining version.
        # @param [String] name
        #   Required. The name of the version. You can get the names of all the
        #   versions of a model by calling
        #   [projects.models.versions.list](/ml-engine/reference/rest/v1beta1/projects.
        #   models.versions/list).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_model_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a model version.
        # Models can have multiple versions. You can call
        # [projects.models.versions.list](/ml-engine/reference/rest/v1beta1/projects.
        # models.versions/list)
        # to get the same information that this method returns for all of the
        # versions of a model.
        # @param [String] name
        #   Required. The name of the version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_model_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets basic information about all the versions of a model.
        # If you expect that a model has a lot of versions, or if you need to handle
        # only a limited number of results at a time, you can request that the list
        # be retrieved in batches (called pages):
        # @param [String] parent
        #   Required. The name of the model for which to list the version.
        # @param [Fixnum] page_size
        #   Optional. The number of versions to retrieve per "page" of results. If
        #   there are more remaining results than this number, the response message
        #   will contain a valid value in the `next_page_token` field.
        #   The default value is 20, and the maximum page size is 100.
        # @param [String] page_token
        #   Optional. A page token to request the next page of results.
        #   You get the token from the `next_page_token` field of the response from
        #   the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_model_versions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListVersionsResponse::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Designates a version to be the default for the model.
        # The default version is used for prediction requests made against the model
        # that don't specify a version.
        # The first version to be created for a model is automatically set as the
        # default. You must make any subsequent changes to the default version
        # setting manually using this method.
        # @param [String] name
        #   Required. The name of the version to make the default for the model. You
        #   can get the names of all the versions of a model by calling
        #   [projects.models.versions.list](/ml-engine/reference/rest/v1beta1/projects.
        #   models.versions/list).
        # @param [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1SetDefaultVersionRequest] google_cloud_ml_v1beta1__set_default_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_model_version_default(name, google_cloud_ml_v1beta1__set_default_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+name}:setDefault', options)
          command.request_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1SetDefaultVersionRequest::Representation
          command.request_object = google_cloud_ml_v1beta1__set_default_version_request_object
          command.response_representation = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleCloudMlV1beta1Version
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation.  The server
        # makes a best effort to cancel the operation, but success is not
        # guaranteed.  If the server doesn't support this method, it returns
        # `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
        # Operations.GetOperation or
        # other methods to check whether the cancellation succeeded or whether the
        # operation completed despite cancellation. On successful cancellation,
        # the operation is not deleted; instead, it becomes an operation with
        # an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta1/{+name}:cancel', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is
        # no longer interested in the operation result. It does not cancel the
        # operation. If the server doesn't support this method, it returns
        # `google.rpc.Code.UNIMPLEMENTED`.
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
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the
        # server doesn't support this method, it returns `UNIMPLEMENTED`.
        # NOTE: the `name` binding allows API services to override the binding
        # to use different resource name schemes, such as `users/*/operations`. To
        # override the binding, API services can add a binding such as
        # `"/v1/`name=users/*`/operations"` to their service configuration.
        # For backwards compatibility, the default name includes the operations
        # collection id, however overriding users must ensure the name binding
        # is the parent resource, without the operations collection id.
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
        # @yieldparam result [Google::Apis::MlV1beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MlV1beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::MlV1beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::MlV1beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
