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
    module FirebaseremoteconfigV1
      # Firebase Remote Config API
      #
      # Firebase Remote Config API allows the 3P clients to manage Remote Config
      #  conditions and parameters for Firebase applications.
      #
      # @example
      #    require 'google/apis/firebaseremoteconfig_v1'
      #
      #    Firebaseremoteconfig = Google::Apis::FirebaseremoteconfigV1 # Alias the module
      #    service = Firebaseremoteconfig::FirebaseRemoteConfigService.new
      #
      # @see https://firebase.google.com/docs/remote-config/
      class FirebaseRemoteConfigService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://firebaseremoteconfig.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Get the latest version Remote Configuration for a project.
        # Returns the RemoteConfig as the payload, and also the eTag as a
        # response header.
        # @param [String] project
        #   The GMP project identifier. Required.
        #   See note at the beginning of this file regarding project ids.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseremoteconfigV1::RemoteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseremoteconfigV1::RemoteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_remote_config(project, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+project}/remoteConfig', options)
          command.response_representation = Google::Apis::FirebaseremoteconfigV1::RemoteConfig::Representation
          command.response_class = Google::Apis::FirebaseremoteconfigV1::RemoteConfig
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a RemoteConfig. We treat this as an always-existing
        # resource (when it is not found in our data store, we treat it as version
        # 0, a template with zero conditions and zero parameters). Hence there are
        # no Create or Delete operations. Returns the updated template when
        # successful (and the updated eTag as a response header), or an error if
        # things go wrong.
        # Possible error messages:
        # * VALIDATION_ERROR (HTTP status 400) with additional details if the
        # template being passed in can not be validated.
        # * AUTHENTICATION_ERROR (HTTP status 401) if the request can not be
        # authenticate (e.g. no access token, or invalid access token).
        # * AUTHORIZATION_ERROR (HTTP status 403) if the request can not be
        # authorized (e.g. the user has no access to the specified project id).
        # * VERSION_MISMATCH (HTTP status 412) when trying to update when the
        # expected eTag (passed in via the "If-match" header) is not specified, or
        # is specified but does does not match the current eTag.
        # * Internal error (HTTP status 500) for Database problems or other internal
        # errors.
        # @param [String] project
        #   The GMP project identifier. Required.
        #   See note at the beginning of this file regarding project ids.
        # @param [Google::Apis::FirebaseremoteconfigV1::RemoteConfig] remote_config_object
        # @param [Boolean] validate_only
        #   Optional. Defaults to <code>false</code> (UpdateRemoteConfig call should
        #   update the backend if there are no validation/interal errors). May be set
        #   to <code>true</code> to indicate that, should no validation errors occur,
        #   the call should return a "200 OK" instead of performing the update. Note
        #   that other error messages (500 Internal Error, 412 Version Mismatch, etc)
        #   may still result after flipping to <code>false</code>, even if getting a
        #   "200 OK" when calling with <code>true</code>.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebaseremoteconfigV1::RemoteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebaseremoteconfigV1::RemoteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_remote_config(project, remote_config_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1/{+project}/remoteConfig', options)
          command.request_representation = Google::Apis::FirebaseremoteconfigV1::RemoteConfig::Representation
          command.request_object = remote_config_object
          command.response_representation = Google::Apis::FirebaseremoteconfigV1::RemoteConfig::Representation
          command.response_class = Google::Apis::FirebaseremoteconfigV1::RemoteConfig
          command.params['project'] = project unless project.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
