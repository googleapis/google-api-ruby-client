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
    module GmailpostmastertoolsV2
      # Gmail Postmaster Tools API
      #
      # The Postmaster Tools API is a RESTful API that provides programmatic access to
      #  email traffic metrics (like spam reports, delivery errors etc) otherwise
      #  available through the Gmail Postmaster Tools UI currently.
      #
      # @example
      #    require 'google/apis/gmailpostmastertools_v2'
      #
      #    Gmailpostmastertools = Google::Apis::GmailpostmastertoolsV2 # Alias the module
      #    service = Gmailpostmastertools::PostmasterToolsService.new
      #
      # @see https://developers.google.com/workspace/gmail/postmaster
      class PostmasterToolsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://gmailpostmastertools.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-gmailpostmastertools_v2',
                client_version: Google::Apis::GmailpostmastertoolsV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Executes a batch of QueryDomainStats requests for multiple domains. Returns
        # PERMISSION_DENIED if you don't have permission to access DomainStats for any
        # of the requested domains.
        # @param [Google::Apis::GmailpostmastertoolsV2::BatchQueryDomainStatsRequest] batch_query_domain_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::BatchQueryDomainStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::BatchQueryDomainStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_query_domain_stats(batch_query_domain_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/domainStats:batchQuery', options)
          command.request_representation = Google::Apis::GmailpostmastertoolsV2::BatchQueryDomainStatsRequest::Representation
          command.request_object = batch_query_domain_stats_request_object
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::BatchQueryDomainStatsResponse::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::BatchQueryDomainStatsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Developer Preview](https://developers.google.com/workspace/preview): Adds a
        # domain to the user's account. Returns INVALID_ARGUMENT if a domain is not
        # provided. Returns ALREADY_EXISTS if the domain is already registered by the
        # user.
        # @param [Google::Apis::GmailpostmastertoolsV2::CreateDomainRequest] create_domain_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::Domain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::Domain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_domain(create_domain_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/domains', options)
          command.request_representation = Google::Apis::GmailpostmastertoolsV2::CreateDomainRequest::Representation
          command.request_object = create_domain_request_object
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::Domain::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::Domain
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Developer Preview](https://developers.google.com/workspace/preview): Deletes
        # a domain from the user's account. Returns NOT_FOUND if the domain is not
        # registered by the user.
        # @param [String] name
        #   Required. The domain to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_domain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::Empty::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves detailed information about a domain registered by you. Returns
        # NOT_FOUND if the domain is not registered by you. Domain represents the
        # metadata of a domain that has been registered within the system and linked to
        # a user.
        # @param [String] name
        #   Required. The resource name of the domain. Format: `domains/`domain_name``,
        #   where domain_name is the fully qualified domain name (i.e., mymail.mydomain.
        #   com).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::Domain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::Domain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_domain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::Domain::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::Domain
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the compliance status for a given domain. Returns PERMISSION_DENIED
        # if you don't have permission to access compliance status for the domain.
        # @param [String] name
        #   Required. The resource name of the domain's compliance status to retrieve.
        #   Format: `domains/`domain_id`/complianceStatus`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::DomainComplianceStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::DomainComplianceStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_domain_compliance_status(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::DomainComplianceStatus::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::DomainComplianceStatus
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Developer Preview](https://developers.google.com/workspace/preview): Gets a
        # verification token used for verifying a user's ownership over a domain.
        # @param [String] name
        #   Required. The resource name of the verification token to retrieve. Format: `
        #   domains/`domain`/verificationToken`
        # @param [String] verification_method
        #   Required. The verification method used. Must be specified, i.e. TXT or CNAME.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::DomainVerificationToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::DomainVerificationToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_domain_verification_token(name, verification_method: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::DomainVerificationToken::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::DomainVerificationToken
          command.params['name'] = name unless name.nil?
          command.query['verificationMethod'] = verification_method unless verification_method.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of all domains registered by you, along with their
        # corresponding metadata. The order of domains in the response is unspecified
        # and non-deterministic. Newly registered domains will not necessarily be added
        # to the end of this list.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer domains than requested.
        #   If unspecified, the default value for this field is 10. The maximum value for
        #   this field is 200.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::ListDomainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::ListDomainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_domains(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/domains', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::ListDomainsResponse::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::ListDomainsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Developer Preview](https://developers.google.com/workspace/preview): Verifies
        # a user's ownership of a domain at the DNS level. Note that this is distinct
        # from checking if the user has OWNER status within IRDB.
        # @param [String] name
        #   Required. The domain to verify.
        # @param [Google::Apis::GmailpostmastertoolsV2::VerifyDomainRequest] verify_domain_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::VerifyDomainResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::VerifyDomainResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_domain(name, verify_domain_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:verify', options)
          command.request_representation = Google::Apis::GmailpostmastertoolsV2::VerifyDomainRequest::Representation
          command.request_object = verify_domain_request_object
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::VerifyDomainResponse::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::VerifyDomainResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of domain statistics for a given domain and time period.
        # Returns statistics only for dates where data is available. Returns
        # PERMISSION_DENIED if you don't have permission to access DomainStats for the
        # domain.
        # @param [String] parent
        #   Required. The parent resource name where the stats are queried. Format:
        #   domains/`domain`
        # @param [Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsRequest] query_domain_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_domain_stats(parent, query_domain_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/domainStats:query', options)
          command.request_representation = Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsRequest::Representation
          command.request_object = query_domain_stats_request_object
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsResponse::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::QueryDomainStatsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Developer Preview](https://developers.google.com/workspace/preview): Creates
        # a user, who has access to a domain. Returns INVALID_ARGUMENT if a user is not
        # provided.
        # @param [String] parent
        #   Required. The parent resource where this user will be created. Format: domains/
        #   `domain`
        # @param [Google::Apis::GmailpostmastertoolsV2::CreateUserRequest] create_user_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_user(parent, create_user_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/users', options)
          command.request_representation = Google::Apis::GmailpostmastertoolsV2::CreateUserRequest::Representation
          command.request_object = create_user_request_object
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::User::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::User
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Developer Preview](https://developers.google.com/workspace/preview): Deletes
        # a user from a domain. Returns NOT_FOUND if the user does not exist.
        # @param [String] name
        #   Required. The resource name of the user to delete. Format: domains/`domain`/
        #   users/`user`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_domain_user(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::Empty::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Developer Preview](https://developers.google.com/workspace/preview):
        # Retrieves detailed information about a user that has access to a domain.
        # Returns NOT_FOUND if the user does not exist.
        # @param [String] name
        #   Required. The resource name of the user to retrieve. Format: `domains/`domain`/
        #   users/`user``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_domain_user(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::User::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::User
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Developer Preview](https://developers.google.com/workspace/preview): Lists
        # the users that have access to a domain.
        # @param [String] parent
        #   Required. The parent resource name for which to list users. Format: `domains/`
        #   domain``
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer users than requested.
        #   If unspecified, the default value for this field is 10. The maximum value for
        #   this field is 200.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::ListUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::ListUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_domain_users(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/users', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::ListUsersResponse::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::ListUsersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Developer Preview](https://developers.google.com/workspace/preview): Updates
        # a user for a domain. Only Owners and Admins can execute this RPC, only a user'
        # s domain permission will be allowed to be updated. Returns NOT_FOUND if the
        # user does not exist. Returns INVALID_ARGUMENT if a permission is not provided
        # or is PERMISSION_UNSPECIFIED, NONE, or OWNER.
        # @param [String] name
        #   Identifier. The resource name of the user. Format: users/`user` Note: `user`
        #   is the user's email address.
        # @param [Google::Apis::GmailpostmastertoolsV2::User] user_object
        # @param [String] update_mask
        #   The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV2::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV2::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_domain_user(name, user_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::GmailpostmastertoolsV2::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::GmailpostmastertoolsV2::User::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV2::User
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
