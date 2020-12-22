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
    module FirebaseV1beta1
      # Firebase Management API
      #
      # The Firebase Management API enables programmatic setup and management of
      #  Firebase projects, including a project's Firebase resources and Firebase apps.
      #
      # @example
      #    require 'google/apis/firebase_v1beta1'
      #
      #    Firebase = Google::Apis::FirebaseV1beta1 # Alias the module
      #    service = Firebase::FirebaseManagementService.new
      #
      # @see https://firebase.google.com
      class FirebaseManagementService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://firebase.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Lists each [Google Cloud Platform (GCP) `Project`] (https://cloud.google.com/
        # resource-manager/reference/rest/v1/projects) that can have Firebase resources
        # added to it. A Project will only be listed if: - The caller has sufficient [
        # Google IAM](https://cloud.google.com/iam) permissions to call AddFirebase. -
        # The Project is not already a FirebaseProject. - The Project is not in an
        # Organization which has policies that prevent Firebase resources from being
        # added.
        # @param [Fixnum] page_size
        #   The maximum number of Projects to return in the response. The server may
        #   return fewer than this value at its discretion. If no value is specified (or
        #   too large a value is specified), the server will impose its own limit. This
        #   value cannot be negative.
        # @param [String] page_token
        #   Token returned from a previous call to `ListAvailableProjects` indicating
        #   where in the set of Projects to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::ListAvailableProjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::ListAvailableProjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_available_projects(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/availableProjects', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::ListAvailableProjectsResponse::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::ListAvailableProjectsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # @yieldparam result [Google::Apis::FirebaseV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds Firebase resources to the specified existing [Google Cloud Platform (GCP)
        # `Project`] (https://cloud.google.com/resource-manager/reference/rest/v1/
        # projects). Since a FirebaseProject is actually also a GCP `Project`, a `
        # FirebaseProject` has the same underlying GCP identifiers (`projectNumber` and `
        # projectId`). This allows for easy interop with Google APIs. The result of this
        # call is an [`Operation`](../../v1beta1/operations). Poll the `Operation` to
        # track the provisioning process by calling GetOperation until [`done`](../../
        # v1beta1/operations#Operation.FIELDS.done) is `true`. When `done` is `true`,
        # the `Operation` has either succeeded or failed. If the `Operation` succeeded,
        # its [`response`](../../v1beta1/operations#Operation.FIELDS.response) is set to
        # a FirebaseProject; if the `Operation` failed, its [`error`](../../v1beta1/
        # operations#Operation.FIELDS.error) is set to a google.rpc.Status. The `
        # Operation` is automatically deleted after completion, so there is no need to
        # call DeleteOperation. This method does not modify any billing account
        # information on the underlying GCP `Project`. To call `AddFirebase`, a project
        # member or service account must have the following permissions (the IAM roles
        # of Editor and Owner contain these permissions): `firebase.projects.update`, `
        # resourcemanager.projects.get`, `serviceusage.services.enable`, and `
        # serviceusage.services.get`.
        # @param [String] project
        #   The resource name of the GCP `Project` to which Firebase resources will be
        #   added, in the format: projects/PROJECT_IDENTIFIER Refer to the `
        #   FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.name) field for
        #   details about PROJECT_IDENTIFIER values. After calling `AddFirebase`, the
        #   unique Project identifiers ( [`projectNumber`](https://cloud.google.com/
        #   resource-manager/reference/rest/v1/projects#Project.FIELDS.project_number) and
        #   [`projectId`](https://cloud.google.com/resource-manager/reference/rest/v1/
        #   projects#Project.FIELDS.project_id)) of the underlying GCP `Project` are also
        #   the identifiers of the FirebaseProject.
        # @param [Google::Apis::FirebaseV1beta1::AddFirebaseRequest] add_firebase_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_firebase(project, add_firebase_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+project}:addFirebase', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::AddFirebaseRequest::Representation
          command.request_object = add_firebase_request_object
          command.response_representation = Google::Apis::FirebaseV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Links the specified FirebaseProject with an existing [Google Analytics account]
        # (http://www.google.com/analytics/). Using this call, you can either: - Specify
        # an `analyticsAccountId` to provision a new Google Analytics property within
        # the specified account and associate the new property with the `FirebaseProject`
        # . - Specify an existing `analyticsPropertyId` to associate the property with
        # the `FirebaseProject`. Note that when you call `AddGoogleAnalytics`: 1. The
        # first check determines if any existing data streams in the Google Analytics
        # property correspond to any existing Firebase Apps in the `FirebaseProject` (
        # based on the `packageName` or `bundleId` associated with the data stream).
        # Then, as applicable, the data streams and apps are linked. Note that this auto-
        # linking only applies to `AndroidApps` and `IosApps`. 2. If no corresponding
        # data streams are found for the Firebase Apps, new data streams are provisioned
        # in the Google Analytics property for each of the Firebase Apps. Note that a
        # new data stream is always provisioned for a Web App even if it was previously
        # associated with a data stream in the Analytics property. Learn more about the
        # hierarchy and structure of Google Analytics accounts in the [Analytics
        # documentation](https://support.google.com/analytics/answer/9303323). The
        # result of this call is an [`Operation`](../../v1beta1/operations). Poll the `
        # Operation` to track the provisioning process by calling GetOperation until [`
        # done`](../../v1beta1/operations#Operation.FIELDS.done) is `true`. When `done`
        # is `true`, the `Operation` has either succeeded or failed. If the `Operation`
        # succeeded, its [`response`](../../v1beta1/operations#Operation.FIELDS.response)
        # is set to an AnalyticsDetails; if the `Operation` failed, its [`error`](../../
        # v1beta1/operations#Operation.FIELDS.error) is set to a google.rpc.Status. To
        # call `AddGoogleAnalytics`, a project member must be an Owner for the existing `
        # FirebaseProject` and have the [`Edit` permission](https://support.google.com/
        # analytics/answer/2884495) for the Google Analytics account. If the `
        # FirebaseProject` already has Google Analytics enabled, and you call `
        # AddGoogleAnalytics` using an `analyticsPropertyId` that's different from the
        # currently associated property, then the call will fail. Analytics may have
        # already been enabled in the Firebase console or by specifying `timeZone` and `
        # regionCode` in the call to [`AddFirebase`](../../v1beta1/projects/addFirebase).
        # @param [String] parent
        #   The resource name of the FirebaseProject to link to an existing Google
        #   Analytics account, in the format: projects/PROJECT_IDENTIFIER Refer to the `
        #   FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.name) field for
        #   details about PROJECT_IDENTIFIER values.
        # @param [Google::Apis::FirebaseV1beta1::AddGoogleAnalyticsRequest] add_google_analytics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_project_google_analytics(parent, add_google_analytics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}:addGoogleAnalytics', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::AddGoogleAnalyticsRequest::Representation
          command.request_object = add_google_analytics_request_object
          command.response_representation = Google::Apis::FirebaseV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified FirebaseProject.
        # @param [String] name
        #   The resource name of the FirebaseProject, in the format: projects/
        #   PROJECT_IDENTIFIER Refer to the `FirebaseProject` [`name`](../projects#
        #   FirebaseProject.FIELDS.name) field for details about PROJECT_IDENTIFIER values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::FirebaseProject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::FirebaseProject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::FirebaseProject::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::FirebaseProject
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration artifact associated with the specified FirebaseProject,
        # which can be used by servers to simplify initialization. Typically, this
        # configuration is used with the Firebase Admin SDK [initializeApp](https://
        # firebase.google.com/docs/admin/setup#initialize_the_sdk) command.
        # @param [String] name
        #   The resource name of the FirebaseProject, in the format: projects/
        #   PROJECT_IDENTIFIER/adminSdkConfig Refer to the `FirebaseProject` [`name`](../
        #   projects#FirebaseProject.FIELDS.name) field for details about
        #   PROJECT_IDENTIFIER values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::AdminSdkConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::AdminSdkConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_admin_sdk_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::AdminSdkConfig::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::AdminSdkConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Google Analytics details currently associated with the specified
        # FirebaseProject. If the `FirebaseProject` is not yet linked to Google
        # Analytics, then the response to `GetAnalyticsDetails` is `NOT_FOUND`.
        # @param [String] name
        #   The resource name of the FirebaseProject, in the format: projects/
        #   PROJECT_IDENTIFIER/analyticsDetails Refer to the `FirebaseProject` [`name`](../
        #   projects#FirebaseProject.FIELDS.name) field for details about
        #   PROJECT_IDENTIFIER values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::AnalyticsDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::AnalyticsDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_analytics_details(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::AnalyticsDetails::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::AnalyticsDetails
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists each FirebaseProject accessible to the caller. The elements are returned
        # in no particular order, but they will be a consistent view of the Projects
        # when additional requests are made with a `pageToken`. This method is
        # eventually consistent with Project mutations, which means newly provisioned
        # Projects and recent modifications to existing Projects might not be reflected
        # in the set of Projects. The list will include only ACTIVE Projects. Use
        # GetFirebaseProject for consistent reads as well as for additional Project
        # details.
        # @param [Fixnum] page_size
        #   The maximum number of Projects to return in the response. The server may
        #   return fewer than this at its discretion. If no value is specified (or too
        #   large a value is specified), the server will impose its own limit. This value
        #   cannot be negative.
        # @param [String] page_token
        #   Token returned from a previous call to `ListFirebaseProjects` indicating where
        #   in the set of Projects to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::ListFirebaseProjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::ListFirebaseProjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_projects(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/projects', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::ListFirebaseProjectsResponse::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::ListFirebaseProjectsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the attributes of the specified FirebaseProject. All [query parameters]
        # (#query-parameters) are required.
        # @param [String] name
        #   The resource name of the Project, in the format: projects/PROJECT_IDENTIFIER
        #   PROJECT_IDENTIFIER: the Project's [`ProjectNumber`](../projects#
        #   FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`]
        #   (../projects#FirebaseProject.FIELDS.project_id). Learn more about using
        #   project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/
        #   cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body
        #   will be the `ProjectId`.
        # @param [Google::Apis::FirebaseV1beta1::FirebaseProject] firebase_project_object
        # @param [String] update_mask
        #   Specifies which fields to update. If this list is empty, then no state will be
        #   updated. Note that the fields `name`, `projectId`, and `projectNumber` are all
        #   immutable.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::FirebaseProject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::FirebaseProject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project(name, firebase_project_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::FirebaseProject::Representation
          command.request_object = firebase_project_object
          command.response_representation = Google::Apis::FirebaseV1beta1::FirebaseProject::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::FirebaseProject
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unlinks the specified FirebaseProject from its Google Analytics account. This
        # call removes the association of the specified `FirebaseProject` with its
        # current Google Analytics property. However, this call does not delete the
        # Google Analytics resources, such as the Google Analytics property or any data
        # streams. These resources may be re-associated later to the `FirebaseProject`
        # by calling [`AddGoogleAnalytics`](../../v1beta1/projects/addGoogleAnalytics)
        # and specifying the same `analyticsPropertyId`. For Android Apps and iOS Apps,
        # this call re-links data streams with their corresponding apps. However, for
        # Web Apps, this call provisions a *new* data stream for each Web App. To call `
        # RemoveAnalytics`, a project member must be an Owner for the `FirebaseProject`.
        # @param [String] parent
        #   The resource name of the FirebaseProject to unlink from its Google Analytics
        #   account, in the format: projects/PROJECT_IDENTIFIER Refer to the `
        #   FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.name) field for
        #   details about PROJECT_IDENTIFIER values.
        # @param [Google::Apis::FirebaseV1beta1::RemoveAnalyticsRequest] remove_analytics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_analytics(parent, remove_analytics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}:removeAnalytics', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::RemoveAnalyticsRequest::Representation
          command.request_object = remove_analytics_request_object
          command.response_representation = Google::Apis::FirebaseV1beta1::Empty::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::Empty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all available Apps for the specified FirebaseProject. This is a
        # convenience method. Typically, interaction with an App should be done using
        # the platform-specific service, but some tool use-cases require a summary of
        # all known Apps (such as for App selector interfaces).
        # @param [String] parent
        #   The parent FirebaseProject for which to list Apps, in the format: projects/
        #   PROJECT_IDENTIFIER Refer to the `FirebaseProject` [`name`](../projects#
        #   FirebaseProject.FIELDS.name) field for details about PROJECT_IDENTIFIER values.
        # @param [String] filter
        #   A query string compatible with Google's [AIP-160](https://google.aip.dev/160)
        #   standard. Use any of the following fields in a query: * [`app_id`](../projects.
        #   apps#FirebaseAppInfo.FIELDS.app_id) * [`namespace`](../projects.apps#
        #   FirebaseAppInfo.FIELDS.namespace) * [`platform`](../projects.apps#
        #   FirebaseAppInfo.FIELDS.platform) We also support the following "virtual"
        #   fields (fields which are not actually part of the returned resource object,
        #   but can be queried as if they are pre-populated with specific values): * `
        #   sha1_hash`: This field is considered to be a repeated `string` field,
        #   populated with the list of all SHA-1 certificate fingerprints registered with
        #   the app. This list is empty if the app is not an Android app. * `sha256_hash`:
        #   This field is considered to be a repeated `string` field, populated with the
        #   list of all SHA-256 certificate fingerprints registered with the app. This
        #   list is empty if the app is not an Android app. * `app_store_id`: This field
        #   is considered to be a singular `string` field, populated with the Apple App
        #   Store ID registered with the app. This field is empty if the app is not an iOS
        #   app. * `team_id`: This field is considered to be a singular `string` field,
        #   populated with the Apple team ID registered with the app. This field is empty
        #   if the app is not an iOS app.
        # @param [Fixnum] page_size
        #   The maximum number of Apps to return in the response. The server may return
        #   fewer than this value at its discretion. If no value is specified (or too
        #   large a value is specified), then the server will impose its own limit. This
        #   value cannot be negative.
        # @param [String] page_token
        #   Token returned from a previous call to `SearchFirebaseApps` indicating where
        #   in the set of Apps to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::SearchFirebaseAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::SearchFirebaseAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_apps(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}:searchApps', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::SearchFirebaseAppsResponse::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::SearchFirebaseAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests the creation of a new AndroidApp in the specified FirebaseProject.
        # The result of this call is an `Operation` which can be used to track the
        # provisioning process. The `Operation` is automatically deleted after
        # completion, so there is no need to call `DeleteOperation`.
        # @param [String] parent
        #   The resource name of the parent FirebaseProject in which to create an
        #   AndroidApp, in the format: projects/PROJECT_IDENTIFIER/androidApps Refer to
        #   the `FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.name) field
        #   for details about PROJECT_IDENTIFIER values.
        # @param [Google::Apis::FirebaseV1beta1::AndroidApp] android_app_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_android_app(parent, android_app_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/androidApps', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::AndroidApp::Representation
          command.request_object = android_app_object
          command.response_representation = Google::Apis::FirebaseV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified AndroidApp.
        # @param [String] name
        #   The resource name of the AndroidApp, in the format: projects/
        #   PROJECT_IDENTIFIER/androidApps/APP_ID Since an APP_ID is a unique identifier,
        #   the Unique Resource from Sub-Collection access pattern may be used here, in
        #   the format: projects/-/androidApps/APP_ID Refer to the `AndroidApp` [`name`](..
        #   /projects.androidApps#AndroidApp.FIELDS.name) field for details about
        #   PROJECT_IDENTIFIER and APP_ID values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::AndroidApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::AndroidApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_android_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::AndroidApp::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::AndroidApp
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration artifact associated with the specified AndroidApp.
        # @param [String] name
        #   The resource name of the AndroidApp configuration to download, in the format:
        #   projects/PROJECT_IDENTIFIER/androidApps/APP_ID/config Since an APP_ID is a
        #   unique identifier, the Unique Resource from Sub-Collection access pattern may
        #   be used here, in the format: projects/-/androidApps/APP_ID Refer to the `
        #   AndroidApp` [`name`](../projects.androidApps#AndroidApp.FIELDS.name) field for
        #   details about PROJECT_IDENTIFIER and APP_ID values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::AndroidAppConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::AndroidAppConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_android_app_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::AndroidAppConfig::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::AndroidAppConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists each AndroidApp associated with the specified FirebaseProject. The
        # elements are returned in no particular order, but will be a consistent view of
        # the Apps when additional requests are made with a `pageToken`.
        # @param [String] parent
        #   The resource name of the parent FirebaseProject for which to list each
        #   associated AndroidApp, in the format: projects/PROJECT_IDENTIFIER /androidApps
        #   Refer to the `FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.
        #   name) field for details about PROJECT_IDENTIFIER values.
        # @param [Fixnum] page_size
        #   The maximum number of Apps to return in the response. The server may return
        #   fewer than this at its discretion. If no value is specified (or too large a
        #   value is specified), then the server will impose its own limit.
        # @param [String] page_token
        #   Token returned from a previous call to `ListAndroidApps` indicating where in
        #   the set of Apps to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::ListAndroidAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::ListAndroidAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_android_apps(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/androidApps', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::ListAndroidAppsResponse::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::ListAndroidAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the attributes of the specified AndroidApp.
        # @param [String] name
        #   The resource name of the AndroidApp, in the format: projects/
        #   PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIFIER: the parent Project'
        #   s [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(
        #   recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.
        #   project_id). Learn more about using project identifiers in Google's [AIP 2510
        #   standard](https://google.aip.dev/cloud/2510). Note that the value for
        #   PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the
        #   globally unique, Firebase-assigned identifier for the App (see [`appId`](../
        #   projects.androidApps#AndroidApp.FIELDS.app_id)).
        # @param [Google::Apis::FirebaseV1beta1::AndroidApp] android_app_object
        # @param [String] update_mask
        #   Specifies which fields to update. Note that the fields `name`, `app_id`, `
        #   project_id`, and `package_name` are all immutable.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::AndroidApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::AndroidApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_android_app(name, android_app_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::AndroidApp::Representation
          command.request_object = android_app_object
          command.response_representation = Google::Apis::FirebaseV1beta1::AndroidApp::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::AndroidApp
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a ShaCertificate to the specified AndroidApp.
        # @param [String] parent
        #   The resource name of the parent AndroidApp to which to add a ShaCertificate,
        #   in the format: projects/PROJECT_IDENTIFIER/androidApps/ APP_ID Since an APP_ID
        #   is a unique identifier, the Unique Resource from Sub-Collection access pattern
        #   may be used here, in the format: projects/-/androidApps/APP_ID Refer to the `
        #   AndroidApp` [`name`](../projects.androidApps#AndroidApp.FIELDS.name) field for
        #   details about PROJECT_IDENTIFIER and APP_ID values.
        # @param [Google::Apis::FirebaseV1beta1::ShaCertificate] sha_certificate_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::ShaCertificate] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::ShaCertificate]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_android_app_sha(parent, sha_certificate_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/sha', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::ShaCertificate::Representation
          command.request_object = sha_certificate_object
          command.response_representation = Google::Apis::FirebaseV1beta1::ShaCertificate::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::ShaCertificate
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a ShaCertificate from the specified AndroidApp.
        # @param [String] name
        #   The resource name of the ShaCertificate to remove from the parent AndroidApp,
        #   in the format: projects/PROJECT_IDENTIFIER/androidApps/APP_ID /sha/SHA_HASH
        #   Refer to the `ShaCertificate` [`name`](../projects.androidApps.sha#
        #   ShaCertificate.FIELDS.name) field for details about PROJECT_IDENTIFIER, APP_ID,
        #   and SHA_HASH values. You can obtain the full resource name of the `
        #   ShaCertificate` from the response of [`ListShaCertificates`](../projects.
        #   androidApps.sha/list) or the original [`CreateShaCertificate`](../projects.
        #   androidApps.sha/create).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_android_app_sha(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::Empty::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the SHA-1 and SHA-256 certificates for the specified AndroidApp.
        # @param [String] parent
        #   The resource name of the parent AndroidApp for which to list each associated
        #   ShaCertificate, in the format: projects/PROJECT_IDENTIFIER /androidApps/APP_ID
        #   Since an APP_ID is a unique identifier, the Unique Resource from Sub-
        #   Collection access pattern may be used here, in the format: projects/-/
        #   androidApps/APP_ID Refer to the `AndroidApp` [`name`](../projects.androidApps#
        #   AndroidApp.FIELDS.name) field for details about PROJECT_IDENTIFIER and APP_ID
        #   values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::ListShaCertificatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::ListShaCertificatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_android_app_shas(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/sha', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::ListShaCertificatesResponse::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::ListShaCertificatesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the valid Google Cloud Platform (GCP) resource locations for the
        # specified Project (including a FirebaseProject). One of these locations can be
        # selected as the Project's [_default_ GCP resource location](https://firebase.
        # google.com/docs/projects/locations), which is the geographical location where
        # the Project's resources, such as Cloud Firestore, will be provisioned by
        # default. However, if the default GCP resource location has already been set
        # for the Project, then this setting cannot be changed. This call checks for any
        # possible [location restrictions](https://cloud.google.com/resource-manager/
        # docs/organization-policy/defining-locations) for the specified Project and,
        # thus, might return a subset of all possible GCP resource locations. To list
        # all GCP resource locations (regardless of any restrictions), call the endpoint
        # without specifying a unique project identifier (that is, `/v1beta1/`parent=
        # projects/-`/listAvailableLocations`). To call `ListAvailableLocations` with a
        # specified project, a member must be at minimum a Viewer of the Project. Calls
        # without a specified project do not require any specific project permissions.
        # @param [String] parent
        #   The FirebaseProject for which to list GCP resource locations, in the format:
        #   projects/PROJECT_IDENTIFIER Refer to the `FirebaseProject` [`name`](../
        #   projects#FirebaseProject.FIELDS.name) field for details about
        #   PROJECT_IDENTIFIER values. If no unique project identifier is specified (that
        #   is, `projects/-`), the returned list does not take into account org-specific
        #   or project-specific location restrictions.
        # @param [Fixnum] page_size
        #   The maximum number of locations to return in the response. The server may
        #   return fewer than this value at its discretion. If no value is specified (or
        #   too large a value is specified), then the server will impose its own limit.
        #   This value cannot be negative.
        # @param [String] page_token
        #   Token returned from a previous call to `ListAvailableLocations` indicating
        #   where in the list of locations to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::ListAvailableLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::ListAvailableLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_available_locations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/availableLocations', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::ListAvailableLocationsResponse::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::ListAvailableLocationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the default Google Cloud Platform (GCP) resource location for the
        # specified FirebaseProject. This method creates an App Engine application with
        # a [default Cloud Storage bucket](https://cloud.google.com/appengine/docs/
        # standard/python/googlecloudstorageclient/setting-up-cloud-storage#
        # activating_a_cloud_storage_bucket), located in the specified [`locationId`](#
        # body.request_body.FIELDS.location_id). This location must be one of the
        # available [GCP resource locations](https://firebase.google.com/docs/projects/
        # locations). After the default GCP resource location is finalized, or if it was
        # already set, it cannot be changed. The default GCP resource location for the
        # specified `FirebaseProject` might already be set because either the underlying
        # GCP `Project` already has an App Engine application or `
        # FinalizeDefaultLocation` was previously called with a specified `locationId`.
        # Any new calls to `FinalizeDefaultLocation` with a *different* specified `
        # locationId` will return a 409 error. The result of this call is an [`Operation`
        # ](../../v1beta1/operations), which can be used to track the provisioning
        # process. The [`response`](../../v1beta1/operations#Operation.FIELDS.response)
        # type of the `Operation` is google.protobuf.Empty. The `Operation` can be
        # polled by its `name` using GetOperation until `done` is true. When `done` is
        # true, the `Operation` has either succeeded or failed. If the `Operation` has
        # succeeded, its [`response`](../../v1beta1/operations#Operation.FIELDS.response)
        # will be set to a google.protobuf.Empty; if the `Operation` has failed, its `
        # error` will be set to a google.rpc.Status. The `Operation` is automatically
        # deleted after completion, so there is no need to call DeleteOperation. All
        # fields listed in the [request body](#request-body) are required. To call `
        # FinalizeDefaultLocation`, a member must be an Owner of the Project.
        # @param [String] parent
        #   The resource name of the FirebaseProject for which the default GCP resource
        #   location will be set, in the format: projects/PROJECT_IDENTIFIER Refer to the `
        #   FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.name) field for
        #   details about PROJECT_IDENTIFIER values.
        # @param [Google::Apis::FirebaseV1beta1::FinalizeDefaultLocationRequest] finalize_default_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finalize_default_location(parent, finalize_default_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/defaultLocation:finalize', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::FinalizeDefaultLocationRequest::Representation
          command.request_object = finalize_default_location_request_object
          command.response_representation = Google::Apis::FirebaseV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests the creation of a new IosApp in the specified FirebaseProject. The
        # result of this call is an `Operation` which can be used to track the
        # provisioning process. The `Operation` is automatically deleted after
        # completion, so there is no need to call `DeleteOperation`.
        # @param [String] parent
        #   The resource name of the parent FirebaseProject in which to create an IosApp,
        #   in the format: projects/PROJECT_IDENTIFIER/iosApps Refer to the `
        #   FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.name) field for
        #   details about PROJECT_IDENTIFIER values.
        # @param [Google::Apis::FirebaseV1beta1::IosApp] ios_app_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_ios_app(parent, ios_app_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/iosApps', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::IosApp::Representation
          command.request_object = ios_app_object
          command.response_representation = Google::Apis::FirebaseV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified IosApp.
        # @param [String] name
        #   The resource name of the IosApp, in the format: projects/PROJECT_IDENTIFIER /
        #   iosApps/APP_ID Since an APP_ID is a unique identifier, the Unique Resource
        #   from Sub-Collection access pattern may be used here, in the format: projects/-/
        #   iosApps/APP_ID Refer to the `IosApp` [`name`](../projects.iosApps#IosApp.
        #   FIELDS.name) field for details about PROJECT_IDENTIFIER and APP_ID values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::IosApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::IosApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_ios_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::IosApp::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::IosApp
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration artifact associated with the specified IosApp.
        # @param [String] name
        #   The resource name of the App configuration to download, in the format:
        #   projects/PROJECT_IDENTIFIER/iosApps/APP_ID/config Since an APP_ID is a unique
        #   identifier, the Unique Resource from Sub-Collection access pattern may be used
        #   here, in the format: projects/-/iosApps/APP_ID Refer to the `IosApp` [`name`](.
        #   ./projects.iosApps#IosApp.FIELDS.name) field for details about
        #   PROJECT_IDENTIFIER and APP_ID values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::IosAppConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::IosAppConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_ios_app_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::IosAppConfig::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::IosAppConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists each IosApp associated with the specified FirebaseProject. The elements
        # are returned in no particular order, but will be a consistent view of the Apps
        # when additional requests are made with a `pageToken`.
        # @param [String] parent
        #   The resource name of the parent FirebaseProject for which to list each
        #   associated IosApp, in the format: projects/PROJECT_IDENTIFIER/iosApps Refer to
        #   the `FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.name) field
        #   for details about PROJECT_IDENTIFIER values.
        # @param [Fixnum] page_size
        #   The maximum number of Apps to return in the response. The server may return
        #   fewer than this at its discretion. If no value is specified (or too large a
        #   value is specified), the server will impose its own limit.
        # @param [String] page_token
        #   Token returned from a previous call to `ListIosApps` indicating where in the
        #   set of Apps to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::ListIosAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::ListIosAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_ios_apps(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/iosApps', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::ListIosAppsResponse::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::ListIosAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the attributes of the specified IosApp.
        # @param [String] name
        #   The resource name of the IosApp, in the format: projects/PROJECT_IDENTIFIER /
        #   iosApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../
        #   projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`
        #   ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about
        #   using project identifiers in Google's [AIP 2510 standard](https://google.aip.
        #   dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response
        #   body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned
        #   identifier for the App (see [`appId`](../projects.iosApps#IosApp.FIELDS.app_id)
        #   ).
        # @param [Google::Apis::FirebaseV1beta1::IosApp] ios_app_object
        # @param [String] update_mask
        #   Specifies which fields to update. Note that the fields `name`, `appId`, `
        #   projectId`, and `bundleId` are all immutable.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::IosApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::IosApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_ios_app(name, ios_app_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::IosApp::Representation
          command.request_object = ios_app_object
          command.response_representation = Google::Apis::FirebaseV1beta1::IosApp::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::IosApp
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests the creation of a new WebApp in the specified FirebaseProject. The
        # result of this call is an `Operation` which can be used to track the
        # provisioning process. The `Operation` is automatically deleted after
        # completion, so there is no need to call `DeleteOperation`.
        # @param [String] parent
        #   The resource name of the parent FirebaseProject in which to create a WebApp,
        #   in the format: projects/PROJECT_IDENTIFIER/webApps Refer to the `
        #   FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.name) field for
        #   details about PROJECT_IDENTIFIER values.
        # @param [Google::Apis::FirebaseV1beta1::WebApp] web_app_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_web_app(parent, web_app_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/webApps', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::WebApp::Representation
          command.request_object = web_app_object
          command.response_representation = Google::Apis::FirebaseV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified WebApp.
        # @param [String] name
        #   The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /
        #   webApps/APP_ID Since an APP_ID is a unique identifier, the Unique Resource
        #   from Sub-Collection access pattern may be used here, in the format: projects/-/
        #   webApps/APP_ID Refer to the `WebApp` [`name`](../projects.webApps#WebApp.
        #   FIELDS.name) field for details about PROJECT_IDENTIFIER and APP_ID values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::WebApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::WebApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_web_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::WebApp::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::WebApp
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the configuration artifact associated with the specified WebApp.
        # @param [String] name
        #   The resource name of the WebApp configuration to download, in the format:
        #   projects/PROJECT_IDENTIFIER/webApps/APP_ID/config Since an APP_ID is a unique
        #   identifier, the Unique Resource from Sub-Collection access pattern may be used
        #   here, in the format: projects/-/webApps/APP_ID Refer to the `WebApp` [`name`](.
        #   ./projects.webApps#WebApp.FIELDS.name) field for details about
        #   PROJECT_IDENTIFIER and APP_ID values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::WebAppConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::WebAppConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_web_app_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::WebAppConfig::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::WebAppConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists each WebApp associated with the specified FirebaseProject. The elements
        # are returned in no particular order, but will be a consistent view of the Apps
        # when additional requests are made with a `pageToken`.
        # @param [String] parent
        #   The resource name of the parent FirebaseProject for which to list each
        #   associated WebApp, in the format: projects/PROJECT_IDENTIFIER/webApps Refer to
        #   the `FirebaseProject` [`name`](../projects#FirebaseProject.FIELDS.name) field
        #   for details about PROJECT_IDENTIFIER values.
        # @param [Fixnum] page_size
        #   The maximum number of Apps to return in the response. The server may return
        #   fewer than this value at its discretion. If no value is specified (or too
        #   large a value is specified), then the server will impose its own limit.
        # @param [String] page_token
        #   Token returned from a previous call to `ListWebApps` indicating where in the
        #   set of Apps to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::ListWebAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::ListWebAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_web_apps(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/webApps', options)
          command.response_representation = Google::Apis::FirebaseV1beta1::ListWebAppsResponse::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::ListWebAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the attributes of the specified WebApp.
        # @param [String] name
        #   The resource name of the WebApp, in the format: projects/PROJECT_IDENTIFIER /
        #   webApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../
        #   projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`
        #   ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about
        #   using project identifiers in Google's [AIP 2510 standard](https://google.aip.
        #   dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response
        #   body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned
        #   identifier for the App (see [`appId`](../projects.webApps#WebApp.FIELDS.app_id)
        #   ).
        # @param [Google::Apis::FirebaseV1beta1::WebApp] web_app_object
        # @param [String] update_mask
        #   Specifies which fields to update. Note that the fields `name`, `appId`, and `
        #   projectId` are all immutable.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseV1beta1::WebApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseV1beta1::WebApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_web_app(name, web_app_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebaseV1beta1::WebApp::Representation
          command.request_object = web_app_object
          command.response_representation = Google::Apis::FirebaseV1beta1::WebApp::Representation
          command.response_class = Google::Apis::FirebaseV1beta1::WebApp
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
