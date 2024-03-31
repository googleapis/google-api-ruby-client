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
    module CloudprofilerV2
      # Cloud Profiler API
      #
      # Manages continuous profiling information.
      #
      # @example
      #    require 'google/apis/cloudprofiler_v2'
      #
      #    Cloudprofiler = Google::Apis::CloudprofilerV2 # Alias the module
      #    service = Cloudprofiler::CloudProfilerService.new
      #
      # @see https://cloud.google.com/profiler/
      class CloudProfilerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://cloudprofiler.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-cloudprofiler_v2',
                client_version: Google::Apis::CloudprofilerV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # CreateProfile creates a new profile resource in the online mode. _Direct use
        # of this API is discouraged, please use a [supported profiler agent](https://
        # cloud.google.com/profiler/docs/about-profiler#profiling_agent) instead for
        # profile collection._ The server ensures that the new profiles are created at a
        # constant rate per deployment, so the creation request may hang for some time
        # until the next profile session is available. The request may fail with ABORTED
        # error if the creation is not available within ~1m, the response will indicate
        # the duration of the backoff the client should take before attempting creating
        # a profile again. The backoff duration is returned in google.rpc.RetryInfo
        # extension on the response status. To a gRPC client, the extension will be
        # return as a binary-serialized proto in the trailing metadata item named "
        # google.rpc.retryinfo-bin".
        # @param [String] parent
        #   Parent project to create the profile in.
        # @param [Google::Apis::CloudprofilerV2::CreateProfileRequest] create_profile_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudprofilerV2::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudprofilerV2::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_profile(parent, create_profile_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/profiles', options)
          command.request_representation = Google::Apis::CloudprofilerV2::CreateProfileRequest::Representation
          command.request_object = create_profile_request_object
          command.response_representation = Google::Apis::CloudprofilerV2::Profile::Representation
          command.response_class = Google::Apis::CloudprofilerV2::Profile
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # CreateOfflineProfile creates a new profile resource in the offline mode. The
        # client provides the profile to create along with the profile bytes, the server
        # records it. _Direct use of this API is discouraged, please use a [supported
        # profiler agent](https://cloud.google.com/profiler/docs/about-profiler#
        # profiling_agent) instead for profile collection._
        # @param [String] parent
        #   Parent project to create the profile in.
        # @param [Google::Apis::CloudprofilerV2::Profile] profile_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudprofilerV2::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudprofilerV2::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_profile_offline(parent, profile_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/profiles:createOffline', options)
          command.request_representation = Google::Apis::CloudprofilerV2::Profile::Representation
          command.request_object = profile_object
          command.response_representation = Google::Apis::CloudprofilerV2::Profile::Representation
          command.response_class = Google::Apis::CloudprofilerV2::Profile
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists profiles which have been collected so far and for which the caller has
        # permission to view.
        # @param [String] parent
        #   Required. The parent, which owns this collection of profiles. Format: projects/
        #   `user_project_id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return. Default page_size is 1000.
        #   Max limit is 1000.
        # @param [String] page_token
        #   Optional. The token to continue pagination and get profiles from a particular
        #   page. When paginating, all other parameters provided to `ListProfiles` must
        #   match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudprofilerV2::ListProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudprofilerV2::ListProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_profiles(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/profiles', options)
          command.response_representation = Google::Apis::CloudprofilerV2::ListProfilesResponse::Representation
          command.response_class = Google::Apis::CloudprofilerV2::ListProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # UpdateProfile updates the profile bytes and labels on the profile resource
        # created in the online mode. Updating the bytes for profiles created in the
        # offline mode is currently not supported: the profile content must be provided
        # at the time of the profile creation. _Direct use of this API is discouraged,
        # please use a [supported profiler agent](https://cloud.google.com/profiler/docs/
        # about-profiler#profiling_agent) instead for profile collection._
        # @param [String] name
        #   Output only. Opaque, server-assigned, unique ID for this profile.
        # @param [Google::Apis::CloudprofilerV2::Profile] profile_object
        # @param [String] update_mask
        #   Field mask used to specify the fields to be overwritten. Currently only
        #   profile_bytes and labels fields are supported by UpdateProfile, so only those
        #   fields can be specified in the mask. When no mask is provided, all fields are
        #   overwritten.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudprofilerV2::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudprofilerV2::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_profile(name, profile_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::CloudprofilerV2::Profile::Representation
          command.request_object = profile_object
          command.response_representation = Google::Apis::CloudprofilerV2::Profile::Representation
          command.response_class = Google::Apis::CloudprofilerV2::Profile
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
