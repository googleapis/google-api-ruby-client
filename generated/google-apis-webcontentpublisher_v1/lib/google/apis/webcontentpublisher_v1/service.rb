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
    module WebcontentpublisherV1
      # Web Content Publisher API
      #
      # webcontentpublisher.googleapis.com API, a service for web content publishers.
      #
      # @example
      #    require 'google/apis/webcontentpublisher_v1'
      #
      #    Webcontentpublisher = Google::Apis::WebcontentpublisherV1 # Alias the module
      #    service = Webcontentpublisher::WebContentPublisherService.new
      #
      # @see https://developers.google.com/news/subscribe
      class WebContentPublisherService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://webcontentpublisher.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-webcontentpublisher_v1',
                client_version: Google::Apis::WebcontentpublisherV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a publication.
        # @param [String] parent
        #   Required. The parent resource where this publication will be created. Format: `
        #   organizations/`organization``.
        # @param [Google::Apis::WebcontentpublisherV1::Publication] publication_object
        # @param [String] publication_id
        #   Optional. The unique identifier of the publication to create. If not specified,
        #   the server will generate a random publication ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebcontentpublisherV1::Publication] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebcontentpublisherV1::Publication]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_publication(parent, publication_object = nil, publication_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/publications', options)
          command.request_representation = Google::Apis::WebcontentpublisherV1::Publication::Representation
          command.request_object = publication_object
          command.response_representation = Google::Apis::WebcontentpublisherV1::Publication::Representation
          command.response_class = Google::Apis::WebcontentpublisherV1::Publication
          command.params['parent'] = parent unless parent.nil?
          command.query['publicationId'] = publication_id unless publication_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a publication.
        # @param [String] name
        #   Required. The resource name of the publication to retrieve. Format: `
        #   organizations/`organization`/publications/`publication``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebcontentpublisherV1::Publication] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebcontentpublisherV1::Publication]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_publication(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WebcontentpublisherV1::Publication::Representation
          command.response_class = Google::Apis::WebcontentpublisherV1::Publication
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists publications.
        # @param [String] parent
        #   Required. The parent organization whose publications to list. Format: `
        #   organizations/`organization``.
        # @param [String] filter
        #   Optional. A filter expression to filter the publications returned.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of publications to return. The service may return
        #   fewer than this value. If unspecified, at most 50 publications will be
        #   returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListPublications` call, to
        #   retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebcontentpublisherV1::ListPublicationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebcontentpublisherV1::ListPublicationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_publications(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/publications', options)
          command.response_representation = Google::Apis::WebcontentpublisherV1::ListPublicationsResponse::Representation
          command.response_class = Google::Apis::WebcontentpublisherV1::ListPublicationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a publication.
        # @param [String] name
        #   Identifier. The resource name of the publication. Format: organizations/`
        #   organization`/publications/`publication`
        # @param [Google::Apis::WebcontentpublisherV1::Publication] publication_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebcontentpublisherV1::Publication] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebcontentpublisherV1::Publication]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_publication(name, publication_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::WebcontentpublisherV1::Publication::Representation
          command.request_object = publication_object
          command.response_representation = Google::Apis::WebcontentpublisherV1::Publication::Representation
          command.response_class = Google::Apis::WebcontentpublisherV1::Publication
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CTA.
        # @param [String] parent
        #   Required. The parent publication resource where this CTA will be created.
        #   Format: `organizations/`organization`/publications/`publication``.
        # @param [Google::Apis::WebcontentpublisherV1::Cta] cta_object
        # @param [String] cta_id
        #   Optional. The unique identifier of the CTA to create. If not specified, the
        #   server will generate a random CTA ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebcontentpublisherV1::Cta] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebcontentpublisherV1::Cta]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_publication_cta(parent, cta_object = nil, cta_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/ctas', options)
          command.request_representation = Google::Apis::WebcontentpublisherV1::Cta::Representation
          command.request_object = cta_object
          command.response_representation = Google::Apis::WebcontentpublisherV1::Cta::Representation
          command.response_class = Google::Apis::WebcontentpublisherV1::Cta
          command.params['parent'] = parent unless parent.nil?
          command.query['ctaId'] = cta_id unless cta_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a CTA.
        # @param [String] name
        #   Required. The resource name of the CTA to retrieve. Format: `organizations/`
        #   organization`/publications/`publication`/ctas/`cta``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebcontentpublisherV1::Cta] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebcontentpublisherV1::Cta]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_publication_cta(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::WebcontentpublisherV1::Cta::Representation
          command.response_class = Google::Apis::WebcontentpublisherV1::Cta
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CTAs.
        # @param [String] parent
        #   Required. The parent publication resource whose CTAs to list. Format: `
        #   organizations/`organization`/publications/`publication``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of CTAs to return. The service may return fewer
        #   than this value. If unspecified, at most 50 CTAs will be returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListCtas` call, to retrieve
        #   the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebcontentpublisherV1::ListCtasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebcontentpublisherV1::ListCtasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_publication_ctas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/ctas', options)
          command.response_representation = Google::Apis::WebcontentpublisherV1::ListCtasResponse::Representation
          command.response_class = Google::Apis::WebcontentpublisherV1::ListCtasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks if a user is eligible for free article access.
        # @param [String] name
        #   Required. The resource name of the publication. Format: publications/`
        #   publication_id`
        # @param [String] http_referrer
        #   Required. The HTTP referrer.
        # @param [String] uri
        #   Required. The URI of the content.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebcontentpublisherV1::CheckFreeAccessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebcontentpublisherV1::CheckFreeAccessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_publication_free_access(name, http_referrer: nil, uri: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:checkFreeAccess', options)
          command.response_representation = Google::Apis::WebcontentpublisherV1::CheckFreeAccessResponse::Representation
          command.response_class = Google::Apis::WebcontentpublisherV1::CheckFreeAccessResponse
          command.params['name'] = name unless name.nil?
          command.query['httpReferrer'] = http_referrer unless http_referrer.nil?
          command.query['uri'] = uri unless uri.nil?
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
