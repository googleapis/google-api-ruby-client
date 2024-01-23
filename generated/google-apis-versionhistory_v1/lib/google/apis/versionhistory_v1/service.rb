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
    module VersionhistoryV1
      # versionhistory.googleapis.com API
      #
      # Version History API - Prod
      #
      # @example
      #    require 'google/apis/versionhistory_v1'
      #
      #    Versionhistory = Google::Apis::VersionhistoryV1 # Alias the module
      #    service = Versionhistory::VersionHistoryService.new
      #
      # @see https://developers.chrome.com/versionhistory
      class VersionHistoryService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://versionhistory.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-versionhistory_v1',
                client_version: Google::Apis::VersionhistoryV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns list of platforms that are available for a given product. The resource
        # "product" has no resource name in its name.
        # @param [String] parent
        #   Required. The product, which owns this collection of platforms. Format: `
        #   product`
        # @param [Fixnum] page_size
        #   Optional. Optional limit on the number of channels to include in the response.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListChannels` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VersionhistoryV1::ListPlatformsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VersionhistoryV1::ListPlatformsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_platforms(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/platforms', options)
          command.response_representation = Google::Apis::VersionhistoryV1::ListPlatformsResponse::Representation
          command.response_class = Google::Apis::VersionhistoryV1::ListPlatformsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns list of channels that are available for a given platform.
        # @param [String] parent
        #   Required. The platform, which owns this collection of channels. Format: `
        #   product`/platforms/`platform`
        # @param [Fixnum] page_size
        #   Optional. Optional limit on the number of channels to include in the response.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListChannels` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VersionhistoryV1::ListChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VersionhistoryV1::ListChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_platform_channels(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/channels', options)
          command.response_representation = Google::Apis::VersionhistoryV1::ListChannelsResponse::Representation
          command.response_class = Google::Apis::VersionhistoryV1::ListChannelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns list of version for the given platform/channel.
        # @param [String] parent
        #   Required. The channel, which owns this collection of versions. Format: `
        #   product`/platforms/`platform`/channels/`channel`
        # @param [String] filter
        #   Optional. Filter string. Format is a comma separated list of All comma
        #   separated filter clauses are conjoined with a logical "and". Valid field_names
        #   are "version", "name", "platform", and "channel". Valid operators are "<", "<="
        #   , "=", ">=", and ">". Channel comparison is done by distance from stable. Ex)
        #   stable < beta, beta < dev, canary < canary_asan. Version comparison is done
        #   numerically. If version is not entirely written, the version will be appended
        #   with 0 in missing fields. Ex) version > 80 becoms version > 80.0.0.0 Name and
        #   platform are filtered by string comparison. Ex) "...?filter=channel<=beta,
        #   version >= 80 Ex) "...?filter=version > 80, version < 81
        # @param [String] order_by
        #   Optional. Ordering string. Valid order_by strings are "version", "name", "
        #   platform", and "channel". Optionally, you can append " desc" or " asc" to
        #   specify the sorting order. Multiple order_by strings can be used in a comma
        #   separated list. Ordering by channel will sort by distance from the stable
        #   channel (not alphabetically). A list of channels sorted in this order is:
        #   stable, beta, dev, canary, and canary_asan. Sorting by name may cause
        #   unexpected behaviour as it is a naive string sort. For example, 1.0.0.8 will
        #   be before 1.0.0.10 in descending order. If order_by is not specified the
        #   response will be sorted by version in descending order. Ex) "...?order_by=
        #   version asc" Ex) "...?order_by=platform desc, channel, version"
        # @param [Fixnum] page_size
        #   Optional. Optional limit on the number of versions to include in the response.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListVersions` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VersionhistoryV1::ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VersionhistoryV1::ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_platform_channel_versions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/versions', options)
          command.response_representation = Google::Apis::VersionhistoryV1::ListVersionsResponse::Representation
          command.response_class = Google::Apis::VersionhistoryV1::ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns list of releases of the given version.
        # @param [String] parent
        #   Required. The version, which owns this collection of releases. Format: `
        #   product`/platforms/`platform`/channels/`channel`/versions/`version`
        # @param [String] filter
        #   Optional. Filter string. Format is a comma separated list of All comma
        #   separated filter clauses are conjoined with a logical "and". Valid field_names
        #   are "version", "name", "platform", "channel", "fraction" "starttime", and "
        #   endtime". Valid operators are "<", "<=", "=", ">=", and ">". Channel
        #   comparison is done by distance from stable. must be a valid channel when
        #   filtering by channel. Ex) stable < beta, beta < dev, canary < canary_asan.
        #   Version comparison is done numerically. Ex) 1.0.0.8 < 1.0.0.10. If version is
        #   not entirely written, the version will be appended with 0 for the missing
        #   fields. Ex) version > 80 becoms version > 80.0.0.0 When filtering by starttime
        #   or endtime, string must be in RFC 3339 date string format. Name and platform
        #   are filtered by string comparison. Ex) "...?filter=channel<=beta, version >=
        #   80 Ex) "...?filter=version > 80, version < 81 Ex) "...?filter=starttime>2020-
        #   01-01T00:00:00Z
        # @param [String] order_by
        #   Optional. Ordering string. Valid order_by strings are "version", "name", "
        #   starttime", "endtime", "platform", "channel", and "fraction". Optionally, you
        #   can append "desc" or "asc" to specify the sorting order. Multiple order_by
        #   strings can be used in a comma separated list. Ordering by channel will sort
        #   by distance from the stable channel (not alphabetically). A list of channels
        #   sorted in this order is: stable, beta, dev, canary, and canary_asan. Sorting
        #   by name may cause unexpected behaviour as it is a naive string sort. For
        #   example, 1.0.0.8 will be before 1.0.0.10 in descending order. If order_by is
        #   not specified the response will be sorted by starttime in descending order. Ex)
        #   "...?order_by=starttime asc" Ex) "...?order_by=platform desc, channel,
        #   startime desc"
        # @param [Fixnum] page_size
        #   Optional. Optional limit on the number of releases to include in the response.
        #   If unspecified, the server will pick an appropriate default.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListReleases` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VersionhistoryV1::ListReleasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VersionhistoryV1::ListReleasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_platform_channel_version_releases(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/releases', options)
          command.response_representation = Google::Apis::VersionhistoryV1::ListReleasesResponse::Representation
          command.response_class = Google::Apis::VersionhistoryV1::ListReleasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
