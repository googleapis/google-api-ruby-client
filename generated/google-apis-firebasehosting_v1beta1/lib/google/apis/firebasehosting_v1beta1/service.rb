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
    module FirebasehostingV1beta1
      # Firebase Hosting API
      #
      # The Firebase Hosting REST API enables programmatic and customizable management
      #  and deployments to your Firebase-hosted sites. Use this REST API to create and
      #  manage channels and sites as well as to deploy new or updated hosting
      #  configurations and content files.
      #
      # @example
      #    require 'google/apis/firebasehosting_v1beta1'
      #
      #    Firebasehosting = Google::Apis::FirebasehostingV1beta1 # Alias the module
      #    service = Firebasehosting::FirebaseHostingService.new
      #
      # @see https://firebase.google.com/docs/hosting/
      class FirebaseHostingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://firebasehosting.googleapis.com/', '',
                client_name: 'google-apis-firebasehosting_v1beta1',
                client_version: Google::Apis::FirebasehostingV1beta1::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Hosting Site in the specified parent Firebase project. Note that
        # Hosting sites can take several minutes to propagate through Firebase systems.
        # @param [String] parent
        #   Required. The Firebase project in which to create a Hosting site, in the
        #   format: projects/PROJECT_IDENTIFIER Refer to the `Site` [`name`](../projects#
        #   Site.FIELDS.name) field for details about PROJECT_IDENTIFIER values.
        # @param [Google::Apis::FirebasehostingV1beta1::Site] site_object
        # @param [String] site_id
        #   Required. Immutable. A globally unique identifier for the Hosting site. This
        #   identifier is used to construct the Firebase-provisioned subdomains for the
        #   site, so it must also be a valid domain name label.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Site] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Site]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_site(parent, site_object = nil, site_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/sites', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Site::Representation
          command.request_object = site_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Site::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Site
          command.params['parent'] = parent unless parent.nil?
          command.query['siteId'] = site_id unless site_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Hosting Site from the specified parent Firebase project.
        # @param [String] name
        #   Required. The fully-qualified resource name for the Hosting site, in the
        #   format: projects/PROJECT_IDENTIFIER/sites/SITE_ID Refer to the `Site` [`name`](
        #   ../projects#Site.FIELDS.name) field for details about PROJECT_IDENTIFIER
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
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Empty::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified Hosting Site.
        # @param [String] name
        #   Required. The fully-qualified resource name for the Hosting site, in the
        #   format: projects/PROJECT_IDENTIFIER/sites/SITE_ID Refer to the `Site` [`name`](
        #   ../projects#Site.FIELDS.name) field for details about PROJECT_IDENTIFIER
        #   values. Since a SITE_ID is a globally unique identifier, you can also use the
        #   unique sub-collection resource access pattern, in the format: projects/-/sites/
        #   SITE_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Site] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Site]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Site::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Site
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Hosting metadata for a specific site.
        # @param [String] name
        #   Required. The site for which to get the SiteConfig, in the format: sites/ site-
        #   name/config
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::SiteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::SiteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_site_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::SiteConfig::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::SiteConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists each Hosting Site associated with the specified parent Firebase project.
        # @param [String] parent
        #   Required. The Firebase project for which to list sites, in the format:
        #   projects/PROJECT_IDENTIFIER Refer to the `Site` [`name`](../projects#Site.
        #   FIELDS.name) field for details about PROJECT_IDENTIFIER values.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of sites to return. The service may return a
        #   lower number if fewer sites exist than this maximum number. If unspecified,
        #   defaults to 40.
        # @param [String] page_token
        #   Optional. A token from a previous call to `ListSites` that tells the server
        #   where to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_sites(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/sites', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListSitesResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListSitesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates attributes of the specified Hosting Site.
        # @param [String] name
        #   Output only. The fully-qualified resource name of the Hosting site, in the
        #   format: projects/PROJECT_IDENTIFIER/sites/SITE_ID PROJECT_IDENTIFIER: the
        #   Firebase project's [`ProjectNumber`](https://firebase.google.com/docs/
        #   reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.
        #   project_number) ***(recommended)*** or its [`ProjectId`](https://firebase.
        #   google.com/docs/reference/firebase-management/rest/v1beta1/projects#
        #   FirebaseProject.FIELDS.project_id). Learn more about using project identifiers
        #   in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510).
        # @param [Google::Apis::FirebasehostingV1beta1::Site] site_object
        # @param [String] update_mask
        #   A set of field names from your Site that you want to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Site] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Site]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_site(name, site_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Site::Representation
          command.request_object = site_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Site::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Site
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the Hosting metadata for a specific site.
        # @param [String] name
        #   Required. The site for which to update the SiteConfig, in the format: sites/
        #   site-name/config
        # @param [Google::Apis::FirebasehostingV1beta1::SiteConfig] site_config_object
        # @param [String] update_mask
        #   A set of field names from your [site configuration](../sites.SiteConfig) that
        #   you want to update. A field will be overwritten if, and only if, it's in the
        #   mask. If a mask is not provided then a default mask of only [`max_versions`](..
        #   /sites.SiteConfig.max_versions) will be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::SiteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::SiteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_site_config(name, site_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::SiteConfig::Representation
          command.request_object = site_config_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::SiteConfig::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::SiteConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new channel in the specified site.
        # @param [String] parent
        #   Required. The site in which to create this channel, in the format: sites/
        #   SITE_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Channel] channel_object
        # @param [String] channel_id
        #   Required. Immutable. A unique ID within the site that identifies the channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_site_channel(parent, channel_object = nil, channel_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/channels', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Channel
          command.params['parent'] = parent unless parent.nil?
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified channel of the specified site. The `live` channel cannot
        # be deleted.
        # @param [String] name
        #   Required. The fully-qualified resource name for the channel, in the format:
        #   sites/SITE_ID/channels/CHANNEL_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_site_channel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Empty::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information for the specified channel of the specified site.
        # @param [String] name
        #   Required. The fully-qualified resource name for the channel, in the format:
        #   sites/SITE_ID/channels/CHANNEL_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_site_channel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Channel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the channels for the specified site. All sites have a default `live`
        # channel.
        # @param [String] parent
        #   Required. The site for which to list channels, in the format: sites/SITE_ID
        # @param [Fixnum] page_size
        #   The maximum number of channels to return. The service may return a lower
        #   number if fewer channels exist than this maximum number. If unspecified,
        #   defaults to 10. The maximum value is 100; values above 100 will be coerced to
        #   100.
        # @param [String] page_token
        #   A token from a previous call to `ListChannels` that tells the server where to
        #   resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_site_channels(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/channels', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListChannelsResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListChannelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information for the specified channel of the specified site.
        # Implicitly creates the channel if it doesn't already exist.
        # @param [String] name
        #   The fully-qualified resource name for the channel, in the format: sites/
        #   SITE_ID/channels/CHANNEL_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Channel] channel_object
        # @param [String] update_mask
        #   A comma-separated list of fields to be updated in this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_site_channel(name, channel_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Channel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new release, which makes the content of the specified version
        # actively display on the appropriate URL(s).
        # @param [String] parent
        #   Required. The site or channel to which the release belongs, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Release] release_object
        # @param [String] version_name
        #   The unique identifier for a version, in the format: sites/SITE_ID/versions/
        #   VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in
        #   the `parent` parameter. This query parameter must be empty if the `type` field
        #   in the request body is `SITE_DISABLE`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Release] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Release]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_site_channel_release(parent, release_object = nil, version_name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/releases', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Release::Representation
          command.request_object = release_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Release::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Release
          command.params['parent'] = parent unless parent.nil?
          command.query['versionName'] = version_name unless version_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the releases that have been created for the specified site or channel.
        # When used to list releases for a site, this list includes releases for both
        # the default `live` channel and any active preview channels for the specified
        # site.
        # @param [String] parent
        #   Required. The site or channel for which to list releases, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [Fixnum] page_size
        #   The maximum number of releases to return. The service may return a lower
        #   number if fewer releases exist than this maximum number. If unspecified,
        #   defaults to 100.
        # @param [String] page_token
        #   A token from a previous call to `releases.list` or `channels.releases.list`
        #   that tells the server where to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListReleasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListReleasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_site_channel_releases(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/releases', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListReleasesResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListReleasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a domain mapping on the specified site.
        # @param [String] parent
        #   Required. The parent to create the domain association for, in the format:
        #   sites/site-name
        # @param [Google::Apis::FirebasehostingV1beta1::Domain] domain_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Domain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Domain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_site_domain(parent, domain_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/domains', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.request_object = domain_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Domain
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the existing domain mapping on the specified site.
        # @param [String] name
        #   Required. The name of the domain association to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_site_domain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Empty::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a domain mapping on the specified site.
        # @param [String] name
        #   Required. The name of the domain configuration to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Domain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Domain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_site_domain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Domain
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the domains for the specified site.
        # @param [String] parent
        #   Required. The parent for which to list domains, in the format: sites/ site-
        #   name
        # @param [Fixnum] page_size
        #   The page size to return. Defaults to 50.
        # @param [String] page_token
        #   The next_page_token from a previous request, if provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListDomainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListDomainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_site_domains(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/domains', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListDomainsResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListDomainsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified domain mapping, creating the mapping as if it does not
        # exist.
        # @param [String] name
        #   Required. The name of the domain association to update or create, if an
        #   association doesn't already exist.
        # @param [Google::Apis::FirebasehostingV1beta1::Domain] domain_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Domain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Domain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_site_domain(name, domain_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.request_object = domain_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Domain
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new release, which makes the content of the specified version
        # actively display on the appropriate URL(s).
        # @param [String] parent
        #   Required. The site or channel to which the release belongs, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Release] release_object
        # @param [String] version_name
        #   The unique identifier for a version, in the format: sites/SITE_ID/versions/
        #   VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in
        #   the `parent` parameter. This query parameter must be empty if the `type` field
        #   in the request body is `SITE_DISABLE`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Release] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Release]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_site_release(parent, release_object = nil, version_name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/releases', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Release::Representation
          command.request_object = release_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Release::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Release
          command.params['parent'] = parent unless parent.nil?
          command.query['versionName'] = version_name unless version_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the releases that have been created for the specified site or channel.
        # When used to list releases for a site, this list includes releases for both
        # the default `live` channel and any active preview channels for the specified
        # site.
        # @param [String] parent
        #   Required. The site or channel for which to list releases, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [Fixnum] page_size
        #   The maximum number of releases to return. The service may return a lower
        #   number if fewer releases exist than this maximum number. If unspecified,
        #   defaults to 100.
        # @param [String] page_token
        #   A token from a previous call to `releases.list` or `channels.releases.list`
        #   that tells the server where to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListReleasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListReleasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_site_releases(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/releases', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListReleasesResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListReleasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new version on the specified target site using the content of the
        # specified version.
        # @param [String] parent
        #   Required. The target site for the cloned version, in the format: sites/
        #   SITE_ID
        # @param [Google::Apis::FirebasehostingV1beta1::CloneVersionRequest] clone_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clone_project_site_version(parent, clone_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/versions:clone', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::CloneVersionRequest::Representation
          command.request_object = clone_version_request_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new version for the specified site.
        # @param [String] parent
        #   Required. The site in which to create the version, in the format: sites/
        #   SITE_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Version] version_object
        # @param [Fixnum] size_bytes
        #   The self-reported size of the version. This value is used for a pre-emptive
        #   quota check for legacy version uploads.
        # @param [String] version_id
        #   A unique id for the new version. This is was only specified for legacy version
        #   creations, and should be blank.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_site_version(parent, version_object = nil, size_bytes: nil, version_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Version::Representation
          command.request_object = version_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Version::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Version
          command.params['parent'] = parent unless parent.nil?
          command.query['sizeBytes'] = size_bytes unless size_bytes.nil?
          command.query['versionId'] = version_id unless version_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified version.
        # @param [String] name
        #   Required. The fully-qualified resource name for the version, in the format:
        #   sites/SITE_ID/versions/VERSION_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_site_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Empty::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the versions that have been created for the specified site. This list
        # includes versions for both the default `live` channel and any active preview
        # channels for the specified site.
        # @param [String] parent
        #   Required. The site or channel for which to list versions, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [String] filter
        #   A filter string used to return a subset of versions in the response. The
        #   currently supported fields for filtering are: `name`, `status`, and `
        #   create_time`. Learn more about filtering in Google's [AIP 160 standard](https:/
        #   /google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of versions to return. The service may return a lower
        #   number if fewer versions exist than this maximum number. If unspecified,
        #   defaults to 25. The maximum value is 100; values above 100 will be coerced to
        #   100.
        # @param [String] page_token
        #   A token from a previous call to `ListVersions` that tells the server where to
        #   resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_site_versions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListVersionsResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified metadata for the specified version. This method will
        # fail with `FAILED_PRECONDITION` in the event of an invalid state transition.
        # The supported [state](../sites.versions#versionstatus) transitions for a
        # version are from `CREATED` to `FINALIZED`. Use [`DeleteVersion`](delete) to
        # set the status of a version to `DELETED`.
        # @param [String] name
        #   The fully-qualified resource name for the version, in the format: sites/
        #   SITE_ID/versions/VERSION_ID This name is provided in the response body when
        #   you call [`CreateVersion`](sites.versions/create).
        # @param [Google::Apis::FirebasehostingV1beta1::Version] version_object
        # @param [String] update_mask
        #   A set of field names from your [version](../sites.versions) that you want to
        #   update. A field will be overwritten if, and only if, it's in the mask. If a
        #   mask is not provided then a default mask of only [`status`](../sites.versions#
        #   Version.FIELDS.status) will be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_site_version(name, version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Version::Representation
          command.request_object = version_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Version::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Version
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds content files to the specified version. Each file must be under 2 GB.
        # @param [String] parent
        #   Required. The version to which to add files, in the format: sites/SITE_ID /
        #   versions/VERSION_ID
        # @param [Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesRequest] populate_version_files_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def populate_project_site_version_files(parent, populate_version_files_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}:populateFiles', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesRequest::Representation
          command.request_object = populate_version_files_request_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the remaining files to be uploaded for the specified version.
        # @param [String] parent
        #   Required. The version for which to list files, in the format: sites/SITE_ID /
        #   versions/VERSION_ID
        # @param [Fixnum] page_size
        #   The maximum number of version files to return. The service may return a lower
        #   number if fewer version files exist than this maximum number. If unspecified,
        #   defaults to 1000.
        # @param [String] page_token
        #   A token from a previous call to `ListVersionFiles` that tells the server where
        #   to resume listing.
        # @param [String] status
        #   The type of files that should be listed for the specified version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListVersionFilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListVersionFilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_site_version_files(parent, page_size: nil, page_token: nil, status: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/files', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListVersionFilesResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListVersionFilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['status'] = status unless status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Hosting metadata for a specific site.
        # @param [String] name
        #   Required. The site for which to get the SiteConfig, in the format: sites/ site-
        #   name/config
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::SiteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::SiteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_site_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::SiteConfig::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::SiteConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the Hosting metadata for a specific site.
        # @param [String] name
        #   Required. The site for which to update the SiteConfig, in the format: sites/
        #   site-name/config
        # @param [Google::Apis::FirebasehostingV1beta1::SiteConfig] site_config_object
        # @param [String] update_mask
        #   A set of field names from your [site configuration](../sites.SiteConfig) that
        #   you want to update. A field will be overwritten if, and only if, it's in the
        #   mask. If a mask is not provided then a default mask of only [`max_versions`](..
        #   /sites.SiteConfig.max_versions) will be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::SiteConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::SiteConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_site_config(name, site_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::SiteConfig::Representation
          command.request_object = site_config_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::SiteConfig::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::SiteConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new channel in the specified site.
        # @param [String] parent
        #   Required. The site in which to create this channel, in the format: sites/
        #   SITE_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Channel] channel_object
        # @param [String] channel_id
        #   Required. Immutable. A unique ID within the site that identifies the channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_site_channel(parent, channel_object = nil, channel_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/channels', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Channel
          command.params['parent'] = parent unless parent.nil?
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified channel of the specified site. The `live` channel cannot
        # be deleted.
        # @param [String] name
        #   Required. The fully-qualified resource name for the channel, in the format:
        #   sites/SITE_ID/channels/CHANNEL_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_site_channel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Empty::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information for the specified channel of the specified site.
        # @param [String] name
        #   Required. The fully-qualified resource name for the channel, in the format:
        #   sites/SITE_ID/channels/CHANNEL_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_site_channel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Channel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the channels for the specified site. All sites have a default `live`
        # channel.
        # @param [String] parent
        #   Required. The site for which to list channels, in the format: sites/SITE_ID
        # @param [Fixnum] page_size
        #   The maximum number of channels to return. The service may return a lower
        #   number if fewer channels exist than this maximum number. If unspecified,
        #   defaults to 10. The maximum value is 100; values above 100 will be coerced to
        #   100.
        # @param [String] page_token
        #   A token from a previous call to `ListChannels` that tells the server where to
        #   resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_site_channels(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/channels', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListChannelsResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListChannelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information for the specified channel of the specified site.
        # Implicitly creates the channel if it doesn't already exist.
        # @param [String] name
        #   The fully-qualified resource name for the channel, in the format: sites/
        #   SITE_ID/channels/CHANNEL_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Channel] channel_object
        # @param [String] update_mask
        #   A comma-separated list of fields to be updated in this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_site_channel(name, channel_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Channel::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Channel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new release, which makes the content of the specified version
        # actively display on the appropriate URL(s).
        # @param [String] parent
        #   Required. The site or channel to which the release belongs, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Release] release_object
        # @param [String] version_name
        #   The unique identifier for a version, in the format: sites/SITE_ID/versions/
        #   VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in
        #   the `parent` parameter. This query parameter must be empty if the `type` field
        #   in the request body is `SITE_DISABLE`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Release] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Release]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_site_channel_release(parent, release_object = nil, version_name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/releases', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Release::Representation
          command.request_object = release_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Release::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Release
          command.params['parent'] = parent unless parent.nil?
          command.query['versionName'] = version_name unless version_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the releases that have been created for the specified site or channel.
        # When used to list releases for a site, this list includes releases for both
        # the default `live` channel and any active preview channels for the specified
        # site.
        # @param [String] parent
        #   Required. The site or channel for which to list releases, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [Fixnum] page_size
        #   The maximum number of releases to return. The service may return a lower
        #   number if fewer releases exist than this maximum number. If unspecified,
        #   defaults to 100.
        # @param [String] page_token
        #   A token from a previous call to `releases.list` or `channels.releases.list`
        #   that tells the server where to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListReleasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListReleasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_site_channel_releases(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/releases', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListReleasesResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListReleasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a domain mapping on the specified site.
        # @param [String] parent
        #   Required. The parent to create the domain association for, in the format:
        #   sites/site-name
        # @param [Google::Apis::FirebasehostingV1beta1::Domain] domain_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Domain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Domain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_site_domain(parent, domain_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/domains', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.request_object = domain_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Domain
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the existing domain mapping on the specified site.
        # @param [String] name
        #   Required. The name of the domain association to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_site_domain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Empty::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a domain mapping on the specified site.
        # @param [String] name
        #   Required. The name of the domain configuration to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Domain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Domain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_site_domain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Domain
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the domains for the specified site.
        # @param [String] parent
        #   Required. The parent for which to list domains, in the format: sites/ site-
        #   name
        # @param [Fixnum] page_size
        #   The page size to return. Defaults to 50.
        # @param [String] page_token
        #   The next_page_token from a previous request, if provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListDomainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListDomainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_site_domains(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/domains', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListDomainsResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListDomainsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified domain mapping, creating the mapping as if it does not
        # exist.
        # @param [String] name
        #   Required. The name of the domain association to update or create, if an
        #   association doesn't already exist.
        # @param [Google::Apis::FirebasehostingV1beta1::Domain] domain_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Domain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Domain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_site_domain(name, domain_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.request_object = domain_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Domain::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Domain
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new release, which makes the content of the specified version
        # actively display on the appropriate URL(s).
        # @param [String] parent
        #   Required. The site or channel to which the release belongs, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Release] release_object
        # @param [String] version_name
        #   The unique identifier for a version, in the format: sites/SITE_ID/versions/
        #   VERSION_ID The SITE_ID in this version identifier must match the SITE_ID in
        #   the `parent` parameter. This query parameter must be empty if the `type` field
        #   in the request body is `SITE_DISABLE`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Release] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Release]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_site_release(parent, release_object = nil, version_name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/releases', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Release::Representation
          command.request_object = release_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Release::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Release
          command.params['parent'] = parent unless parent.nil?
          command.query['versionName'] = version_name unless version_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the releases that have been created for the specified site or channel.
        # When used to list releases for a site, this list includes releases for both
        # the default `live` channel and any active preview channels for the specified
        # site.
        # @param [String] parent
        #   Required. The site or channel for which to list releases, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [Fixnum] page_size
        #   The maximum number of releases to return. The service may return a lower
        #   number if fewer releases exist than this maximum number. If unspecified,
        #   defaults to 100.
        # @param [String] page_token
        #   A token from a previous call to `releases.list` or `channels.releases.list`
        #   that tells the server where to resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListReleasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListReleasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_site_releases(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/releases', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListReleasesResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListReleasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new version on the specified target site using the content of the
        # specified version.
        # @param [String] parent
        #   Required. The target site for the cloned version, in the format: sites/
        #   SITE_ID
        # @param [Google::Apis::FirebasehostingV1beta1::CloneVersionRequest] clone_version_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clone_site_version(parent, clone_version_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/versions:clone', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::CloneVersionRequest::Representation
          command.request_object = clone_version_request_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Operation::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new version for the specified site.
        # @param [String] parent
        #   Required. The site in which to create the version, in the format: sites/
        #   SITE_ID
        # @param [Google::Apis::FirebasehostingV1beta1::Version] version_object
        # @param [Fixnum] size_bytes
        #   The self-reported size of the version. This value is used for a pre-emptive
        #   quota check for legacy version uploads.
        # @param [String] version_id
        #   A unique id for the new version. This is was only specified for legacy version
        #   creations, and should be blank.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_site_version(parent, version_object = nil, size_bytes: nil, version_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/versions', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Version::Representation
          command.request_object = version_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Version::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Version
          command.params['parent'] = parent unless parent.nil?
          command.query['sizeBytes'] = size_bytes unless size_bytes.nil?
          command.query['versionId'] = version_id unless version_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified version.
        # @param [String] name
        #   Required. The fully-qualified resource name for the version, in the format:
        #   sites/SITE_ID/versions/VERSION_ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_site_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Empty::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the versions that have been created for the specified site. This list
        # includes versions for both the default `live` channel and any active preview
        # channels for the specified site.
        # @param [String] parent
        #   Required. The site or channel for which to list versions, in either of the
        #   following formats: - sites/SITE_ID - sites/SITE_ID/channels/CHANNEL_ID
        # @param [String] filter
        #   A filter string used to return a subset of versions in the response. The
        #   currently supported fields for filtering are: `name`, `status`, and `
        #   create_time`. Learn more about filtering in Google's [AIP 160 standard](https:/
        #   /google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of versions to return. The service may return a lower
        #   number if fewer versions exist than this maximum number. If unspecified,
        #   defaults to 25. The maximum value is 100; values above 100 will be coerced to
        #   100.
        # @param [String] page_token
        #   A token from a previous call to `ListVersions` that tells the server where to
        #   resume listing.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_site_versions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/versions', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListVersionsResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified metadata for the specified version. This method will
        # fail with `FAILED_PRECONDITION` in the event of an invalid state transition.
        # The supported [state](../sites.versions#versionstatus) transitions for a
        # version are from `CREATED` to `FINALIZED`. Use [`DeleteVersion`](delete) to
        # set the status of a version to `DELETED`.
        # @param [String] name
        #   The fully-qualified resource name for the version, in the format: sites/
        #   SITE_ID/versions/VERSION_ID This name is provided in the response body when
        #   you call [`CreateVersion`](sites.versions/create).
        # @param [Google::Apis::FirebasehostingV1beta1::Version] version_object
        # @param [String] update_mask
        #   A set of field names from your [version](../sites.versions) that you want to
        #   update. A field will be overwritten if, and only if, it's in the mask. If a
        #   mask is not provided then a default mask of only [`status`](../sites.versions#
        #   Version.FIELDS.status) will be used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_site_version(name, version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::Version::Representation
          command.request_object = version_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::Version::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::Version
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds content files to the specified version. Each file must be under 2 GB.
        # @param [String] parent
        #   Required. The version to which to add files, in the format: sites/SITE_ID /
        #   versions/VERSION_ID
        # @param [Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesRequest] populate_version_files_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def populate_site_version_files(parent, populate_version_files_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}:populateFiles', options)
          command.request_representation = Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesRequest::Representation
          command.request_object = populate_version_files_request_object
          command.response_representation = Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::PopulateVersionFilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the remaining files to be uploaded for the specified version.
        # @param [String] parent
        #   Required. The version for which to list files, in the format: sites/SITE_ID /
        #   versions/VERSION_ID
        # @param [Fixnum] page_size
        #   The maximum number of version files to return. The service may return a lower
        #   number if fewer version files exist than this maximum number. If unspecified,
        #   defaults to 1000.
        # @param [String] page_token
        #   A token from a previous call to `ListVersionFiles` that tells the server where
        #   to resume listing.
        # @param [String] status
        #   The type of files that should be listed for the specified version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasehostingV1beta1::ListVersionFilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasehostingV1beta1::ListVersionFilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_site_version_files(parent, page_size: nil, page_token: nil, status: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/files', options)
          command.response_representation = Google::Apis::FirebasehostingV1beta1::ListVersionFilesResponse::Representation
          command.response_class = Google::Apis::FirebasehostingV1beta1::ListVersionFilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['status'] = status unless status.nil?
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
