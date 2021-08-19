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
    module IdeahubV1alpha
      # Idea Hub API
      #
      # 
      #
      # @example
      #    require 'google/apis/ideahub_v1alpha'
      #
      #    Ideahub = Google::Apis::IdeahubV1alpha # Alias the module
      #    service = Ideahub::IdeahubService.new
      #
      # @see https://console.cloud.google.com/apis/library/ideahub.googleapis.com
      class IdeahubService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://ideahub.googleapis.com/', '',
                client_name: 'google-apis-ideahub_v1alpha',
                client_version: Google::Apis::IdeahubV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # List ideas for a given Creator and filter and sort options.
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions are implicitly combined, as if the `AND`
        #   operator was always used. The `OR` operator is currently unsupported. *
        #   Supported functions: - `saved(bool)`: If set to true, fetches only saved ideas.
        #   If set to false, fetches all except saved ideas. Can't be simultaneously used
        #   with `dismissed(bool)`. - `dismissed(bool)`: If set to true, fetches only
        #   dismissed ideas. Can't be simultaneously used with `saved(bool)`. The `false`
        #   value is currently unsupported. Examples: * `saved(true)` * `saved(false)` * `
        #   dismissed(true)` The length of this field should be no more than 500
        #   characters.
        # @param [String] order_by
        #   Order semantics described below.
        # @param [Fixnum] page_size
        #   The maximum number of ideas per page. If unspecified, at most 10 ideas will be
        #   returned. The maximum value is 2000; values above 2000 will be coerced to 2000.
        # @param [String] page_token
        #   Used to fetch next page.
        # @param [String] parent
        #   If defined, specifies the creator for which to filter by. Format: publishers/`
        #   publisher`/properties/`property`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListIdeasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListIdeasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_ideas(filter: nil, order_by: nil, page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/ideas', options)
          command.response_representation = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListIdeasResponse::Representation
          command.response_class = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListIdeasResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an idea activity entry.
        # @param [String] parent
        #   Required. The parent resource where this idea activity will be created. Format:
        #   platforms/`platform`/property/`property`
        # @param [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaActivity] google_search_ideahub_v1alpha_idea_activity_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaActivity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaActivity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_platform_property_idea_activity(parent, google_search_ideahub_v1alpha_idea_activity_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/ideaActivities', options)
          command.request_representation = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaActivity::Representation
          command.request_object = google_search_ideahub_v1alpha_idea_activity_object
          command.response_representation = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaActivity::Representation
          command.response_class = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaActivity
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an idea state resource.
        # @param [String] name
        #   Unique identifier for the idea state. Format: platforms/`platform`/properties/`
        #   property`/ideaStates/`idea_state`
        # @param [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaState] google_search_ideahub_v1alpha_idea_state_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_platform_property_idea_state(name, google_search_ideahub_v1alpha_idea_state_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaState::Representation
          command.request_object = google_search_ideahub_v1alpha_idea_state_object
          command.response_representation = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaState::Representation
          command.response_class = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaIdeaState
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List ideas for a given Creator and filter and sort options.
        # @param [String] parent
        #   If defined, specifies the creator for which to filter by. Format: publishers/`
        #   publisher`/properties/`property`
        # @param [String] filter
        #   Allows filtering. Supported syntax: * Filter expressions are made up of one or
        #   more restrictions. * Restrictions are implicitly combined, as if the `AND`
        #   operator was always used. The `OR` operator is currently unsupported. *
        #   Supported functions: - `saved(bool)`: If set to true, fetches only saved ideas.
        #   If set to false, fetches all except saved ideas. Can't be simultaneously used
        #   with `dismissed(bool)`. - `dismissed(bool)`: If set to true, fetches only
        #   dismissed ideas. Can't be simultaneously used with `saved(bool)`. The `false`
        #   value is currently unsupported. Examples: * `saved(true)` * `saved(false)` * `
        #   dismissed(true)` The length of this field should be no more than 500
        #   characters.
        # @param [String] order_by
        #   Order semantics described below.
        # @param [Fixnum] page_size
        #   The maximum number of ideas per page. If unspecified, at most 10 ideas will be
        #   returned. The maximum value is 2000; values above 2000 will be coerced to 2000.
        # @param [String] page_token
        #   Used to fetch next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListIdeasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListIdeasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_platform_property_ideas(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/ideas', options)
          command.response_representation = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListIdeasResponse::Representation
          command.response_class = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListIdeasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns which locales ideas are available in for a given Creator.
        # @param [String] parent
        #   Required. The web property to check idea availability for Format: platforms/`
        #   platform`/property/`property`
        # @param [Fixnum] page_size
        #   The maximum number of locales to return. The service may return fewer than
        #   this value. If unspecified, at most 100 locales will be returned. The maximum
        #   value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   A page token, received from a previous `ListAvailableLocales` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAvailableLocales` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListAvailableLocalesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListAvailableLocalesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_platform_property_locales(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/locales', options)
          command.response_representation = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListAvailableLocalesResponse::Representation
          command.response_class = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaListAvailableLocalesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a topic state resource.
        # @param [String] name
        #   Unique identifier for the topic state. Format: platforms/`platform`/properties/
        #   `property`/topicStates/`topic_state`
        # @param [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaTopicState] google_search_ideahub_v1alpha_topic_state_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaTopicState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaTopicState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_platform_property_topic_state(name, google_search_ideahub_v1alpha_topic_state_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaTopicState::Representation
          command.request_object = google_search_ideahub_v1alpha_topic_state_object
          command.response_representation = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaTopicState::Representation
          command.response_class = Google::Apis::IdeahubV1alpha::GoogleSearchIdeahubV1alphaTopicState
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
