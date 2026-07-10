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
    module SafebrowsingV5
      # Safe Browsing API
      #
      # Enables client applications to check web resources (most commonly URLs)
      #  against Google-generated lists of unsafe web resources. The Safe Browsing APIs
      #  are for non-commercial use only. If you need to use APIs to detect malicious
      #  URLs for commercial purposes – meaning “for sale or revenue-generating
      #  purposes” – please refer to the Web Risk API.
      #
      # @example
      #    require 'google/apis/safebrowsing_v5'
      #
      #    Safebrowsing = Google::Apis::SafebrowsingV5 # Alias the module
      #    service = Safebrowsing::SafebrowsingService.new
      #
      # @see https://developers.google.com/safe-browsing/
      class SafebrowsingService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://safebrowsing.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-safebrowsing_v5',
                client_version: Google::Apis::SafebrowsingV5::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets the latest contents of a hash list. A hash list may either by a threat
        # list or a non-threat list such as the Global Cache. This is a standard Get
        # method as defined by https://google.aip.dev/131 and the HTTP method is also
        # GET.
        # @param [String] name
        #   Required. The name of this particular hash list. It may be a threat list, or
        #   it may be the Global Cache.
        # @param [Fixnum] size_constraints_max_database_entries
        #   Sets the maximum number of entries that the client is willing to have in the
        #   local database for the list. (The server MAY cause the client to store less
        #   than this number of entries.) If omitted or zero, no database size limit is
        #   set.
        # @param [Fixnum] size_constraints_max_update_entries
        #   The maximum size in number of entries. The update will not contain more
        #   entries than this value, but it is possible that the update will contain fewer
        #   entries than this value. This MUST be at least 1024. If omitted or zero, no
        #   update size limit is set.
        # @param [String] version
        #   The version of the hash list that the client already has. If this is the first
        #   time the client is fetching the hash list, this field MUST be left empty.
        #   Otherwise, the client SHOULD supply the version previously received from the
        #   server. The client MUST NOT manipulate those bytes. **What's new in V5**: in
        #   V4 of the API, this was called `states`; it is now renamed to `version` for
        #   clarity.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_hash_list(name, size_constraints_max_database_entries: nil, size_constraints_max_update_entries: nil, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v5/hashList/{name}', options)
          command.response_representation = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList::Representation
          command.response_class = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList
          command.params['name'] = name unless name.nil?
          command.query['sizeConstraints.maxDatabaseEntries'] = size_constraints_max_database_entries unless size_constraints_max_database_entries.nil?
          command.query['sizeConstraints.maxUpdateEntries'] = size_constraints_max_update_entries unless size_constraints_max_update_entries.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets multiple hash lists at once. It is very common for a client to need to
        # get multiple hash lists. Using this method is preferred over using the regular
        # Get method multiple times. This is a standard batch Get method as defined by
        # https://google.aip.dev/231 and the HTTP method is also GET.
        # @param [Array<String>, String] names
        #   Required. The names of the particular hash lists. The list MAY be a threat
        #   list, or it may be the Global Cache. The names MUST NOT contain duplicates; if
        #   they did, the client will get an error.
        # @param [Fixnum] size_constraints_max_database_entries
        #   Sets the maximum number of entries that the client is willing to have in the
        #   local database for the list. (The server MAY cause the client to store less
        #   than this number of entries.) If omitted or zero, no database size limit is
        #   set.
        # @param [Fixnum] size_constraints_max_update_entries
        #   The maximum size in number of entries. The update will not contain more
        #   entries than this value, but it is possible that the update will contain fewer
        #   entries than this value. This MUST be at least 1024. If omitted or zero, no
        #   update size limit is set.
        # @param [Array<String>, String] version
        #   The versions of the hash list that the client already has. If this is the
        #   first time the client is fetching the hash lists, the field should be left
        #   empty. Otherwise, the client should supply the versions previously received
        #   from the server. The client MUST NOT manipulate those bytes. The client need
        #   not send the versions in the same order as the corresponding list names. The
        #   client may send fewer or more versions in a request than there are names.
        #   However the client MUST NOT send multiple versions that correspond to the same
        #   name; if it did, the client will get an error. Historical note: in V4 of the
        #   API, this was called `states`; it is now renamed to `version` for clarity.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5BatchGetHashListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5BatchGetHashListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_hash_list_get(names: nil, size_constraints_max_database_entries: nil, size_constraints_max_update_entries: nil, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v5/hashLists:batchGet', options)
          command.response_representation = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5BatchGetHashListsResponse::Representation
          command.response_class = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
          command.query['names'] = names unless names.nil?
          command.query['sizeConstraints.maxDatabaseEntries'] = size_constraints_max_database_entries unless size_constraints_max_database_entries.nil?
          command.query['sizeConstraints.maxUpdateEntries'] = size_constraints_max_update_entries unless size_constraints_max_update_entries.nil?
          command.query['version'] = version unless version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists hash lists. In the V5 API, Google will never remove a hash list that has
        # ever been returned by this method. This enables clients to skip using this
        # method and simply hard-code all hash lists they need. This is a standard List
        # method as defined by https://google.aip.dev/132 and the HTTP method is GET.
        # @param [Fixnum] page_size
        #   The maximum number of hash lists to return. The service may return fewer than
        #   this value. If unspecified, the server will choose a page size, which may be
        #   larger than the number of hash lists so that pagination is not necessary.
        # @param [String] page_token
        #   A page token, received from a previous `ListHashLists` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5ListHashListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5ListHashListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_hash_lists(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v5/hashLists', options)
          command.response_representation = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5ListHashListsResponse::Representation
          command.response_class = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5ListHashListsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for full hashes matching the specified prefixes. This is a custom
        # method as defined by https://google.aip.dev/136 (the custom method refers to
        # this method having a custom name within Google's general API development
        # nomenclature; it does not refer to using a custom HTTP method).
        # @param [Array<String>, String] hash_prefixes
        #   Required. The hash prefixes to be looked up. Clients MUST NOT send more than
        #   1000 hash prefixes. However, following the URL processing procedure, clients
        #   SHOULD NOT need to send more than 30 hash prefixes. Currently each hash prefix
        #   is required to be exactly 4 bytes long. This MAY be relaxed in the future.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchHashesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchHashesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_hashes(hash_prefixes: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v5/hashes:search', options)
          command.response_representation = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchHashesResponse::Representation
          command.response_class = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchHashesResponse
          command.query['hashPrefixes'] = hash_prefixes unless hash_prefixes.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for URLs matching known threats. Each URL and it's host-suffix and
        # path-prefix expressions (up to a limited depth) are checked. This means that
        # the response may contain URLs that were not included in the request, but are
        # expressions of the requested URLs.
        # @param [Array<String>, String] urls
        #   Required. The URLs to be looked up. Clients MUST NOT send more than 50 URLs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchUrlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchUrlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_urls(urls: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v5/urls:search', options)
          command.response_representation = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchUrlsResponse::Representation
          command.response_class = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchUrlsResponse
          command.query['urls'] = urls unless urls.nil?
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
