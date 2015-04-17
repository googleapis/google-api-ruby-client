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
    module FreebaseV1
      # Freebase Search
      #
      # Find Freebase entities using textual queries and other constraints.
      #
      # @example
      #    require 'google/apis/freebase_v1'
      #
      #    Freebase = Google::Apis::FreebaseV1 # Alias the module
      #    service = Freebase::FreebaseService.new
      #
      # @see https://developers.google.com/freebase/
      class FreebaseService < Google::Apis::Core::BaseService

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'freebase/v1/')
        end

        # Reconcile entities to Freebase open data.
        # @param [Float] confidence
        #   Required confidence for a candidate to match. Must be between .5 and 1.0
        # @param [Array<String>, String] kind
        #   Classifications of entity e.g. type, category, title.
        # @param [Array<String>, String] lang
        #   Languages for names and values. First language is used for display. Default is
        #   'en'.
        # @param [Fixnum] limit
        #   Maximum number of candidates to return.
        # @param [String] name
        #   Name of entity.
        # @param [Array<String>, String] prop
        #   Property values for entity formatted as
        #   :
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FreebaseV1::ReconcileGet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FreebaseV1::ReconcileGet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reconcile(confidence: nil, kind: nil, lang: nil, limit: nil, name: nil, prop: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'reconcile'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::FreebaseV1::ReconcileGetRepresentation
          command.response_class = Google::Apis::FreebaseV1::ReconcileGet
          command.query['confidence'] = confidence unless confidence.nil?
          command.query['kind'] = kind unless kind.nil?
          command.query['lang'] = lang unless lang.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['name'] = name unless name.nil?
          command.query['prop'] = prop unless prop.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Search Freebase open data.
        # @param [String] as_of_time
        #   A mql as_of_time value to use with mql_output queries.
        # @param [String] callback
        #   JS method name for JSONP callbacks.
        # @param [Fixnum] cursor
        #   The cursor value to use for the next page of results.
        # @param [Array<String>, String] domain
        #   Restrict to topics with this Freebase domain id.
        # @param [String] encode
        #   The encoding of the response. You can use this parameter to enable html
        #   encoding.
        # @param [Boolean] exact
        #   Query on exact name and keys only.
        # @param [Array<String>, String] filter
        #   A filter to apply to the query.
        # @param [String] format
        #   Structural format of the json response.
        # @param [String] help
        #   The keyword to request help on.
        # @param [Boolean] indent
        #   Whether to indent the json results or not.
        # @param [Array<String>, String] lang
        #   The code of the language to run the query with. Default is 'en'.
        # @param [Fixnum] limit
        #   Maximum number of results to return.
        # @param [Array<String>, String] mid
        #   A mid to use instead of a query.
        # @param [String] mql_output
        #   The MQL query to run againist the results to extract more data.
        # @param [String] output
        #   An output expression to request data from matches.
        # @param [Boolean] prefixed
        #   Prefix match against names and aliases.
        # @param [String] query
        #   Query term to search for.
        # @param [String] scoring
        #   Relevance scoring algorithm to use.
        # @param [String] spell
        #   Request 'did you mean' suggestions
        # @param [Boolean] stemmed
        #   Query on stemmed names and aliases. May not be used with prefixed.
        # @param [Array<String>, String] type
        #   Restrict to topics with this Freebase type id.
        # @param [Array<String>, String] with
        #   A rule to match against.
        # @param [Array<String>, String] without
        #   A rule to not match against.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search(as_of_time: nil, callback: nil, cursor: nil, domain: nil, encode: nil, exact: nil, filter: nil, format: nil, help: nil, indent: nil, lang: nil, limit: nil, mid: nil, mql_output: nil, output: nil, prefixed: nil, query: nil, scoring: nil, spell: nil, stemmed: nil, type: nil, with: nil, without: nil, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          path = 'search'
          if download_dest.nil?
            command =  make_simple_command(:get, path, options)
          else
            command = make_download_command(:get, path, options)
            command.download_dest = download_dest
          end
          command.query['as_of_time'] = as_of_time unless as_of_time.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['cursor'] = cursor unless cursor.nil?
          command.query['domain'] = domain unless domain.nil?
          command.query['encode'] = encode unless encode.nil?
          command.query['exact'] = exact unless exact.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['format'] = format unless format.nil?
          command.query['help'] = help unless help.nil?
          command.query['indent'] = indent unless indent.nil?
          command.query['lang'] = lang unless lang.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['mid'] = mid unless mid.nil?
          command.query['mql_output'] = mql_output unless mql_output.nil?
          command.query['output'] = output unless output.nil?
          command.query['prefixed'] = prefixed unless prefixed.nil?
          command.query['query'] = query unless query.nil?
          command.query['scoring'] = scoring unless scoring.nil?
          command.query['spell'] = spell unless spell.nil?
          command.query['stemmed'] = stemmed unless stemmed.nil?
          command.query['type'] = type unless type.nil?
          command.query['with'] = with unless with.nil?
          command.query['without'] = without unless without.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
