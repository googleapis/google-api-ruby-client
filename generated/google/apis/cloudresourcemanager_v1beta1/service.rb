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
    module CloudresourcemanagerV1beta1
      # Google Cloud Resource Manager API
      #
      # The Google Cloud Resource Manager API provides methods for creating, reading,
      #  and updating of project metadata, including IAM policies, and will shortly
      #  provide the same for other high-level entities (e.g. customers and resource
      #  groups). Longer term, we expect the cloudresourcemanager API to encompass
      #  other Cloud resources as well.
      #
      # @example
      #    require 'google/apis/cloudresourcemanager_v1beta1'
      #
      #    Cloudresourcemanager = Google::Apis::CloudresourcemanagerV1beta1 # Alias the module
      #    service = Cloudresourcemanager::CloudresourcemanagerService.new
      #
      # @see https://cloud.google.com/resource-manager
      class CloudresourcemanagerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudresourcemanager.googleapis.com/', '')
        end
        
        # Creates a project resource. Initially, the project resource is owned by its
        # creator exclusively. The creator can later grant permission to others to read
        # or update the project. Several APIs are activated automatically for the
        # project, including Google Cloud Storage.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::Project] project_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project(project_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/projects'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.request_object = project_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Project
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists projects that are visible to the user and satisfy the specified filter.
        # This method returns projects in an unspecified order. New projects do not
        # necessarily appear at the end of the list.
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListProject that indicates
        #   from where listing should continue. Note: pagination is not yet supported; the
        #   server ignores this field. Optional.
        # @param [Fixnum] page_size
        #   The maximum number of Projects to return in the response. The server can
        #   return fewer projects than requested. If unspecified, server picks an
        #   appropriate default. Note: pagination is not yet supported; the server ignores
        #   this field. Optional.
        # @param [String] filter
        #   An expression for filtering the results of the request. Filter rules are case
        #   insensitive. The fields eligible for filtering are: name id labels. where  is
        #   a the name of a label Examples: name:* ==> The project has a name. name:Howl ==
        #   > The project’s name is `Howl` or 'howl'. name:HOWL ==> Equivalent to above.
        #   NAME:howl ==> Equivalent to above. labels.color:* ==> The project has the
        #   label "color". labels.color:red ==> The project’s label `color` has the value `
        #   red`. labels.color:red label.size:big ==> The project's label `color` has the
        #   value `red` and its label `size` has the value `big`. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::ListProjectsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::ListProjectsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_projects(page_token: nil, page_size: nil, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/projects'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::ListProjectsResponse::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::ListProjectsResponse
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the project identified by the specified `project_id` (for example, `
        # my-project-123`). The caller must have read permissions for this project.
        # @param [String] project_id
        #   The project ID (for example, `my-project-123`). Required.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project(project_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/projects/{projectId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Project
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the attributes of the project identified by the specified `project_id`
        # (for example, `my-project-123`). The caller must have modify permissions for
        # this project.
        # @param [String] project_id
        #   The project ID (for example, `my-project-123`). Required.
        # @param [Google::Apis::CloudresourcemanagerV1beta1::Project] project_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Project] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Project]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project(project_id, project_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/projects/{projectId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.request_object = project_object
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Project::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Project
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the project identified by the specified `project_id` (for example, `my-
        # project-123`) for deletion. This method will only affect the project if it has
        # a lifecycle state of [ACTIVE][cloudresourcemanager.projects.v1beta2.
        # LifecycleState.ACTIVE] when this method is called. Otherwise this method does
        # nothing (since all other states are phases of deletion). This method changes
        # the project's lifecycle state from [ACTIVE][cloudresourcemanager.projects.
        # v1beta2.LifecycleState.ACTIVE] to [DELETE_REQUESTED] [cloudresourcemanager.
        # projects.v1beta2.LifecycleState.DELETE_REQUESTED]. The deletion starts at an
        # unspecified time, at which point the lifecycle state changes to [
        # DELETE_IN_PROGRESS] [cloudresourcemanager.projects.v1beta2.LifecycleState.
        # DELETE_IN_PROGRESS]. Until the deletion completes, you can check the lifecycle
        # state checked by retrieving the project with [GetProject] [
        # cloudresourcemanager.projects.v1beta2.Projects.GetProject], and the project
        # remains visible to [ListProjects] [cloudresourcemanager.projects.v1beta2.
        # Projects.ListProjects]. However, you cannot update the project. After the
        # deletion completes, the project is not retrievable by the [GetProject] [
        # cloudresourcemanager.projects.v1beta2.Projects.GetProject] and [ListProjects] [
        # cloudresourcemanager.projects.v1beta2.Projects.ListProjects] methods. The
        # caller must have modify permissions for this project.
        # @param [String] project_id
        #   The project ID (for example, `foo-bar-123`). Required.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project(project_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/projects/{projectId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores the project identified by the specified `project_id` (for example, `
        # my-project-123`). You can only use this method for a project that has a
        # lifecycle state of [DELETE_REQUESTED] [cloudresourcemanager.projects.v1beta2.
        # LifecycleState.DELETE_REQUESTED]. After deletion starts, as indicated by a
        # lifecycle state of [DELETE_IN_PROGRESS] [cloudresourcemanager.projects.v1beta2.
        # LifecycleState.DELETE_IN_PROGRESS], the project cannot be restored. The caller
        # must have modify permissions for this project.
        # @param [String] project_id
        #   The project ID (for example, `foo-bar-123`). Required.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudresourcemanagerV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudresourcemanagerV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_project(project_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1beta1/projects/{projectId}:undelete'
          command =  make_simple_command(:post, path, options)
          command.response_representation = Google::Apis::CloudresourcemanagerV1beta1::Empty::Representation
          command.response_class = Google::Apis::CloudresourcemanagerV1beta1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
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
